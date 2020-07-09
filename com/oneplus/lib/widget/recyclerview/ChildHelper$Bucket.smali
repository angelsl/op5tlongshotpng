.class Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/ChildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bucket"
.end annotation


# static fields
.field static final BITS_PER_WORD:I = 0x40

.field static final LAST_BIT:J = -0x8000000000000000L


# instance fields
.field mData:J

.field next:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    return-void
.end method

.method private ensureNext()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->next:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->next:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    .line 399
    :cond_0
    return-void
.end method


# virtual methods
.method clear(I)V
    .locals 4
    .param p1, "index"    # I

    .line 402
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->next:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    if-eqz v0, :cond_1

    .line 404
    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->clear(I)V

    goto :goto_0

    .line 407
    :cond_0
    iget-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    .line 410
    :cond_1
    :goto_0
    return-void
.end method

.method countOnesBefore(I)I
    .locals 6
    .param p1, "index"    # I

    .line 474
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->next:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    const/16 v1, 0x40

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1

    .line 475
    if-lt p1, v1, :cond_0

    .line 476
    iget-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 478
    :cond_0
    iget-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 480
    :cond_1
    if-ge p1, v1, :cond_2

    .line 481
    iget-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 483
    :cond_2
    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result v0

    iget-wide v1, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    invoke-static {v1, v2}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method get(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 413
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->ensureNext()V

    .line 415
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->next:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->get(I)Z

    move-result v0

    return v0

    .line 417
    :cond_0
    iget-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method insert(IZ)V
    .locals 11
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 429
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->ensureNext()V

    .line 431
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->next:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1, p2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->insert(IZ)V

    goto :goto_2

    .line 433
    :cond_0
    iget-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 434
    .local v0, "lastBit":Z
    :goto_0
    const-wide/16 v3, 0x1

    shl-long v5, v3, p1

    sub-long/2addr v5, v3

    .line 435
    .local v5, "mask":J
    iget-wide v3, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    and-long v7, v3, v5

    .line 436
    .local v7, "before":J
    not-long v9, v5

    and-long/2addr v3, v9

    shl-long/2addr v3, v1

    .line 437
    .local v3, "after":J
    or-long v9, v7, v3

    iput-wide v9, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    .line 438
    if-eqz p2, :cond_2

    .line 439
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->set(I)V

    goto :goto_1

    .line 441
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->clear(I)V

    .line 443
    :goto_1
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->next:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    if-eqz v1, :cond_4

    .line 444
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->ensureNext()V

    .line 445
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->next:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->insert(IZ)V

    .line 448
    .end local v0    # "lastBit":Z
    .end local v3    # "after":J
    .end local v5    # "mask":J
    .end local v7    # "before":J
    :cond_4
    :goto_2
    return-void
.end method

.method remove(I)Z
    .locals 11
    .param p1, "index"    # I

    .line 451
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->ensureNext()V

    .line 453
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->next:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->remove(I)Z

    move-result v0

    return v0

    .line 455
    :cond_0
    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    .line 456
    .local v2, "mask":J
    iget-wide v4, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    .line 457
    .local v4, "value":Z
    :goto_0
    iget-wide v7, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    not-long v9, v2

    and-long/2addr v7, v9

    iput-wide v7, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    .line 458
    sub-long/2addr v2, v0

    .line 459
    iget-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    and-long v7, v0, v2

    .line 461
    .local v7, "before":J
    not-long v9, v2

    and-long/2addr v0, v9

    invoke-static {v0, v1, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    .line 462
    .local v0, "after":J
    or-long v9, v7, v0

    iput-wide v9, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    .line 463
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->next:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    if-eqz v5, :cond_3

    .line 464
    invoke-virtual {v5, v6}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 465
    const/16 v5, 0x3f

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->set(I)V

    .line 467
    :cond_2
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->next:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->remove(I)Z

    .line 469
    :cond_3
    return v4
.end method

.method reset()V
    .locals 2

    .line 422
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    .line 423
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->next:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->reset()V

    .line 426
    :cond_0
    return-void
.end method

.method set(I)V
    .locals 4
    .param p1, "index"    # I

    .line 387
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->ensureNext()V

    .line 389
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->next:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->set(I)V

    goto :goto_0

    .line 391
    :cond_0
    iget-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    .line 393
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->next:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 490
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->next:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->mData:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    :goto_0
    return-object v0
.end method
