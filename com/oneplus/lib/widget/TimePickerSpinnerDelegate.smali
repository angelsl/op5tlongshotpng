.class Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;
.super Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerSpinnerDelegate.java"


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDivider:Landroid/widget/TextView;

.field private mHourFormat:C

.field private final mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private final mTempCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "delegator"    # Lcom/oneplus/lib/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 62
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p2}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;)V

    .line 53
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 63
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    .line 65
    iget-object v4, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/oneplus/commonctrl/R$styleable;->TimePicker:[I

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual {v4, v6, v5, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 67
    .local v4, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_legacyLayout:I

    sget v9, Lcom/oneplus/commonctrl/R$layout;->op_time_picker_legacy_material:I

    invoke-virtual {v4, v5, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 69
    .local v5, "layoutResourceId":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    iget-object v9, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 72
    .local v9, "inflater":Landroid/view/LayoutInflater;
    iget-object v10, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v9, v5, v10, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 73
    .local v10, "view":Landroid/view/View;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 76
    sget v12, Lcom/oneplus/commonctrl/R$id;->hour:I

    invoke-virtual {v1, v12}, Lcom/oneplus/lib/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    .line 77
    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    new-instance v13, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$1;

    invoke-direct {v13, v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$1;-><init>(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v12, v13}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    .line 90
    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    sget v13, Lcom/oneplus/commonctrl/R$id;->numberpicker_input:I

    invoke-virtual {v12, v13}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 91
    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 94
    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    sget v14, Lcom/oneplus/commonctrl/R$id;->divider:I

    invoke-virtual {v12, v14}, Lcom/oneplus/lib/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    .line 95
    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 96
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setDividerText()V

    .line 100
    :cond_0
    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    sget v14, Lcom/oneplus/commonctrl/R$id;->minute:I

    invoke-virtual {v12, v14}, Lcom/oneplus/lib/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    .line 101
    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v12, v11}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    .line 102
    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v14, 0x3b

    invoke-virtual {v12, v14}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    .line 103
    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const-wide/16 v14, 0x64

    invoke-virtual {v12, v14, v15}, Lcom/oneplus/lib/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 104
    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {}, Lcom/oneplus/lib/widget/NumberPicker;->getTwoDigitFormatter()Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/oneplus/lib/widget/NumberPicker;->setFormatter(Lcom/oneplus/lib/widget/NumberPicker$Formatter;)V

    .line 105
    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    new-instance v14, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;

    invoke-direct {v14, v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;-><init>(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v12, v14}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    .line 128
    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    sget v14, Lcom/oneplus/commonctrl/R$id;->numberpicker_input:I

    invoke-virtual {v12, v14}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 129
    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 132
    invoke-static/range {p2 .. p2}, Lcom/oneplus/lib/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    .line 135
    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    sget v13, Lcom/oneplus/commonctrl/R$id;->amPm:I

    invoke-virtual {v12, v13}, Lcom/oneplus/lib/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 136
    .local v12, "amPmView":Landroid/view/View;
    instance-of v13, v12, Landroid/widget/Button;

    const/4 v14, 0x0

    if-eqz v13, :cond_1

    .line 137
    iput-object v14, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    .line 138
    iput-object v14, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 139
    move-object v13, v12

    check-cast v13, Landroid/widget/Button;

    iput-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    .line 140
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    new-instance v14, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$3;

    invoke-direct {v14, v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$3;-><init>(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 149
    :cond_1
    iput-object v14, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    .line 150
    move-object v13, v12

    check-cast v13, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    .line 151
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v13, v11}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    .line 152
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v13, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    .line 153
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 154
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    new-instance v14, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$4;

    invoke-direct {v14, v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$4;-><init>(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    .line 163
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    sget v14, Lcom/oneplus/commonctrl/R$id;->numberpicker_input:I

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    iput-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 164
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v14, 0x6

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 167
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->isAmPmAtStart()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 169
    sget v13, Lcom/oneplus/commonctrl/R$id;->timePickerLayout:I

    invoke-virtual {v1, v13}, Lcom/oneplus/lib/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 170
    .local v13, "amPmParent":Landroid/view/ViewGroup;
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 171
    invoke-virtual {v13, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 174
    nop

    .line 175
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 176
    .local v14, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v14}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v15

    .line 177
    .local v15, "startMargin":I
    invoke-virtual {v14}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    .line 178
    .local v2, "endMargin":I
    if-eq v15, v2, :cond_2

    .line 179
    invoke-virtual {v14, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 180
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 184
    .end local v2    # "endMargin":I
    .end local v13    # "amPmParent":Landroid/view/ViewGroup;
    .end local v14    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v15    # "startMargin":I
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    .line 187
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateMinuteControl()V

    .line 189
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 192
    iget-object v2, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 193
    iget-object v2, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v13, 0xb

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setHour(I)V

    .line 194
    iget-object v2, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v13, 0xc

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setMinute(I)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 197
    invoke-virtual {v0, v11}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setEnabled(Z)V

    .line 202
    :cond_3
    iget-object v2, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/TimePicker;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 203
    iget-object v2, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Lcom/oneplus/lib/widget/TimePicker;->setImportantForAccessibility(I)V

    .line 205
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    .line 31
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    .line 31
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    return v0
.end method

.method static synthetic access$102(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    .line 31
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    .line 31
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    .line 31
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    .line 31
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    return-object v0
.end method

.method private getHourFormatData()V
    .locals 6

    .line 213
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mLocale:Ljava/util/Locale;

    .line 214
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    .line 213
    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 216
    .local v1, "lengthPattern":I
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    .line 217
    const/4 v2, 0x0

    .line 220
    .local v2, "hourFormat":C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 221
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 222
    .local v4, "c":C
    const/16 v5, 0x48

    if-eq v4, v5, :cond_2

    const/16 v5, 0x68

    if-eq v4, v5, :cond_2

    const/16 v5, 0x4b

    if-eq v4, v5, :cond_2

    const/16 v5, 0x6b

    if-ne v4, v5, :cond_1

    goto :goto_2

    .line 220
    .end local v4    # "c":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 223
    .restart local v4    # "c":C
    :cond_2
    :goto_2
    iput-char v4, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    .line 224
    add-int/lit8 v5, v3, 0x1

    if-ge v5, v1, :cond_3

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_3

    .line 225
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    .line 230
    .end local v3    # "i":I
    .end local v4    # "c":C
    :cond_3
    return-void
.end method

.method private isAmPmAtStart()Z
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mLocale:Ljava/util/Locale;

    const-string v1, "hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private onTimeChanged()V
    .locals 4

    .line 470
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 471
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v2

    .line 473
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    .line 472
    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V

    .line 478
    :cond_1
    return-void
.end method

.method private setCurrentHour(IZ)V
    .locals 2
    .param p1, "currentHour"    # I
    .param p2, "notifyTimeChanged"    # Z

    .line 277
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 278
    return-void

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_3

    .line 282
    const/16 v0, 0xc

    if-lt p1, v0, :cond_1

    .line 283
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 284
    if-le p1, v0, :cond_2

    .line 285
    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    .line 288
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 289
    if-nez p1, :cond_2

    .line 290
    const/16 p1, 0xc

    .line 293
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    .line 296
    if-eqz p2, :cond_4

    .line 297
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    .line 299
    :cond_4
    return-void
.end method

.method private setDividerText()V
    .locals 6

    .line 248
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v0, :cond_0

    const-string v0, "Hm"

    goto :goto_0

    :cond_0
    const-string v0, "hm"

    .line 249
    .local v0, "skeleton":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "bestDateTimePattern":Ljava/lang/String;
    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 253
    .local v2, "hourIndex":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 254
    const/16 v4, 0x68

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 256
    :cond_1
    if-ne v2, v3, :cond_2

    .line 258
    const-string v3, ":"

    .local v3, "separatorText":Ljava/lang/String;
    goto :goto_1

    .line 260
    .end local v3    # "separatorText":Ljava/lang/String;
    :cond_2
    const/16 v4, 0x6d

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 261
    .local v4, "minuteIndex":I
    if-ne v4, v3, :cond_3

    .line 262
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "separatorText":Ljava/lang/String;
    goto :goto_1

    .line 264
    .end local v3    # "separatorText":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 267
    .end local v4    # "minuteIndex":I
    .restart local v3    # "separatorText":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .line 513
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 514
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 515
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 517
    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .line 450
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setVisibility(I)V

    goto :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 457
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    .line 458
    .local v0, "index":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 459
    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    .line 460
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setVisibility(I)V

    goto :goto_0

    .line 462
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 466
    .end local v0    # "index":I
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 467
    return-void
.end method

.method private updateHourControl()V
    .locals 4

    .line 481
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 483
    iget-char v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v3, 0x6b

    if-ne v0, v3, :cond_0

    .line 484
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    .line 485
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    .line 488
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 492
    :cond_1
    iget-char v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v3, 0x4b

    if-ne v0, v3, :cond_2

    .line 493
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    .line 494
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    .line 497
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    .line 500
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/oneplus/lib/widget/NumberPicker;->getTwoDigitFormatter()Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setFormatter(Lcom/oneplus/lib/widget/NumberPicker$Formatter;)V

    .line 501
    return-void
.end method

.method private updateInputState()V
    .locals 3

    .line 434
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 435
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    .line 436
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 438
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 441
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 444
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 447
    :cond_2
    :goto_0
    return-void
.end method

.method private updateMinuteControl()V
    .locals 2

    .line 504
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 509
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 389
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method public getAmView()Landroid/view/View;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v0

    .line 304
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    return v0

    .line 306
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 307
    rem-int/lit8 v1, v0, 0xc

    return v1

    .line 309
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    return v1
.end method

.method public getHourView()Landroid/view/View;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v0

    return v0
.end method

.method public getMinuteView()Landroid/view/View;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method public getPmView()Landroid/view/View;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method public is24Hour()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 395
    const/4 v0, 0x1

    .line 396
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v1, :cond_0

    .line 397
    or-int/lit16 v0, v0, 0x80

    goto :goto_0

    .line 399
    :cond_0
    or-int/lit8 v0, v0, 0x40

    .line 401
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 402
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 403
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 404
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 403
    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 380
    instance-of v0, p1, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    .line 381
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    .line 382
    .local v0, "ss":Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setHour(I)V

    .line 383
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setMinute(I)V

    .line 385
    .end local v0    # "ss":Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 4
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 375
    new-instance v0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZ)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 350
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    .line 351
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    .line 355
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    goto :goto_0

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 360
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 361
    return-void
.end method

.method public setHour(I)V
    .locals 1
    .param p1, "hour"    # I

    .line 272
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 273
    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 2
    .param p1, "is24Hour"    # Z

    .line 328
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-ne v0, p1, :cond_0

    .line 329
    return-void

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v0

    .line 334
    .local v0, "currentHour":I
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 335
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    .line 336
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    .line 338
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 339
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateMinuteControl()V

    .line 340
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 341
    return-void
.end method

.method public setMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .line 315
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 316
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    .line 319
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    .line 320
    return-void
.end method

.method public validateInput()Z
    .locals 1

    .line 209
    const/4 v0, 0x1

    return v0
.end method
