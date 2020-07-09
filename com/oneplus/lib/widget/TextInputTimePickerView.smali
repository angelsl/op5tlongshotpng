.class public Lcom/oneplus/lib/widget/TextInputTimePickerView;
.super Landroid/widget/RelativeLayout;
.source "TextInputTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field public static final AMPM:I = 0x2

.field public static final HOURS:I = 0x0

.field public static final MINUTES:I = 0x1

.field private static final PM:I = 0x1

.field private static final STATE_ACTIVE:I = 0x0

.field private static final STATE_NORAML:I = 0x1


# instance fields
.field private final mAmLabel:Landroid/widget/RadioButton;

.field private final mAmPmGroup:Landroid/widget/RadioGroup;

.field private final mAmPmParent:Landroid/widget/LinearLayout;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mErrorLabel:Landroid/widget/TextView;

.field private mErrorShowing:Z

.field private final mHeaderLabel:Landroid/widget/TextView;

.field private final mHourEditText:Landroid/widget/EditText;

.field private mHourFormatStartsAtZero:Z

.field private final mHourLabel:Landroid/widget/TextView;

.field private final mInputBlock:Landroid/view/View;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIs24Hour:Z

.field private mIsAmPmAtStart:Z

.field private mLabelAlphaDuration:I

.field private mListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

.field private final mMinuteEditText:Landroid/widget/EditText;

.field private final mMinuteLabel:Landroid/widget/TextView;

.field private final mPmLabel:Landroid/widget/RadioButton;

