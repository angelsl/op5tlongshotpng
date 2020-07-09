.class public Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ViewDropHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;,
        Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;,
        Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;,
        Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field final mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

.field private mLastStackFromEnd:Z

.field private mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

.field mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 146
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .line 155
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    .line 103
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 110
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    .line 128
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    .line 138
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .line 156
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    .line 157
    invoke-virtual {p0, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setReverseLayout(Z)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 169
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    .line 103
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 110
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    .line 128
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    .line 138
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .line 170
    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 171
    .local v0, "properties":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    .line 172
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setReverseLayout(Z)V

    .line 173
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 174
    return-void
.end method

.method private computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 7
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1064
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1065
    const/4 v0, 0x0

    return v0

    .line 1067
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 1068
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1069
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v1

    .line 1070
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1068
    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Z)I

    move-result v0

    return v0
.end method

.method private computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 8
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1053
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1054
    const/4 v0, 0x0

    return v0

    .line 1056
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 1057
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1058
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v1

    .line 1059
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1057
    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;ZZ)I

    move-result v0

    return v0
.end method

.method private computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 7
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1075
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    const/4 v0, 0x0

    return v0

    .line 1078
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 1079
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1080
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v1

    .line 1081
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1079
    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Z)I

    move-result v0

    return v0
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 4
    .param p1, "focusDirection"    # I

    .line 1454
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    .line 1475
    return v3

    .line 1463
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1464
    :cond_1
    move v1, v3

    .line 1463
    :goto_0
    return v1

    .line 1469
    :cond_2
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_3

    goto :goto_1

    .line 1470
    :cond_3
    move v1, v3

    .line 1469
    :goto_1
    return v1

    .line 1460
    :cond_4
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne v2, v1, :cond_5

    goto :goto_2

    .line 1461
    :cond_5
    move v0, v3

    .line 1460
    :goto_2
    return v0

    .line 1466
    :cond_6
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-nez v1, :cond_7

    goto :goto_3

    .line 1467
    :cond_7
    move v0, v3

    .line 1466
    :goto_3
    return v0

    .line 1458
    :cond_8
    return v1

    .line 1456
    :cond_9
    return v0
.end method

.method private findFirstReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;
    .locals 6
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1571
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .line 1527
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1528
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1531
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .line 1509
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1510
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1513
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findLastReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;
    .locals 7
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1575
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v6

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findReferenceChildClosestToEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1549
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1550
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findLastReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 1549
    :goto_0
    return-object v0
.end method

.method private findReferenceChildClosestToStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1566
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findLastReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1567
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 1566
    :goto_0
    return-object v0
.end method

