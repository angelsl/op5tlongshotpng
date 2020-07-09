.class Lcom/oneplus/lib/widget/ListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/ListPopupWindow;)V
    .locals 0

    .line 1380
    iput-object p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1381
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 1387
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 1391
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    .line 1392
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v0, v0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v0, v0, Lcom/oneplus/lib/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v1, v1, Lcom/oneplus/lib/widget/ListPopupWindow;->mResizePopupRunnable:Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1394
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v0, v0, Lcom/oneplus/lib/widget/ListPopupWindow;->mResizePopupRunnable:Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;->run()V

    .line 1396
    :cond_0
    return-void
.end method
