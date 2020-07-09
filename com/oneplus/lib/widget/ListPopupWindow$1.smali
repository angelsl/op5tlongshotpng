.class Lcom/oneplus/lib/widget/ListPopupWindow$1;
.super Lcom/oneplus/lib/widget/ForwardingListener;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/ListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/ListPopupWindow;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/ListPopupWindow;
    .param p2, "src"    # Landroid/view/View;

    .line 1113
    iput-object p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow$1;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPopup()Lcom/oneplus/lib/menu/ShowableListMenu;
    .locals 1

    .line 1113
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow$1;->getPopup()Lcom/oneplus/lib/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public getPopup()Lcom/oneplus/lib/widget/ListPopupWindow;
    .locals 1

    .line 1116
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow$1;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    return-object v0
.end method
