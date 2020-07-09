.class Lcom/oneplus/lib/app/OPAlertController$2;
.super Ljava/lang/Object;
.source "OPAlertController.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/OPAlertController;->setupDecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/OPAlertController;

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/OPAlertController;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/OPAlertController;

    .line 555
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$2;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController$2;->val$parent:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 558
    invoke-virtual {p2}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$2;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertController;->access$800(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->alert_dialog_round_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 562
    .local v0, "roundOffset":I
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$2;->val$parent:Landroid/view/View;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 564
    .end local v0    # "roundOffset":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
