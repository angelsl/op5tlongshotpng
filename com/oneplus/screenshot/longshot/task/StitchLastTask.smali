.class public Lcom/oneplus/screenshot/longshot/task/StitchLastTask;
.super Lcom/oneplus/screenshot/longshot/task/JoinTask;
.source "StitchLastTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.StitchLastTask"


# instance fields
.field protected mDispH:I


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;II)V
    .locals 6
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;
    .param p2, "joinCache"    # Lcom/oneplus/screenshot/longshot/cache/JoinCache;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "index"    # I
    .param p5, "dispH"    # I

    .line 29
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/task/JoinTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;IZ)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mDispH:I

    .line 30
    iput p5, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mDispH:I

    .line 31
    return-void
.end method

.method private lessThanScreenHeight(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/match/MatchData;)Z
    .locals 6
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p3, "data"    # Lcom/oneplus/screenshot/longshot/match/MatchData;

    .line 128
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Features;->FULLSCREEN_IMAGE:Lcom/oneplus/screenshot/longshot/util/Features;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Features;->getValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "hLast":I
    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    invoke-interface {v3}, Lcom/oneplus/screenshot/longshot/match/Matcher;->getOffsetLast()I

    move-result v3

    sub-int v0, v2, v3

    .line 132
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 133
    .local v2, "lastTop":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 137
    .end local v2    # "lastTop":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v2, 0x0

    .line 138
    .local v2, "hCurr":I
    if-eqz p2, :cond_2

    .line 139
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 140
    .local v3, "hCurrMain":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 141
    .local v4, "hCurrLast":I
    invoke-virtual {p3}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getCurrRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v5

    .line 142
    .local v5, "yCurr":I
    if-lt v5, v3, :cond_1

    .line 143
    sub-int/2addr v5, v3

    .line 144
    sub-int v2, v4, v5

    goto :goto_0

    .line 146
    :cond_1
    sub-int v2, v3, v5

    .line 147
    add-int/2addr v2, v4

    .line 150
    .end local v3    # "hCurrMain":I
    .end local v4    # "hCurrLast":I
    .end local v5    # "yCurr":I
    :cond_2
    :goto_0
    add-int v3, v0, v2

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->getImageHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mDispH:I

    if-gt v3, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 152
    .end local v0    # "hLast":I
    .end local v2    # "hCurr":I
    :cond_4
    return v1
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
    .locals 5
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 43
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->checkMatcher()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Longshot.StitchLastTask"

    if-nez v0, :cond_0

    .line 44
    const-string v0, "onJoin fail"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return v1

    .line 47
    :cond_0
    const-string v0, "StitchLastTask.match"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/Matcher;->run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;

    move-result-object v0

    .line 49
    .local v0, "data":Lcom/oneplus/screenshot/longshot/match/MatchData;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 50
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getMatched()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_1

    move v1, v4

    .line 52
    .local v1, "result":Z
    :cond_1
    if-eqz v1, :cond_3

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->lessThanScreenHeight(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/match/MatchData;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 56
    invoke-virtual {p2, v4}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setStithComplete(Z)V

    .line 57
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v3, p2}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->stitchForLast(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V

    .line 60
    invoke-virtual {p0, v0, p2}, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->stitchForCurr(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V

    .line 63
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onJoin result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return v1
.end method

.method protected stitchForCurr(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .locals 9
    .param p1, "data"    # Lcom/oneplus/screenshot/longshot/match/MatchData;
    .param p2, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 92
    const-string v0, "StitchLastTask.stitchForCurr"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 94
    .local v0, "width":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 95
    .local v1, "hCurrMain":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 96
    .local v2, "hCurrLast":I
    :goto_0
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getCurrRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v4

    .line 97
    .local v4, "yCurr":I
    const/4 v5, 0x1

    const-string v6, "StitchLastTask.stitchForCurr.createbmpResult"

    const/4 v7, 0x0

    if-lt v4, v1, :cond_2

    .line 98
    sub-int/2addr v4, v1

    .line 99
    sub-int v8, v2, v4

    if-lez v8, :cond_3

    .line 100
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v6

    sub-int v8, v2, v4

    invoke-static {v6, v3, v4, v0, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 102
    .local v3, "bmpResult":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 103
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v6

    if-ne v6, v3, :cond_1

    .line 104
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    .line 107
    :cond_1
    new-instance v6, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v6, v3, v7, v7}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 108
    .local v6, "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    invoke-virtual {v6, v5}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setStithComplete(Z)V

    .line 109
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v5, v6}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 110
    .end local v3    # "bmpResult":Landroid/graphics/Bitmap;
    .end local v6    # "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    goto :goto_1

    .line 112
    :cond_2
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    sub-int v8, v1, v4

    invoke-static {v6, v3, v4, v0, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 114
    .restart local v3    # "bmpResult":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 116
    new-instance v6, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v6, v3, v7, v8}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 117
    .restart local v6    # "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    invoke-virtual {v6, v5}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setStithComplete(Z)V

    .line 118
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v5, v6}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 120
    .end local v3    # "bmpResult":Landroid/graphics/Bitmap;
    .end local v6    # "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 121
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 122
    return-void
.end method

.method protected stitchForLast(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .locals 7
    .param p1, "data"    # Lcom/oneplus/screenshot/longshot/match/MatchData;
    .param p2, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 71
    const-string v0, "StitchLastTask.stitchForLast"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 73
    .local v0, "width":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getLastRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v1

    .line 74
    .local v1, "rangeLast":Lcom/oneplus/screenshot/longshot/match/MatchRange;
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    invoke-interface {v3}, Lcom/oneplus/screenshot/longshot/match/Matcher;->getOffsetLast()I

    move-result v3

    sub-int/2addr v2, v3

    .line 75
    .local v2, "hLast":I
    if-lez v2, :cond_1

    .line 76
    const-string v3, "StitchLastTask.stitchForLast.createbmpResult"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v4, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 78
    .local v3, "bmpResult":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 79
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-ne v4, v3, :cond_0

    .line 80
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBitmap()Landroid/graphics/Bitmap;

    .line 83
    :cond_0
    new-instance v4, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 84
    .local v4, "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setStithComplete(Z)V

    .line 85
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v5, v4}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 87
    .end local v3    # "bmpResult":Landroid/graphics/Bitmap;
    .end local v4    # "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_1
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 88
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 89
    return-void
.end method
