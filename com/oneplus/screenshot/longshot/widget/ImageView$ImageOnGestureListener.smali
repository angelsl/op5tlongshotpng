.class public Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImageOnGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;


# direct methods
.method protected constructor <init>(Lcom/oneplus/screenshot/longshot/widget/ImageView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/widget/ImageView;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTouchMode(Landroid/view/MotionEvent;)I
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 233
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->-get1(Lcom/oneplus/screenshot/longshot/widget/ImageView;)Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->stop(Z)V

    .line 234
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->getTouchMode(Landroid/view/MotionEvent;)I

    move-result v1

    iput v1, v0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mTouchMode:I

    .line 236
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    iput-boolean v2, v0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mIsFirstScroll:Z

    .line 237
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x1

    .line 253
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    iget v0, v0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mTouchMode:I

    if-ne v0, v2, :cond_17

    .line 254
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    const/4 v1, 0x2

    iput v1, v0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mTouchMode:I

    .line 255
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->-get1(Lcom/oneplus/screenshot/longshot/widget/ImageView;)Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;

    move-result-object v0

    neg-float v1, p4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->startUsingVelocity(I)V

    .line 257
    :cond_17
    return v2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v2, 0x1

    .line 242
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->-get2(Lcom/oneplus/screenshot/longshot/widget/ImageView;)Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 243
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    iget v0, v0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mTouchMode:I

    if-ne v0, v2, :cond_18

    .line 245
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    float-to-int v1, p4

    mul-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->-wrap1(Lcom/oneplus/screenshot/longshot/widget/ImageView;I)V

    .line 247
    :cond_18
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mIsFirstScroll:Z

    .line 248
    return v2
.end method
