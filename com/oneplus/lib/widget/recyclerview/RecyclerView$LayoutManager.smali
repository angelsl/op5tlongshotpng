.class public abstract Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;
    }
.end annotation


# instance fields
.field mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

.field private mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private mIsAttachedToWindow:Z

.field mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field private mRequestedSimpleAnimations:Z

.field mSmoothScroller:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;

.field private mTempDetachBound:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 5814
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    .line 5805
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    .param p1, "x1"    # Z

    .line 5805
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    return p1
.end method

.method static synthetic access$5000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    .param p1, "x1"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;

    .line 5805
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "disappearing"    # Z

    .line 6300
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6301
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-nez p3, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6310
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->removeFromDisappearingList(Landroid/view/View;)V

    goto :goto_1

    .line 6303
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->addToDisappearingList(Landroid/view/View;)V

    .line 6312
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 6313
    .local v1, "lp":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 6323
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-ne v2, v4, :cond_6

    .line 6325
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 6326
    .local v2, "currentIndex":I
    const/4 v4, -0x1

    if-ne p2, v4, :cond_3

    .line 6327
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result p2

    .line 6329
    :cond_3
    if-eq v2, v4, :cond_5

    .line 6334
    if-eq v2, p2, :cond_4

    .line 6335
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4, v2, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->moveView(II)V

    .line 6337
    .end local v2    # "currentIndex":I
    :cond_4
    goto :goto_4

    .line 6330
    .restart local v2    # "currentIndex":I
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 6332
    invoke-virtual {v5, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6338
    .end local v2    # "currentIndex":I
    :cond_6
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, p1, p2, v3}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->addView(Landroid/view/View;IZ)V

    .line 6339
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6340
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6341
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    goto :goto_4

    .line 6314
    :cond_7
    :goto_2
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6315
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_3

    .line 6317
    :cond_8
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 6319
    :goto_3
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, p1, p2, v4, v3}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 6344
    :cond_9
    :goto_4
    iget-boolean v2, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    if-eqz v2, :cond_a

    .line 6348
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 6349
    iput-boolean v3, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 6351
    :cond_a
    return-void
.end method

.method private bindTempDetach()V
    .locals 4

    .line 6560
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchStartTemporaryDetach"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    .line 6562
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchFinishTemporaryDetach"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6566
    goto :goto_0

    .line 6564
    :catch_0
    move-exception v0

    .line 6565
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "RecyclerView"

    const-string v2, "Couldn\'t find method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6567
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mTempDetachBound:Z

    .line 6568
    return-void
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 6497
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->detachViewFromParent(I)V

    .line 6498
    return-void
.end method

.method public static getChildMeasureSpec(IIIZ)I
    .locals 4
    .param p0, "parentSize"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I
    .param p3, "canScroll"    # Z

    .line 7022
    sub-int v0, p0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7023
    .local v0, "size":I
    const/4 v1, 0x0

    .line 7024
    .local v1, "resultSize":I
    const/4 v2, 0x0

    .line 7026
    .local v2, "resultMode":I
    if-eqz p3, :cond_1

    .line 7027
    if-ltz p2, :cond_0

    .line 7028
    move v1, p2

    .line 7029
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    .line 7033
    :cond_0
    const/4 v1, 0x0

    .line 7034
    const/4 v2, 0x0

    goto :goto_0

    .line 7037
    :cond_1
    if-ltz p2, :cond_2

    .line 7038
    move v1, p2

    .line 7039
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    .line 7040
    :cond_2
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 7041
    move v1, v0

    .line 7042
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    .line 7043
    :cond_3
    const/4 v3, -0x2

    if-ne p2, v3, :cond_4

    .line 7044
    move v1, v0

    .line 7045
    const/high16 v2, -0x80000000

    .line 7048
    :cond_4
    :goto_0
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3
.end method

.method public static getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 7977
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;-><init>()V

    .line 7978
    .local v0, "properties":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->RecyclerView:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 7980
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->RecyclerView_android_orientation:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->orientation:I

    .line 7981
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->RecyclerView_op_spanCount:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->spanCount:I

    .line 7982
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->RecyclerView_op_reverseLayout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    .line 7983
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->RecyclerView_op_stackFromEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    .line 7984
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7985
    return-object v0
