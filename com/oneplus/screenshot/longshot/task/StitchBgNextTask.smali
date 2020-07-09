.class public Lcom/oneplus/screenshot/longshot/task/StitchBgNextTask;
.super Lcom/oneplus/screenshot/longshot/task/JoinTask;
.source "StitchBgNextTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchBgNextTask"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V
    .locals 6
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;
    .param p2, "joinCache"    # Lcom/oneplus/screenshot/longshot/cache/JoinCache;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "index"    # I

    .line 22
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/task/JoinTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;IZ)V

    .line 23
    return-void
.end method

.method private stitchForCurr(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .locals 10
    .param p1, "data"    # Lcom/oneplus/screenshot/longshot/match/MatchData;
    .param p2, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 70
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getRate()I

    move-result v0

    .line 71
    .local v0, "rate":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getOffset()I

    move-result v1

    .line 72
    .local v1, "offset":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 73
    .local v2, "width":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getCurrRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v3

    mul-int/2addr v3, v0

    .line 74
    .local v3, "yCurr":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    .line 75
    .local v4, "hCurr":I
    if-lez v4, :cond_0

    .line 76
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 78
    .local v5, "bmpResult":Landroid/graphics/Bitmap;
    new-instance v7, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v7, v5, v8, v9}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 79
    .local v7, "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    invoke-virtual {v7, v6}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setStithComplete(Z)V

    .line 80
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/task/StitchBgNextTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v6, v7}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 82
    .end local v5    # "bmpResult":Landroid/graphics/Bitmap;
    .end local v7    # "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 83
    return-void
.end method

.method private stitchForLast(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .locals 9
    .param p1, "data"    # Lcom/oneplus/screenshot/longshot/match/MatchData;
    .param p2, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 54
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getRate()I

    move-result v0

    .line 55
    .local v0, "rate":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getOffset()I

    move-result v1

    .line 56
    .local v1, "offset":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 57
    .local v2, "width":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getLastRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v3

    .line 58
    .local v3, "rangeLast":Lcom/oneplus/screenshot/longshot/match/MatchRange;
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getLines()[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v5

    array-length v5, v5

    mul-int/2addr v5, v0

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v5

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    .line 59
    .local v4, "hLast":I
    if-lez v4, :cond_0

    .line 60
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v6, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 62
    .local v5, "bmpResult":Landroid/graphics/Bitmap;
    new-instance v6, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v5, v7, v8}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 63
    .local v6, "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setStithComplete(Z)V

    .line 64
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/task/StitchBgNextTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v7, v6}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 66
    .end local v5    # "bmpResult":Landroid/graphics/Bitmap;
    .end local v6    # "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 67
    return-void
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lcom/oneplus/screenshot/longshot/match/Matcher;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 30
    new-instance v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected onJoin(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Z
    .locals 4
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 35
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/task/StitchBgNextTask;->checkMatcher()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 36
    return v1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/StitchBgNextTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/Matcher;->run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;

    move-result-object v0

    .line 39
    .local v0, "data":Lcom/oneplus/screenshot/longshot/match/MatchData;
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getMatched()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    move v1, v3

    .line 40
    .local v1, "result":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 41
    invoke-direct {p0, v0, p1}, Lcom/oneplus/screenshot/longshot/task/StitchBgNextTask;->stitchForLast(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V

    .line 42
    invoke-direct {p0, v0, p2}, Lcom/oneplus/screenshot/longshot/task/StitchBgNextTask;->stitchForCurr(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V

    .line 43
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/StitchBgNextTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v2

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->reachMaxPages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/StitchBgNextTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setLastCache(Z)V

    .line 47
    :cond_2
    return v1
.end method