.field private mTimeColorStates:[I

.field private mTimeLabelColorStates:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mTimeColorStates:[I

    .line 65
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mTimeLabelColorStates:[I

    .line 213
    new-instance v1, Lcom/oneplus/lib/widget/TextInputTimePickerView$5;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TextInputTimePickerView$5;-><init>(Lcom/oneplus/lib/widget/TextInputTimePickerView;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$layout;->time_picker_text_input_material:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 88
    sget v1, Lcom/oneplus/commonctrl/R$id;->input_am_pm_parent:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmPmParent:Landroid/widget/LinearLayout;

    .line 89
    sget v1, Lcom/oneplus/commonctrl/R$id;->input_block:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mInputBlock:Landroid/view/View;

    .line 90
    sget v1, Lcom/oneplus/commonctrl/R$id;->input_hour:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    .line 91
    sget v1, Lcom/oneplus/commonctrl/R$id;->input_minute:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    .line 95
    sget v1, Lcom/oneplus/commonctrl/R$id;->top_label:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHeaderLabel:Landroid/widget/TextView;

    .line 96
    sget v1, Lcom/oneplus/commonctrl/R$id;->label_error:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mErrorLabel:Landroid/widget/TextView;

    .line 97
    sget v1, Lcom/oneplus/commonctrl/R$id;->label_hour:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    .line 98
    sget v1, Lcom/oneplus/commonctrl/R$id;->label_minute:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    .line 99
    new-array v1, v0, [I

    sget v2, Lcom/oneplus/commonctrl/R$attr;->opPickerColorActivated:I

    const/4 v4, 0x0

    aput v2, v1, v4

    sget v2, Lcom/oneplus/commonctrl/R$attr;->opPickerColorUnActivated:I

    aput v2, v1, v3

    .line 100
    .local v1, "ATTRS":[I
    new-array v0, v0, [I

    sget v2, Lcom/oneplus/commonctrl/R$attr;->opPickerColorUnActivated:I

    aput v2, v0, v4

    sget v2, Lcom/oneplus/commonctrl/R$attr;->opPickerInputLabelUnActivated:I

    aput v2, v0, v3

    .line 101
    .local v0, "ATTRS_LABEL":[I
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 102
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/oneplus/commonctrl/R$integer;->oneplus_contorl_time_part6:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mLabelAlphaDuration:I

    .line 103
    iget-object v5, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mTimeColorStates:[I

    const/high16 v6, -0x1000000

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    aput v7, v5, v4

    .line 104
    iget-object v5, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mTimeColorStates:[I

    invoke-virtual {v2, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    aput v7, v5, v3

    .line 105
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 107
    iget-object v5, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mTimeLabelColorStates:[I

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    aput v7, v5, v4

    .line 108
    iget-object v5, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mTimeLabelColorStates:[I

    invoke-virtual {v2, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    aput v6, v5, v3

    .line 109
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    iget-object v5, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/oneplus/lib/widget/TextInputTimePickerView$1;

    invoke-direct {v6, p0}, Lcom/oneplus/lib/widget/TextInputTimePickerView$1;-><init>(Lcom/oneplus/lib/widget/TextInputTimePickerView;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 128
    iget-object v5, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;

    invoke-direct {v6, p0}, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;-><init>(Lcom/oneplus/lib/widget/TextInputTimePickerView;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 145
    iget-object v5, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/oneplus/lib/widget/TextInputTimePickerView$3;

    invoke-direct {v6, p0}, Lcom/oneplus/lib/widget/TextInputTimePickerView$3;-><init>(Lcom/oneplus/lib/widget/TextInputTimePickerView;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    iget-object v5, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/oneplus/lib/widget/TextInputTimePickerView$4;

    invoke-direct {v6, p0}, Lcom/oneplus/lib/widget/TextInputTimePickerView$4;-><init>(Lcom/oneplus/lib/widget/TextInputTimePickerView;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 174
    invoke-static {p1}, Lcom/oneplus/lib/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, "amPmStrings":[Ljava/lang/String;
    sget v6, Lcom/oneplus/commonctrl/R$id;->am_pm_group:I

    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    iput-object v6, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmPmGroup:Landroid/widget/RadioGroup;

    .line 176
    sget v6, Lcom/oneplus/commonctrl/R$id;->am_label2:I

    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmLabel:Landroid/widget/RadioButton;

    .line 177
    iget-object v6, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmLabel:Landroid/widget/RadioButton;

    aget-object v4, v5, v4

    invoke-static {v4}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v4, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmLabel:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v4, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmLabel:Landroid/widget/RadioButton;

    invoke-static {v4}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    .line 181
    sget v4, Lcom/oneplus/commonctrl/R$id;->pm_label2:I

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mPmLabel:Landroid/widget/RadioButton;

    .line 182
    iget-object v4, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mPmLabel:Landroid/widget/RadioButton;

    aget-object v3, v5, v3

    invoke-static {v3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v3, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mPmLabel:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v3, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mPmLabel:Landroid/widget/RadioButton;

    invoke-static {v3}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TextInputTimePickerView;

    .line 36
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TextInputTimePickerView;

    .line 36
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/TextInputTimePickerView;ILandroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TextInputTimePickerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/widget/TextView;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/TextInputTimePickerView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TextInputTimePickerView;

    .line 36
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mTimeColorStates:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/TextInputTimePickerView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TextInputTimePickerView;
    .param p1, "x1"    # Z

    .line 36
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->resetInputTimeLabelState(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/TextInputTimePickerView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TextInputTimePickerView;
    .param p1, "x1"    # Landroid/view/View;

    .line 36
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->showSoftInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/TextInputTimePickerView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TextInputTimePickerView;
    .param p1, "x1"    # Z

    .line 36
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->updateAmPmLabel(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TextInputTimePickerView;

    .line 36
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    return-object v0
.end method

.method private static ensureMinimumTextWidth(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "v"    # Landroid/widget/TextView;

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 314
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 315
    .local v0, "minWidth":I
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 316
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 317
    return-void
.end method

.method private getHourOfDayFromLocalizedHour(I)I
    .locals 2
    .param p1, "localizedHour"    # I

    .line 414
    move v0, p1

    .line 415
    .local v0, "hourOfDay":I
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mIs24Hour:Z

    if-eqz v1, :cond_0

    .line 416
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    if-nez v1, :cond_2

    const/16 v1, 0x18

    if-ne p1, v1, :cond_2

    .line 417
    const/4 v0, 0x0

    goto :goto_0

    .line 420
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    if-nez v1, :cond_1

    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    .line 421
    const/4 v0, 0x0

    .line 423
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    add-int/lit8 v0, v0, 0xc

    .line 427
    :cond_2
    :goto_0
    return v0
.end method

.method private isValidLocalizedHour(I)Z
    .locals 3
    .param p1, "localizedHour"    # I

    .line 408
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 409
    .local v0, "minHour":I
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mIs24Hour:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto :goto_0

    :cond_0
    const/16 v2, 0xb

    :goto_0
    add-int/2addr v2, v0

    .line 410
    .local v2, "maxHour":I
    if-lt p1, v0, :cond_1

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private parseAndSetHourInternal(Ljava/lang/String;)Z
    .locals 6
    .param p1, "input"    # Ljava/lang/String;

    .line 376
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 377
    .local v1, "hour":I
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->isValidLocalizedHour(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 378
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    if-eqz v2, :cond_0

    move v3, v0

    :cond_0
    move v2, v3

    .line 379
    .local v2, "minHour":I
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mIs24Hour:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x17

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0xb

    .line 380
    .local v3, "maxHour":I
    :goto_0
    iget-object v4, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 381
    invoke-static {v1, v2, v3}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v5

    .line 380
    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->getHourOfDayFromLocalizedHour(I)I

    move-result v5

    invoke-interface {v4, v0, v5}, Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    .line 382
    return v0

    .line 384
    .end local v2    # "minHour":I
    .end local v3    # "maxHour":I
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->getHourOfDayFromLocalizedHour(I)I

    move-result v4

    invoke-interface {v2, v0, v4}, Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    return v3

    .line 386
    .end local v1    # "hour":I
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method private parseAndSetMinuteInternal(Ljava/lang/String;)Z
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .line 394
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 395
    .local v1, "minutes":I
    const/16 v2, 0x3b

    const/4 v3, 0x1

    if-ltz v1, :cond_1

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-interface {v2, v3, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    .line 400
    return v3

    .line 396
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-static {v1, v0, v2}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v2

    invoke-interface {v4, v3, v2}, Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    return v0

    .line 401
    .end local v1    # "minutes":I
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method private resetInputTimeLabelState(Z)V
    .locals 4
    .param p1, "hoursFocus"    # Z

    .line 209
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mTimeLabelColorStates:[I

    if-eqz p1, :cond_0

    aget v3, v3, v1

    goto :goto_0

    :cond_0
    aget v3, v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mTimeLabelColorStates:[I

    aget v1, v1, v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mTimeLabelColorStates:[I

    aget v1, v2, v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    return-void
.end method

.method private resetInputTimeTextAppearance(ILandroid/widget/TextView;)V
    .locals 1
    .param p1, "textAppearance"    # I
    .param p2, "targetTextView"    # Landroid/widget/TextView;

    .line 201
    invoke-static {}, Lcom/oneplus/lib/util/SystemUtils;->isAtLeastM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 206
    :goto_0
    return-void
.end method

.method private setError(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 342
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mErrorShowing:Z

    .line 344
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mErrorLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    return-void
.end method

.method private showSoftInput(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 191
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 192
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 193
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 198
    :cond_0
    return-void
.end method

.method private updateAmPmLabel(Z)V
    .locals 4
    .param p1, "isAm"    # Z

    .line 234
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 235
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 236
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmLabel:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mTimeColorStates:[I

    if-eqz p1, :cond_0

    aget v3, v3, v1

    goto :goto_0

    :cond_0
    aget v3, v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 237
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 239
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mPmLabel:Landroid/widget/RadioButton;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 240
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mPmLabel:Landroid/widget/RadioButton;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 241
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mPmLabel:Landroid/widget/RadioButton;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mTimeColorStates:[I

    aget v1, v1, v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mTimeColorStates:[I

    aget v1, v2, v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 242
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 243
    return-void
.end method


# virtual methods
.method public getInputBlock()Landroid/view/View;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mInputBlock:Landroid/view/View;

    return-object v0
.end method

.method public setAmPmAtStart(Z)V
    .locals 3
    .param p1, "isAmPmAtStart"    # Z

    .line 282
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mIs24Hour:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmPmParent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmPmGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 284
    return-void

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mIsAmPmAtStart:Z

    if-eq v0, p1, :cond_2

    .line 287
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mIsAmPmAtStart:Z

    .line 289
    if-eqz p1, :cond_1

    .line 290
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmPmParent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmPmGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 291
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmPmParent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmPmGroup:Landroid/widget/RadioGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmPmParent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmPmGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 295
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmPmParent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmPmGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmPmParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 299
    :cond_2
    return-void
.end method

.method setHourFormat(I)V
    .locals 5
    .param p1, "maxCharLength"    # I

    .line 324
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 326
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 328
    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 1
    .param p1, "is24Hour"    # Z

    .line 302
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mIs24Hour:Z

    if-eq v0, p1, :cond_0

    .line 303
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mIs24Hour:Z

    .line 304
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mIsAmPmAtStart:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->setAmPmAtStart(Z)V

    .line 306
    :cond_0
    return-void
.end method

.method setListener(Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 320
    iput-object p1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 321
    return-void
.end method

.method public showInputBlock(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 277
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mInputBlock:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmPmGroup:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 279
    return-void
.end method

.method public showLabels(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 247
    if-eqz p1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mLabelAlphaDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 249
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 251
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mLabelAlphaDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 252
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 254
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHeaderLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mLabelAlphaDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 255
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 257
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mLabelAlphaDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 258
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mLabelAlphaDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 262
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 264
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mLabelAlphaDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 265
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 267
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHeaderLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mLabelAlphaDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 268
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 270
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mLabelAlphaDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 271
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 274
    :goto_0
    return-void
.end method

.method updateSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "separatorText"    # Ljava/lang/String;

    .line 339
    return-void
.end method

.method updateTextInputValues(IIIZZ)V
    .locals 6
    .param p1, "localizedHour"    # I
    .param p2, "minute"    # I
    .param p3, "amOrPm"    # I
    .param p4, "is24Hour"    # Z
    .param p5, "hourFormatStartsAtZero"    # Z

    .line 357
    const-string v0, "%d"

    .line 359
    .local v0, "format":Ljava/lang/String;
    iput-boolean p4, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mIs24Hour:Z

    .line 360
    iput-boolean p5, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    .line 362
    iget-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mAmPmGroup:Landroid/widget/RadioGroup;

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 363
    const/4 v1, 0x1

    if-nez p3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->updateAmPmLabel(Z)V

    .line 364
    iget-object v3, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v3, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 367
    iget-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 369
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mErrorShowing:Z

    if-eqz v1, :cond_2

    .line 370
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->validateInput()Z

    .line 372
    :cond_2
    return-void
.end method

.method validateInput()Z
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->parseAndSetHourInternal(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    .line 332
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->parseAndSetMinuteInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 333
    .local v0, "inputValid":Z
    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->setError(Z)V

    .line 334
    return v0
.end method