.end method

.method private onSmoothScrollerStopped(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;)V
    .locals 1
    .param p1, "smoothScroller"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;

    .line 7655
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;

    if-ne v0, p1, :cond_0

    .line 7656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;

    .line 7658
    :cond_0
    return-void
.end method

.method private scrapOrRecycleView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;ILandroid/view/View;)V
    .locals 2
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "index"    # I
    .param p3, "view"    # Landroid/view/View;

    .line 6895
    invoke-static {p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6896
    .local v0, "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6900
    return-void

    .line 6902
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isChanged()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 6903
    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6904
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 6905
    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 6907
    :cond_1
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 6908
    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 6910
    :goto_0
    return-void
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 6255
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 6256
    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 6273
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 6274
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 6284
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 6285
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 6296
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 6297
    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 5844
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    .line 5845
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    .line 5847
    :cond_0
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 5857
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    .line 5858
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5860
    :cond_0
    return-void
.end method

.method public attachView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 6590
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 6591
    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 6579
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->attachView(Landroid/view/View;ILcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;)V

    .line 6580
    return-void
.end method

.method public attachView(Landroid/view/View;ILcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "lp"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 6510
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6511
    .local v0, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6512
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->addToDisappearingList(Landroid/view/View;)V

    goto :goto_0

    .line 6514
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->removeFromDisappearingList(Landroid/view/View;)V

    .line 6516
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 6520
    return-void
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .line 7178
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-nez v0, :cond_0

    .line 7179
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 7180
    return-void

    .line 7182
    :cond_0
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 7183
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7184
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 6156
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 6166
    const/4 v0, 0x0

    return v0
.end method

.method public checkLayoutParams(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 6071
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeHorizontalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 7509
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 7524
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 7539
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 7554
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 7569
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 7584
    const/4 v0, 0x0

    return v0
.end method

.method public detachAndScrapAttachedViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V
    .locals 3
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 6887
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 6888
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 6889
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6890
    .local v2, "v":Landroid/view/View;
    invoke-direct {p0, p1, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 6888
    .end local v2    # "v":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6892
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 6629
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 6630
    .local v0, "index":I
    invoke-direct {p0, p2, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 6631
    return-void
.end method

.method public detachAndScrapViewAt(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 6643
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6644
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p2, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 6645
    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 6468
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 6469
    .local v0, "ind":I
    if-ltz v0, :cond_0

    .line 6470
    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 6472
    :cond_0
    return-void
.end method

.method public detachViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 6490
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 6491
    return-void
.end method

.method dispatchAttachedToWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 1
    .param p1, "view"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 5887
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 5888
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onAttachedToWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 5889
    return-void
.end method

.method dispatchDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "view"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 5892
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 5893
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 5894
    return-void
.end method

.method dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 6543
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mTempDetachBound:Z

    if-nez v0, :cond_0

    .line 6544
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->bindTempDetach()V

    .line 6546
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 6548
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6549
    :catch_0
    move-exception v0

    .line 6550
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RecyclerView"

    const-string v2, "Error calling dispatchFinishTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6551
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 6554
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 6556
    :goto_1
    return-void
.end method

.method public dispatchStartTemporaryDetach(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 6527
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mTempDetachBound:Z

    if-nez v0, :cond_0

    .line 6528
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->bindTempDetach()V

    .line 6530
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 6532
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6533
    :catch_0
    move-exception v0

    .line 6534
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RecyclerView"

    const-string v2, "Error calling dispatchStartTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6535
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 6538
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 6540
    :goto_1
    return-void
.end method

.method public doMeasure(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;II)V
    .locals 1
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .line 7602
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$4500(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    .line 7603
    return-void
.end method

.method public endAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 6236
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 6237
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 6239
    :cond_0
    return-void
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .line 6437
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 6438
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 6439
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6440
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v3

    .line 6441
    .local v3, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-nez v3, :cond_0

    .line 6442
    goto :goto_1

    .line 6444
    :cond_0
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 6445
    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    .line 6446
    :cond_1
    return-object v2

    .line 6438
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6449
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public abstract generateDefaultLayoutParams()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 6112
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 6088
    instance-of v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    .line 6089
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;)V

    return-object v0

    .line 6090
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 6091
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 6093
    :cond_1
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .line 6399
    const/4 v0, -0x1

    return v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 7213
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 6686
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 6677
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getClipToPadding()Z
    .locals 1

    .line 5985
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$4400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getColumnCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 7872
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7875
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    :cond_1
    return v1

    .line 7873
    :cond_2
    :goto_0
    return v1
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 7157
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 7121
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 7075
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 7076
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 7061
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 7062
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 7145
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 7133
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 3

    .line 6787
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6788
    return-object v1

    .line 6790
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 6791
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6794
    :cond_1
    return-object v0

    .line 6792
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getHeight()I
    .locals 1

    .line 6704
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 6808
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6809
    .local v0, "a":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public getItemViewType(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 6420
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .line 6226
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 7228
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 7627
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 7620
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 6740
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingEnd()I
    .locals 1

    .line 6758
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 6713
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 6731
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingStart()I
    .locals 1

    .line 6749
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingStart()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 6722
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 6410
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    return v0
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 7243
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getRowCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 7853
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7856
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    :cond_1
    return v1

    .line 7854
    :cond_2
    :goto_0
    return v1
.end method

.method public getSelectionModeForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 7837
    const/4 v0, 0x0

    return v0
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 7198
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 6695
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFocus()Z
    .locals 1

    .line 6778
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ignoreView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 6853
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-ne v0, v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6858
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6859
    .local v0, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6860
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->onViewIgnored(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 6861
    return-void

    .line 6856
    .end local v0    # "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View should be fully attached to be ignored"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .line 5904
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .line 6768
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLayoutHierarchical(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z
    .locals 1
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 7889
    const/4 v0, 0x0

    return v0
.end method

.method public isSmoothScrolling()Z
    .locals 1

    .line 6213
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 7107
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 7108
    .local v0, "insets":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p4, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p5, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 7110
    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthUsed"    # I
    .param p3, "heightUsed"    # I

    .line 6964
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 6966
    .local v0, "lp":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 6967
    .local v1, "insets":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 6968
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr p3, v2

    .line 6970
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getWidth()I

    move-result v2

    .line 6971
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->width:I

    .line 6972
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    .line 6970
    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v2

    .line 6973
    .local v2, "widthSpec":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getHeight()I

    move-result v3

    .line 6974
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->height:I

    .line 6975
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v6

    .line 6973
    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v3

    .line 6976
    .local v3, "heightSpec":I
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 6977
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthUsed"    # I
    .param p3, "heightUsed"    # I

    .line 6992
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 6994
    .local v0, "lp":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 6995
    .local v1, "insets":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 6996
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr p3, v2

    .line 6998
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getWidth()I

    move-result v2

    .line 6999
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->width:I

    .line 7001
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    .line 6998
    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v2

    .line 7002
    .local v2, "widthSpec":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getHeight()I

    move-result v3

    .line 7003
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->height:I

    .line 7005
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v6

    .line 7002
    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v3

    .line 7006
    .local v3, "heightSpec":I
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 7007
    return-void
.end method

.method public moveView(II)V
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 6610
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6611
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 6615
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 6616
    invoke-virtual {p0, v0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 6617
    return-void

    .line 6612
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot move a child from non-existing index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1
    .param p1, "dx"    # I

    .line 6819
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    .line 6820
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetChildrenHorizontal(I)V

    .line 6822
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 1
    .param p1, "dy"    # I

    .line 6831
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    .line 6832
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetChildrenVertical(I)V

    .line 6834
    :cond_0
    return-void
.end method

.method public onAdapterChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "oldAdapter"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    .line 7392
    return-void
.end method

.method public onAddFocusables(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "direction"    # I
    .param p4, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .line 7420
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p1, "view"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 5953
    return-void
.end method

.method public onDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p1, "view"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5962
    return-void
.end method

.method public onDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V
    .locals 0
    .param p1, "view"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 5976
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 5977
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p4, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 7266
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 7742
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7743
    return-void
.end method

.method public onInitializeAccessibilityEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 7759
    invoke-static {p3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 7760
    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_2

    .line 7763
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 7764
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 7765
    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 7766
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 7763
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 7768
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7769
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 7771
    :cond_3
    return-void

    .line 7761
    :cond_4
    :goto_2
    return-void
.end method

.method onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 7691
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 7692
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 7721
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 7722
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7723
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 7724
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 7726
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 7727
    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7728
    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 7729
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 7731
    :cond_3
    nop

    .line 7733
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getRowCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    .line 7734
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v1

    .line 7735
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->isLayoutHierarchical(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v2

    .line 7736
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getSelectionModeForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v3

    .line 7733
    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 7737
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 7738
    return-void
.end method

.method onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 7775
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 7777
    .local v0, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7778
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 7781
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 7799
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 7800
    .local v2, "rowIndexGuess":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :cond_1
    move v4, v1

    .line 7801
    .local v4, "columnIndexGuess":I
    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7802
    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    .line 7804
    .local v0, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 7805
    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 7286
    const/4 v0, 0x0

    return-object v0
.end method

.method public onItemsAdded(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 7442
    return-void
.end method

.method public onItemsChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 7430
    return-void
.end method

.method public onItemsMoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;III)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .line 7494
    return-void
.end method

.method public onItemsRemoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 7452
    return-void
.end method

.method public onItemsUpdated(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 7464
    return-void
.end method

.method public onItemsUpdated(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;IILjava/lang/Object;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 7477
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onItemsUpdated(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    .line 7478
    return-void
.end method

.method public onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 2
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 6040
    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6041
    return-void
.end method

.method public onRequestChildFocus(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "focused"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7354
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onRequestChildFocus(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "child"    # Landroid/view/View;
    .param p4, "focused"    # Landroid/view/View;

    .line 7376
    invoke-virtual {p0, p1, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onRequestChildFocus(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 7646
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 7640
    const/4 v0, 0x0

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 7666
    return-void
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 7894
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->performAccessibilityAction(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "action"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .line 7910
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7911
    return v1

    .line 7913
    :cond_0
    const/4 v2, 0x0

    .local v2, "vScroll":I
    const/4 v3, 0x0

    .line 7914
    .local v3, "hScroll":I
    const/16 v4, 0x1000

    const/4 v5, 0x1

    if-eq p3, v4, :cond_3

    const/16 v4, 0x2000

    if-eq p3, v4, :cond_1

    goto :goto_0

    .line 7916
    :cond_1
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7917
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v0, v6

    neg-int v2, v0

    .line 7919
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7920
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    neg-int v3, v0

    goto :goto_0

    .line 7924
    :cond_3
    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7925
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v4

    sub-int v2, v0, v4

    .line 7927
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7928
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    sub-int v3, v0, v4

    .line 7932
    :cond_5
    :goto_0
    if-nez v2, :cond_6

    if-nez v3, :cond_6

    .line 7933
    return v1

    .line 7935
    :cond_6
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->scrollBy(II)V

    .line 7936
    return v5
.end method

.method performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 7941
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityActionForItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "action"    # I
    .param p5, "args"    # Landroid/os/Bundle;

    .line 7962
    const/4 v0, 0x0

    return v0
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 5918
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    .line 5919
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5921
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 3

    .line 6386
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 6387
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 6388
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->removeViewAt(I)V

    .line 6387
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6390
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public removeAndRecycleAllViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V
    .locals 3
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 7681
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 7682
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7683
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7684
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 7681
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7687
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method removeAndRecycleScrapInt(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V
    .locals 6
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 6922
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getScrapCount()I

    move-result v0

    .line 6924
    .local v0, "scrapCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 6925
    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 6926
    .local v2, "scrap":Landroid/view/View;
    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v3

    .line 6927
    .local v3, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6928
    goto :goto_1

    .line 6935
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 6936
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6937
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v5, v2, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6939
    :cond_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_2

    .line 6940
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 6942
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 6943
    invoke-virtual {p1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 6924
    .end local v2    # "scrap":Landroid/view/View;
    .end local v3    # "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6945
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->clearScrap()V

    .line 6946
    if-lez v0, :cond_4

    .line 6947
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->invalidate()V

    .line 6949
    :cond_4
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 6654
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 6655
    invoke-virtual {p2, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 6656
    return-void
.end method

.method public removeAndRecycleViewAt(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 6665
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6666
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 6667
    invoke-virtual {p2, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 6668
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 5938
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    .line 5939
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0

    .line 5941
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeDetachedView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 6600
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6601
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 6362
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->removeView(Landroid/view/View;)V

    .line 6363
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .line 6374
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6375
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 6376
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->removeViewAt(I)V

    .line 6378
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 17
    .param p1, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .line 7306
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    .line 7307
    .local v2, "parentLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    .line 7308
    .local v3, "parentTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 7309
    .local v4, "parentRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 7310
    .local v5, "parentBottom":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    .line 7311
    .local v6, "childLeft":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    .line 7312
    .local v7, "childTop":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v8, v6

    .line 7313
    .local v8, "childRight":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v9, v7

    .line 7315
    .local v9, "childBottom":I
    sub-int v10, v6, v2

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 7316
    .local v10, "offScreenLeft":I
    sub-int v12, v7, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 7317
    .local v12, "offScreenTop":I
    sub-int v13, v8, v4

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 7318
    .local v13, "offScreenRight":I
    sub-int v14, v9, v5

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 7324
    .local v14, "offScreenBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v15

    const/4 v11, 0x1

    if-ne v15, v11, :cond_1

    .line 7325
    if-eqz v13, :cond_0

    move v15, v13

    goto :goto_0

    .line 7326
    :cond_0
    sub-int v15, v8, v4

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    :goto_0
    nop

    .local v15, "dx":I
    goto :goto_2

    .line 7328
    .end local v15    # "dx":I
    :cond_1
    if-eqz v10, :cond_2

    move v15, v10

    goto :goto_1

    .line 7329
    :cond_2
    sub-int v15, v6, v2

    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    :goto_1
    nop

    .line 7334
    .restart local v15    # "dx":I
    :goto_2
    if-eqz v12, :cond_3

    move v11, v12

    goto :goto_3

    .line 7335
    :cond_3
    sub-int v11, v7, v3

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    :goto_3
    nop

    .line 7337
    .local v11, "dy":I
    if-nez v15, :cond_5

    if-eqz v11, :cond_4

    goto :goto_4

    .line 7345
    :cond_4
    const/16 v16, 0x0

    return v16

    .line 7338
    :cond_5
    :goto_4
    if-eqz p4, :cond_6

    .line 7339
    invoke-virtual {v0, v15, v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->scrollBy(II)V

    goto :goto_5

    .line 7341
    :cond_6
    invoke-virtual {v0, v15, v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->smoothScrollBy(II)V

    .line 7343
    :goto_5
    const/16 v16, 0x1

    return v16
.end method

.method public requestLayout()V
    .locals 1

    .line 5831
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    .line 5832
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    .line 5834
    :cond_0
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .locals 1

    .line 7818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 7819
    return-void
.end method

.method public scrollHorizontallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 6129
    const/4 v0, 0x0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 6179
    return-void
.end method

.method public scrollVerticallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 6146
    const/4 v0, 0x0

    return v0
.end method

.method public setMeasuredDimension(II)V
    .locals 1
    .param p1, "widthSize"    # I
    .param p2, "heightSize"    # I

    .line 7613
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$4600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    .line 7614
    return-void
.end method

.method setRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 5817
    if-nez p1, :cond_0

    .line 5818
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 5819
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    goto :goto_0

    .line 5821
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 5822
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    .line 5825
    :goto_0
    return-void
.end method

.method public smoothScrollToPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "position"    # I

    .line 6192
    const-string v0, "RecyclerView"

    const-string v1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6193
    return-void
.end method

.method public startSmoothScroll(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;)V
    .locals 2
    .param p1, "smoothScroller"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;

    .line 6201
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    .line 6202
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6203
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->stop()V

    .line 6205
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;

    .line 6206
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->start(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    .line 6207
    return-void
.end method

.method public stopIgnoringView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 6873
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6874
    .local v0, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->stopIgnoring()V

    .line 6875
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->resetInternal()V

    .line 6876
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6877
    return-void
.end method

.method stopSmoothScroller()V
    .locals 1

    .line 7649
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    .line 7650
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->stop()V

    .line 7652
    :cond_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 5883
    const/4 v0, 0x0

    return v0
.end method
