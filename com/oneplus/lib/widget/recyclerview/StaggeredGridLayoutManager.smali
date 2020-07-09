.class public Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;,
        Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;,
        Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;,
        Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;,
        Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final GAP_HANDLING_LAZY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS:I = 0x2

.field public static final GAP_HANDLING_NONE:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_OFFSET:I = -0x80000000

.field public static final TAG:Ljava/lang/String; = "StaggeredGridLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

.field private final mCheckForGapsRunnable:Ljava/lang/Runnable;

.field private mFullSizeSpec:I

.field private mGapStrategy:I

.field private mHeightSpec:I

.field private mLaidOutInvalidFullSpan:Z

.field private mLastLayoutFromEnd:Z

.field private mLastLayoutRTL:Z

.field private mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

.field mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

.field private mOrientation:I

.field private mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

.field private mRemainingSpans:Ljava/util/BitSet;

.field private mReverseLayout:Z

.field mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

.field mShouldReverseLayout:Z

.field private mSizePerSpan:I

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field private mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mWidthSpec:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "spanCount"    # I
    .param p2, "orientation"    # I

    .line 225
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;-><init>()V

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 124
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 135
    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 141
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 147
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    .line 152
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 178
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 183
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    .line 191
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 199
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 226
    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    .line 227
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 211
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;-><init>()V

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 124
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 135
    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 141
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 147
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    .line 152
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 178
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 183
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    .line 191
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 199
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 212
    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 213
    .local v0, "properties":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setOrientation(I)V

    .line 214
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 215
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 216
    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    .line 55
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;I)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;
    .param p1, "x1"    # I

    .line 55
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    .line 55
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    .line 55
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method private appendViewToAllSpans(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1605
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1606
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    .line 1605
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1608
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private applyPendingSavedState(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 3
    .param p1, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    .line 649
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v0, :cond_4

    .line 650
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ne v0, v1, :cond_3

    .line 651
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_2

    .line 652
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->clear()V

    .line 653
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aget v1, v1, v0

    .line 654
    .local v1, "line":I
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 655
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v2, :cond_0

    .line 656
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 658
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    add-int/2addr v1, v2

    .line 661
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 651
    .end local v1    # "line":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    goto :goto_2

    .line 664
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 665
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 668
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 669
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 670
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 672
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 673
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 674
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_3

    .line 676
    :cond_5
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v0, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 678
    :goto_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    .line 679
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 680
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 682
    :cond_6
    return-void
.end method

.method private attachViewToSpans(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;Lcom/oneplus/lib/widget/recyclerview/LayoutState;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    .param p3, "layoutState"    # Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    .line 1552
    iget v0, p3, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1553
    iget-boolean v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_0

    .line 1554
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->appendViewToAllSpans(Landroid/view/View;)V

    goto :goto_0

    .line 1556
    :cond_0
    iget-object v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    goto :goto_0

    .line 1559
    :cond_1
    iget-boolean v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_2

    .line 1560
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->prependViewToAllSpans(Landroid/view/View;)V

    goto :goto_0

    .line 1562
    :cond_2
    iget-object v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    .line 1565
    :goto_0
    return-void
.end method

.method private calculateScrollDirectionForPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .line 1852
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1853
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1855
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    .line 1856
    .local v0, "firstChildPos":I
    if-ge p1, v0, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v3, v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method private checkForGaps()Z
    .locals 8

    .line 237
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 241
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    .line 243
    .local v0, "minPos":I
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v2

    .local v2, "maxPos":I
    goto :goto_0

    .line 245
    .end local v0    # "minPos":I
    .end local v2    # "maxPos":I
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    .line 246
    .restart local v0    # "minPos":I
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v2

    .line 248
    .restart local v2    # "maxPos":I
    :goto_0
    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 249
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v4

    .line 250
    .local v4, "gapView":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 251
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 252
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 253
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 254
    return v3

    .line 257
    .end local v4    # "gapView":Landroid/view/View;
    :cond_2
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v4, :cond_3

    .line 258
    return v1

    .line 260
    :cond_3
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    goto :goto_1

    :cond_4
    move v4, v3

    .line 261
    .local v4, "invalidGapDir":I
    :goto_1
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v6, v2, 0x1

    .line 262
    invoke-virtual {v5, v0, v6, v4, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 263
    .local v5, "invalidFsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-nez v5, :cond_5

    .line 264
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 265
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    .line 266
    return v1

    .line 268
    :cond_5
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget v6, v5, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    mul-int/lit8 v7, v4, -0x1

    .line 269
    invoke-virtual {v1, v0, v6, v7, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v1

    .line 271
    .local v1, "validFsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-nez v1, :cond_6

    .line 272
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget v7, v5, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    goto :goto_2

    .line 274
    :cond_6
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget v7, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    .line 276
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 277
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 278
    return v3

    .line 238
    .end local v0    # "minPos":I
    .end local v1    # "validFsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .end local v2    # "maxPos":I
    .end local v4    # "invalidGapDir":I
    .end local v5    # "invalidFsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_7
    :goto_3
    return v1
.end method

.method private checkSpanForGap(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Z
    .locals 3
    .param p1, "span"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    .line 366
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 368
    return v1

    .line 370
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 371
    return v1

    .line 373
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 7
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 963
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 964
    const/4 v0, 0x0

    return v0

    .line 966
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 967
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 968
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v1

    .line 969
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 967
    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Z)I

    move-result v0

    return v0
.end method

.method private computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 8
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 942
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 943
    const/4 v0, 0x0

    return v0

    .line 945
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 946
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 947
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v1

    .line 948
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v7, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 946
    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;ZZ)I

    move-result v0

    return v0
.end method

.method private computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 7
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 984
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 985
    const/4 v0, 0x0

    return v0

    .line 987
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 988
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 989
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v1

    .line 990
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 988
    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Z)I

    move-result v0

    return v0
.end method

.method private createFullSpanItemFromEnd(I)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4
    .param p1, "newItemTop"    # I

    .line 1534
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1535
    .local v0, "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1536
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 1537
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v1

    .line 1536
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1539
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private createFullSpanItemFromStart(I)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4
    .param p1, "newItemBottom"    # I

    .line 1543
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1544
    .local v0, "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1545
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 1546
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v1

    .line 1545
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1548
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private ensureOrientationHelper()V
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    if-nez v0, :cond_0

    .line 515
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->createOrientationHelper(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;I)Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 516
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    rsub-int/lit8 v0, v0, 0x1

    .line 517
    invoke-static {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->createOrientationHelper(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;I)Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 518
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/LayoutState;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    .line 520
    :cond_0
    return-void
.end method

.method private fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 23
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/oneplus/lib/widget/recyclerview/LayoutState;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1402
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v1, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v1, v10}, Ljava/util/BitSet;->set(IIZ)V

    .line 1407
    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_0

    .line 1408
    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    iget v1, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    add-int/2addr v0, v1

    move v11, v0

    .local v0, "targetLine":I
    goto :goto_0

    .line 1410
    .end local v0    # "targetLine":I
    :cond_0
    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    iget v1, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    sub-int/2addr v0, v1

    move v11, v0

    .line 1413
    .local v11, "targetLine":I
    :goto_0
    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    invoke-direct {v6, v0, v11}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    .line 1420
    iget-boolean v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_1

    .line 1421
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_1

    .line 1422
    :cond_1
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_1
    move v12, v0

    .line 1423
    .local v12, "defaultNewViewLine":I
    const/4 v0, 0x0

    move v13, v0

    .line 1424
    .local v13, "added":Z
    :goto_2
    invoke-virtual/range {p2 .. p3}, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->hasMore(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_12

    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1425
    invoke-virtual {v8, v7}, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->next(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v14

    .line 1426
    .local v14, "view":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    .line 1427
    .local v15, "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    invoke-virtual {v15}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    .line 1428
    .local v5, "position":I
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getSpan(I)I

    move-result v4

    .line 1430
    .local v4, "spanIndex":I
    if-ne v4, v1, :cond_2

    move v0, v10

    goto :goto_3

    :cond_2
    move v0, v9

    :goto_3
    move/from16 v16, v0

    .line 1431
    .local v16, "assignSpan":Z
    if-eqz v16, :cond_4

    .line 1432
    iget-boolean v0, v15, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v0, v0, v9

    goto :goto_4

    :cond_3
    invoke-direct {v6, v8}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getNextSpan(Lcom/oneplus/lib/widget/recyclerview/LayoutState;)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    move-result-object v0

    .line 1433
    .local v0, "currentSpan":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    :goto_4
    iget-object v2, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v2, v5, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->setSpan(ILcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)V

    move-object v3, v0

    goto :goto_5

    .line 1441
    .end local v0    # "currentSpan":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    :cond_4
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v0, v0, v4

    move-object v3, v0

    .line 1444
    .local v3, "currentSpan":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    :goto_5
    iput-object v3, v15, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    .line 1445
    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_5

    .line 1446
    invoke-virtual {v6, v14}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 1448
    :cond_5
    invoke-virtual {v6, v14, v9}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->addView(Landroid/view/View;I)V

    .line 1450
    :goto_6
    invoke-direct {v6, v14, v15}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;)V

    .line 1454
    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_8

    .line 1455
    iget-boolean v0, v15, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_6

    invoke-direct {v6, v12}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v0

    goto :goto_7

    .line 1456
    :cond_6
    invoke-virtual {v3, v12}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    :goto_7
    nop

    .line 1457
    .local v0, "start":I
    iget-object v2, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v14}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    .line 1458
    .local v2, "end":I
    if-eqz v16, :cond_7

    iget-boolean v9, v15, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v9, :cond_7

    .line 1460
    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->createFullSpanItemFromEnd(I)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v9

    .line 1461
    .local v9, "fullSpanItem":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iput v1, v9, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1462
    iput v5, v9, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1463
    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1, v9}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    .line 1479
    .end local v9    # "fullSpanItem":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_7
    move v9, v0

    move/from16 v19, v2

    goto :goto_9

    .line 1466
    .end local v0    # "start":I
    .end local v2    # "end":I
    :cond_8
    iget-boolean v0, v15, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_9

    invoke-direct {v6, v12}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v0

    goto :goto_8

    .line 1467
    :cond_9
    invoke-virtual {v3, v12}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    :goto_8
    nop

    .line 1468
    .local v0, "end":I
    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, v14}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    .line 1469
    .local v1, "start":I
    if-eqz v16, :cond_a

    iget-boolean v2, v15, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_a

    .line 1471
    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->createFullSpanItemFromStart(I)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v2

    .line 1472
    .local v2, "fullSpanItem":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iput v10, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1473
    iput v5, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1474
    iget-object v9, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v9, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    .line 1479
    .end local v2    # "fullSpanItem":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_a
    move/from16 v19, v0

    move v9, v1

    .end local v0    # "end":I
    .end local v1    # "start":I
    .local v9, "start":I
    .local v19, "end":I
    :goto_9
    iget-boolean v0, v15, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_e

    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mItemDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 1480
    if-eqz v16, :cond_b

    .line 1481
    iput-boolean v10, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    goto :goto_b

    .line 1484
    :cond_b
    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_c

    .line 1485
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->areAllEndsEqual()Z

    move-result v0

    xor-int/2addr v0, v10

    .local v0, "hasInvalidGap":Z
    goto :goto_a

    .line 1487
    .end local v0    # "hasInvalidGap":Z
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->areAllStartsEqual()Z

    move-result v0

    xor-int/2addr v0, v10

    .line 1489
    .restart local v0    # "hasInvalidGap":Z
    :goto_a
    if-eqz v0, :cond_e

    .line 1490
    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1491
    invoke-virtual {v1, v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v1

    .line 1492
    .local v1, "fullSpanItem":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v1, :cond_d

    .line 1493
    iput-boolean v10, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    .line 1495
    :cond_d
    iput-boolean v10, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 1500
    .end local v0    # "hasInvalidGap":Z
    .end local v1    # "fullSpanItem":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_e
    :goto_b
    invoke-direct {v6, v14, v15, v8}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->attachViewToSpans(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;Lcom/oneplus/lib/widget/recyclerview/LayoutState;)V

    .line 1501
    iget-boolean v0, v15, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_f

    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    goto :goto_c

    .line 1502
    :cond_f
    iget v0, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    iget v1, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v0, v1

    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1503
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    add-int/2addr v0, v1

    :goto_c
    move/from16 v18, v0

    .line 1504
    .local v18, "otherStart":I
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, v14}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    add-int v20, v18, v0

    .line 1505
    .local v20, "otherEnd":I
    iget v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v10, :cond_10

    .line 1506
    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, v18

    move-object v10, v3

    .end local v3    # "currentSpan":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    .local v10, "currentSpan":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    move v3, v9

    move/from16 v21, v4

    .end local v4    # "spanIndex":I
    .local v21, "spanIndex":I
    move/from16 v4, v20

    move/from16 v22, v5

    .end local v5    # "position":I
    .local v22, "position":I
    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto :goto_d

    .line 1508
    .end local v10    # "currentSpan":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    .end local v21    # "spanIndex":I
    .end local v22    # "position":I
    .restart local v3    # "currentSpan":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    .restart local v4    # "spanIndex":I
    .restart local v5    # "position":I
    :cond_10
    move-object v10, v3

    move/from16 v21, v4

    move/from16 v22, v5

    .end local v3    # "currentSpan":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    .end local v4    # "spanIndex":I
    .end local v5    # "position":I
    .restart local v10    # "currentSpan":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    .restart local v21    # "spanIndex":I
    .restart local v22    # "position":I
    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v9

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1511
    :goto_d
    iget-boolean v0, v15, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_11

    .line 1512
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    invoke-direct {v6, v0, v11}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    goto :goto_e

    .line 1514
    :cond_11
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    invoke-direct {v6, v10, v0, v11}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateRemainingSpans(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;II)V

    .line 1516
    :goto_e
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    invoke-direct {v6, v7, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->recycle(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;)V

    .line 1517
    const/4 v13, 0x1

    .line 1518
    .end local v9    # "start":I
    .end local v10    # "currentSpan":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    .end local v14    # "view":Landroid/view/View;
    .end local v15    # "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    .end local v16    # "assignSpan":Z
    .end local v18    # "otherStart":I
    .end local v19    # "end":I
    .end local v20    # "otherEnd":I
    .end local v21    # "spanIndex":I
    .end local v22    # "position":I
    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1519
    :cond_12
    if-nez v13, :cond_13

    .line 1520
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    invoke-direct {v6, v7, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->recycle(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;)V

    .line 1523
    :cond_13
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 1524
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v0

    .line 1525
    .local v0, "minStart":I
    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1526
    .end local v0    # "minStart":I
    .local v1, "diff":I
    goto :goto_f

    .line 1527
    .end local v1    # "diff":I
    :cond_14
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v0

    .line 1528
    .local v0, "maxEnd":I
    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int v1, v0, v1

    .line 1530
    .end local v0    # "maxEnd":I
    .restart local v1    # "diff":I
    :goto_f
    if-lez v1, :cond_15

    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    move/from16 v17, v9

    goto :goto_10

    :cond_15
    const/16 v17, 0x0

    :goto_10
    return v17
.end method

.method private findFirstReferenceChildPosition(I)I
    .locals 4
    .param p1, "itemCount"    # I

    .line 1963
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    .line 1964
    .local v0, "limit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1965
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1966
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 1967
    .local v3, "position":I
    if-ltz v3, :cond_0

    if-ge v3, p1, :cond_0

    .line 1968
    return v3

    .line 1964
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "position":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1971
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private findLastReferenceChildPosition(I)I
    .locals 3
    .param p1, "itemCount"    # I

    .line 1980
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1981
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1982
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1983
    .local v2, "position":I
    if-ltz v2, :cond_0

    if-ge v2, p1, :cond_0

    .line 1984
    return v2

    .line 1980
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "position":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1987
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private fixEndGap(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)V
    .locals 4
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "canOffsetChildren"    # Z

    .line 1248
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v0

    .line 1249
    .local v0, "maxEndLine":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1251
    .local v1, "gap":I
    if-lez v1, :cond_1

    .line 1252
    neg-int v2, v1

    invoke-virtual {p0, v2, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v2

    neg-int v2, v2

    .line 1256
    .local v2, "fixOffset":I
    sub-int/2addr v1, v2

    .line 1257
    if-eqz p3, :cond_0

    if-lez v1, :cond_0

    .line 1258
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    .line 1260
    :cond_0
    return-void

    .line 1254
    .end local v2    # "fixOffset":I
    :cond_1
    return-void
.end method

.method private fixStartGap(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)V
    .locals 5
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "canOffsetChildren"    # Z

    .line 1264
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v0

    .line 1265
    .local v0, "minStartLine":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int v1, v0, v1

    .line 1267
    .local v1, "gap":I
    if-lez v1, :cond_1

    .line 1268
    invoke-virtual {p0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v2

    .line 1272
    .local v2, "fixOffset":I
    sub-int/2addr v1, v2

    .line 1273
    if-eqz p3, :cond_0

    if-lez v1, :cond_0

    .line 1274
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    .line 1276
    :cond_0
    return-void

    .line 1270
    .end local v2    # "fixOffset":I
    :cond_1
    return-void
.end method

.method private getFirstChildPosition()I
    .locals 2

    .line 1953
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    .line 1954
    .local v0, "childCount":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method private getLastChildPosition()I
    .locals 2

    .line 1948
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    .line 1949
    .local v0, "childCount":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method private getMaxEnd(I)I
    .locals 3
    .param p1, "def"    # I

    .line 1696
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    .line 1697
    .local v0, "maxEnd":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    .line 1698
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    .line 1699
    .local v2, "spanEnd":I
    if-le v2, v0, :cond_0

    .line 1700
    move v0, v2

    .line 1697
    .end local v2    # "spanEnd":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1703
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private getMaxStart(I)I
    .locals 3
    .param p1, "def"    # I

    .line 1654
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    .line 1655
    .local v0, "maxStart":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    .line 1656
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    .line 1657
    .local v2, "spanStart":I
    if-le v2, v0, :cond_0

    .line 1658
    move v0, v2

    .line 1655
    .end local v2    # "spanStart":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1661
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private getMinEnd(I)I
    .locals 3
    .param p1, "def"    # I

    .line 1707
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    .line 1708
    .local v0, "minEnd":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    .line 1709
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    .line 1710
    .local v2, "spanEnd":I
    if-ge v2, v0, :cond_0

    .line 1711
    move v0, v2

    .line 1708
    .end local v2    # "spanEnd":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1714
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private getMinStart(I)I
    .locals 3
    .param p1, "def"    # I

    .line 1665
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    .line 1666
    .local v0, "minStart":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    .line 1667
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    .line 1668
    .local v2, "spanStart":I
    if-ge v2, v0, :cond_0

    .line 1669
    move v0, v2

    .line 1666
    .end local v2    # "spanStart":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1672
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private getNextSpan(Lcom/oneplus/lib/widget/recyclerview/LayoutState;)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    .locals 10
    .param p1, "layoutState"    # Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    .line 1789
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v0

    .line 1791
    .local v0, "preferLastSpan":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1792
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v2, v1

    .line 1793
    .local v2, "startIndex":I
    const/4 v3, -0x1

    .line 1794
    .local v3, "endIndex":I
    const/4 v4, -0x1

    .local v4, "diff":I
    goto :goto_0

    .line 1796
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    .end local v4    # "diff":I
    :cond_0
    const/4 v2, 0x0

    .line 1797
    .restart local v2    # "startIndex":I
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    .line 1798
    .restart local v3    # "endIndex":I
    const/4 v4, 0x1

    .line 1800
    .restart local v4    # "diff":I
    :goto_0
    iget v5, p1, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v5, v1, :cond_3

    .line 1801
    const/4 v1, 0x0

    .line 1802
    .local v1, "min":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    const v5, 0x7fffffff

    .line 1803
    .local v5, "minLine":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    .line 1804
    .local v6, "defaultLine":I
    move v7, v2

    .local v7, "i":I
    :goto_1
    if-eq v7, v3, :cond_2

    .line 1805
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v8, v8, v7

    .line 1806
    .local v8, "other":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    invoke-virtual {v8, v6}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v9

    .line 1807
    .local v9, "otherLine":I
    if-ge v9, v5, :cond_1

    .line 1808
    move-object v1, v8

    .line 1809
    move v5, v9

    .line 1804
    .end local v8    # "other":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    .end local v9    # "otherLine":I
    :cond_1
    add-int/2addr v7, v4

    goto :goto_1

    .line 1812
    .end local v7    # "i":I
    :cond_2
    return-object v1

    .line 1814
    .end local v1    # "min":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    .end local v5    # "minLine":I
    .end local v6    # "defaultLine":I
    :cond_3
    const/4 v1, 0x0

    .line 1815
    .local v1, "max":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    const/high16 v5, -0x80000000

    .line 1816
    .local v5, "maxLine":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    .line 1817
    .restart local v6    # "defaultLine":I
    move v7, v2

    .restart local v7    # "i":I
    :goto_2
    if-eq v7, v3, :cond_5

    .line 1818
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v8, v8, v7

    .line 1819
    .restart local v8    # "other":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    invoke-virtual {v8, v6}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v9

    .line 1820
    .restart local v9    # "otherLine":I
    if-le v9, v5, :cond_4

    .line 1821
    move-object v1, v8

    .line 1822
    move v5, v9

    .line 1817
    .end local v8    # "other":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    .end local v9    # "otherLine":I
    :cond_4
    add-int/2addr v7, v4

    goto :goto_2

    .line 1825
    .end local v7    # "i":I
    :cond_5
    return-object v1
.end method

.method private getSpecForDimension(II)I
    .locals 1
    .param p1, "dim"    # I
    .param p2, "defaultSpec"    # I

    .line 1020
    if-gez p1, :cond_0

    .line 1021
    return p2

    .line 1023
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private handleUpdate(III)V
    .locals 5
    .param p1, "positionStart"    # I
    .param p2, "itemCountOrToPosition"    # I
    .param p3, "cmd"    # I

    .line 1358
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    .line 1362
    .local v0, "minPosition":I
    :goto_0
    const/4 v1, 0x3

    if-ne p3, v1, :cond_2

    .line 1363
    if-ge p1, p2, :cond_1

    .line 1364
    add-int/lit8 v2, p2, 0x1

    .line 1365
    .local v2, "affectedRangeEnd":I
    move v3, p1

    .local v3, "affectedRangeStart":I
    goto :goto_1

    .line 1367
    .end local v2    # "affectedRangeEnd":I
    .end local v3    # "affectedRangeStart":I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    .line 1368
    .restart local v2    # "affectedRangeEnd":I
    move v3, p2

    .restart local v3    # "affectedRangeStart":I
    goto :goto_1

    .line 1371
    .end local v2    # "affectedRangeEnd":I
    .end local v3    # "affectedRangeStart":I
    :cond_2
    move v3, p1

    .line 1372
    .restart local v3    # "affectedRangeStart":I
    add-int v2, p1, p2

    .line 1375
    .restart local v2    # "affectedRangeEnd":I
    :goto_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    .line 1376
    if-eqz p3, :cond_5

    const/4 v4, 0x1

    if-eq p3, v4, :cond_4

    if-eq p3, v1, :cond_3

    goto :goto_2

    .line 1385
    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1, p1, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    .line 1386
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1, p2, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_2

    .line 1381
    :cond_4
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    .line 1382
    goto :goto_2

    .line 1378
    :cond_5
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    .line 1379
    nop

    .line 1390
    :goto_2
    if-gt v2, v0, :cond_6

    .line 1391
    return-void

    .line 1394
    :cond_6
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    .line 1395
    .local v1, "maxPosition":I
    :goto_3
    if-gt v3, v1, :cond_8

    .line 1396
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 1398
    :cond_8
    return-void
.end method

.method private layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1618
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    .line 1625
    .local v0, "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    add-int v4, p2, v1

    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    add-int v5, p3, v1

    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    sub-int v6, p4, v1

    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v7, p5, v1

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 1627
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I

    .line 1029
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1030
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    .line 1031
    .local v0, "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    .line 1033
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-direct {p0, p3, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    .line 1035
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 1036
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "lp"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    .line 1000
    iget-boolean v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1001
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_0

    .line 1002
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mFullSizeSpec:I

    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->height:I

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mHeightSpec:I

    .line 1003
    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getSpecForDimension(II)I

    move-result v1

    .line 1002
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    goto :goto_0

    .line 1005
    :cond_0
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->width:I

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mWidthSpec:I

    .line 1006
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getSpecForDimension(II)I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 1005
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    goto :goto_0

    .line 1009
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_2

    .line 1010
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mWidthSpec:I

    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->height:I

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mHeightSpec:I

    .line 1011
    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getSpecForDimension(II)I

    move-result v1

    .line 1010
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    goto :goto_0

    .line 1013
    :cond_2
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->width:I

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mWidthSpec:I

    .line 1014
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getSpecForDimension(II)I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mHeightSpec:I

    .line 1013
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    .line 1017
    :goto_0
    return-void
.end method

.method private preferLastSpan(I)Z
    .locals 4
    .param p1, "layoutDir"    # I

    .line 1779
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 1780
    if-ne p1, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2

    .line 1782
    :cond_2
    if-ne p1, v1, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne v0, v1, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-ne v0, v1, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    return v2
.end method

.method private prependViewToAllSpans(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1612
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1613
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    .line 1612
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1615
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private recycle(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;)V
    .locals 3
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    .line 1568
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 1570
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v0, v1, :cond_0

    .line 1571
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->recycleFromEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V

    goto :goto_2

    .line 1573
    :cond_0
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->recycleFromStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V

    goto :goto_2

    .line 1578
    :cond_1
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v0, v1, :cond_3

    .line 1580
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMaxStart(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1582
    .local v0, "scrolled":I
    if-gez v0, :cond_2

    .line 1583
    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    .local v1, "line":I
    goto :goto_0

    .line 1585
    .end local v1    # "line":I
    :cond_2
    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    iget v2, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1587
    .restart local v1    # "line":I
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->recycleFromEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V

    .line 1588
    .end local v0    # "scrolled":I
    .end local v1    # "line":I
    goto :goto_2

    .line 1590
    :cond_3
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMinEnd(I)I

    move-result v0

    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    sub-int/2addr v0, v1

    .line 1592
    .restart local v0    # "scrolled":I
    if-gez v0, :cond_4

    .line 1593
    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    .restart local v1    # "line":I
    goto :goto_1

    .line 1595
    .end local v1    # "line":I
    :cond_4
    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    iget v2, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 1597
    .restart local v1    # "line":I
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->recycleFromStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V

    .line 1601
    .end local v0    # "scrolled":I
    .end local v1    # "line":I
    :goto_2
    return-void
.end method

.method private recycleFromEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V
    .locals 7
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "line"    # I

    .line 1746
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    .line 1748
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_6

    .line 1749
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1750
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    .line 1751
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    .line 1753
    .local v3, "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    iget-boolean v4, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 1754
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v6, :cond_1

    .line 1755
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->access$300(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 1756
    return-void

    .line 1754
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1759
    .end local v4    # "j":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_2
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_2

    .line 1760
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->popEnd()V

    .line 1759
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v4    # "j":I
    :cond_2
    goto :goto_3

    .line 1763
    :cond_3
    iget-object v4, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->access$300(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 1764
    return-void

    .line 1766
    :cond_4
    iget-object v4, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->popEnd()V

    .line 1768
    :goto_3
    invoke-virtual {p0, v2, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 1769
    .end local v3    # "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    nop

    .line 1748
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1770
    .restart local v2    # "child":Landroid/view/View;
    :cond_5
    return-void

    .line 1773
    .end local v2    # "child":Landroid/view/View;
    :cond_6
    return-void
.end method

.method private recycleFromStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "line"    # I

    .line 1718
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 1719
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1720
    .local v0, "child":Landroid/view/View;
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    if-gt v1, p2, :cond_5

    .line 1721
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    .line 1723
    .local v1, "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    iget-boolean v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 1724
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v4, :cond_1

    .line 1725
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->access$300(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 1726
    return-void

    .line 1724
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1729
    .end local v2    # "j":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_2
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v3, :cond_2

    .line 1730
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->popStart()V

    .line 1729
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "j":I
    :cond_2
    goto :goto_3

    .line 1733
    :cond_3
    iget-object v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->access$300(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 1734
    return-void

    .line 1736
    :cond_4
    iget-object v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->popStart()V

    .line 1738
    :goto_3
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 1739
    .end local v1    # "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    nop

    .line 1742
    .end local v0    # "child":Landroid/view/View;
    goto :goto_0

    .line 1740
    .restart local v0    # "child":Landroid/view/View;
    :cond_5
    return-void

    .line 1743
    .end local v0    # "child":Landroid/view/View;
    :cond_6
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .line 529
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    goto :goto_1

    .line 530
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 534
    :goto_1
    return-void
.end method

.method private setLayoutStateDirection(I)V
    .locals 5
    .param p1, "direction"    # I

    .line 1306
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iput p1, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    .line 1307
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ne v1, v4, :cond_1

    .line 1308
    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput v2, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mItemDirection:I

    .line 1309
    return-void
.end method

.method private updateAllRemainingSpans(II)V
    .locals 2
    .param p1, "layoutDir"    # I
    .param p2, "targetLine"    # I

    .line 1630
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    .line 1631
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->access$300(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1632
    goto :goto_1

    .line 1634
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateRemainingSpans(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;II)V

    .line 1630
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1636
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private updateAnchorFromChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    .line 703
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findLastReferenceChildPosition(I)I

    move-result v0

    goto :goto_0

    .line 705
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstReferenceChildPosition(I)I

    move-result v0

    :goto_0
    iput v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 706
    const/high16 v0, -0x80000000

    iput v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 707
    const/4 v0, 0x1

    return v0
.end method

.method private updateLayoutState(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 5
    .param p1, "anchorPosition"    # I
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1279
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    .line 1280
    iput p1, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mCurrentPosition:I

    .line 1281
    const/4 v0, 0x0

    .line 1282
    .local v0, "startExtra":I
    const/4 v2, 0x0

    .line 1283
    .local v2, "endExtra":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->isSmoothScrolling()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1284
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getTargetScrollPosition()I

    move-result v3

    .line 1285
    .local v3, "targetPos":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1286
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ge v3, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-ne v4, v1, :cond_1

    .line 1287
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v2

    goto :goto_0

    .line 1289
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    .line 1295
    .end local v3    # "targetPos":I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getClipToPadding()Z

    move-result v1

    .line 1296
    .local v1, "clipToPadding":Z
    if-eqz v1, :cond_3

    .line 1297
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    sub-int/2addr v4, v0

    iput v4, v3, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    .line 1298
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v3, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    goto :goto_1

    .line 1300
    :cond_3
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEnd()I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v3, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    .line 1301
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    neg-int v4, v0

    iput v4, v3, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    .line 1303
    :goto_1
    return-void
.end method

.method private updateRemainingSpans(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;II)V
    .locals 5
    .param p1, "span"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    .param p2, "layoutDir"    # I
    .param p3, "targetLine"    # I

    .line 1639
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getDeletedSize()I

    move-result v0

    .line 1640
    .local v0, "deletedSize":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 1641
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v2

    .line 1642
    .local v2, "line":I
    add-int v3, v2, v0

    if-gt v3, p3, :cond_0

    .line 1643
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v4, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v3, v4, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 1645
    .end local v2    # "line":I
    :cond_0
    goto :goto_0

    .line 1646
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v2

    .line 1647
    .restart local v2    # "line":I
    sub-int v3, v2, v0

    if-lt v3, p3, :cond_2

    .line 1648
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v4, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v3, v4, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 1651
    .end local v2    # "line":I
    :cond_2
    :goto_0
    return-void
.end method

.method private updateSpecWithExtra(III)I
    .locals 2
    .param p1, "spec"    # I
    .param p2, "startInset"    # I
    .param p3, "endInset"    # I

    .line 1039
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1040
    return p1

    .line 1042
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1043
    .local v0, "mode":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1047
    :cond_1
    return p1

    .line 1044
    :cond_2
    :goto_0
    nop

    .line 1045
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    .line 1044
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1
.end method


# virtual methods
.method areAllEndsEqual()Z
    .locals 5

    .line 1676
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    .line 1677
    .local v0, "end":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_1

    .line 1678
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v4

    if-eq v4, v0, :cond_0

    .line 1679
    return v1

    .line 1677
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1682
    .end local v3    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method areAllStartsEqual()Z
    .locals 5

    .line 1686
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    .line 1687
    .local v0, "start":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_1

    .line 1688
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v4

    if-eq v4, v0, :cond_0

    .line 1689
    return v1

    .line 1687
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1692
    .end local v3    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 489
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 491
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 1836
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 1831
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public checkLayoutParams(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 2012
    instance-of v0, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    return v0
.end method

.method public computeHorizontalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 959
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 938
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 980
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 975
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 954
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 996
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public findFirstCompletelyVisibleItemPositions([I)[I
    .locals 3
    .param p1, "into"    # [I

    .line 860
    if-nez p1, :cond_0

    .line 861
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v0, [I

    goto :goto_0

    .line 862
    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-lt v0, v1, :cond_2

    .line 866
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    .line 867
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 866
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 869
    .end local v0    # "i":I
    :cond_1
    return-object p1

    .line 863
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", array size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;
    .locals 7
    .param p1, "fullyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .line 1223
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 1224
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1225
    .local v0, "boundsStart":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    .line 1226
    .local v1, "boundsEnd":I
    const/4 v2, 0x0

    .line 1227
    .local v2, "partiallyVisible":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 1228
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1229
    .local v4, "child":Landroid/view/View;
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5, v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 1230
    .local v5, "childStart":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    .line 1231
    .local v6, "childEnd":I
    if-le v6, v0, :cond_3

    if-lt v5, v1, :cond_0

    .line 1232
    goto :goto_2

    .line 1234
    :cond_0
    if-le v6, v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 1239
    :cond_1
    if-eqz p2, :cond_3

    if-nez v2, :cond_3

    .line 1240
    move-object v2, v4

    goto :goto_2

    .line 1237
    :cond_2
    :goto_1
    return-object v4

    .line 1227
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childStart":I
    .end local v6    # "childEnd":I
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1243
    .end local v3    # "i":I
    :cond_4
    return-object v2
.end method

.method findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;
    .locals 8
    .param p1, "fullyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .line 1192
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 1193
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1194
    .local v0, "boundsStart":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    .line 1195
    .local v1, "boundsEnd":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    .line 1196
    .local v2, "limit":I
    const/4 v3, 0x0

    .line 1197
    .local v3, "partiallyVisible":Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 1198
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1199
    .local v5, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 1200
    .local v6, "childStart":I
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    .line 1201
    .local v7, "childEnd":I
    if-le v7, v0, :cond_3

    if-lt v6, v1, :cond_0

    .line 1202
    goto :goto_2

    .line 1204
    :cond_0
    if-ge v6, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 1209
    :cond_1
    if-eqz p2, :cond_3

    if-nez v3, :cond_3

    .line 1210
    move-object v3, v5

    goto :goto_2

    .line 1207
    :cond_2
    :goto_1
    return-object v5

    .line 1197
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childStart":I
    .end local v7    # "childEnd":I
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1213
    .end local v4    # "i":I
    :cond_4
    return-object v3
.end method

.method findFirstVisibleItemPositionInt()I
    .locals 2

    .line 1162
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1163
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v0

    :goto_0
    nop

    .line 1164
    .local v0, "first":Landroid/view/View;
    if-nez v0, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_1
    return v1
.end method

.method public findFirstVisibleItemPositions([I)[I
    .locals 3
    .param p1, "into"    # [I

    .line 828
    if-nez p1, :cond_0

    .line 829
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v0, [I

    goto :goto_0

    .line 830
    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-lt v0, v1, :cond_2

    .line 834
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    .line 835
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findFirstVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 837
    .end local v0    # "i":I
    :cond_1
    return-object p1

    .line 831
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", array size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findLastCompletelyVisibleItemPositions([I)[I
    .locals 3
    .param p1, "into"    # [I

    .line 924
    if-nez p1, :cond_0

    .line 925
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v0, [I

    goto :goto_0

    .line 926
    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-lt v0, v1, :cond_2

    .line 930
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    .line 931
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 930
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 933
    .end local v0    # "i":I
    :cond_1
    return-object p1

    .line 927
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", array size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findLastVisibleItemPositions([I)[I
    .locals 3
    .param p1, "into"    # [I

    .line 892
    if-nez p1, :cond_0

    .line 893
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v0, [I

    goto :goto_0

    .line 894
    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-lt v0, v1, :cond_2

    .line 898
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    .line 899
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findLastVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 898
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 901
    .end local v0    # "i":I
    :cond_1
    return-object p1

    .line 895
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", array size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateDefaultLayoutParams()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 2

    .line 1992
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1998
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2003
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 2004
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 2006
    :cond_0
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getColumnCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1179
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1180
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    return v0

    .line 1182
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public getGapStrategy()I
    .locals 1

    .line 460
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 2016
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .line 549
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getRowCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1170
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 1171
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    return v0

    .line 1173
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getRowCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public getSpanCount()I
    .locals 1

    .line 499
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    return v0
.end method

.method hasGapsToFix()Landroid/view/View;
    .locals 16

    .line 302
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 303
    .local v1, "startChildIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 304
    .local v2, "endChildIndex":I
    new-instance v4, Ljava/util/BitSet;

    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v4, v5}, Ljava/util/BitSet;-><init>(I)V

    .line 305
    .local v4, "mSpansToCheck":Ljava/util/BitSet;
    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v3}, Ljava/util/BitSet;->set(IIZ)V

    .line 308
    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v7, -0x1

    if-ne v5, v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v7

    .line 310
    .local v5, "preferredSpanDir":I
    :goto_0
    iget-boolean v8, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_1

    .line 311
    move v8, v2

    .line 312
    .local v8, "firstChildIndex":I
    add-int/lit8 v9, v1, -0x1

    .local v9, "childLimit":I
    goto :goto_1

    .line 314
    .end local v8    # "firstChildIndex":I
    .end local v9    # "childLimit":I
    :cond_1
    move v8, v1

    .line 315
    .restart local v8    # "firstChildIndex":I
    add-int/lit8 v9, v2, 0x1

    .line 317
    .restart local v9    # "childLimit":I
    :goto_1
    if-ge v8, v9, :cond_2

    move v7, v3

    .line 318
    .local v7, "nextChildDiff":I
    :cond_2
    move v10, v8

    .local v10, "i":I
    :goto_2
    if-eq v10, v9, :cond_e

    .line 319
    invoke-virtual {v0, v10}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 320
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    .line 321
    .local v12, "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    iget-object v13, v12, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget v13, v13, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v4, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 322
    iget-object v13, v12, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-direct {v0, v13}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->checkSpanForGap(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 323
    return-object v11

    .line 325
    :cond_3
    iget-object v13, v12, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget v13, v13, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v4, v13}, Ljava/util/BitSet;->clear(I)V

    .line 327
    :cond_4
    iget-boolean v13, v12, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v13, :cond_5

    .line 328
    goto :goto_6

    .line 331
    :cond_5
    add-int v13, v10, v7

    if-eq v13, v9, :cond_d

    .line 332
    add-int v13, v10, v7

    invoke-virtual {v0, v13}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 333
    .local v13, "nextChild":Landroid/view/View;
    const/4 v14, 0x0

    .line 334
    .local v14, "compareSpans":Z
    iget-boolean v15, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v15, :cond_8

    .line 336
    iget-object v15, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v15, v11}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v15

    .line 337
    .local v15, "myEnd":I
    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v13}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    .line 338
    .local v3, "nextEnd":I
    if-ge v15, v3, :cond_6

    .line 339
    return-object v11

    .line 340
    :cond_6
    if-ne v15, v3, :cond_7

    .line 341
    const/4 v14, 0x1

    .line 343
    .end local v3    # "nextEnd":I
    .end local v15    # "myEnd":I
    :cond_7
    goto :goto_3

    .line 344
    :cond_8
    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v11}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 345
    .local v3, "myStart":I
    iget-object v15, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v15, v13}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v15

    .line 346
    .local v15, "nextStart":I
    if-le v3, v15, :cond_9

    .line 347
    return-object v11

    .line 348
    :cond_9
    if-ne v3, v15, :cond_a

    .line 349
    const/4 v14, 0x1

    .line 352
    .end local v3    # "myStart":I
    .end local v15    # "nextStart":I
    :cond_a
    :goto_3
    if-eqz v14, :cond_d

    .line 354
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    .line 355
    .local v3, "nextLp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    iget-object v15, v12, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget v15, v15, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    iget-object v6, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget v6, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v15, v6

    if-gez v15, :cond_b

    const/4 v6, 0x1

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    :goto_4
    if-gez v5, :cond_c

    const/4 v15, 0x1

    goto :goto_5

    :cond_c
    const/4 v15, 0x0

    :goto_5
    if-eq v6, v15, :cond_d

    .line 356
    return-object v11

    .line 318
    .end local v3    # "nextLp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    .end local v13    # "nextChild":Landroid/view/View;
    .end local v14    # "compareSpans":Z
    :cond_d
    :goto_6
    add-int/2addr v10, v7

    const/4 v3, 0x1

    const/4 v6, 0x0

    goto/16 :goto_2

    .line 362
    .end local v10    # "i":I
    :cond_e
    const/4 v3, 0x0

    return-object v3
.end method

.method public invalidateSpanAssignments()V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 510
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 511
    return-void
.end method

.method isLayoutRTL()Z
    .locals 2

    .line 537
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 2
    .param p1, "dx"    # I

    .line 1313
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 1314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 1315
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 1314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1317
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 2
    .param p1, "dy"    # I

    .line 1321
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 1322
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 1323
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 1322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1325
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V
    .locals 2
    .param p1, "view"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 290
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 291
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->clear()V

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1135
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1136
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1138
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1139
    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    .line 1140
    .local v3, "start":Landroid/view/View;
    invoke-virtual {p0, v2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v1

    .line 1141
    .local v1, "end":Landroid/view/View;
    if-eqz v3, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 1144
    :cond_0
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1145
    .local v2, "startPos":I
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 1146
    .local v4, "endPos":I
    if-ge v2, v4, :cond_1

    .line 1147
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 1148
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    goto :goto_1

    .line 1150
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 1151
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    goto :goto_1

    .line 1142
    .end local v2    # "startPos":I
    .end local v4    # "endPos":I
    :cond_2
    :goto_0
    return-void

    .line 1154
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .end local v1    # "end":Landroid/view/View;
    .end local v3    # "start":Landroid/view/View;
    :cond_3
    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 10
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1114
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1115
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    .line 1116
    invoke-super {p0, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1117
    return-void

    .line 1119
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    .line 1120
    .local v1, "sglp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 1121
    nop

    .line 1122
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v4

    iget-boolean v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    :cond_1
    move v5, v3

    const/4 v6, -0x1

    const/4 v7, -0x1

    iget-boolean v8, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v9, 0x0

    .line 1121
    invoke-static/range {v4 .. v9}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    goto :goto_0

    .line 1126
    :cond_2
    const/4 v2, -0x1

    const/4 v4, -0x1

    .line 1128
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v5

    iget-boolean v6, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v6, :cond_3

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    :cond_3
    move v6, v3

    iget-boolean v7, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v8, 0x0

    .line 1126
    move v3, v2

    invoke-static/range {v3 .. v8}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 1131
    :goto_0
    return-void
.end method

.method public onItemsAdded(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 1334
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1335
    return-void
.end method

.method public onItemsChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 1339
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 1340
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 1341
    return-void
.end method

.method public onItemsMoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;III)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .line 1345
    const/4 v0, 0x3

    invoke-direct {p0, p2, p3, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1346
    return-void
.end method

.method public onItemsRemoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 1329
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1330
    return-void
.end method

.method public onItemsUpdated(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;IILjava/lang/Object;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 1351
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1352
    return-void
.end method

.method public onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 8
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 553
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 554
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    .line 555
    .local v0, "anchorInfo":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 557
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-eq v1, v2, :cond_1

    .line 558
    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 559
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->removeAndRecycleAllViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 560
    return-void

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v1, :cond_2

    .line 565
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->applyPendingSavedState(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)V

    goto :goto_0

    .line 567
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 568
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 571
    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateAnchorInfoForLayout(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 573
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    const/4 v3, 0x1

    if-nez v1, :cond_4

    .line 574
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-ne v1, v4, :cond_3

    .line 575
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eq v1, v4, :cond_4

    .line 576
    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 577
    iput-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 581
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    const/high16 v4, -0x80000000

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v1, :cond_5

    iget v1, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v1, v3, :cond_9

    .line 583
    :cond_5
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    if-eqz v1, :cond_8

    .line 584
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v5, :cond_7

    .line 586
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->clear()V

    .line 587
    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    if-eq v5, v4, :cond_6

    .line 588
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v1

    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 584
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_7
    goto :goto_3

    .line 592
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v5, :cond_9

    .line 593
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v1

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iget v7, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->cacheReferenceLineAndClear(ZI)V

    .line 592
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 597
    .end local v1    # "i":I
    :cond_9
    :goto_3
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->detachAndScrapAttachedViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 598
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 599
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateMeasureSpecs()V

    .line 600
    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, v5, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateLayoutState(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    .line 601
    iget-boolean v5, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_a

    .line 603
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 604
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    invoke-direct {p0, p1, v5, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    .line 606
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 607
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mItemDirection:I

    add-int/2addr v6, v7

    iput v6, v5, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mCurrentPosition:I

    .line 608
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    invoke-direct {p0, p1, v5, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    goto :goto_4

    .line 611
    :cond_a
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 612
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    invoke-direct {p0, p1, v5, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    .line 614
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 615
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mItemDirection:I

    add-int/2addr v6, v7

    iput v6, v5, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mCurrentPosition:I

    .line 616
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    invoke-direct {p0, p1, v5, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    .line 619
    :goto_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_c

    .line 620
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_b

    .line 621
    invoke-direct {p0, p1, p2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fixEndGap(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)V

    .line 622
    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fixStartGap(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)V

    goto :goto_5

    .line 624
    :cond_b
    invoke-direct {p0, p1, p2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fixStartGap(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)V

    .line 625
    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fixEndGap(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)V

    .line 629
    :cond_c
    :goto_5
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_10

    .line 630
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v5, :cond_e

    .line 631
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_e

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v5, :cond_d

    .line 632
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_e

    :cond_d
    move v1, v3

    goto :goto_6

    :cond_e
    nop

    .line 633
    .local v1, "needToCheckForGaps":Z
    :goto_6
    if-eqz v1, :cond_f

    .line 634
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 635
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 637
    :cond_f
    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 638
    iput v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 640
    .end local v1    # "needToCheckForGaps":Z
    :cond_10
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 641
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 642
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    .line 643
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1052
    instance-of v0, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1053
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    .line 1054
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 1058
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1062
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1063
    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;)V

    return-object v1

    .line 1065
    :cond_0
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 1066
    .local v0, "state":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 1067
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1068
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 1070
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v1, :cond_1

    .line 1071
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iput-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 1072
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v1, v1

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 1073
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    iput-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    goto :goto_0

    .line 1075
    :cond_1
    iput v2, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 1078
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 1079
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 1080
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    goto :goto_1

    .line 1081
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1082
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemPositionInt()I

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1083
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 1084
    new-array v1, v1, [I

    iput-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 1085
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_5

    .line 1087
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_3

    .line 1088
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    .line 1089
    .local v2, "line":I
    if-eq v2, v3, :cond_4

    .line 1090
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_3

    .line 1093
    .end local v2    # "line":I
    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    .line 1094
    .restart local v2    # "line":I
    if-eq v2, v3, :cond_4

    .line 1095
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1098
    :cond_4
    :goto_3
    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aput v2, v3, v1

    .line 1085
    .end local v2    # "line":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    :cond_5
    goto :goto_4

    .line 1101
    :cond_6
    const/4 v1, -0x1

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1102
    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1103
    iput v2, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 1108
    :goto_4
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 283
    if-nez p1, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->checkForGaps()Z

    .line 286
    :cond_0
    return-void
.end method

.method scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 7
    .param p1, "dt"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1913
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 1916
    if-lez p1, :cond_0

    .line 1917
    const/4 v0, 0x1

    .line 1918
    .local v0, "layoutDir":I
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    .local v1, "referenceChildPosition":I
    goto :goto_0

    .line 1920
    .end local v0    # "layoutDir":I
    .end local v1    # "referenceChildPosition":I
    :cond_0
    const/4 v0, -0x1

    .line 1921
    .restart local v0    # "layoutDir":I
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    .line 1923
    .restart local v1    # "referenceChildPosition":I
    :goto_0
    invoke-direct {p0, v1, p3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateLayoutState(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    .line 1924
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 1925
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mItemDirection:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mCurrentPosition:I

    .line 1926
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1927
    .local v2, "absDt":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iput v2, v3, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    .line 1928
    invoke-direct {p0, p2, v3, p3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v3

    .line 1930
    .local v3, "consumed":I
    if-ge v2, v3, :cond_1

    .line 1931
    move v4, p1

    .local v4, "totalScroll":I
    goto :goto_1

    .line 1932
    .end local v4    # "totalScroll":I
    :cond_1
    if-gez p1, :cond_2

    .line 1933
    neg-int v4, v3

    .restart local v4    # "totalScroll":I
    goto :goto_1

    .line 1935
    .end local v4    # "totalScroll":I
    :cond_2
    move v4, v3

    .line 1941
    .restart local v4    # "totalScroll":I
    :goto_1
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    neg-int v6, v4

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    .line 1943
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 1944
    return v4
.end method

.method public scrollHorizontallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1842
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 1882
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v0, p1, :cond_0

    .line 1883
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 1885
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 1886
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 1887
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 1888
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 1904
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1905
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 1907
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 1908
    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 1909
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 1910
    return-void
.end method

.method public scrollVerticallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1848
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setGapStrategy(I)V
    .locals 2
    .param p1, "gapStrategy"    # I

    .line 473
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 474
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    if-ne p1, v0, :cond_0

    .line 475
    return-void

    .line 477
    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 479
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_2
    :goto_0
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 483
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 484
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .line 406
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 410
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_2

    .line 411
    return-void

    .line 413
    :cond_2
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    .line 414
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    if-eqz v0, :cond_3

    .line 416
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 417
    .local v1, "tmp":Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 418
    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 420
    .end local v1    # "tmp":Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 421
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1
    .param p1, "reverseLayout"    # Z

    .line 437
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-eq v0, p1, :cond_0

    .line 439
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iput-boolean p1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 441
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 442
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 443
    return-void
.end method

.method public setSpanCount(I)V
    .locals 4
    .param p1, "spanCount"    # I

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 387
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-eq p1, v1, :cond_1

    .line 388
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->invalidateSpanAssignments()V

    .line 389
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    .line 390
    new-instance v1, Ljava/util/BitSet;

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 391
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v1, v1, [Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    .line 392
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 393
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    new-instance v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-direct {v3, p0, v1, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;ILcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;)V

    aput-object v3, v2, v1

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 397
    :cond_1
    return-void
.end method

.method public smoothScrollToPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "position"    # I

    .line 1862
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$2;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$2;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;Landroid/content/Context;)V

    .line 1876
    .local v0, "scroller":Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->setTargetPosition(I)V

    .line 1877
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->startSmoothScroll(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;)V

    .line 1878
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method updateAnchorFromPendingData(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 7
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    .line 712
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_8

    .line 716
    :cond_0
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v4

    if-lt v0, v4, :cond_1

    goto/16 :goto_7

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v0, v4, :cond_2

    goto :goto_0

    .line 784
    :cond_2
    iput v3, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 785
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    goto/16 :goto_6

    .line 725
    :cond_3
    :goto_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 726
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 729
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    goto :goto_1

    .line 730
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    :goto_1
    iput v1, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 732
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v1, v3, :cond_6

    .line 733
    iget-boolean v1, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v1, :cond_5

    .line 734
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v1, v2

    .line 736
    .local v1, "target":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    iput v2, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 737
    .end local v1    # "target":I
    goto :goto_2

    .line 738
    :cond_5
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v1, v2

    .line 740
    .restart local v1    # "target":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    iput v2, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 742
    .end local v1    # "target":I
    :goto_2
    return v4

    .line 746
    :cond_6
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    .line 747
    .local v1, "childSize":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v2

    if-le v1, v2, :cond_8

    .line 749
    iget-boolean v2, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v2, :cond_7

    .line 750
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    goto :goto_3

    .line 751
    :cond_7
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    :goto_3
    iput v2, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 752
    return v4

    .line 755
    :cond_8
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 756
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int/2addr v2, v5

    .line 757
    .local v2, "startGap":I
    if-gez v2, :cond_9

    .line 758
    neg-int v3, v2

    iput v3, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 759
    return v4

    .line 761
    :cond_9
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 762
    invoke-virtual {v6, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    .line 763
    .local v5, "endGap":I
    if-gez v5, :cond_a

    .line 764
    iput v5, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 765
    return v4

    .line 768
    :cond_a
    iput v3, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 769
    .end local v1    # "childSize":I
    .end local v2    # "startGap":I
    .end local v5    # "endGap":I
    goto :goto_5

    .line 772
    :cond_b
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v2, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 773
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v2, v3, :cond_d

    .line 774
    iget v2, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v2

    .line 776
    .local v2, "position":I
    if-ne v2, v4, :cond_c

    move v1, v4

    :cond_c
    iput-boolean v1, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 777
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 778
    .end local v2    # "position":I
    goto :goto_4

    .line 779
    :cond_d
    invoke-virtual {p2, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding(I)V

    .line 781
    :goto_4
    iput-boolean v4, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 783
    .end local v0    # "child":Landroid/view/View;
    :goto_5
    nop

    .line 787
    :goto_6
    return v4

    .line 717
    :cond_e
    :goto_7
    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 718
    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 719
    return v1

    .line 713
    :cond_f
    :goto_8
    return v1
.end method

.method updateAnchorInfoForLayout(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    .line 685
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateAnchorFromPendingData(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    return-void

    .line 688
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateAnchorFromChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    return-void

    .line 694
    :cond_1
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 695
    const/4 v0, 0x0

    iput v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 696
    return-void
.end method

.method updateMeasureSpecs()V
    .locals 4

    .line 791
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 792
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 793
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    .line 792
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 794
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 795
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mWidthSpec:I

    .line 796
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mHeightSpec:I

    goto :goto_0

    .line 798
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mHeightSpec:I

    .line 799
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mWidthSpec:I

    .line 801
    :goto_0
    return-void
.end method
