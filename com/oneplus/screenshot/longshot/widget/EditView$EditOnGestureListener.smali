.class public Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;
.super Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;
.source "EditView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/widget/EditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EditOnGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;


# direct methods
.method protected constructor <init>(Lcom/oneplus/screenshot/longshot/widget/EditView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/widget/EditView;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;-><init>(Lcom/oneplus/screenshot/longshot/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected getTouchMode(Landroid/view/MotionEvent;)I
    .registers 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/widget/EditView;->-wrap0(Lcom/oneplus/screenshot/longshot/widget/EditView;II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 156
    const/4 v0, 0x3

    return v0

    .line 158
    :cond_14
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->getTouchMode(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    iget v0, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mTouchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 148
    const/4 v0, 0x1

    return v0

    .line 150
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v2, 0x1

    .line 132
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    iget v0, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mTouchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_30

    .line 133
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->-get1(Lcom/oneplus/screenshot/longshot/widget/EditView;)Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 135
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    float-to-int v1, p4

    mul-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/longshot/widget/EditView;->-wrap1(Lcom/oneplus/screenshot/longshot/widget/EditView;I)V

    .line 136
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    iget-boolean v0, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mIsFirstScroll:Z

    if-eqz v0, :cond_2f

    .line 137
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mIsFirstScroll:Z

    .line 138
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->-get0(Lcom/oneplus/screenshot/longshot/widget/EditView;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;->DRAG_EDIT:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/statistics/EventStatistics;->addAction(Landroid/content/Context;Lcom/oneplus/screenshot/statistics/EventStatistics$Action;)V

    .line 140
    :cond_2f
    return v2

    .line 142
    :cond_30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
