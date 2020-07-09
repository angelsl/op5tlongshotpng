.class Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 2

    .line 3883
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3874
    invoke-static {}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2200()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 3878
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 3881
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 3884
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2200()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    .line 3885
    return-void
.end method

.method private computeScrollDuration(IIII)I
    .locals 13
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .line 4059
    move-object v0, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4060
    .local v1, "absDx":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4061
    .local v2, "absDy":I
    if-le v1, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4062
    .local v3, "horizontal":Z
    :goto_0
    mul-int v4, p3, p3

    mul-int v5, p4, p4

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 4063
    .local v4, "velocity":I
    mul-int v5, p1, p1

    mul-int v6, p2, p2

    add-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 4064
    .local v5, "delta":I
    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v3, :cond_1

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v6

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v6

    .line 4065
    .local v6, "containerSize":I
    :goto_1
    div-int/lit8 v7, v6, 0x2

    .line 4066
    .local v7, "halfContainerSize":I
    int-to-float v8, v5

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    int-to-float v10, v6

    div-float/2addr v8, v10

    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 4067
    .local v8, "distanceRatio":F
    int-to-float v10, v7

    int-to-float v11, v7

    .line 4068
    invoke-direct {p0, v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    .line 4071
    .local v10, "distance":F
    if-lez v4, :cond_2

    .line 4072
    const/high16 v9, 0x447a0000    # 1000.0f

    int-to-float v11, v4

    div-float v11, v10, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-int/lit8 v9, v9, 0x4

    .local v9, "duration":I
    goto :goto_3

    .line 4074
    .end local v9    # "duration":I
    :cond_2
    if-eqz v3, :cond_3

    move v11, v1

    goto :goto_2

    :cond_3
    move v11, v2

    :goto_2
    int-to-float v11, v11

    .line 4075
    .local v11, "absDelta":F
    int-to-float v12, v6

    div-float v12, v11, v12

    add-float/2addr v12, v9

    const/high16 v9, 0x43960000    # 300.0f

    mul-float/2addr v12, v9

    float-to-int v9, v12

    .line 4077
    .end local v11    # "absDelta":F
    .restart local v9    # "duration":I
    :goto_3
    const/16 v11, 0x7d0

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    return v11
.end method

.method private disableRunOnAnimationRequests()V
    .locals 1

    .line 4016
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4017
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4018
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .line 4053
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 4054
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 4055
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private enableRunOnAnimationRequests()V
    .locals 1

    .line 4021
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4022
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_0

    .line 4023
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4025
    :cond_0
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 10
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 4037
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    .line 4038
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4039
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 4041
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4042
    return-void
.end method

.method postOnAnimation()V
    .locals 1

    .line 4028
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    .line 4029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_0

    .line 4031
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4032
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4034
    :goto_0
    return-void
.end method

.method public run()V
    .locals 21

    .line 3889
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 3890
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 3893
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    .line 3894
    .local v1, "scroller":Landroid/widget/Scroller;
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v2

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;

    .line 3895
    .local v2, "smoothScroller":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 3896
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 3897
    .local v3, "x":I
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    .line 3898
    .local v5, "y":I
    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v6, v3, v6

    .line 3899
    .local v6, "dx":I
    iget v7, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v7, v5, v7

    .line 3900
    .local v7, "dy":I
    const/4 v8, 0x0

    .line 3901
    .local v8, "hresult":I
    const/4 v9, 0x0

    .line 3902
    .local v9, "vresult":I
    iput v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 3903
    iput v5, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 3904
    const/4 v10, 0x0

    .local v10, "overscrollX":I
    const/4 v11, 0x0

    .line 3905
    .local v11, "overscrollY":I
    iget-object v12, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 3906
    iget-object v12, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->eatRequestLayout()V

    .line 3907
    iget-object v12, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2500(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 3908
    const-string v12, "RV Scroll"

    invoke-static {v12}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3909
    if-eqz v6, :cond_0

    .line 3910
    iget-object v12, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v12

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v13, v13, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v14, v14, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v12, v6, v13, v14}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v8

    .line 3911
    sub-int v10, v6, v8

    .line 3913
    :cond_0
    if-eqz v7, :cond_1

    .line 3914
    iget-object v12, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v12

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v13, v13, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v14, v14, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v12, v7, v13, v14}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v9

    .line 3915
    sub-int v11, v7, v9

    .line 3917
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3918
    iget-object v12, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 3920
    iget-object v12, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v12, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v12}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v12

    .line 3921
    .local v12, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v12, :cond_5

    .line 3922
    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v14, v14, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v14, v13}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3923
    .local v14, "view":Landroid/view/View;
    iget-object v15, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v15, v14}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v15

    .line 3924
    .local v15, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v15, :cond_3

    iget-object v4, v15, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v4, :cond_3

    .line 3925
    iget-object v4, v15, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3926
    .local v4, "shadowingView":Landroid/view/View;
    move/from16 v16, v8

    .end local v8    # "hresult":I
    .local v16, "hresult":I
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 3927
    .local v8, "left":I
    move/from16 v17, v9

    .end local v9    # "vresult":I
    .local v17, "vresult":I
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v9

    .line 3928
    .local v9, "top":I
    move/from16 v18, v12

    .end local v12    # "count":I
    .local v18, "count":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v12

    if-ne v8, v12, :cond_2

    .line 3929
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v12

    if-eq v9, v12, :cond_4

    .line 3930
    :cond_2
    nop

    .line 3931
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v8

    .line 3932
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v19

    move-object/from16 v20, v14

    .end local v14    # "view":Landroid/view/View;
    .local v20, "view":Landroid/view/View;
    add-int v14, v9, v19

    .line 3930
    invoke-virtual {v4, v8, v9, v12, v14}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 3924
    .end local v4    # "shadowingView":Landroid/view/View;
    .end local v16    # "hresult":I
    .end local v17    # "vresult":I
    .end local v18    # "count":I
    .end local v20    # "view":Landroid/view/View;
    .local v8, "hresult":I
    .local v9, "vresult":I
    .restart local v12    # "count":I
    .restart local v14    # "view":Landroid/view/View;
    :cond_3
    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v12

    move-object/from16 v20, v14

    .line 3921
    .end local v8    # "hresult":I
    .end local v9    # "vresult":I
    .end local v12    # "count":I
    .end local v14    # "view":Landroid/view/View;
    .end local v15    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .restart local v16    # "hresult":I
    .restart local v17    # "vresult":I
    .restart local v18    # "count":I
    :cond_4
    :goto_1
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v12, v18

    goto :goto_0

    .end local v16    # "hresult":I
    .end local v17    # "vresult":I
    .end local v18    # "count":I
    .restart local v8    # "hresult":I
    .restart local v9    # "vresult":I
    .restart local v12    # "count":I
    :cond_5
    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v12

    .end local v8    # "hresult":I
    .end local v9    # "vresult":I
    .end local v12    # "count":I
    .restart local v16    # "hresult":I
    .restart local v17    # "vresult":I
    .restart local v18    # "count":I
    goto :goto_2

    .line 3918
    .end local v13    # "i":I
    .end local v16    # "hresult":I
    .end local v17    # "vresult":I
    .end local v18    # "count":I
    .restart local v8    # "hresult":I
    .restart local v9    # "vresult":I
    :cond_6
    move/from16 v16, v8

    move/from16 v17, v9

    .line 3937
    .end local v8    # "hresult":I
    .end local v9    # "vresult":I
    .restart local v16    # "hresult":I
    .restart local v17    # "vresult":I
    :goto_2
    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 3938
    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resumeRequestLayout(Z)V

    .line 3940
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v4

    if-nez v4, :cond_9

    .line 3941
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3942
    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v4

    .line 3943
    .local v4, "adapterSize":I
    if-nez v4, :cond_7

    .line 3944
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->stop()V

    goto :goto_3

    .line 3945
    :cond_7
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v8

    if-lt v8, v4, :cond_8

    .line 3946
    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v2, v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 3947
    sub-int v8, v6, v10

    sub-int v9, v7, v11

    invoke-static {v2, v8, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->access$2800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;II)V

    goto :goto_3

    .line 3949
    :cond_8
    sub-int v8, v6, v10

    sub-int v9, v7, v11

    invoke-static {v2, v8, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->access$2800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;II)V

    .line 3953
    .end local v4    # "adapterSize":I
    :cond_9
    :goto_3
    move/from16 v8, v16

    move/from16 v9, v17

    .end local v16    # "hresult":I
    .end local v17    # "vresult":I
    .restart local v8    # "hresult":I
    .restart local v9    # "vresult":I
    :cond_a
    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 3954
    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->invalidate()V

    .line 3956
    :cond_b
    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getOverScrollMode()I

    move-result v4

    const/4 v12, 0x2

    if-eq v4, v12, :cond_c

    .line 3958
    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v4, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    .line 3960
    :cond_c
    if-nez v10, :cond_d

    if-eqz v11, :cond_17

    .line 3961
    :cond_d
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v4

    float-to-int v4, v4

    .line 3963
    .local v4, "vel":I
    const/4 v13, 0x0

    .line 3964
    .local v13, "velX":I
    if-eq v10, v3, :cond_10

    .line 3965
    if-gez v10, :cond_e

    neg-int v14, v4

    goto :goto_4

    :cond_e
    if-lez v10, :cond_f

    move v14, v4

    goto :goto_4

    :cond_f
    const/4 v14, 0x0

    :goto_4
    move v13, v14

    .line 3968
    :cond_10
    const/4 v14, 0x0

    .line 3969
    .local v14, "velY":I
    if-eq v11, v5, :cond_13

    .line 3970
    if-gez v11, :cond_11

    neg-int v15, v4

    goto :goto_5

    :cond_11
    if-lez v11, :cond_12

    move v15, v4

    goto :goto_5

    :cond_12
    const/4 v15, 0x0

    :goto_5
    move v14, v15

    .line 3973
    :cond_13
    iget-object v15, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v15}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getOverScrollMode()I

    move-result v15

    if-eq v15, v12, :cond_14

    .line 3975
    iget-object v12, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v12, v13, v14}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->absorbGlows(II)V

    .line 3977
    :cond_14
    if-nez v13, :cond_15

    if-eq v10, v3, :cond_15

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v12

    if-nez v12, :cond_17

    :cond_15
    if-nez v14, :cond_16

    if-eq v11, v5, :cond_16

    .line 3978
    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v12

    if-nez v12, :cond_17

    .line 3979
    :cond_16
    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3982
    .end local v4    # "vel":I
    .end local v13    # "velX":I
    .end local v14    # "velY":I
    :cond_17
    if-nez v8, :cond_18

    if-eqz v9, :cond_19

    .line 3983
    :cond_18
    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v4, v8, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchOnScrolled(II)V

    .line 3986
    :cond_19
    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 3987
    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->invalidate()V

    .line 3990
    :cond_1a
    const/4 v4, 0x1

    if-eqz v7, :cond_1b

    iget-object v12, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v12

    if-eqz v12, :cond_1b

    if-ne v9, v7, :cond_1b

    move v12, v4

    goto :goto_6

    :cond_1b
    const/4 v12, 0x0

    .line 3992
    .local v12, "fullyConsumedVertical":Z
    :goto_6
    if-eqz v6, :cond_1c

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v13}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v13

    if-eqz v13, :cond_1c

    if-ne v8, v6, :cond_1c

    move v13, v4

    goto :goto_7

    :cond_1c
    const/4 v13, 0x0

    .line 3994
    .local v13, "fullyConsumedHorizontal":Z
    :goto_7
    if-nez v6, :cond_1d

    if-eqz v7, :cond_1f

    :cond_1d
    if-nez v13, :cond_1f

    if-eqz v12, :cond_1e

    goto :goto_8

    :cond_1e
    const/4 v4, 0x0

    .line 3997
    .local v4, "fullyConsumedAny":Z
    :cond_1f
    :goto_8
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_21

    if-nez v4, :cond_20

    goto :goto_9

    .line 4000
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    const/4 v15, 0x0

    goto :goto_a

    .line 3998
    :cond_21
    :goto_9
    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    goto :goto_a

    .line 3895
    .end local v3    # "x":I
    .end local v4    # "fullyConsumedAny":Z
    .end local v5    # "y":I
    .end local v6    # "dx":I
    .end local v7    # "dy":I
    .end local v8    # "hresult":I
    .end local v9    # "vresult":I
    .end local v10    # "overscrollX":I
    .end local v11    # "overscrollY":I
    .end local v12    # "fullyConsumedVertical":Z
    .end local v13    # "fullyConsumedHorizontal":Z
    :cond_22
    const/4 v15, 0x0

    .line 4004
    :goto_a
    if-eqz v2, :cond_24

    .line 4005
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 4006
    invoke-static {v2, v15, v15}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->access$2800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;II)V

    .line 4008
    :cond_23
    iget-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-nez v3, :cond_24

    .line 4009
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->stop()V

    .line 4012
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    .line 4013
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 4045
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    .line 4046
    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .line 4081
    invoke-static {}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2200()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 4082
    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .line 4049
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    .line 4050
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 7
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 4085
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 4086
    iput-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4087
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    .line 4089
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    .line 4090
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4091
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 4092
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4093
    return-void
.end method

.method public stop()V
    .locals 1

    .line 4096
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4097
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 4098
    return-void
.end method
