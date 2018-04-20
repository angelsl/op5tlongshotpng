.class public Lcom/oneplus/screenshot/longshot/task/StitchNextTask;
.super Lcom/oneplus/screenshot/longshot/task/JoinTask;
.source "StitchNextTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.StitchNextTask"


# instance fields
.field private mMatchedSize:I


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V
    .registers 11
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;
    .param p2, "joinCache"    # Lcom/oneplus/screenshot/longshot/cache/JoinCache;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "index"    # I

    .prologue
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
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH_MATCH:I

    packed-switch v0, :pswitch_data_4c

    .line 33
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STITCH_NEXT_MATCH_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mMatchedSize:I

    .line 36
    :goto_19
    const-string/jumbo v0, "Longshot.StitchNextTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LEVEL_STITCH_MATCH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH_MATCH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mMatchedSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mMatchedSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void

    .line 28
    :pswitch_43
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STITCH_NEXT_MATCH_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mMatchedSize:I

    goto :goto_19

    .line 26
    :pswitch_data_4c
    .packed-switch 0x4
        :pswitch_43
    .end packed-switch
.end method

.method private isLegalPosition(Lcom/oneplus/screenshot/longshot/match/MatchData;)Z
    .registers 5
    .param p1, "data"    # Lcom/oneplus/screenshot/longshot/match/MatchData;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getLastRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getLastRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getLines()[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_21

    .line 69
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getCurrRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getStart()I

    move-result v1

    if-nez v1, :cond_21

    const/4 v0, 0x1

    .line 68
    :cond_21
    return v0
.end method

.method private stitchForCurr(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .registers 13
    .param p1, "data"    # Lcom/oneplus/screenshot/longshot/match/MatchData;
    .param p2, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .prologue
    const/4 v8, 0x0

    .line 91
    const-string/jumbo v6, "StitchNextTask.stitchForCurr"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getRate()I

    move-result v3

    .line 93
    .local v3, "rate":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getOffset()I

    move-result v2

    .line 94
    .local v2, "offset":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 95
    .local v4, "width":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getCurrRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v6

    mul-int/2addr v6, v3

    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    invoke-interface {v7}, Lcom/oneplus/screenshot/longshot/match/Matcher;->getOffsetCurr()I

    move-result v7

    add-int v5, v6, v7

    .line 96
    .local v5, "yCurr":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v1, v6, v5

    .line 97
    .local v1, "hCurr":I
    if-lez v1, :cond_54

    .line 98
    const-string/jumbo v6, "StitchNextTask.stitchForCurr.createbmpResult"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6, v8, v5, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    .local v0, "bmpResult":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 101
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    new-instance v7, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v0, v9, v8}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 103
    .end local v0    # "bmpResult":Landroid/graphics/Bitmap;
    :cond_54
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 104
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 105
    return-void
.end method

.method private stitchForLast(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .registers 13
    .param p1, "data"    # Lcom/oneplus/screenshot/longshot/match/MatchData;
    .param p2, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .prologue
    const/4 v8, 0x0

    .line 73
    const-string/jumbo v6, "StitchNextTask.stitchForLast"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getRate()I

    move-result v4

    .line 75
    .local v4, "rate":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getOffset()I

    move-result v2

    .line 76
    .local v2, "offset":I
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 77
    .local v5, "width":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getLastRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v3

    .line 78
    .local v3, "rangeLast":Lcom/oneplus/screenshot/longshot/match/MatchRange;
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getLines()[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v7

    array-length v7, v7

    mul-int/2addr v7, v4

    sub-int/2addr v6, v7

    .line 79
    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v7

    mul-int/2addr v7, v4

    .line 78
    add-int/2addr v6, v7

    add-int/2addr v6, v2

    .line 79
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    invoke-interface {v7}, Lcom/oneplus/screenshot/longshot/match/Matcher;->getOffsetLast()I

    move-result v7

    .line 78
    sub-int v1, v6, v7

    .line 80
    .local v1, "hLast":I
    if-lez v1, :cond_5b

    .line 81
    const-string/jumbo v6, "StitchNextTask.stitchForLast.createbmpResult"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6, v8, v8, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    .local v0, "bmpResult":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 84
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    new-instance v7, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v0, v8, v9}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 86
    .end local v0    # "bmpResult":Landroid/graphics/Bitmap;
    :cond_5b
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 87
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 88
    return-void
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lcom/oneplus/screenshot/longshot/match/Matcher;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .prologue
    .line 44
    new-instance v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected onJoin(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Z
    .registers 7
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->checkMatcher()Z

    move-result v2

    if-nez v2, :cond_11

    .line 50
    const-string/jumbo v2, "Longshot.StitchNextTask"

    const-string/jumbo v3, "check matcher fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v2, 0x0

    return v2

    .line 53
    :cond_11
    const-string/jumbo v2, "StitchNextTask.MatchData"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    invoke-interface {v2, p1, p2}, Lcom/oneplus/screenshot/longshot/match/Matcher;->run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;

    move-result-object v0

    .line 55
    .local v0, "data":Lcom/oneplus/screenshot/longshot/match/MatchData;
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getMatched()I

    move-result v2

    iget v3, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->mMatchedSize:I

    if-le v2, v3, :cond_35

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->isLegalPosition(Lcom/oneplus/screenshot/longshot/match/MatchData;)Z

    move-result v1

    .line 56
    :goto_29
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 57
    if-eqz v1, :cond_34

    .line 58
    invoke-direct {p0, v0, p1}, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->stitchForLast(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V

    .line 59
    invoke-direct {p0, v0, p2}, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;->stitchForCurr(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V

    .line 61
    :cond_34
    return v1

    .line 55
    :cond_35
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_29
.end method
