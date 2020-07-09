.class Lcom/oneplus/lib/widget/ListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/ListPopupWindow;)V
    .locals 0

    .line 1359
    iput-object p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1360
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1364
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1365
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1366
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 1368
    .local v2, "y":I
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v3, v3, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v3, v3, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1369
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v3, v3, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1370
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_0

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v3, v3, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1371
    iget-object v3, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v3, v3, Lcom/oneplus/lib/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v4, v4, Lcom/oneplus/lib/widget/ListPopupWindow;->mResizePopupRunnable:Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1372
    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1373
    iget-object v3, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v3, v3, Lcom/oneplus/lib/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v4, v4, Lcom/oneplus/lib/widget/ListPopupWindow;->mResizePopupRunnable:Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1375
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return v3
.end method
