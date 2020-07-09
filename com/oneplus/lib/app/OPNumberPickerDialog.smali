.class public Lcom/oneplus/lib/app/OPNumberPickerDialog;
.super Lcom/oneplus/lib/app/OPAlertDialog;
.source "OPNumberPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/OPNumberPickerDialog$OnNumberSetListener;
    }
.end annotation


# instance fields
.field private final OP_NUMBER_PICKER_DEFAULT_MAX_VALUE:I

.field private final OP_NUMBER_PICKER_DEFAULT_MIN_VALUE:I

.field private mMaxValue:I

.field private mMin:Landroid/widget/TextView;

.field private mMinValue:I

.field private mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

.field private mNumberSetListener:Lcom/oneplus/lib/app/OPNumberPickerDialog$OnNumberSetListener;

.field private mPlurals:I

.field private mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/app/OPNumberPickerDialog;-><init>(Landroid/content/Context;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->OP_NUMBER_PICKER_DEFAULT_MIN_VALUE:I

    .line 41
    const/16 v1, 0x3c

    iput v1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->OP_NUMBER_PICKER_DEFAULT_MAX_VALUE:I

    .line 46
    iput v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mValue:I

    .line 47
    iput v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMinValue:I

    .line 48
    iput v1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMaxValue:I

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/oneplus/lib/app/OPNumberPickerDialog$OnNumberSetListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "listener"    # Lcom/oneplus/lib/app/OPNumberPickerDialog$OnNumberSetListener;

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->OP_NUMBER_PICKER_DEFAULT_MIN_VALUE:I

    .line 41
    const/16 v1, 0x3c

    iput v1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->OP_NUMBER_PICKER_DEFAULT_MAX_VALUE:I

    .line 46
    iput v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mValue:I

    .line 47
    iput v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMinValue:I

    .line 48
    iput v1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMaxValue:I

    .line 106
    iput-object p3, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberSetListener:Lcom/oneplus/lib/app/OPNumberPickerDialog$OnNumberSetListener;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/lib/app/OPNumberPickerDialog$OnNumberSetListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/oneplus/lib/app/OPNumberPickerDialog$OnNumberSetListener;

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/lib/app/OPNumberPickerDialog;-><init>(Landroid/content/Context;ILcom/oneplus/lib/app/OPNumberPickerDialog$OnNumberSetListener;)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/app/OPNumberPickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPNumberPickerDialog;

    .line 38
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPNumberPickerDialog;->updateMinutes()V

    return-void
.end method

.method private updateMinutes()V
    .locals 4

    .line 218
    iget v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mPlurals:I

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMin:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mPlurals:I

    iget-object v3, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    .line 220
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 221
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 219
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method public getMaxValue()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMinValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMinValue:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mValue:I

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 138
    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberSetListener:Lcom/oneplus/lib/app/OPNumberPickerDialog$OnNumberSetListener;

    if-eqz v0, :cond_2

    .line 141
    iget-object v1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/lib/app/OPNumberPickerDialog$OnNumberSetListener;->onNumberSet(I)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/app/OPNumberPickerDialog;->cancel()V

    .line 148
    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 112
    iget-object v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 113
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_number_picker_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/oneplus/commonctrl/R$id;->numberPicker:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    .line 116
    iget-object v2, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    iget v3, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMinValue:I

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    .line 117
    iget-object v2, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    iget v3, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMaxValue:I

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    .line 118
    iget-object v2, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    iget v3, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mValue:I

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    .line 120
    sget v2, Lcom/oneplus/commonctrl/R$id;->min:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMin:Landroid/widget/TextView;

    .line 121
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPNumberPickerDialog;->updateMinutes()V

    .line 122
    iget-object v2, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    new-instance v3, Lcom/oneplus/lib/app/OPNumberPickerDialog$1;

    invoke-direct {v3, p0}, Lcom/oneplus/lib/app/OPNumberPickerDialog$1;-><init>(Lcom/oneplus/lib/app/OPNumberPickerDialog;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    .line 129
    iget-object v2, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mContext:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2, p0}, Lcom/oneplus/lib/app/OPNumberPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 130
    iget-object v2, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mContext:Landroid/content/Context;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {p0, v3, v2, p0}, Lcom/oneplus/lib/app/OPNumberPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 131
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/OPNumberPickerDialog;->setView(Landroid/view/View;)V

    .line 132
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/OPAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 133
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1
    .param p1, "maxValue"    # I

    .line 177
    iget-object v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    if-eqz v0, :cond_0

    .line 178
    iput p1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMaxValue:I

    .line 179
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    .line 181
    :cond_0
    return-void
.end method

.method public setMinValue(I)V
    .locals 1
    .param p1, "minValue"    # I

    .line 165
    iget-object v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    if-eqz v0, :cond_0

    .line 166
    iput p1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMinValue:I

    .line 167
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    .line 169
    :cond_0
    return-void
.end method

.method public setPlurals(I)V
    .locals 0
    .param p1, "p"    # I

    .line 231
    iput p1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mPlurals:I

    .line 232
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 156
    iput p1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mValue:I

    .line 157
    return-void
.end method

.method public updateNumber(I)V
    .locals 1
    .param p1, "number"    # I

    .line 214
    iget-object v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    .line 215
    return-void
.end method
