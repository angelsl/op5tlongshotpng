.class Lcom/oneplus/lib/menu/StandardMenuPopup$2;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/StandardMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/menu/StandardMenuPopup;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/StandardMenuPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/menu/StandardMenuPopup;

    .line 57
    iput-object p1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup$2;->this$0:Lcom/oneplus/lib/menu/StandardMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 60
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup$2;->this$0:Lcom/oneplus/lib/menu/StandardMenuPopup;

    invoke-static {v0}, Lcom/oneplus/lib/menu/StandardMenuPopup;->access$000(Lcom/oneplus/lib/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup$2;->this$0:Lcom/oneplus/lib/menu/StandardMenuPopup;

    invoke-static {v0}, Lcom/oneplus/lib/menu/StandardMenuPopup;->access$000(Lcom/oneplus/lib/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup$2;->this$0:Lcom/oneplus/lib/menu/StandardMenuPopup;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/lib/menu/StandardMenuPopup;->access$002(Lcom/oneplus/lib/menu/StandardMenuPopup;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup$2;->this$0:Lcom/oneplus/lib/menu/StandardMenuPopup;

    invoke-static {v0}, Lcom/oneplus/lib/menu/StandardMenuPopup;->access$000(Lcom/oneplus/lib/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup$2;->this$0:Lcom/oneplus/lib/menu/StandardMenuPopup;

    invoke-static {v1}, Lcom/oneplus/lib/menu/StandardMenuPopup;->access$100(Lcom/oneplus/lib/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 68
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 69
    return-void
.end method
