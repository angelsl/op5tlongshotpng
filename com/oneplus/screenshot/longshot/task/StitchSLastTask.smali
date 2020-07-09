.class public Lcom/oneplus/screenshot/longshot/task/StitchSLastTask;
.super Lcom/oneplus/screenshot/longshot/task/StitchLastTask;
.source "StitchSLastTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchSLastTask"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;II)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;
    .param p2, "joinCache"    # Lcom/oneplus/screenshot/longshot/cache/JoinCache;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "index"    # I
    .param p5, "dispH"    # I

    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;II)V

    .line 22
    return-void
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lcom/oneplus/screenshot/longshot/match/Matcher;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 29
    new-instance v0, Lcom/oneplus/screenshot/longshot/match/StitchSLastMatcher;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/StitchSLastMatcher;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected stitchForCurr(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .locals 10
    .param p1, "data"    # Lcom/oneplus/screenshot/longshot/match/MatchData;
    .param p2, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 34
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 35
    .local v0, "width":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 36
    .local v1, "hCurrTop":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 37
    .local v2, "hCurrMain":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 38
    .local v3, "hCurrBottom":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getCurrRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v4

    .line 39
    .local v4, "yCurr":I
    add-int v5, v1, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-lt v4, v5, :cond_1

    .line 40
    add-int v5, v1, v2

    sub-int/2addr v4, v5

    .line 41
    sub-int v5, v3, v4

    if-lez v5, :cond_5

    .line 42
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v5

    sub-int v8, v3, v4

    invoke-static {v5, v7, v4, v0, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 43
    .local v5, "bmpResult":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v7

    if-ne v7, v5, :cond_0

    .line 44
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    .line 46
    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBitmap()Landroid/graphics/Bitmap;

    .line 47
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    .line 48
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/task/StitchSLastTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    new-instance v8, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v8, v5, v6, v6}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 49
    .end local v5    # "bmpResult":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 50
    :cond_1
    if-lt v4, v1, :cond_3

    .line 51
    sub-int/2addr v4, v1

    .line 52
    sub-int v5, v2, v4

    if-lez v5, :cond_5

    .line 53
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    sub-int v8, v2, v4

    invoke-static {v5, v7, v4, v0, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 54
    .restart local v5    # "bmpResult":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    if-ne v7, v5, :cond_2

    .line 55
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBitmap()Landroid/graphics/Bitmap;

    .line 57
    :cond_2
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    .line 58
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/task/StitchSLastTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    new-instance v8, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v8, v5, v6, v9}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 59
    .end local v5    # "bmpResult":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 61
    :cond_3
    sub-int v5, v1, v4

    if-lez v5, :cond_5

    .line 62
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    sub-int v6, v1, v4

    invoke-static {v5, v7, v4, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 63
    .restart local v5    # "bmpResult":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v6

    if-ne v6, v5, :cond_4

    .line 64
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    .line 66
    :cond_4
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/task/StitchSLastTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    new-instance v7, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v7, v8, v5, v9}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 69
    .end local v5    # "bmpResult":Landroid/graphics/Bitmap;
    :cond_5
    :goto_0
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 70
    return-void
.end method
