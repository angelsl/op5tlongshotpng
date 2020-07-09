.class Lcom/oneplus/lib/widget/PopupMenu$2;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/PopupMenu;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/PopupMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/PopupMenu;

    .line 103
    iput-object p1, p0, Lcom/oneplus/lib/widget/PopupMenu$2;->this$0:Lcom/oneplus/lib/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/oneplus/lib/widget/PopupMenu$2;->this$0:Lcom/oneplus/lib/widget/PopupMenu;

    invoke-static {v0}, Lcom/oneplus/lib/widget/PopupMenu;->access$100(Lcom/oneplus/lib/widget/PopupMenu;)Lcom/oneplus/lib/widget/PopupMenu$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/oneplus/lib/widget/PopupMenu$2;->this$0:Lcom/oneplus/lib/widget/PopupMenu;

    invoke-static {v0}, Lcom/oneplus/lib/widget/PopupMenu;->access$100(Lcom/oneplus/lib/widget/PopupMenu;)Lcom/oneplus/lib/widget/PopupMenu$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/PopupMenu$2;->this$0:Lcom/oneplus/lib/widget/PopupMenu;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/PopupMenu$OnDismissListener;->onDismiss(Lcom/oneplus/lib/widget/PopupMenu;)V

    .line 109
    :cond_0
    return-void
.end method
