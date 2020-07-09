.class public Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;
.super Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;,
        Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;,
        Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field static final MAIN_DIR_SPEC:I

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    nop

    .line 45
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->MAIN_DIR_SPEC:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I

    .line 89
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    .line 61
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 62
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 63
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 90
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->setSpanCount(I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .line 102
    invoke-direct {p0, p1, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    .line 61
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 62
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 63
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 103
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->setSpanCount(I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    .line 61
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 62
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 63
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 78
    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 79
    .local v0, "properties":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->setSpanCount(I)V

    .line 80
    return-void
.end method

.method private assignSpans(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;IIZ)V
    .locals 10
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "count"    # I
    .param p4, "consumedSpanCount"    # I
    .param p5, "layingOutInPrimaryDirection"    # Z

    .line 596
    if-eqz p5, :cond_0

    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, "start":I
    move v1, p3

    .line 599
    .local v1, "end":I
    const/4 v2, 0x1

    .local v2, "diff":I
    goto :goto_0

    .line 601
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v2    # "diff":I
    :cond_0
    add-int/lit8 v0, p3, -0x1

    .line 602
    .restart local v0    # "start":I
    const/4 v1, -0x1

    .line 603
    .restart local v1    # "end":I
    const/4 v2, -0x1

    .line 605
    .restart local v2    # "diff":I
    :goto_0
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 606
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v3, v4

    .line 607
    .local v3, "span":I
    const/4 v5, -0x1

    .local v5, "spanDiff":I
    goto :goto_1

    .line 609
    .end local v3    # "span":I
    .end local v5    # "spanDiff":I
    :cond_1
    const/4 v3, 0x0

    .line 610
    .restart local v3    # "span":I
    const/4 v5, 0x1

    .line 612
    .restart local v5    # "spanDiff":I
    :goto_1
    move v6, v0

    .local v6, "i":I
    :goto_2
    if-eq v6, v1, :cond_3

    .line 613
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v7, v7, v6

    .line 614
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    .line 615
    .local v8, "params":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    invoke-direct {p0, p1, p2, v9}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanSize(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$102(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;I)I

    .line 616
    const/4 v9, -0x1

    if-ne v5, v9, :cond_2

    invoke-static {v8}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v9

    if-le v9, v4, :cond_2

    .line 617
    invoke-static {v8}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v9

    sub-int/2addr v9, v4

    sub-int v9, v3, v9

    invoke-static {v8, v9}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$002(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;I)I

    goto :goto_3

    .line 619
    :cond_2
    invoke-static {v8, v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$002(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;I)I

    .line 621
    :goto_3
    invoke-static {v8}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v9

    mul-int/2addr v9, v5

    add-int/2addr v3, v9

    .line 612
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "params":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    add-int/2addr v6, v2

    goto :goto_2

    .line 623
    .end local v6    # "i":I
    :cond_3
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 6

    .line 188
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 189
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 190
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    .line 191
    .local v2, "lp":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    .line 192
    .local v3, "viewPosition":I
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 193
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 189
    .end local v2    # "lp":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    .end local v3    # "viewPosition":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 8
    .param p1, "totalSpace"    # I

    .line 278
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-eq v0, p1, :cond_1

    .line 280
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 283
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    div-int v1, p1, v0

    .line 284
    .local v1, "sizePerSpan":I
    rem-int v0, p1, v0

    .line 285
    .local v0, "sizePerSpanRemainder":I
    const/4 v2, 0x0

    .line 286
    .local v2, "consumedPixels":I
    const/4 v3, 0x0

    .line 287
    .local v3, "additionalSize":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-gt v4, v5, :cond_3

    .line 288
    move v6, v1

    .line 289
    .local v6, "itemSize":I
    add-int/2addr v3, v0

    .line 290
    if-lez v3, :cond_2

    sub-int v7, v5, v3

    if-ge v7, v0, :cond_2

    .line 291
    add-int/lit8 v6, v6, 0x1

    .line 292
    sub-int/2addr v3, v5

    .line 294
    :cond_2
    add-int/2addr v2, v6

    .line 295
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    aput v2, v5, v4

    .line 287
    .end local v6    # "itemSize":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 297
    .end local v4    # "i":I
    :cond_3
    return-void
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 184
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 185
    return-void
.end method

.method private ensureAnchorIsInFirstSpan(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .line 315
    iget v0, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v0

    .line 316
    .local v0, "span":I
    :goto_0
    if-lez v0, :cond_0

    iget v1, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v1, :cond_0

    .line 317
    iget v1, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 318
    iget v1, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v0

    goto :goto_0

    .line 320
    :cond_0
    return-void
.end method

.method private getMainDirSpec(I)I
    .locals 1
    .param p1, "dim"    # I

    .line 558
    if-gez p1, :cond_0

    .line 559
    sget v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->MAIN_DIR_SPEC:I

    return v0

    .line 561
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private getSpanGroupIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I
    .locals 3
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "viewPosition"    # I

    .line 358
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v0

    return v0

    .line 361
    :cond_0
    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 362
    .local v0, "adapterPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find span size for pre layout position. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GridLayoutManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v1, 0x0

    return v1

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v1

    return v1
.end method

.method private getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I
    .locals 4
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "pos"    # I

    .line 374
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    return v0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 378
    .local v0, "cached":I
    if-eq v0, v1, :cond_1

    .line 379
    return v0

    .line 381
    :cond_1
    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v2

    .line 382
    .local v2, "adapterPosition":I
    if-ne v2, v1, :cond_2

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GridLayoutManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v1, 0x0

    return v1

    .line 391
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v1

    return v1
.end method

.method private getSpanSize(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I
    .locals 4
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "pos"    # I

    .line 395
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, p3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    return v0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 399
    .local v0, "cached":I
    if-eq v0, v1, :cond_1

    .line 400
    return v0

    .line 402
    :cond_1
    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v2

    .line 403
    .local v2, "adapterPosition":I
    if-ne v2, v1, :cond_2

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GridLayoutManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v1, 0x1

    return v1

    .line 412
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    return v1
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "capBothSpecs"    # Z

    .line 567
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 568
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 569
    .local v0, "lp":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    if-nez p4, :cond_0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 570
    :cond_0
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->rightMargin:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    .line 573
    :cond_1
    if-nez p4, :cond_2

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_3

    .line 574
    :cond_2
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-direct {p0, p3, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    .line 577
    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 578
    return-void
.end method

.method private updateMeasurements()V
    .locals 2

    .line 269
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .local v0, "totalSpace":I
    goto :goto_0

    .line 272
    .end local v0    # "totalSpace":I
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 274
    .restart local v0    # "totalSpace":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->calculateItemBorders(I)V

    .line 275
    return-void
.end method

.method private updateSpecWithExtra(III)I
    .locals 2
    .param p1, "spec"    # I
    .param p2, "startInset"    # I
    .param p3, "endInset"    # I

    .line 581
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 582
    return p1

    .line 584
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 585
    .local v0, "mode":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 589
    :cond_1
    return p1

    .line 586
    :cond_2
    :goto_0
    nop

    .line 587
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    .line 586
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1
.end method


# virtual methods
.method public checkLayoutParams(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 245
    instance-of v0, p1, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    return v0
.end method

.method findReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;III)Landroid/view/View;
    .locals 10
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "itemCount"    # I

    .line 325
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->ensureLayoutState()V

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "invalidMatch":Landroid/view/View;
    const/4 v1, 0x0

    .line 328
    .local v1, "outOfBoundsMatch":Landroid/view/View;
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    .line 329
    .local v2, "boundsStart":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 330
    .local v3, "boundsEnd":I
    if-le p4, p3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    .line 331
    .local v4, "diff":I
    :goto_0
    move v5, p3

    .local v5, "i":I
    :goto_1
    if-eq v5, p4, :cond_6

    .line 332
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 333
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 334
    .local v7, "position":I
    if-ltz v7, :cond_5

    if-ge v7, p5, :cond_5

    .line 335
    invoke-direct {p0, p1, p2, v7}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v8

    .line 336
    .local v8, "span":I
    if-eqz v8, :cond_1

    .line 337
    goto :goto_3

    .line 339
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 340
    if-nez v0, :cond_5

    .line 341
    move-object v0, v6

    goto :goto_3

    .line 343
    :cond_2
    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9, v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    if-ge v9, v3, :cond_4

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 344
    invoke-virtual {v9, v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    if-ge v9, v2, :cond_3

    goto :goto_2

    .line 349
    :cond_3
    return-object v6

    .line 345
    :cond_4
    :goto_2
    if-nez v1, :cond_5

    .line 346
    move-object v1, v6

    .line 331
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "position":I
    .end local v8    # "span":I
    :cond_5
    :goto_3
    add-int/2addr v5, v4

    goto :goto_1

    .line 353
    .end local v5    # "i":I
    :cond_6
    if-eqz v1, :cond_7

    move-object v5, v1

    goto :goto_4

    :cond_7
    move-object v5, v0

    :goto_4
    return-object v5
.end method

.method public generateDefaultLayoutParams()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 2

    .line 225
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 231
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 236
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 239
    :cond_0
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getColumnCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 135
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 136
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    return v0

    .line 138
    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 139
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_1
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanGroupIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v0

    return v0
.end method

.method public getRowCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 123
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 124
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    return v0

    .line 126
    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 127
    const/4 v0, 0x0

    return v0

    .line 129
    :cond_1
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanGroupIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v0

    return v0
.end method

.method public getSpanCount()I
    .locals 1

    .line 632
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public getSpanSizeLookup()Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method layoutChunk(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;)V
    .locals 25
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "layoutState"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;
    .param p4, "result"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;

    .line 418
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    iget v0, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    move v13, v0

    .line 420
    .local v13, "layingOutInPrimaryDirection":Z
    const/4 v0, 0x0

    .line 421
    .local v0, "count":I
    const/4 v1, 0x0

    .line 422
    .local v1, "consumedSpanCount":I
    iget v2, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    .line 423
    .local v2, "remainingSpan":I
    if-nez v13, :cond_1

    .line 424
    iget v3, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v7, v8, v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v3

    .line 425
    .local v3, "itemSpanIndex":I
    iget v4, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v7, v8, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanSize(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v4

    .line 426
    .local v4, "itemSpanSize":I
    add-int v2, v3, v4

    move v14, v0

    move v15, v1

    goto :goto_1

    .line 423
    .end local v3    # "itemSpanIndex":I
    .end local v4    # "itemSpanSize":I
    :cond_1
    move v14, v0

    move v15, v1

    .line 428
    .end local v0    # "count":I
    .end local v1    # "consumedSpanCount":I
    .local v14, "count":I
    .local v15, "consumedSpanCount":I
    :goto_1
    iget v0, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-ge v14, v0, :cond_5

    invoke-virtual {v9, v8}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->hasMore(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-lez v2, :cond_5

    .line 429
    iget v0, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 430
    .local v0, "pos":I
    invoke-direct {v6, v7, v8, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanSize(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v1

    .line 431
    .local v1, "spanSize":I
    iget v3, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-gt v1, v3, :cond_4

    .line 436
    sub-int/2addr v2, v1

    .line 437
    if-gez v2, :cond_2

    .line 438
    goto :goto_2

    .line 440
    :cond_2
    invoke-virtual {v9, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->next(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v3

    .line 441
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_3

    .line 442
    goto :goto_2

    .line 444
    :cond_3
    add-int/2addr v15, v1

    .line 445
    iget-object v4, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v3, v4, v14

    .line 446
    nop

    .end local v0    # "pos":I
    .end local v1    # "spanSize":I
    .end local v3    # "view":Landroid/view/View;
    add-int/lit8 v14, v14, 0x1

    .line 447
    goto :goto_1

    .line 432
    .restart local v0    # "pos":I
    .restart local v1    # "spanSize":I
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Item at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " spans but GridLayoutManager has only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " spans."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 449
    .end local v0    # "pos":I
    .end local v1    # "spanSize":I
    :cond_5
    :goto_2
    move/from16 v16, v2

    .end local v2    # "remainingSpan":I
    .local v16, "remainingSpan":I
    if-nez v14, :cond_6

    .line 450
    iput-boolean v12, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 451
    return-void

    .line 454
    :cond_6
    const/16 v17, 0x0

    .line 457
    .local v17, "maxSize":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move v4, v15

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->assignSpans(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;IIZ)V

    .line 458
    const/4 v0, 0x0

    move/from16 v5, v17

    .end local v17    # "maxSize":I
    .local v0, "i":I
    .local v5, "maxSize":I
    :goto_3
    const/high16 v1, 0x40000000    # 2.0f

    if-ge v0, v14, :cond_c

    .line 459
    iget-object v2, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v0

    .line 460
    .local v2, "view":Landroid/view/View;
    iget-object v3, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v3, :cond_8

    .line 461
    if-eqz v13, :cond_7

    .line 462
    invoke-virtual {v6, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 464
    :cond_7
    invoke-virtual {v6, v2, v11}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_4

    .line 467
    :cond_8
    if-eqz v13, :cond_9

    .line 468
    invoke-virtual {v6, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_4

    .line 470
    :cond_9
    invoke-virtual {v6, v2, v11}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 474
    :goto_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    .line 475
    .local v3, "lp":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    iget-object v4, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    .line 476
    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v17

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v18

    add-int v17, v17, v18

    aget v4, v4, v17

    iget-object v11, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    .line 477
    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v18

    aget v11, v11, v18

    sub-int/2addr v4, v11

    .line 475
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 479
    .local v1, "spec":I
    iget v4, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    if-ne v4, v12, :cond_a

    .line 480
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->height:I

    invoke-direct {v6, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getMainDirSpec(I)I

    move-result v4

    const/4 v11, 0x0

    invoke-direct {v6, v2, v1, v4, v11}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_5

    .line 482
    :cond_a
    const/4 v11, 0x0

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->width:I

    invoke-direct {v6, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getMainDirSpec(I)I

    move-result v4

    invoke-direct {v6, v2, v4, v1, v11}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 484
    :goto_5
    iget-object v4, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    .line 485
    .local v4, "size":I
    if-le v4, v5, :cond_b

    .line 486
    move v5, v4

    .line 458
    .end local v1    # "spec":I
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    .end local v4    # "size":I
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 491
    .end local v0    # "i":I
    :cond_c
    invoke-direct {v6, v5}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getMainDirSpec(I)I

    move-result v11

    .line 492
    .local v11, "maxMeasureSpec":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    if-ge v0, v14, :cond_f

    .line 493
    iget-object v2, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v0

    .line 494
    .restart local v2    # "view":Landroid/view/View;
    iget-object v3, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    if-eq v3, v5, :cond_e

    .line 495
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    .line 496
    .restart local v3    # "lp":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    iget-object v4, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    .line 497
    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v17

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v18

    add-int v17, v17, v18

    aget v4, v4, v17

    iget-object v12, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    .line 498
    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v18

    aget v12, v12, v18

    sub-int/2addr v4, v12

    .line 496
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 500
    .local v4, "spec":I
    iget v12, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v12, v1, :cond_d

    .line 501
    invoke-direct {v6, v2, v4, v11, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_7

    .line 503
    :cond_d
    invoke-direct {v6, v2, v11, v4, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 492
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    .end local v4    # "spec":I
    :cond_e
    :goto_7
    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v12, 0x1

    goto :goto_6

    .line 508
    .end local v0    # "i":I
    :cond_f
    iput v5, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 510
    const/4 v0, 0x0

    .local v0, "left":I
    const/4 v1, 0x0

    .local v1, "right":I
    const/4 v2, 0x0

    .local v2, "top":I
    const/4 v3, 0x0

    .line 511
    .local v3, "bottom":I
    iget v4, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    const/4 v12, 0x1

    if-ne v4, v12, :cond_11

    .line 512
    iget v4, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v12, -0x1

    if-ne v4, v12, :cond_10

    .line 513
    iget v3, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 514
    sub-int v2, v3, v5

    goto :goto_8

    .line 516
    :cond_10
    iget v2, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 517
    add-int v3, v2, v5

    goto :goto_8

    .line 520
    :cond_11
    iget v4, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v12, -0x1

    if-ne v4, v12, :cond_12

    .line 521
    iget v1, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 522
    sub-int v0, v1, v5

    goto :goto_8

    .line 524
    :cond_12
    iget v0, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 525
    add-int v1, v0, v5

    .line 528
    :goto_8
    const/4 v4, 0x0

    move v12, v4

    .local v12, "i":I
    :goto_9
    if-ge v12, v14, :cond_16

    .line 529
    iget-object v4, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v4, v4, v12

    .line 530
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    .line 531
    .local v7, "params":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    move/from16 v18, v0

    .end local v0    # "left":I
    .local v18, "left":I
    iget v0, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    move/from16 v19, v1

    const/4 v1, 0x1

    .end local v1    # "right":I
    .local v19, "right":I
    if-ne v0, v1, :cond_13

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    invoke-static {v7}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v20

    aget v1, v1, v20

    add-int/2addr v0, v1

    .line 533
    .end local v18    # "left":I
    .restart local v0    # "left":I
    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move/from16 v18, v0

    move/from16 v20, v1

    move/from16 v19, v2

    move/from16 v21, v3

    .end local v19    # "right":I
    .restart local v1    # "right":I
    goto :goto_a

    .line 535
    .end local v0    # "left":I
    .end local v1    # "right":I
    .restart local v18    # "left":I
    .restart local v19    # "right":I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPaddingTop()I

    move-result v0

    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    invoke-static {v7}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v20

    aget v1, v1, v20

    add-int/2addr v0, v1

    .line 536
    .end local v2    # "top":I
    .local v0, "top":I
    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move/from16 v21, v1

    move/from16 v20, v19

    move/from16 v19, v0

    .line 540
    .end local v0    # "top":I
    .end local v3    # "bottom":I
    .local v19, "top":I
    .local v20, "right":I
    .local v21, "bottom":I
    :goto_a
    iget v0, v7, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int v2, v18, v0

    iget v0, v7, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->topMargin:I

    add-int v3, v19, v0

    iget v0, v7, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->rightMargin:I

    sub-int v22, v20, v0

    iget v0, v7, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v23, v21, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v24, v4

    .end local v4    # "view":Landroid/view/View;
    .local v24, "view":Landroid/view/View;
    move/from16 v4, v22

    move/from16 v22, v5

    .end local v5    # "maxSize":I
    .local v22, "maxSize":I
    move/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 549
    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_b

    :cond_14
    const/4 v0, 0x1

    goto :goto_c

    .line 550
    :cond_15
    :goto_b
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 552
    :goto_c
    iget-boolean v1, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->isFocusable()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 528
    .end local v7    # "params":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    .end local v24    # "view":Landroid/view/View;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, p1

    move/from16 v0, v18

    move/from16 v2, v19

    move/from16 v1, v20

    move/from16 v3, v21

    move/from16 v5, v22

    goto/16 :goto_9

    .end local v18    # "left":I
    .end local v19    # "top":I
    .end local v20    # "right":I
    .end local v21    # "bottom":I
    .end local v22    # "maxSize":I
    .local v0, "left":I
    .restart local v1    # "right":I
    .restart local v2    # "top":I
    .restart local v3    # "bottom":I
    .restart local v5    # "maxSize":I
    :cond_16
    move/from16 v18, v0

    move/from16 v19, v1

    .line 554
    .end local v0    # "left":I
    .end local v1    # "right":I
    .end local v12    # "i":I
    .restart local v18    # "left":I
    .local v19, "right":I
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 555
    return-void
.end method

.method onAnchorReady(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .line 303
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->onAnchorReady(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    .line 304
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->updateMeasurements()V

    .line 305
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->ensureAnchorIsInFirstSpan(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_1

    array-length v0, v0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_2

    .line 309
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 311
    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 11
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 147
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 148
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    .line 149
    invoke-super {p0, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 150
    return-void

    .line 152
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    .line 153
    .local v1, "glp":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanGroupIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v2

    .line 154
    .local v2, "spanGroupIndex":I
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 155
    nop

    .line 156
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v3

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v6

    const/4 v7, 0x1

    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-le v8, v5, :cond_1

    .line 158
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v8

    iget v9, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-ne v8, v9, :cond_1

    move v8, v5

    goto :goto_0

    :cond_1
    move v8, v4

    :goto_0
    const/4 v9, 0x0

    .line 155
    move v4, v6

    move v5, v2

    move v6, v7

    move v7, v8

    move v8, v9

    invoke-static/range {v3 .. v8}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    goto :goto_2

    .line 160
    :cond_2
    const/4 v6, 0x1

    .line 162
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v7

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v8

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-le v3, v5, :cond_3

    .line 163
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v3

    iget v9, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-ne v3, v9, :cond_3

    move v9, v5

    goto :goto_1

    :cond_3
    move v9, v4

    :goto_1
    const/4 v10, 0x0

    .line 160
    move v3, v2

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    invoke-static/range {v3 .. v8}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 165
    :goto_2
    return-void
.end method

.method public onItemsAdded(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 199
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 200
    return-void
.end method

.method public onItemsChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 204
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 205
    return-void
.end method

.method public onItemsMoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;III)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .line 220
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 221
    return-void
.end method

.method public onItemsRemoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 209
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 210
    return-void
.end method

.method public onItemsUpdated(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;IILjava/lang/Object;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 216
    return-void
.end method

.method public onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 1
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 169
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 172
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    .line 176
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    .line 177
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 180
    :cond_1
    return-void
.end method

.method public setSpanCount(I)V
    .locals 3
    .param p1, "spanCount"    # I

    .line 645
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_0

    .line 646
    return-void

    .line 648
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 649
    if-lt p1, v0, :cond_1

    .line 653
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    .line 654
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 655
    return-void

    .line 650
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSpanSizeLookup(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;)V
    .locals 0
    .param p1, "spanSizeLookup"    # Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    .line 255
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    .line 256
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 2
    .param p1, "stackFromEnd"    # Z

    .line 112
    if-nez p1, :cond_0

    .line 117
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 118
    return-void

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