.method private fixLayoutEndGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I
    .locals 3
    .param p1, "endOffset"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .line 849
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    .line 850
    .local v0, "gap":I
    const/4 v1, 0x0

    .line 851
    .local v1, "fixOffset":I
    if-lez v0, :cond_1

    .line 852
    neg-int v2, v0

    invoke-virtual {p0, v2, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v2

    neg-int v1, v2

    .line 857
    add-int/2addr p1, v1

    .line 858
    if-eqz p4, :cond_0

    .line 860
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int v0, v2, p1

    .line 861
    if-lez v0, :cond_0

    .line 862
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    .line 863
    add-int v2, v0, v1

    return v2

    .line 866
    :cond_0
    return v1

    .line 854
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private fixLayoutStartGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I
    .locals 4
    .param p1, "startOffset"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .line 874
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    .line 875
    .local v0, "gap":I
    const/4 v1, 0x0

    .line 876
    .local v1, "fixOffset":I
    if-lez v0, :cond_1

    .line 878
    invoke-virtual {p0, v0, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v2

    neg-int v1, v2

    .line 882
    add-int/2addr p1, v1

    .line 883
    if-eqz p4, :cond_0

    .line 885
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v0, p1, v2

    .line 886
    if-lez v0, :cond_0

    .line 887
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    neg-int v3, v0

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    .line 888
    sub-int v2, v1, v0

    return v2

    .line 891
    :cond_0
    return v1

    .line 880
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .line 1497
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .line 1487
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private layoutForPredictiveAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;II)V
    .locals 16
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "startOffset"    # I
    .param p4, "endOffset"    # I

    .line 643
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_8

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v3

    if-nez v3, :cond_0

    move/from16 v11, p3

    move/from16 v12, p4

    goto/16 :goto_6

    .line 648
    :cond_0
    const/4 v3, 0x0

    .local v3, "scrapExtraStart":I
    const/4 v4, 0x0

    .line 649
    .local v4, "scrapExtraEnd":I
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v5

    .line 650
    .local v5, "scrapList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 651
    .local v6, "scrapSize":I
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 652
    .local v8, "firstChildPos":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_5

    .line 653
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 654
    .local v10, "scrap":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 655
    goto :goto_3

    .line 657
    :cond_1
    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v11

    .line 658
    .local v11, "position":I
    const/4 v12, 0x1

    if-ge v11, v8, :cond_2

    move v13, v12

    goto :goto_1

    :cond_2
    move v13, v7

    :goto_1
    iget-boolean v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v15, -0x1

    if-eq v13, v14, :cond_3

    .line 659
    move v12, v15

    goto :goto_2

    :cond_3
    nop

    .line 660
    .local v12, "direction":I
    :goto_2
    if-ne v12, v15, :cond_4

    .line 661
    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-object v14, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v13

    add-int/2addr v3, v13

    goto :goto_3

    .line 663
    :cond_4
    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-object v14, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v13

    add-int/2addr v4, v13

    .line 652
    .end local v10    # "scrap":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v11    # "position":I
    .end local v12    # "direction":I
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 671
    .end local v9    # "i":I
    :cond_5
    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput-object v5, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 672
    if-lez v3, :cond_6

    .line 673
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v9

    .line 674
    .local v9, "anchor":Landroid/view/View;
    invoke-virtual {v0, v9}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v10

    move/from16 v11, p3

    invoke-direct {v0, v10, v11}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 675
    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v3, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 676
    iput v7, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 677
    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 678
    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v10, v2, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    goto :goto_4

    .line 672
    .end local v9    # "anchor":Landroid/view/View;
    :cond_6
    move/from16 v11, p3

    .line 681
    :goto_4
    if-lez v4, :cond_7

    .line 682
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v9

    .line 683
    .restart local v9    # "anchor":Landroid/view/View;
    invoke-virtual {v0, v9}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v10

    move/from16 v12, p4

    invoke-direct {v0, v10, v12}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 684
    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v4, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 685
    iput v7, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 686
    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 687
    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v10, v2, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    goto :goto_5

    .line 681
    .end local v9    # "anchor":Landroid/view/View;
    :cond_7
    move/from16 v12, p4

    .line 689
    :goto_5
    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v9, 0x0

    iput-object v9, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 690
    return-void

    .line 643
    .end local v3    # "scrapExtraStart":I
    .end local v4    # "scrapExtraEnd":I
    .end local v5    # "scrapList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    .end local v6    # "scrapSize":I
    .end local v8    # "firstChildPos":I
    :cond_8
    move/from16 v11, p3

    move/from16 v12, p4

    .line 645
    :goto_6
    return-void
.end method

.method private logChildren()V
    .locals 5

    .line 1763
    const-string v0, "LinearLayoutManager"

    const-string v1, "internal representation of views on the screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1765
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1766
    .local v2, "child":Landroid/view/View;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", coord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1767
    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1766
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1769
    .end local v1    # "i":I
    :cond_0
    const-string v1, "=============="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    return-void
.end method

.method private recycleByLayoutState(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;)V
    .locals 2
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    .line 1298
    iget-boolean v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mRecycle:Z

    if-nez v0, :cond_0

    .line 1299
    return-void

    .line 1301
    :cond_0
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1302
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleViewsFromEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1304
    :cond_1
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleViewsFromStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V

    .line 1306
    :goto_0
    return-void
.end method

.method private recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V
    .locals 1
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 1192
    if-ne p2, p3, :cond_0

    .line 1193
    return-void

    .line 1198
    :cond_0
    if-le p3, p2, :cond_2

    .line 1199
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 1200
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->removeAndRecycleViewAt(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 1199
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_2

    .line 1203
    :cond_2
    move v0, p2

    .restart local v0    # "i":I
    :goto_1
    if-le v0, p3, :cond_3

    .line 1204
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->removeAndRecycleViewAt(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 1203
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1207
    .end local v0    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method private recycleViewsFromEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "dt"    # I

    .line 1257
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    .line 1258
    .local v0, "childCount":I
    if-gez p2, :cond_0

    .line 1263
    return-void

    .line 1265
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEnd()I

    move-result v1

    sub-int/2addr v1, p2

    .line 1266
    .local v1, "limit":I
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_3

    .line 1267
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1268
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1269
    .local v3, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ge v4, v1, :cond_1

    .line 1270
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V

    .line 1271
    return-void

    .line 1267
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_2
    goto :goto_2

    .line 1275
    :cond_3
    add-int/lit8 v2, v0, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_5

    .line 1276
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1277
    .restart local v3    # "child":Landroid/view/View;
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ge v4, v1, :cond_4

    .line 1278
    add-int/lit8 v4, v0, -0x1

    invoke-direct {p0, p1, v4, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V

    .line 1279
    return-void

    .line 1275
    .end local v3    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1284
    .end local v2    # "i":I
    :cond_5
    :goto_2
    return-void
.end method

.method private recycleViewsFromStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "dt"    # I

    .line 1218
    if-gez p2, :cond_0

    .line 1223
    return-void

    .line 1226
    :cond_0
    move v0, p2

    .line 1227
    .local v0, "limit":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v1

    .line 1228
    .local v1, "childCount":I
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_3

    .line 1229
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1230
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1231
    .local v3, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-le v4, v0, :cond_1

    .line 1232
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, p1, v4, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V

    .line 1233
    return-void

    .line 1229
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_2
    goto :goto_2

    .line 1237
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 1238
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1239
    .restart local v3    # "child":Landroid/view/View;
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-le v4, v0, :cond_4

    .line 1240
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V

    .line 1241
    return-void

    .line 1237
    .end local v3    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1245
    .end local v2    # "i":I
    :cond_5
    :goto_2
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .line 341
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_1

    .line 342
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 346
    :goto_1
    return-void
.end method

.method private updateAnchorFromChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)Z
    .locals 6
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .line 722
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 723
    return v1

    .line 725
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 726
    .local v0, "focused":Landroid/view/View;
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {p3, v0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->access$000(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 727
    invoke-virtual {p3, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;)V

    .line 728
    return v2

    .line 730
    :cond_1
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    if-eq v3, v4, :cond_2

    .line 731
    return v1

    .line 733
    :cond_2
    iget-boolean v3, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v3, :cond_3

    .line 734
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 735
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChildClosestToStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    :goto_0
    nop

    .line 736
    .local v3, "referenceChild":Landroid/view/View;
    if-eqz v3, :cond_8

    .line 737
    invoke-virtual {p3, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 740
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 742
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 743
    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 744
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 745
    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 746
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    if-ge v4, v5, :cond_5

    :cond_4
    move v1, v2

    .line 747
    .local v1, "notVisible":Z
    :cond_5
    if-eqz v1, :cond_7

    .line 748
    iget-boolean v4, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v4, :cond_6

    .line 749
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    goto :goto_1

    .line 750
    :cond_6
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    :goto_1
    iput v4, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 753
    .end local v1    # "notVisible":Z
    :cond_7
    return v2

    .line 755
    :cond_8
    return v1
.end method

.method private updateAnchorFromPendingData(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)Z
    .locals 7
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .line 763
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_6

    .line 767
    :cond_0
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v4

    if-lt v0, v4, :cond_1

    goto/16 :goto_5

    .line 778
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    iput v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 779
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 782
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 783
    iget-boolean v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_2

    .line 784
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iget v1, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 787
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iget v1, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 790
    :goto_0
    return v2

    .line 793
    :cond_3
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v0, v3, :cond_c

    .line 794
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 795
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_8

    .line 796
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    .line 797
    .local v3, "childSize":I
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 799
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 800
    return v2

    .line 802
    :cond_4
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 803
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int/2addr v4, v5

    .line 804
    .local v4, "startGap":I
    if-gez v4, :cond_5

    .line 805
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    iput v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 806
    iput-boolean v1, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 807
    return v2

    .line 809
    :cond_5
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 810
    invoke-virtual {v5, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v1, v5

    .line 811
    .local v1, "endGap":I
    if-gez v1, :cond_6

    .line 812
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iput v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 813
    iput-boolean v2, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 814
    return v2

    .line 816
    :cond_6
    iget-boolean v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_7

    .line 817
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 818
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpaceChange()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    .line 819
    :cond_7
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    :goto_1
    iput v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 820
    .end local v1    # "endGap":I
    .end local v3    # "childSize":I
    .end local v4    # "startGap":I
    goto :goto_3

    .line 821
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_b

    .line 823
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 824
    .local v3, "pos":I
    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    if-ge v4, v3, :cond_9

    move v4, v2

    goto :goto_2

    :cond_9
    move v4, v1

    :goto_2
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne v4, v5, :cond_a

    move v1, v2

    :cond_a
    iput-boolean v1, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 827
    .end local v3    # "pos":I
    :cond_b
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 829
    :goto_3
    return v2

    .line 832
    .end local v0    # "child":Landroid/view/View;
    :cond_c
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 834
    if-eqz v0, :cond_d

    .line 835
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_4

    .line 838
    :cond_d
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 841
    :goto_4
    return v2

    .line 768
    :cond_e
    :goto_5
    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    .line 769
    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 773
    return v1

    .line 764
    :cond_f
    :goto_6
    return v1
.end method

.method private updateAnchorInfoForLayout(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 1
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .line 694
    invoke-direct {p0, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateAnchorFromPendingData(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    return-void

    .line 701
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateAnchorFromChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    return-void

    .line 710
    :cond_1
    invoke-virtual {p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 711
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput v0, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 712
    return-void
.end method

.method private updateLayoutState(IIZLcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 6
    .param p1, "layoutDirection"    # I
    .param p2, "requiredSpace"    # I
    .param p3, "canUseExistingSpace"    # Z
    .param p4, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1119
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getExtraLayoutSpace(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1120
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 1122
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 1123
    iget v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndPadding()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1125
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v0

    .line 1127
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1128
    :cond_0
    move v1, v2

    :goto_0
    iput v1, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1129
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1130
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1132
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1133
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1135
    .end local v0    # "child":Landroid/view/View;
    .local v1, "fastScrollSpace":I
    goto :goto_2

    .line 1136
    .end local v1    # "fastScrollSpace":I
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v0

    .line 1137
    .restart local v0    # "child":Landroid/view/View;
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1138
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_2

    move v1, v2

    goto :goto_1

    .line 1139
    :cond_2
    nop

    :goto_1
    iput v1, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1140
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1141
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1142
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1143
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    add-int/2addr v1, v2

    .line 1145
    .end local v0    # "child":Landroid/view/View;
    .restart local v1    # "fastScrollSpace":I
    :goto_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1146
    if-eqz p3, :cond_3

    .line 1147
    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1149
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1150
    return-void
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .line 899
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 900
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 901
    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 902
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 903
    iput v2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 904
    iput p2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 905
    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 906
    return-void
.end method

.method private updateLayoutStateToFillEnd(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .line 895
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 896
    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .line 913
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 914
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 915
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 916
    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 917
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 918
    iput p2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 919
    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 921
    return-void
.end method

.method private updateLayoutStateToFillStart(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .line 909
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 910
    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 1180
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1181
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1183
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 278
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

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

    .line 286
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public computeHorizontalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1034
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1024
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1044
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 5
    .param p1, "targetPosition"    # I

    .line 438
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 439
    const/4 v0, 0x0

    return-object v0

    .line 441
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 442
    .local v1, "firstChildPos":I
    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    move v0, v2

    :cond_1
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, v3, :cond_2

    const/4 v2, -0x1

    :cond_2
    move v0, v2

    .line 443
    .local v0, "direction":I
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 444
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v4, v0

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2

    .line 446
    :cond_3
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v4, v0

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public computeVerticalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1039
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1029
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1049
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method createLayoutState()Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;
    .locals 1

    .line 942
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;-><init>()V

    return-object v0
.end method

.method ensureLayoutState()V
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    if-nez v0, :cond_0

    .line 929
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->createLayoutState()Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    if-nez v0, :cond_1

    .line 932
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->createOrientationHelper(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;I)Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 934
    :cond_1
    return-void
.end method

.method fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I
    .locals 7
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p4, "stopOnFocusable"    # Z

    .line 1322
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1323
    .local v0, "start":I
    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 1325
    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v1, :cond_0

    .line 1326
    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v1, v3

    iput v1, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1328
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleByLayoutState(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;)V

    .line 1330
    :cond_1
    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    add-int/2addr v1, v3

    .line 1331
    .local v1, "remainingSpace":I
    new-instance v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;-><init>()V

    .line 1332
    .local v3, "layoutChunkResult":Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;
    :cond_2
    if-lez v1, :cond_8

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->hasMore(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1333
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1334
    invoke-virtual {p0, p1, p3, p2, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->layoutChunk(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;)V

    .line 1335
    iget-boolean v4, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v4, :cond_3

    .line 1336
    goto :goto_0

    .line 1338
    :cond_3
    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v5, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v6, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1345
    iget-boolean v4, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_4

    .line 1346
    invoke-virtual {p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1347
    :cond_4
    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v5, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v4, v5

    iput v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1349
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v1, v4

    .line 1352
    :cond_5
    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v4, v2, :cond_7

    .line 1353
    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1354
    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v4, :cond_6

    .line 1355
    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1357
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleByLayoutState(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;)V

    .line 1359
    :cond_7
    if-eqz p4, :cond_2

    iget-boolean v4, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v4, :cond_2

    .line 1366
    :cond_8
    :goto_0
    iget v2, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int v2, v0, v2

    return v2
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    .line 1644
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1645
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    .line 1627
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1628
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 4

    .line 1684
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1685
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method public findLastVisibleItemPosition()I
    .locals 4

    .line 1667
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1668
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z
    .param p4, "acceptPartiallyVisible"    # Z

    .line 1690
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 1691
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1692
    .local v0, "start":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    .line 1693
    .local v1, "end":I
    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 1694
    .local v2, "next":I
    :goto_0
    const/4 v3, 0x0

    .line 1695
    .local v3, "partiallyVisible":Landroid/view/View;
    move v4, p1

    .local v4, "i":I
    :goto_1
    if-eq v4, p2, :cond_4

    .line 1696
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1697
    .local v5, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 1698
    .local v6, "childStart":I
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    .line 1699
    .local v7, "childEnd":I
    if-ge v6, v1, :cond_3

    if-le v7, v0, :cond_3

    .line 1700
    if-eqz p3, :cond_2

    .line 1701
    if-lt v6, v0, :cond_1

    if-gt v7, v1, :cond_1

    .line 1702
    return-object v5

    .line 1703
    :cond_1
    if-eqz p4, :cond_3

    if-nez v3, :cond_3

    .line 1704
    move-object v3, v5

    goto :goto_2

    .line 1707
    :cond_2
    return-object v5

    .line 1695
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childStart":I
    .end local v7    # "childEnd":I
    :cond_3
    :goto_2
    add-int/2addr v4, v2

    goto :goto_1

    .line 1711
    .end local v4    # "i":I
    :cond_4
    return-object v3
.end method

.method findReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;III)Landroid/view/View;
    .locals 9
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "itemCount"    # I

    .line 1581
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 1582
    const/4 v0, 0x0

    .line 1583
    .local v0, "invalidMatch":Landroid/view/View;
    const/4 v1, 0x0

    .line 1584
    .local v1, "outOfBoundsMatch":Landroid/view/View;
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    .line 1585
    .local v2, "boundsStart":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 1586
    .local v3, "boundsEnd":I
    if-le p4, p3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    .line 1587
    .local v4, "diff":I
    :goto_0
    move v5, p3

    .local v5, "i":I
    :goto_1
    if-eq v5, p4, :cond_5

    .line 1588
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1589
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 1590
    .local v7, "position":I
    if-ltz v7, :cond_4

    if-ge v7, p5, :cond_4

    .line 1591
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1592
    if-nez v0, :cond_4

    .line 1593
    move-object v0, v6

    goto :goto_3

    .line 1595
    :cond_1
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8, v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    if-ge v8, v3, :cond_3

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1596
    invoke-virtual {v8, v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    if-ge v8, v2, :cond_2

    goto :goto_2

    .line 1601
    :cond_2
    return-object v6

    .line 1597
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 1598
    move-object v1, v6

    .line 1587
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "position":I
    :cond_4
    :goto_3
    add-int/2addr v5, v4

    goto :goto_1

    .line 1605
    .end local v5    # "i":I
    :cond_5
    if-eqz v1, :cond_6

    move-object v5, v1

    goto :goto_4

    :cond_6
    move-object v5, v0

    :goto_4
    return-object v5
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .line 386
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    .line 387
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 388
    const/4 v1, 0x0

    return-object v1

    .line 390
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 391
    .local v1, "firstChild":I
    sub-int v2, p1, v1

    .line 392
    .local v2, "viewPosition":I
    if-ltz v2, :cond_1

    if-ge v2, v0, :cond_1

    .line 393
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 394
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 395
    return-object v3

    .line 399
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method public generateDefaultLayoutParams()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 2

    .line 181
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getExtraLayoutSpace(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 415
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    return v0

    .line 418
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .line 355
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getStackFromEnd()Z
    .locals 1

    .line 302
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    return v0
.end method

.method protected isLayoutRTL()Z
    .locals 2

    .line 924
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1

    .line 1114
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method layoutChunk(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;)V
    .locals 17
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "layoutState"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;
    .param p4, "result"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;

    .line 1371
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    invoke-virtual {v7, v9}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->next(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v10

    .line 1372
    .local v10, "view":Landroid/view/View;
    const/4 v11, 0x1

    if-nez v10, :cond_0

    .line 1378
    iput-boolean v11, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 1379
    return-void

    .line 1381
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 1382
    .local v12, "params":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    iget-object v0, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1383
    iget-boolean v0, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_1

    move v3, v11

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-ne v0, v3, :cond_2

    .line 1385
    invoke-virtual {v6, v10}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1387
    :cond_2
    invoke-virtual {v6, v10, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1390
    :cond_3
    iget-boolean v0, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_4

    move v3, v11

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-ne v0, v3, :cond_5

    .line 1392
    invoke-virtual {v6, v10}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_2

    .line 1394
    :cond_5
    invoke-virtual {v6, v10, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 1397
    :goto_2
    invoke-virtual {v6, v10, v2, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1398
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, v10}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1400
    iget v0, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne v0, v11, :cond_8

    .line 1401
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1402
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1403
    .local v0, "right":I
    iget-object v2, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v10}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    .local v2, "left":I
    goto :goto_3

    .line 1405
    .end local v0    # "right":I
    .end local v2    # "left":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPaddingLeft()I

    move-result v2

    .line 1406
    .restart local v2    # "left":I
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, v10}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1408
    .restart local v0    # "right":I
    :goto_3
    iget v3, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_7

    .line 1409
    iget v1, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1410
    .local v1, "bottom":I
    iget v3, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v3, v4

    move v15, v0

    move/from16 v16, v1

    move v13, v2

    move v14, v3

    .local v3, "top":I
    goto :goto_4

    .line 1412
    .end local v1    # "bottom":I
    .end local v3    # "top":I
    :cond_7
    iget v3, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1413
    .restart local v3    # "top":I
    iget v1, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v1, v4

    move v15, v0

    move/from16 v16, v1

    move v13, v2

    move v14, v3

    .restart local v1    # "bottom":I
    goto :goto_4

    .line 1416
    .end local v0    # "right":I
    .end local v1    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "top":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPaddingTop()I

    move-result v3

    .line 1417
    .restart local v3    # "top":I
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, v10}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    .line 1419
    .local v0, "bottom":I
    iget v2, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v2, v1, :cond_9

    .line 1420
    iget v1, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1421
    .local v1, "right":I
    iget v2, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v2, v4

    move/from16 v16, v0

    move v15, v1

    move v13, v2

    move v14, v3

    .restart local v2    # "left":I
    goto :goto_4

    .line 1423
    .end local v1    # "right":I
    .end local v2    # "left":I
    :cond_9
    iget v2, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1424
    .restart local v2    # "left":I
    iget v1, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v1, v4

    move/from16 v16, v0

    move v15, v1

    move v13, v2

    move v14, v3

    .line 1429
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "top":I
    .local v13, "left":I
    .local v14, "top":I
    .local v15, "right":I
    .local v16, "bottom":I
    :goto_4
    iget v0, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->leftMargin:I

    add-int v2, v13, v0

    iget v0, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->topMargin:I

    add-int v3, v14, v0

    iget v0, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->rightMargin:I

    sub-int v4, v15, v0

    iget v0, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int v5, v16, v0

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 1437
    invoke-virtual {v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1438
    :cond_a
    iput-boolean v11, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1440
    :cond_b
    invoke-virtual {v10}, Landroid/view/View;->isFocusable()Z

    move-result v0

    iput-boolean v0, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 1441
    return-void
.end method

.method onAnchorReady(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 0
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .line 632
    return-void
.end method

.method public onDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "view"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 215
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 216
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->removeAndRecycleAllViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 218
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->clear()V

    .line 220
    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;
    .locals 8
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "focusDirection"    # I
    .param p3, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p4, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1717
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1718
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1719
    return-object v1

    .line 1722
    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v0

    .line 1723
    .local v0, "layoutDir":I
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 1724
    return-object v1

    .line 1726
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 1728
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 1729
    invoke-direct {p0, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChildClosestToStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v4

    .local v4, "referenceChild":Landroid/view/View;
    goto :goto_0

    .line 1731
    .end local v4    # "referenceChild":Landroid/view/View;
    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v4

    .line 1733
    .restart local v4    # "referenceChild":Landroid/view/View;
    :goto_0
    if-nez v4, :cond_3

    .line 1738
    return-object v1

    .line 1740
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 1741
    const v5, 0x3ea8f5c3    # 0.33f

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    .line 1742
    .local v5, "maxScroll":I
    const/4 v6, 0x0

    invoke-direct {p0, v0, v5, v6, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutState(IIZLcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    .line 1743
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v2, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1744
    iput-boolean v6, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1745
    const/4 v2, 0x1

    invoke-virtual {p0, p3, v7, p4, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    .line 1747
    if-ne v0, v3, :cond_4

    .line 1748
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .local v2, "nextFocus":Landroid/view/View;
    goto :goto_1

    .line 1750
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .line 1752
    .restart local v2    # "nextFocus":Landroid/view/View;
    :goto_1
    if-eq v2, v4, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    .line 1755
    :cond_5
    return-object v2

    .line 1753
    :cond_6
    :goto_2
    return-object v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 224
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 225
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 227
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 228
    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 229
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 231
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityRecord;
    :cond_0
    return-void
.end method

.method public onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 11
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 465
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v0, v1, :cond_1

    .line 466
    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 467
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->removeAndRecycleAllViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 468
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    .line 475
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 476
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 478
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 480
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->reset()V

    .line 481
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v3, v4

    iput-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 483
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateAnchorInfoForLayout(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    .line 492
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getExtraLayoutSpace(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    .line 495
    .local v0, "extra":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v3, :cond_3

    .line 496
    move v3, v0

    .line 497
    .local v3, "extraForEnd":I
    const/4 v4, 0x0

    .local v4, "extraForStart":I
    goto :goto_0

    .line 499
    .end local v3    # "extraForEnd":I
    .end local v4    # "extraForStart":I
    :cond_3
    move v4, v0

    .line 500
    .restart local v4    # "extraForStart":I
    const/4 v3, 0x0

    .line 502
    .restart local v3    # "extraForEnd":I
    :goto_0
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    add-int/2addr v4, v5

    .line 503
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndPadding()I

    move-result v5

    add-int/2addr v3, v5

    .line 504
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v5

    const/high16 v6, -0x80000000

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v5, v1, :cond_6

    iget v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v7, v6, :cond_6

    .line 509
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    .line 510
    .local v5, "existing":Landroid/view/View;
    if-eqz v5, :cond_6

    .line 513
    iget-boolean v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_4

    .line 514
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 515
    invoke-virtual {v8, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    .line 516
    .local v7, "current":I
    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int v8, v7, v8

    .local v8, "upcomingOffset":I
    goto :goto_1

    .line 518
    .end local v7    # "current":I
    .end local v8    # "upcomingOffset":I
    :cond_4
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 519
    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    .line 520
    .restart local v7    # "current":I
    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v8, v7

    .line 522
    .restart local v8    # "upcomingOffset":I
    :goto_1
    if-lez v8, :cond_5

    .line 523
    add-int/2addr v4, v8

    goto :goto_2

    .line 525
    :cond_5
    sub-int/2addr v3, v8

    .line 531
    .end local v5    # "existing":Landroid/view/View;
    .end local v7    # "current":I
    .end local v8    # "upcomingOffset":I
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p0, p1, p2, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->onAnchorReady(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    .line 532
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->detachAndScrapAttachedViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 533
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v7

    iput-boolean v7, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 534
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    iget-boolean v5, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_9

    .line 536
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillStart(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    .line 537
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v4, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 538
    invoke-virtual {p0, p1, v5, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    .line 539
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 540
    .local v5, "startOffset":I
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 541
    .local v7, "firstElement":I
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v8, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v8, :cond_7

    .line 542
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v8, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v3, v8

    .line 545
    :cond_7
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v8}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    .line 546
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v3, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 547
    iget v9, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v10, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v10, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v9, v10

    iput v9, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 548
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v8, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    .line 549
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v8, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 551
    .local v8, "endOffset":I
    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v9, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v9, :cond_8

    .line 553
    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v4, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 554
    invoke-direct {p0, v7, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 555
    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v4, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 556
    invoke-virtual {p0, p1, v9, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    .line 557
    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v5, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 559
    .end local v7    # "firstElement":I
    :cond_8
    move v7, v5

    goto :goto_3

    .line 561
    .end local v5    # "startOffset":I
    .end local v8    # "endOffset":I
    :cond_9
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    .line 562
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v3, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 563
    invoke-virtual {p0, p1, v5, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    .line 564
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v8, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 565
    .restart local v8    # "endOffset":I
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 566
    .local v5, "lastElement":I
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v7, :cond_a

    .line 567
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v4, v7

    .line 570
    :cond_a
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillStart(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    .line 571
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v4, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 572
    iget v9, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v10, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v10, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v9, v10

    iput v9, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 573
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v7, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    .line 574
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 576
    .local v7, "startOffset":I
    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v9, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v9, :cond_b

    .line 577
    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v3, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 579
    invoke-direct {p0, v5, v8}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 580
    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v3, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 581
    invoke-virtual {p0, p1, v9, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    .line 582
    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v8, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 589
    .end local v5    # "lastElement":I
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_d

    .line 593
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v5, v9

    const/4 v9, 0x1

    if-eqz v5, :cond_c

    .line 594
    invoke-direct {p0, v8, p1, p2, v9}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fixLayoutEndGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result v5

    .line 595
    .local v5, "fixOffset":I
    add-int/2addr v7, v5

    .line 596
    add-int/2addr v8, v5

    .line 597
    invoke-direct {p0, v7, p1, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fixLayoutStartGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result v2

    .line 598
    .end local v5    # "fixOffset":I
    .local v2, "fixOffset":I
    add-int/2addr v7, v2

    .line 599
    add-int/2addr v8, v2

    .line 600
    .end local v2    # "fixOffset":I
    goto :goto_4

    .line 601
    :cond_c
    invoke-direct {p0, v7, p1, p2, v9}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fixLayoutStartGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result v5

    .line 602
    .restart local v5    # "fixOffset":I
    add-int/2addr v7, v5

    .line 603
    add-int/2addr v8, v5

    .line 604
    invoke-direct {p0, v8, p1, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fixLayoutEndGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result v2

    .line 605
    .end local v5    # "fixOffset":I
    .restart local v2    # "fixOffset":I
    add-int/2addr v7, v2

    .line 606
    add-int/2addr v8, v2

    .line 609
    .end local v2    # "fixOffset":I
    :cond_d
    :goto_4
    invoke-direct {p0, p1, p2, v7, v8}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->layoutForPredictiveAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;II)V

    .line 610
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_e

    .line 611
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    .line 612
    iput v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 613
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->onLayoutComplete()V

    .line 615
    :cond_e
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 616
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    .line 620
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 262
    instance-of v0, p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 263
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    .line 264
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->requestLayout()V

    .line 271
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 235
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 236
    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;-><init>(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;)V

    return-object v1

    .line 238
    :cond_0
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;-><init>()V

    .line 239
    .local v0, "state":Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 241
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v1, v2

    .line 242
    .local v1, "didLayoutFromEnd":Z
    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 243
    if-eqz v1, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .line 245
    .local v2, "refChild":Landroid/view/View;
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 246
    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 247
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 248
    .end local v2    # "refChild":Landroid/view/View;
    goto :goto_0

    .line 249
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .line 250
    .restart local v2    # "refChild":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 251
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 252
    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 254
    .end local v1    # "didLayoutFromEnd":Z
    .end local v2    # "refChild":Landroid/view/View;
    :goto_0
    goto :goto_1

    .line 255
    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 257
    :goto_1
    return-object v0
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 1832
    const-string v0, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1833
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 1834
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1835
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 1836
    .local v0, "myPos":I
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1837
    .local v1, "targetPos":I
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ge v0, v1, :cond_0

    move v4, v2

    goto :goto_0

    .line 1838
    :cond_0
    move v4, v3

    :goto_0
    nop

    .line 1839
    .local v4, "dropDirection":I
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_2

    .line 1840
    if-ne v4, v2, :cond_1

    .line 1841
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1842
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1843
    invoke-virtual {v3, p2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1844
    invoke-virtual {v5, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    sub-int/2addr v2, v3

    .line 1841
    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 1846
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1847
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1848
    invoke-virtual {v3, p2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1846
    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 1851
    :cond_2
    if-ne v4, v3, :cond_3

    .line 1852
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, p2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 1854
    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1855
    invoke-virtual {v2, p2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1856
    invoke-virtual {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1854
    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1859
    :goto_1
    return-void
.end method

.method scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 7
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1153
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1157
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 1158
    if-lez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1159
    .local v0, "layoutDirection":I
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1160
    .local v3, "absDy":I
    invoke-direct {p0, v0, v3, v2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutState(IIZLcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    .line 1161
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1162
    .local v2, "freeScroll":I
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p2, v4, p3, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result v4

    add-int/2addr v4, v2

    .line 1163
    .local v4, "consumed":I
    if-gez v4, :cond_2

    .line 1167
    return v1

    .line 1169
    :cond_2
    if-le v3, v4, :cond_3

    mul-int v1, v0, v4

    goto :goto_1

    :cond_3
    move v1, p1

    .line 1170
    .local v1, "scrolled":I
    :goto_1
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    neg-int v6, v1

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    .line 1174
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v1, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    .line 1175
    return v1

    .line 1154
    .end local v0    # "layoutDirection":I
    .end local v1    # "scrolled":I
    .end local v2    # "freeScroll":I
    .end local v3    # "absDy":I
    .end local v4    # "consumed":I
    :cond_4
    :goto_2
    return v1
.end method

.method public scrollHorizontallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 2
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1004
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1005
    const/4 v0, 0x0

    return v0

    .line 1007
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 961
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    .line 962
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 963
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 966
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->requestLayout()V

    .line 967
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 989
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    .line 990
    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 991
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 992
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 994
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->requestLayout()V

    .line 995
    return-void
.end method

.method public scrollVerticallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1016
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 1017
    const/4 v0, 0x0

    return v0

    .line 1019
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .line 322
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 326
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_2

    .line 327
    return-void

    .line 329
    :cond_2
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    .line 330
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 331
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->requestLayout()V

    .line 332
    return-void
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 0
    .param p1, "recycleChildrenOnDetach"    # Z

    .line 210
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 211
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1
    .param p1, "reverseLayout"    # Z

    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 374
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_0

    .line 375
    return-void

    .line 377
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    .line 378
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->requestLayout()V

    .line 379
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1103
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1104
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1
    .param p1, "stackFromEnd"    # Z

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 294
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_0

    .line 295
    return-void

    .line 297
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    .line 298
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->requestLayout()V

    .line 299
    return-void
.end method

.method public smoothScrollToPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "position"    # I

    .line 425
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$1;

    .line 426
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;Landroid/content/Context;)V

    .line 433
    .local v0, "linearSmoothScroller":Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->setTargetPosition(I)V

    .line 434
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->startSmoothScroll(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;)V

    .line 435
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .line 1824
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method validateChildOrder()V
    .locals 11

    .line 1783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validating child count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinearLayoutManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1785
    return-void

    .line 1787
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1788
    .local v2, "lastPos":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 1789
    .local v3, "lastScreenLoc":I
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    const-string v5, "detected invalid location"

    const-string v6, "detected invalid position. loc invalid? "

    if-eqz v4, :cond_5

    .line 1790
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 1791
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1792
    .local v7, "child":Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 1793
    .local v8, "pos":I
    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9, v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    .line 1794
    .local v9, "screenLoc":I
    if-ge v8, v2, :cond_2

    .line 1795
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->logChildren()V

    .line 1796
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v9, v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1799
    :cond_2
    if-gt v9, v3, :cond_3

    .line 1790
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "pos":I
    .end local v9    # "screenLoc":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1800
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "pos":I
    .restart local v9    # "screenLoc":I
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->logChildren()V

    .line 1801
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1790
    .end local v4    # "i":I
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "pos":I
    .end local v9    # "screenLoc":I
    :cond_4
    goto :goto_2

    .line 1805
    :cond_5
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_9

    .line 1806
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1807
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 1808
    .restart local v8    # "pos":I
    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9, v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    .line 1809
    .restart local v9    # "screenLoc":I
    if-ge v8, v2, :cond_7

    .line 1810
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->logChildren()V

    .line 1811
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v9, v3, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1814
    :cond_7
    if-lt v9, v3, :cond_8

    .line 1805
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "pos":I
    .end local v9    # "screenLoc":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1815
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "pos":I
    .restart local v9    # "screenLoc":I
    :cond_8
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->logChildren()V

    .line 1816
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1820
    .end local v4    # "i":I
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "pos":I
    .end local v9    # "screenLoc":I
    :cond_9
    :goto_2
    return-void
.end method
