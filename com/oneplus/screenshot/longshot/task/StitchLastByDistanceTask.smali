.class public Lcom/oneplus/screenshot/longshot/task/StitchLastByDistanceTask;
.super Lcom/oneplus/screenshot/longshot/task/JoinTask;
.source "StitchLastByDistanceTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.NewStitchLastTask"


# instance fields
.field protected mDispH:I

.field private mLastMove:I


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;III)V
    .locals 6
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;
    .param p2, "joinCache"    # Lcom/oneplus/screenshot/longshot/cache/JoinCache;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "index"    # I
    .param p5, "dispH"    # I
    .param p6, "lastMove"    # I

    .line 28
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/task/JoinTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;IZ)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastByDistanceTask;->mDispH:I

    .line 23
    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastByDistanceTask;->mLastMove:I

    .line 29
    iput p5, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastByDistanceTask;->mDispH:I

    .line 30
    iput p6, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastByDistanceTask;->mLastMove:I

    .line 31
    return-void
.end method

.method private lessThanScreenHeight(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/match/MatchData;)Z
    .locals 6
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p3, "data"    # Lcom/oneplus/screenshot/longshot/match/MatchData;

    .line 89
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Features;->FULLSCREEN_IMAGE:Lcom/oneplus/screenshot/longshot/util/Features;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Features;->getValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "hLast":I
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastByDistanceTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    invoke-interface {v3}, Lcom/oneplus/screenshot/longshot/match/Matcher;->getOffsetLast()I

    move-result v3

    sub-int v0, v2, v3

    .line 93
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 94
    .local v2, "lastTop":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 98
    .end local v2    # "lastTop":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v2, 0x0

    .line 99
    .local v2, "hCurr":I
    if-eqz p2, :cond_2

    .line 100
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 101
    .local v3, "hCurrMain":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 102
    .local v4, "hCurrLast":I
    invoke-virtual {p3}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getCurrRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v5

    .line 103
    .local v5, "yCurr":I
    if-lt v5, v3, :cond_1

    .line 104
    sub-int/2addr v5, v3

    .line 105
    sub-int v2, v4, v5

    goto :goto_0

    .line 107
    :cond_1
    sub-int v2, v3, v5

    .line 108
    add-int/2addr v2, v4

    .line 111
    .end local v3    # "hCurrMain":I
    .end local v4    # "hCurrLast":I
    .end local v5    # "yCurr":I
    :cond_2
    :goto_0
    add-int v3, v0, v2

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastByDistanceTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->getImageHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastByDistanceTask;->mDispH:I

    if-gt v3, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 113
    .end local v0    # "hLast":I
    .end local v2    # "hCurr":I
    :cond_4
    return v1
.end method

.method private stitchForCurr(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .locals 7
    .param p1, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 68
    const-string v0, "StitchNextTask.stitchForCurr"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 70
    .local v0, "width":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastByDistanceTask;->mLastMove:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastByDistanceTask;->mLastMove:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 71
    .local v1, "yCurr":I
    :goto_0
    iget v2, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastByDistanceTask;->mLastMove:I

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget v2, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastByDistanceTask;->mLastMove:I

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 72
    .local v2, "hCurr":I
    :goto_1
    if-lez v2, :cond_2

    .line 73
    const-string v4, "StitchNextTask.stitchForCurr.createbmpResult"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v3, v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 75
    .local v3, "bmpResult":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 77
    new-instance v4, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 78
    .local v4, "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setStithComplete(Z)V

    .line 79
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastByDistanceTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v5, v4}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 81
    .end local v3    # "bmpResult":Landroid/graphics/Bitmap;
    .end local v4    # "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 82
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 83
    return-void
.end method

.method private stitchForLast(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .locals 4
    .param p1, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 58
    const-string v0, "StitchNextTask.stitchForLast"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 61
    .local v0, "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setStithComplete(Z)V

    .line 62
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastByDistanceTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v1, v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 64
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 65
    return-void
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lcom/oneplus/screenshot/longshot/match/Matcher;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 38
    new-instance v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected onJoin(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Z
    .locals 3
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 43
    const/4 v0, 0x1

    .line 45
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/task/StitchLastByDistanceTask;->stitchForLast(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V

    .line 47
    invoke-direct {p0, p2}, Lcom/oneplus/screenshot/longshot/task/StitchLastByDistanceTask;->stitchForCurr(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V

    .line 48
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastByDistanceTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setLastCache(Z)V

    .line 50
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJoin result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.NewStitchLastTask"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v0
.end method
