.class public Lcom/oneplus/lib/app/OPEditTextDialog;
.super Lcom/oneplus/lib/app/OPAlertDialog;
.source "OPEditTextDialog.java"


# instance fields
.field private mEditText:Lcom/oneplus/lib/widget/OPEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getEditText()Lcom/oneplus/lib/widget/OPEditText;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/oneplus/lib/app/OPEditTextDialog;->mEditText:Lcom/oneplus/lib/widget/OPEditText;

    if-nez v0, :cond_0

    .line 36
    sget v0, Lcom/oneplus/commonctrl/R$id;->edit_text:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/OPEditTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/OPEditText;

    iput-object v0, p0, Lcom/oneplus/lib/app/OPEditTextDialog;->mEditText:Lcom/oneplus/lib/widget/OPEditText;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPEditTextDialog;->mEditText:Lcom/oneplus/lib/widget/OPEditText;

    return-object v0
.end method

.method initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 31
    sget v0, Lcom/oneplus/commonctrl/R$id;->edit_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/OPEditText;

    iput-object v0, p0, Lcom/oneplus/lib/app/OPEditTextDialog;->mEditText:Lcom/oneplus/lib/widget/OPEditText;

    .line 32
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 22
    const-string v0, "OPEditTextDialog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v0, p0, Lcom/oneplus/lib/app/OPEditTextDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 24
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/oneplus/commonctrl/R$layout;->oneplus_control_alert_dialog_with_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 25
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/OPEditTextDialog;->initView(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/OPEditTextDialog;->setView(Landroid/view/View;)V

    .line 27
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/OPAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 28
    return-void
.end method
