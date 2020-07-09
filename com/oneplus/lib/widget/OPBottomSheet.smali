.class public Lcom/oneplus/lib/widget/OPBottomSheet;
.super Ljava/lang/Object;
.source "OPBottomSheet.java"


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/oneplus/commonctrl/R$style;->Oneplus_bottom_fullscreen:I

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mDialog:Landroid/app/Dialog;

    .line 18
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 19
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 20
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 21
    sget v1, Lcom/oneplus/commonctrl/R$style;->Oneplus_popup_bottom_animation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 22
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPBottomSheet;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 35
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    .line 41
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 45
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mView:Landroid/view/View;

    .line 46
    return-void
.end method

.method public show()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 27
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 29
    :cond_0
    return-void
.end method
