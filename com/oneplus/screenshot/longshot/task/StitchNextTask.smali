.class public Lcom/oneplus/screenshot/longshot/task/StitchNextTask;
.super Lcom/oneplus/screenshot/longshot/task/JoinTask;
.source "StitchNextTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.StitchNextTask"


# instance fields
.field private mMatchedSize:I


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V
    .locals 6
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;
    .param p2, "joinCache"    # Lcom/oneplus/screenshot/longshot/cache/JoinCache;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "index"    # I

    .line 25
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/task/JoinTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;IZ)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mMatchedSize:I

    .line 26
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->levelStitchMatch:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 33
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STITCH_NEXT_MATCH_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mMatchedSize:I

    goto :goto_0

    .line 28
    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STITCH_NEXT_MATCH_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mMatchedSize:I

    .line 29
    nop

    .line 36
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "levelStitchMatch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/screenshot/longshot/util/Configs;->levelStitchMatch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMatchedSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mMatchedSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.StitchNextTask"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method private isLegalPosition(Lcom/oneplus/screenshot/longshot/match/MatchData;)Z
    .locals 3
    .param p1, "data"    # Lcom/oneplus/screenshot/longshot/match/MatchData;

    .line 71
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getLastRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getLastRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getLines()[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getCurrRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getStart()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 71
    :goto_0
    return v2
.end method

.method private stitchForCurr(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .locals 10
    .param p1, "data"    # Lcom/oneplus/screenshot/longshot/match/MatchData;
    .param p2, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 98
    const-string v0, "StitchNextTask.stitchForCurr"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getRate()I

    move-result v0

    .line 100
    .local v0, "rate":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getOffset()I

    move-result v1

    .line 101
    .local v1, "offset":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 102
    .local v2, "width":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getCurrRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v3

    mul-int/2addr v3, v0

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    invoke-interface {v4}, Lcom/oneplus/screenshot/longshot/match/Matcher;->getOffsetCurr()I

    move-result v4

    add-int/2addr v3, v4

    .line 103
    .local v3, "yCurr":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    .line 104
    .local v4, "hCurr":I
    if-lez v4, :cond_0

    .line 105
    const-string v5, "StitchNextTask.stitchForCurr.createbmpResult"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 107
    .local v5, "bmpResult":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 109
    new-instance v7, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v7, v5, v8, v9}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 110
    .local v7, "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    invoke-virtual {v7, v6}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setStithComplete(Z)V

    .line 111
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v6, v7}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIndex "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mIndex:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " stitchForCurr bmpResult:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Longshot.StitchNextTask"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v5    # "bmpResult":Landroid/graphics/Bitmap;
    .end local v7    # "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 115
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 116
    return-void
.end method

.method private stitchForLast(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .locals 9
    .param p1, "data"    # Lcom/oneplus/screenshot/longshot/match/MatchData;
    .param p2, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 76
    const-string v0, "StitchNextTask.stitchForLast"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getRate()I

    move-result v0

    .line 78
    .local v0, "rate":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getOffset()I

    move-result v1

    .line 79
    .local v1, "offset":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 80
    .local v2, "width":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getLastRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v3

    .line 81
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

    .line 82
    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v5

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    invoke-interface {v5}, Lcom/oneplus/screenshot/longshot/match/Matcher;->getOffsetLast()I

    move-result v5

    sub-int/2addr v4, v5

    .line 83
    .local v4, "hLast":I
    if-lez v4, :cond_0

    .line 84
    const-string v5, "StitchNextTask.stitchForLast.createbmpResult"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v6, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 86
    .local v5, "bmpResult":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 88
    new-instance v6, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v5, v7, v8}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 89
    .local v6, "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setStithComplete(Z)V

    .line 90
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v7, v6}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 91
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIndex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " stitchForLast bmpResult:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Longshot.StitchNextTask"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v5    # "bmpResult":Landroid/graphics/Bitmap;
    .end local v6    # "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 94
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 95
    return-void
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lcom/oneplus/screenshot/longshot/match/Matcher;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 44
    new-instance v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected onJoin(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Z
    .locals 5
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 49
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->checkMatcher()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 50
    const-string v0, "Longshot.StitchNextTask"

    const-string v2, "check matcher fail"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v1

    .line 53
    :cond_0
    const-string v0, "StitchNextTask.MatchData"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/Matcher;->run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;

    move-result-object v0

    .line 55
    .local v0, "data":Lcom/oneplus/screenshot/longshot/match/MatchData;
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getMatched()I

    move-result v2

    iget v3, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mMatchedSize:I

    const/4 v4, 0x1

    if-le v2, v3, :cond_1

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->isLegalPosition(Lcom/oneplus/screenshot/longshot/match/MatchData;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    .line 56
    .local v1, "result":Z
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 57
    if-eqz v1, :cond_2

    .line 58
    invoke-direct {p0, v0, p1}, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->stitchForLast(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V

    .line 59
    invoke-direct {p0, v0, p2}, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->stitchForCurr(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V

    .line 60
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v2

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->reachMaxPages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {v2, v4}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setLastCache(Z)V

    .line 64
    :cond_2
    return v1
.end method
