.class public abstract Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field private final mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8933
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 8948
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    .line 8949
    return-void
.end method

.method static synthetic access$2800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 8931
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->onAnimation(II)V

    return-void
.end method

.method private onAnimation(II)V
    .locals 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 9042
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 9043
    .local v0, "recyclerView":Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 9044
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->stop()V

    .line 9046
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 9047
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 9049
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v1, v2, :cond_2

    .line 9050
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V

    .line 9051
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->access$5100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 9052
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->stop()V

    goto :goto_0

    .line 9054
    :cond_2
    const-string v1, "RecyclerView"

    const-string v2, "Passed over target position while smooth scrolling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9055
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 9058
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v1, :cond_5

    .line 9059
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->onSeekTargetStep(IILcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V

    .line 9060
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result v1

    .line 9061
    .local v1, "hadJumpTarget":Z
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-static {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->access$5100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 9062
    if-eqz v1, :cond_5

    .line 9064
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_4

    .line 9065
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 9066
    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$4900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    goto :goto_1

    .line 9068
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->stop()V

    .line 9072
    .end local v1    # "hadJumpTarget":Z
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public findViewByPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .line 9092
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 9085
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 9078
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    .locals 1

    .line 8986
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getTargetPosition()I
    .locals 1

    .line 9038
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    return v0
.end method

.method public instantScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9101
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->scrollToPosition(I)V

    .line 9102
    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 1

    .line 9020
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 9028
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    return v0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .locals 4
    .param p1, "scrollVector"    # Landroid/graphics/PointF;

    .line 9118
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 9120
    .local v0, "magnitute":D
    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 9121
    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 9122
    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 9105
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 9106
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 9111
    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .line 8978
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 8979
    return-void
.end method

.method start(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "layoutManager"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    .line 8964
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 8965
    iput-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    .line 8966
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8969
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$4802(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    .line 8970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    .line 8971
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 8972
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 8973
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->onStart()V

    .line 8974
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$4900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 8975
    return-void

    .line 8967
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final stop()V
    .locals 2

    .line 8996
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    if-nez v0, :cond_0

    .line 8997
    return-void

    .line 8999
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->onStop()V

    .line 9000
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$4802(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    .line 9001
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 9002
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 9003
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 9004
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    .line 9006
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-static {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->access$5000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;)V

    .line 9008
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    .line 9009
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 9010
    return-void
.end method
