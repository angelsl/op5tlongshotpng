.class public Lcom/oneplus/screenshot/longshot/task/StitchLastTask;
.super Lcom/oneplus/screenshot/longshot/task/JoinTask;
.source "StitchLastTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.StitchLastTask"


# instance fields
.field protected mDispH:I


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;II)V
    .registers 12
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;
    .param p2, "joinCache"    # Lcom/oneplus/screenshot/longshot/cache/JoinCache;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "index"    # I
    .param p5, "dispH"    # I

    .prologue
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
    .registers 13
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p3, "data"    # Lcom/oneplus/screenshot/longshot/match/MatchData;

    .prologue
    const/4 v6, 0x0

    .line 117
    sget-object v7, Lcom/oneplus/screenshot/longshot/util/Features;->FULLSCREEN_IMAGE:Lcom/oneplus/screenshot/longshot/util/Features;

    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/util/Features;->getValue()Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 118
    const/4 v3, 0x0

    .line 119
    .local v3, "hLast":I
    if-eqz p1, :cond_27

    .line 120
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    invoke-interface {v8}, Lcom/oneplus/screenshot/longshot/match/Matcher;->getOffsetLast()I

    move-result v8

    sub-int v3, v7, v8

    .line 121
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 122
    .local v4, "lastTop":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_27

    .line 123
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/2addr v3, v7

    .line 126
    .end local v4    # "lastTop":Landroid/graphics/Bitmap;
    :cond_27
    const/4 v0, 0x0

    .line 127
    .local v0, "hCurr":I
    if-eqz p2, :cond_47

    .line 128
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 129
    .local v2, "hCurrMain":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 130
    .local v1, "hCurrLast":I
    invoke-virtual {p3}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getCurrRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v5

    .line 131
    .local v5, "yCurr":I
    if-lt v5, v2, :cond_56

    .line 132
    sub-int/2addr v5, v2

    .line 133
    sub-int v0, v1, v5

    .line 139
    .end local v1    # "hCurrLast":I
    .end local v2    # "hCurrMain":I
    .end local v5    # "yCurr":I
    :cond_47
    :goto_47
    add-int v7, v3, v0

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v8}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->getImageHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mDispH:I

    if-gt v7, v8, :cond_55

    const/4 v6, 0x1

    :cond_55
    return v6

    .line 135
    .restart local v1    # "hCurrLast":I
    .restart local v2    # "hCurrMain":I
    .restart local v5    # "yCurr":I
    :cond_56
    sub-int v0, v2, v5

    .line 136
    add-int/2addr v0, v1

    goto :goto_47

    .line 141
    .end local v0    # "hCurr":I
    .end local v1    # "hCurrLast":I
    .end local v2    # "hCurrMain":I
    .end local v3    # "hLast":I
    .end local v5    # "yCurr":I
    :cond_5a
    return v6
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lcom/oneplus/screenshot/longshot/match/Matcher;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .prologue
    .line 38
    new-instance v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected onJoin(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Z
    .registers 8
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->checkMatcher()Z

    move-result v2

    if-nez v2, :cond_11

    .line 44
    const-string/jumbo v2, "Longshot.StitchLastTask"

    const-string/jumbo v3, "onJoin fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return v4

    .line 47
    :cond_11
    const-string/jumbo v2, "StitchLastTask.match"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    invoke-interface {v2, p1, p2}, Lcom/oneplus/screenshot/longshot/match/Matcher;->run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;

    move-result-object v0

    .line 49
    .local v0, "data":Lcom/oneplus/screenshot/longshot/match/MatchData;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 50
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getMatched()I

    move-result v2

    if-lez v2, :cond_52

    const/4 v1, 0x1

    .line 52
    .local v1, "result":Z
    :goto_27
    if-eqz v1, :cond_37

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->lessThanScreenHeight(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/match/MatchData;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 54
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 55
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v2, p2}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 61
    :cond_37
    :goto_37
    const-string/jumbo v2, "Longshot.StitchLastTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onJoin result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v1

    .line 50
    .end local v1    # "result":Z
    :cond_52
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_27

    .line 57
    :cond_54
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->stitchForLast(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V

    .line 58
    invoke-virtual {p0, v0, p2}, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->stitchForCurr(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V

    goto :goto_37
.end method

.method protected stitchForCurr(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .registers 12
    .param p1, "data"    # Lcom/oneplus/screenshot/longshot/match/MatchData;
    .param p2, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 87
    const-string/jumbo v5, "StitchLastTask.stitchForCurr"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 89
    .local v3, "width":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 90
    .local v2, "hCurrMain":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_5b

    const/4 v1, 0x0

    .line 91
    .local v1, "hCurrLast":I
    :goto_1f
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getCurrRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v4

    .line 92
    .local v4, "yCurr":I
    if-lt v4, v2, :cond_64

    .line 93
    sub-int/2addr v4, v2

    .line 94
    sub-int v5, v1, v4

    if-lez v5, :cond_54

    .line 95
    const-string/jumbo v5, "StitchLastTask.stitchForCurr.createbmpResult"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v5

    sub-int v6, v1, v4

    invoke-static {v5, v7, v4, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    .local v0, "bmpResult":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 98
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v5

    if-ne v5, v0, :cond_4a

    .line 99
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    .line 101
    :cond_4a
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    new-instance v6, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v6, v0, v8, v8}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 109
    .end local v0    # "bmpResult":Landroid/graphics/Bitmap;
    :cond_54
    :goto_54
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 110
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 111
    return-void

    .line 90
    .end local v1    # "hCurrLast":I
    .end local v4    # "yCurr":I
    :cond_5b
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .restart local v1    # "hCurrLast":I
    goto :goto_1f

    .line 104
    .restart local v4    # "yCurr":I
    :cond_64
    const-string/jumbo v5, "StitchLastTask.stitchForCurr.createbmpResult"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    sub-int v6, v2, v4

    invoke-static {v5, v7, v4, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    .restart local v0    # "bmpResult":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 107
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    new-instance v6, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v6, v0, v8, v7}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    goto :goto_54
.end method

.method protected stitchForLast(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .registers 11
    .param p1, "data"    # Lcom/oneplus/screenshot/longshot/match/MatchData;
    .param p2, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .prologue
    const/4 v6, 0x0

    .line 69
    const-string/jumbo v4, "StitchLastTask.stitchForLast"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 71
    .local v3, "width":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getLastRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v2

    .line 72
    .local v2, "rangeLast":Lcom/oneplus/screenshot/longshot/match/MatchRange;
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    invoke-interface {v5}, Lcom/oneplus/screenshot/longshot/match/Matcher;->getOffsetLast()I

    move-result v5

    sub-int v1, v4, v5

    .line 73
    .local v1, "hLast":I
    if-lez v1, :cond_4e

    .line 74
    const-string/jumbo v4, "StitchLastTask.stitchForLast.createbmpResult"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v6, v6, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    .local v0, "bmpResult":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 77
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-ne v4, v0, :cond_3f

    .line 78
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBitmap()Landroid/graphics/Bitmap;

    .line 80
    :cond_3f
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    new-instance v5, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v0, v6, v7}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 82
    .end local v0    # "bmpResult":Landroid/graphics/Bitmap;
    :cond_4e
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 83
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 84
    return-void
.end method
