.class Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V
    .locals 0

    .line 2245
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p2, "x1"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$1;

    .line 2245
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2249
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2254
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$2400(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 2255
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2256
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 2257
    .local v1, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v1, :cond_1

    .line 2258
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->access$2100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2259
    return-void

    .line 2261
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 2265
    .local v2, "pointerId":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    if-ne v2, v3, :cond_1

    .line 2266
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 2267
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 2268
    .local v4, "x":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 2269
    .local v5, "y":F
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iput v4, v6, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    .line 2270
    iput v5, v6, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    .line 2271
    const/4 v7, 0x0

    iput v7, v6, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    iput v7, v6, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    .line 2276
    iget-object v6, v6, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2277
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    const/4 v7, 0x2

    invoke-static {v6, v1, v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$800(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 2282
    .end local v1    # "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v2    # "pointerId":I
    .end local v3    # "index":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_1
    return-void
.end method
