.class Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/ListPopupWindow;)V
    .locals 0

    .line 1344
    iput-object p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1345
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1349
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v0, v0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v0, v0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v0, v0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    .line 1350
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v1, v1, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v0, v0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    .line 1351
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget v1, v1, Lcom/oneplus/lib/widget/ListPopupWindow;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v0, v0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1353
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->show()V

    .line 1355
    :cond_0
    return-void
.end method
