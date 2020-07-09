.class Lcom/oneplus/lib/widget/Spinner$DropdownPopup$3;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

.field final synthetic val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/Spinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    .line 751
    iput-object p1, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup$3;->this$1:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    iput-object p2, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 754
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup$3;->this$1:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    iget-object v0, v0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 755
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 756
    iget-object v1, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 758
    :cond_0
    return-void
.end method
