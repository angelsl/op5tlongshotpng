.class Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazySpanLookup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    }
.end annotation


# static fields
.field private static final MIN_SIZE:I = 0xa


# instance fields
.field mData:[I

.field mFullSpanItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private invalidateFullSpansAfter(I)I
    .locals 7
    .param p1, "position"    # I

    .line 2515
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2516
    return v1

    .line 2518
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 2520
    .local v0, "item":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v0, :cond_1

    .line 2521
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2523
    :cond_1
    const/4 v2, -0x1

    .line 2524
    .local v2, "nextFsiIndex":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 2525
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 2526
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2527
    .local v5, "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v6, v5, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v6, p1, :cond_2

    .line 2528
    move v2, v4

    .line 2529
    goto :goto_1

    .line 2525
    .end local v5    # "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2532
    .end local v4    # "i":I
    :cond_3
    :goto_1
    if-eq v2, v1, :cond_4

    .line 2533
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2534
    .local v1, "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2535
    iget v4, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    return v4

    .line 2537
    .end local v1    # "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_4
    return v1
.end method

.method private offsetFullSpansForAddition(II)V
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 2498
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2499
    return-void

    .line 2501
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2502
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2503
    .local v1, "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ge v2, p1, :cond_1

    .line 2504
    goto :goto_1

    .line 2506
    :cond_1
    iget v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/2addr v2, p2

    iput v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 2501
    .end local v1    # "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2508
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private offsetFullSpansForRemoval(II)V
    .locals 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 2468
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2469
    return-void

    .line 2471
    :cond_0
    add-int v1, p1, p2

    .line 2472
    .local v1, "end":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 2473
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2474
    .local v2, "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ge v3, p1, :cond_1

    .line 2475
    goto :goto_1

    .line 2477
    :cond_1
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ge v3, v1, :cond_2

    .line 2478
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2480
    :cond_2
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    sub-int/2addr v3, p2

    iput v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 2472
    .end local v2    # "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2483
    .end local v0    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public addFullSpanItem(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V
    .locals 5
    .param p1, "fullSpanItem"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2541
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 2544
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2545
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 2546
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2547
    .local v2, "other":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    iget v4, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ne v3, v4, :cond_1

    .line 2551
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2554
    :cond_1
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    iget v4, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v3, v4, :cond_2

    .line 2555
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2556
    return-void

    .line 2545
    .end local v2    # "other":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2560
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2561
    return-void
.end method

.method clear()V
    .locals 2

    .line 2449
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v0, :cond_0

    .line 2450
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2452
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 2453
    return-void
.end method

.method ensureSize(I)V
    .locals 5
    .param p1, "position"    # I

    .line 2437
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2438
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2439
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    .line 2440
    :cond_0
    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 2441
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2442
    .local v0, "old":[I
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->sizeForPosition(I)I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2443
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2444
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v0

    array-length v4, v2

    invoke-static {v2, v3, v4, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 2446
    .end local v0    # "old":[I
    :cond_1
    :goto_0
    return-void
.end method

.method forceInvalidateAfter(I)I
    .locals 3
    .param p1, "position"    # I

    .line 2383
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2384
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2385
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2386
    .local v1, "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v2, p1, :cond_0

    .line 2387
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2384
    .end local v1    # "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2391
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    move-result v0

    return v0
.end method

.method public getFirstFullSpanItemInRange(IIIZ)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 5
    .param p1, "minPos"    # I
    .param p2, "maxPos"    # I
    .param p3, "gapDir"    # I
    .param p4, "hasUnwantedGapAfter"    # Z

    .line 2585
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2586
    return-object v1

    .line 2588
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2589
    .local v0, "limit":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 2590
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2591
    .local v3, "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v4, p2, :cond_1

    .line 2592
    return-object v1

    .line 2594
    :cond_1
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v4, p1, :cond_3

    if-eqz p3, :cond_2

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    if-eq v4, p3, :cond_2

    if-eqz p4, :cond_3

    iget-boolean v4, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    if-eqz v4, :cond_3

    .line 2597
    :cond_2
    return-object v3

    .line 2589
    .end local v3    # "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2600
    .end local v2    # "i":I
    :cond_4
    return-object v1
.end method

.method public getFullSpanItem(I)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4
    .param p1, "position"    # I

    .line 2564
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2565
    return-object v1

    .line 2567
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2568
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2569
    .local v2, "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ne v3, p1, :cond_1

    .line 2570
    return-object v2

    .line 2567
    .end local v2    # "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2573
    .end local v0    # "i":I
    :cond_2
    return-object v1
.end method

.method getSpan(I)I
    .locals 2
    .param p1, "position"    # I

    .line 2416
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 2419
    :cond_0
    aget v0, v0, p1

    return v0

    .line 2417
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method invalidateAfter(I)I
    .locals 4
    .param p1, "position"    # I

    .line 2398
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2399
    return v1

    .line 2401
    :cond_0
    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 2402
    return v1

    .line 2404
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->invalidateFullSpansAfter(I)I

    move-result v0

    .line 2405
    .local v0, "endPosition":I
    if-ne v0, v1, :cond_2

    .line 2406
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v2

    invoke-static {v2, p1, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 2407
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v1, v1

    return v1

    .line 2410
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, p1, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 2411
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method offsetForAddition(II)V
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 2486
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2489
    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2490
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    add-int v1, p1, p2

    array-length v2, v0

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2492
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    add-int v1, p1, p2

    const/4 v2, -0x1

    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 2494
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->offsetFullSpansForAddition(II)V

    .line 2495
    return-void

    .line 2487
    :cond_1
    :goto_0
    return-void
.end method

.method offsetForRemoval(II)V
    .locals 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 2456
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2459
    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2460
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    add-int v1, p1, p2

    array-length v2, v0

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2462
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v1, v0

    sub-int/2addr v1, p2

    array-length v2, v0

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 2464
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->offsetFullSpansForRemoval(II)V

    .line 2465
    return-void

    .line 2457
    :cond_1
    :goto_0
    return-void
.end method

.method setSpan(ILcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "span"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    .line 2424
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2425
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    aput v1, v0, p1

    .line 2426
    return-void
.end method

.method sizeForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .line 2429
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v0, v0

    .line 2430
    .local v0, "len":I
    :goto_0
    if-gt v0, p1, :cond_0

    .line 2431
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2433
    :cond_0
    return v0
.end method
