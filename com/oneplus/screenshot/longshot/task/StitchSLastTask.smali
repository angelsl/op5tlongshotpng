.class public Lcom/oneplus/screenshot/longshot/task/StitchSLastTask;
.super Lcom/oneplus/screenshot/longshot/task/StitchLastTask;
.source "StitchSLastTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchSLastTask"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;II)V
    .registers 6
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;
    .param p2, "joinCache"    # Lcom/oneplus/screenshot/longshot/cache/JoinCache;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "index"    # I
    .param p5, "dispH"    # I

    .prologue
    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;II)V

    .line 24
    return-void
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lcom/oneplus/screenshot/longshot/match/Matcher;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .prologue
    .line 31
    new-instance v0, Lcom/oneplus/screenshot/longshot/match/StitchSLastMatcher;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/StitchSLastMatcher;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected stitchForCurr(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .registers 13
    .param p1, "data"    # Lcom/oneplus/screenshot/longshot/match/MatchData;
    .param p2, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 36
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 37
    .local v4, "width":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 38
    .local v3, "hCurrTop":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 39
    .local v2, "hCurrMain":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 40
    .local v1, "hCurrBottom":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getCurrRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v5

    .line 41
    .local v5, "yCurr":I
    add-int v6, v3, v2

    if-lt v5, v6, :cond_5c

    .line 42
    add-int v6, v3, v2

    sub-int/2addr v5, v6

    .line 43
    sub-int v6, v1, v5

    if-lez v6, :cond_58

    .line 44
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v6

    sub-int v7, v1, v5

    invoke-static {v6, v8, v5, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    .local v0, "bmpResult":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v6

    if-ne v6, v0, :cond_48

    .line 46
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    .line 48
    :cond_48
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBitmap()Landroid/graphics/Bitmap;

    .line 49
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    .line 50
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/task/StitchSLastTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    new-instance v7, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v7, v0, v9, v9}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 71
    .end local v0    # "bmpResult":Landroid/graphics/Bitmap;
    :cond_58
    :goto_58
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 72
    return-void

    .line 52
    :cond_5c
    if-lt v5, v3, :cond_88

    .line 53
    sub-int/2addr v5, v3

    .line 54
    sub-int v6, v2, v5

    if-lez v6, :cond_58

    .line 55
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    sub-int v7, v2, v5

    invoke-static {v6, v8, v5, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    .restart local v0    # "bmpResult":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-ne v6, v0, :cond_76

    .line 57
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBitmap()Landroid/graphics/Bitmap;

    .line 59
    :cond_76
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    .line 60
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/task/StitchSLastTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    new-instance v7, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v0, v9, v8}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    goto :goto_58

    .line 63
    .end local v0    # "bmpResult":Landroid/graphics/Bitmap;
    :cond_88
    sub-int v6, v3, v5

    if-lez v6, :cond_58

    .line 64
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    sub-int v7, v3, v5

    invoke-static {v6, v8, v5, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    .restart local v0    # "bmpResult":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v6

    if-ne v6, v0, :cond_9f

    .line 66
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    .line 68
    :cond_9f
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/task/StitchSLastTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    new-instance v7, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v7, v8, v0, v9}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    goto :goto_58
.end method
