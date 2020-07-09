.class Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;
.super Lcom/oneplus/lib/util/ViewDragHelper$Callback;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mOriginalCapturedViewLeft:I

.field final synthetic this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    .line 208
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;"
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;-><init>()V

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mActivePointerId:I

    return-void
.end method

.method private shouldDismiss(Landroid/view/View;F)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "xvel"    # F

    .line 267
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;"
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 271
    .local v1, "isRtl":Z
    :goto_0
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget v4, v4, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 273
    return v3

    .line 274
    :cond_1
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget v4, v4, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    if-nez v4, :cond_4

    .line 277
    if-eqz v1, :cond_2

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    goto :goto_1

    :cond_2
    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    :goto_1
    move v2, v3

    :cond_3
    return v2

    .line 278
    :cond_4
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget v4, v4, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    if-ne v4, v3, :cond_7

    .line 281
    if-eqz v1, :cond_5

    cmpl-float v0, p2, v0

    if-lez v0, :cond_6

    goto :goto_2

    :cond_5
    cmpg-float v0, p2, v0

    if-gez v0, :cond_6

    :goto_2
    move v2, v3

    :cond_6
    return v2

    .line 283
    .end local v1    # "isRtl":Z
    :cond_7
    nop

    .line 289
    return v2

    .line 284
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    sub-int/2addr v0, v1

    .line 285
    .local v0, "distance":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget v4, v4, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mDragDismissThreshold:F

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 286
    .local v1, "thresholdDistance":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lt v4, v1, :cond_9

    move v2, v3

    :cond_9
    return v2
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .line 299
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;"
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 303
    .local v0, "isRtl":Z
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget v2, v2, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    if-nez v2, :cond_2

    .line 304
    if-eqz v0, :cond_1

    .line 305
    iget v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 306
    .local v1, "min":I
    iget v2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .local v2, "max":I
    goto :goto_1

    .line 308
    .end local v1    # "min":I
    .end local v2    # "max":I
    :cond_1
    iget v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .line 309
    .restart local v1    # "min":I
    iget v2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .restart local v2    # "max":I
    goto :goto_1

    .line 311
    .end local v1    # "min":I
    .end local v2    # "max":I
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget v2, v2, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    if-ne v2, v1, :cond_4

    .line 312
    if-eqz v0, :cond_3

    .line 313
    iget v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .line 314
    .restart local v1    # "min":I
    iget v2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .restart local v2    # "max":I
    goto :goto_1

    .line 316
    .end local v1    # "min":I
    .end local v2    # "max":I
    :cond_3
    iget v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 317
    .restart local v1    # "min":I
    iget v2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .restart local v2    # "max":I
    goto :goto_1

    .line 320
    .end local v1    # "min":I
    .end local v2    # "max":I
    :cond_4
    iget v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 321
    .restart local v1    # "min":I
    iget v2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 324
    .restart local v2    # "max":I
    :goto_1
    invoke-static {v1, p2, v2}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->clamp(III)I

    move-result v3

    return v3
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .line 329
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;"
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 294
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;"
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 2
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .line 222
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;"
    iput p2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mActivePointerId:I

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 228
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 229
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 231
    :cond_0
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 235
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mListener:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mListener:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;->onDragStateChanged(I)V

    .line 238
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .line 334
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;"
    iget v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    int-to-float v0, v0

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget v2, v2, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mAlphaStartSwipeDistance:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 336
    .local v0, "startAlphaDistance":F
    iget v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    int-to-float v1, v1

    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget v3, v3, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mAlphaEndSwipeDistance:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 339
    .local v1, "endAlphaDistance":F
    int-to-float v2, p2

    cmpg-float v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-gtz v2, :cond_0

    .line 340
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 341
    :cond_0
    int-to-float v2, p2

    cmpl-float v2, v2, v1

    const/4 v4, 0x0

    if-ltz v2, :cond_1

    .line 342
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 345
    :cond_1
    int-to-float v2, p2

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->fraction(FFF)F

    move-result v2

    .line 346
    .local v2, "distance":F
    sub-float v5, v3, v2

    invoke-static {v4, v5, v3}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 348
    .end local v2    # "distance":F
    :goto_0
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .line 243
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mActivePointerId:I

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 247
    .local v0, "childWidth":I
    const/4 v1, 0x0

    .line 249
    .local v1, "dismiss":Z
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->shouldDismiss(Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    if-ge v2, v3, :cond_0

    .line 251
    sub-int/2addr v3, v0

    goto :goto_0

    .line 252
    :cond_0
    add-int/2addr v3, v0

    :goto_0
    move v2, v3

    .line 253
    .local v2, "targetLeft":I
    const/4 v1, 0x1

    goto :goto_1

    .line 256
    .end local v2    # "targetLeft":I
    :cond_1
    iget v2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .line 259
    .restart local v2    # "targetLeft":I
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget-object v3, v3, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mViewDragHelper:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/oneplus/lib/util/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 260
    new-instance v3, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    invoke-direct {v3, v4, p1, v1}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;-><init>(Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-virtual {p1, v3}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 261
    :cond_2
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget-object v3, v3, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mListener:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;

    if-eqz v3, :cond_3

    .line 262
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget-object v3, v3, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mListener:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;

    invoke-interface {v3, p1}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    .line 264
    :cond_3
    :goto_2
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .line 217
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;"
    iget v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
