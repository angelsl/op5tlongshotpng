.class public Lcom/oneplus/screenshot/longshot/task/StitchNextByDistanceTask;
.super Lcom/oneplus/screenshot/longshot/task/JoinTask;
.source "StitchNextByDistanceTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.NewStitchNextTask"


# instance fields
.field private mLastMove:I

.field private mMatchedSize:I


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;II)V
    .locals 6
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;
    .param p2, "joinCache"    # Lcom/oneplus/screenshot/longshot/cache/JoinCache;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "index"    # I
    .param p5, "lastMove"    # I

    .line 23
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/task/JoinTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;IZ)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextByDistanceTask;->mMatchedSize:I

    .line 17
    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextByDistanceTask;->mLastMove:I

    .line 24
    iput p5, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextByDistanceTask;->mLastMove:I

    .line 25
    return-void
.end method

.method private stitchForCurr(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .locals 7
    .param p1, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 63
    const-string v0, "StitchNextTask.stitchForCurr"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 66
    .local v0, "width":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextByDistanceTask;->mLastMove:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextByDistanceTask;->mLastMove:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 68
    .local v1, "yCurr":I
    :goto_0
    iget v2, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextByDistanceTask;->mLastMove:I

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget v2, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextByDistanceTask;->mLastMove:I

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 69
    .local v2, "hCurr":I
    :goto_1
    if-lez v2, :cond_2

    .line 70
    const-string v4, "StitchNextTask.stitchForCurr.createbmpResult"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v3, v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 72
    .local v3, "bmpResult":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 74
    new-instance v4, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 75
    .local v4, "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setStithComplete(Z)V

    .line 76
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextByDistanceTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v5, v4}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 78
    .end local v3    # "bmpResult":Landroid/graphics/Bitmap;
    .end local v4    # "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 80
    return-void
.end method

.method private stitchForLast(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .locals 4
    .param p1, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 52
    const-string v0, "StitchNextTask.stitchForLast"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 55
    .local v0, "newCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setStithComplete(Z)V

    .line 56
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextByDistanceTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v1, v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 59
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 60
    return-void
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lcom/oneplus/screenshot/longshot/match/Matcher;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 32
    new-instance v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected onJoin(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Z
    .locals 3
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 37
    const/4 v0, 0x1

    .line 38
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/task/StitchNextByDistanceTask;->stitchForLast(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V

    .line 40
    invoke-direct {p0, p2}, Lcom/oneplus/screenshot/longshot/task/StitchNextByDistanceTask;->stitchForCurr(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V

    .line 41
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextByDistanceTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v1

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->reachMaxPages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/StitchNextByDistanceTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setLastCache(Z)V

    .line 45
    :cond_0
    return v0
.end method
