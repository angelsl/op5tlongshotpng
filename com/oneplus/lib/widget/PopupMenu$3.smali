.class Lcom/oneplus/lib/widget/PopupMenu$3;
.super Lcom/oneplus/lib/widget/ForwardingListener;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/PopupMenu;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/PopupMenu;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/PopupMenu;
    .param p2, "src"    # Landroid/view/View;

    .line 152
    iput-object p1, p0, Lcom/oneplus/lib/widget/PopupMenu$3;->this$0:Lcom/oneplus/lib/widget/PopupMenu;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/oneplus/lib/menu/ShowableListMenu;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/oneplus/lib/widget/PopupMenu$3;->this$0:Lcom/oneplus/lib/widget/PopupMenu;

    invoke-static {v0}, Lcom/oneplus/lib/widget/PopupMenu;->access$200(Lcom/oneplus/lib/widget/PopupMenu;)Lcom/oneplus/lib/menu/MenuPopupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->getPopup()Lcom/oneplus/lib/menu/MenuPopup;

    move-result-object v0

    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/oneplus/lib/widget/PopupMenu$3;->this$0:Lcom/oneplus/lib/widget/PopupMenu;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/PopupMenu;->show()V

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/oneplus/lib/widget/PopupMenu$3;->this$0:Lcom/oneplus/lib/widget/PopupMenu;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/PopupMenu;->dismiss()V

    .line 162
    const/4 v0, 0x1

    return v0
.end method
