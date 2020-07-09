.class Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Span"
.end annotation


# static fields
.field static final INVALID_LINE:I = -0x80000000


# instance fields
.field mCachedEnd:I

.field mCachedStart:I

.field mDeletedSize:I

.field final mIndex:I

.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;
    .param p2, "index"    # I

    .line 2105
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2099
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2100
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2101
    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2102
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2106
    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 2107
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;ILcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;

    .line 2096
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    .line 2096
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method appendToSpan(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 2190
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2191
    .local v0, "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    iput-object p0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    .line 2192
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2193
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2194
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2195
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2197
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2198
    :cond_1
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2200
    :cond_2
    return-void
.end method

.method cacheReferenceLineAndClear(ZI)V
    .locals 3
    .param p1, "reverseLayout"    # Z
    .param p2, "offset"    # I

    .line 2205
    const/high16 v0, -0x80000000

    if-eqz p1, :cond_0

    .line 2206
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    .local v1, "reference":I
    goto :goto_0

    .line 2208
    .end local v1    # "reference":I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 2210
    .restart local v1    # "reference":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->clear()V

    .line 2211
    if-ne v1, v0, :cond_1

    .line 2212
    return-void

    .line 2214
    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    if-lt v1, v2, :cond_3

    :cond_2
    if-nez p1, :cond_4

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 2215
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 2216
    :cond_3
    return-void

    .line 2218
    :cond_4
    if-eq p2, v0, :cond_5

    .line 2219
    add-int/2addr v1, p2

    .line 2221
    :cond_5
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2222
    return-void
.end method

.method calculateCachedEnd()V
    .locals 5

    .line 2155
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2156
    .local v0, "endView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2157
    .local v1, "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2158
    iget-boolean v3, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_0

    .line 2159
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    .line 2160
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v3

    .line 2161
    .local v3, "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    if-ne v4, v2, :cond_0

    .line 2162
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2165
    .end local v3    # "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_0
    return-void
.end method

.method calculateCachedStart()V
    .locals 5

    .line 2121
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2122
    .local v0, "startView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2123
    .local v1, "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2124
    iget-boolean v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_0

    .line 2125
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    .line 2126
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v2

    .line 2127
    .local v2, "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 2128
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2131
    .end local v2    # "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_0
    return-void
.end method

.method clear()V
    .locals 1

    .line 2225
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2226
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->invalidateCache()V

    .line 2227
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2228
    return-void
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    .line 2329
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->access$600(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2330
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0

    .line 2331
    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2329
    :goto_0
    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    .line 2323
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->access$600(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2324
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0

    .line 2325
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2323
    :goto_0
    return v0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 3

    .line 2341
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->access$600(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2342
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0

    .line 2343
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2341
    :goto_0
    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 3

    .line 2335
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->access$600(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2336
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0

    .line 2337
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2335
    :goto_0
    return v0
.end method

.method findOneVisibleChild(IIZ)I
    .locals 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z

    .line 2347
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 2348
    .local v0, "start":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    .line 2349
    .local v1, "end":I
    const/4 v2, -0x1

    if-le p2, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2350
    .local v3, "next":I
    :goto_0
    move v4, p1

    .local v4, "i":I
    :goto_1
    if-eq v4, p2, :cond_3

    .line 2351
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 2352
    .local v5, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v6, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 2353
    .local v6, "childStart":I
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    .line 2354
    .local v7, "childEnd":I
    if-ge v6, v1, :cond_2

    if-le v7, v0, :cond_2

    .line 2355
    if-eqz p3, :cond_1

    .line 2356
    if-lt v6, v0, :cond_2

    if-gt v7, v1, :cond_2

    .line 2357
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-virtual {v2, v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    return v2

    .line 2360
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-virtual {v2, v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    return v2

    .line 2350
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childStart":I
    .end local v7    # "childEnd":I
    :cond_2
    add-int/2addr v4, v3

    goto :goto_1

    .line 2364
    .end local v4    # "i":I
    :cond_3
    return v2
.end method

.method public getDeletedSize()I
    .locals 1

    .line 2267
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    return v0
.end method

.method getEndLine()I
    .locals 2

    .line 2169
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2170
    return v0

    .line 2172
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2173
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return v0
.end method

.method getEndLine(I)I
    .locals 2
    .param p1, "def"    # I

    .line 2143
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2144
    return v0

    .line 2146
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2147
    .local v0, "size":I
    if-nez v0, :cond_1

    .line 2148
    return p1

    .line 2150
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2151
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return v1
.end method

.method getLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 2271
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    return-object v0
.end method

.method getNormalizedOffset(III)I
    .locals 2
    .param p1, "dt"    # I
    .param p2, "targetStart"    # I
    .param p3, "targetEnd"    # I

    .line 2285
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2286
    return v1

    .line 2288
    :cond_0
    if-gez p1, :cond_3

    .line 2289
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v0

    sub-int/2addr v0, p3

    .line 2290
    .local v0, "endSpace":I
    if-gtz v0, :cond_1

    .line 2291
    return v1

    .line 2293
    :cond_1
    neg-int v1, p1

    if-le v1, v0, :cond_2

    neg-int v1, v0

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    return v1

    .line 2295
    .end local v0    # "endSpace":I
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v0

    sub-int v0, p2, v0

    .line 2296
    .local v0, "startSpace":I
    if-gtz v0, :cond_4

    .line 2297
    return v1

    .line 2299
    :cond_4
    if-ge v0, p1, :cond_5

    move v1, v0

    goto :goto_1

    :cond_5
    move v1, p1

    :goto_1
    return v1
.end method

.method getStartLine()I
    .locals 2

    .line 2135
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2136
    return v0

    .line 2138
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2139
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return v0
.end method

.method getStartLine(I)I
    .locals 2
    .param p1, "def"    # I

    .line 2110
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2111
    return v0

    .line 2113
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2114
    return p1

    .line 2116
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2117
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return v0
.end method

.method invalidateCache()V
    .locals 1

    .line 2231
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2232
    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2233
    return-void
.end method

.method isEmpty(II)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2311
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2312
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2313
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2314
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-ge v3, p2, :cond_0

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 2315
    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 2316
    const/4 v3, 0x0

    return v3

    .line 2312
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2319
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method onOffset(I)V
    .locals 2
    .param p1, "dt"    # I

    .line 2275
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2276
    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2278
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    if-eq v0, v1, :cond_1

    .line 2279
    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2281
    :cond_1
    return-void
.end method

.method popEnd()V
    .locals 5

    .line 2240
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2241
    .local v0, "size":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2242
    .local v1, "end":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v2

    .line 2243
    .local v2, "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    .line 2244
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2245
    :cond_0
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2247
    :cond_1
    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 2248
    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2250
    :cond_2
    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2251
    return-void
.end method

.method popStart()V
    .locals 5

    .line 2254
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2255
    .local v0, "start":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2256
    .local v1, "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    .line 2257
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/high16 v3, -0x80000000

    if-nez v2, :cond_0

    .line 2258
    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2260
    :cond_0
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2261
    :cond_1
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2263
    :cond_2
    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2264
    return-void
.end method

.method prependToSpan(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 2177
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2178
    .local v0, "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    iput-object p0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    .line 2179
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2180
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2181
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2182
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2184
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2185
    :cond_1
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2187
    :cond_2
    return-void
.end method

.method setLine(I)V
    .locals 0
    .param p1, "line"    # I

    .line 2236
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2237
    return-void
.end method
