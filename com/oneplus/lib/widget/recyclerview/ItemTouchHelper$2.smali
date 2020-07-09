.class Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .line 284
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 287
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$400(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 291
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 292
    .local v0, "action":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 293
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    .line 294
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    .line 295
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    .line 296
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$500(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V

    .line 297
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-nez v3, :cond_5

    .line 298
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v3, p2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$600(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;)Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    move-result-object v3

    .line 299
    .local v3, "animation":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    if-eqz v3, :cond_1

    .line 300
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    iget v6, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    .line 301
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    iget v6, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    .line 302
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v5, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-static {v4, v5, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$700(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)I

    .line 303
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v5, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v5}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v5

    iget-object v6, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->clearView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 306
    :cond_0
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v5, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget v6, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mActionState:I

    invoke-static {v4, v5, v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$800(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 307
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedFlags:I

    invoke-static {v4, p2, v5, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$900(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 309
    .end local v3    # "animation":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    :cond_1
    goto :goto_1

    .line 310
    :cond_2
    const/4 v3, 0x3

    const/4 v4, -0x1

    if-eq v0, v3, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 313
    :cond_3
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    if-eq v3, v4, :cond_5

    .line 316
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 320
    .local v3, "index":I
    if-ltz v3, :cond_5

    .line 321
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v4, v0, p2, v3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1000(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;ILandroid/view/MotionEvent;I)Z

    goto :goto_1

    .line 311
    .end local v3    # "index":I
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iput v4, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    .line 312
    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$800(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 324
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 325
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 327
    :cond_6
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .param p1, "disallowIntercept"    # Z

    .line 395
    if-nez p1, :cond_0

    .line 396
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$800(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 399
    return-void
.end method

.method public onTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 332
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$400(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 337
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 341
    return-void

    .line 343
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 344
    .local v0, "action":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 345
    .local v2, "activePointerIndex":I
    if-ltz v2, :cond_2

    .line 346
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v3, v0, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1000(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;ILandroid/view/MotionEvent;I)Z

    .line 348
    :cond_2
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 349
    .local v3, "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-nez v3, :cond_3

    .line 350
    return-void

    .line 352
    :cond_3
    const/16 v4, 0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_8

    const/4 v7, 0x2

    if-eq v0, v7, :cond_7

    const/4 v7, 0x3

    if-eq v0, v7, :cond_8

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    goto/16 :goto_0

    .line 374
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 375
    .local v1, "pointerIndex":I
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 376
    .local v7, "pointerId":I
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v8, v8, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    if-ne v7, v8, :cond_a

    .line 377
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v8}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 378
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v8}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .line 380
    invoke-static {v9}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMaxFlingVelocity()I

    move-result v9

    int-to-float v9, v9

    .line 379
    invoke-virtual {v8, v4, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 384
    :cond_5
    if-nez v1, :cond_6

    move v5, v6

    :cond_6
    move v4, v5

    .line 385
    .local v4, "newPointerIndex":I
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    .line 386
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v6, v5, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedFlags:I

    invoke-static {v5, p2, v6, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$900(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 387
    .end local v4    # "newPointerIndex":I
    goto :goto_0

    .line 355
    .end local v1    # "pointerIndex":I
    .end local v7    # "pointerId":I
    :cond_7
    if-ltz v2, :cond_a

    .line 356
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v4, v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedFlags:I

    invoke-static {v1, p2, v4, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$900(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 357
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1, v3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 358
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$200(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 359
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$200(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 360
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->invalidate()V

    goto :goto_0

    .line 366
    :cond_8
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 367
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .line 368
    invoke-static {v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMaxFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v4, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 370
    :cond_9
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$800(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 371
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iput v1, v4, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    .line 372
    nop

    .line 391
    :cond_a
    :goto_0
    return-void
.end method
