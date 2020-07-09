.class Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;
.super Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePickerSpinnerDelegate.java"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private final mCalendarView:Landroid/widget/CalendarView;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private final mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private final mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 19
    .param p1, "delegator"    # Lcom/oneplus/lib/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p2}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Lcom/oneplus/lib/widget/DatePicker;Landroid/content/Context;)V

    .line 64
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    .line 74
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    .line 80
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    .line 81
    iput-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    .line 84
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 86
    sget-object v4, Lcom/oneplus/commonctrl/R$styleable;->DatePicker:[I

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 88
    .local v4, "attributesArray":Landroid/content/res/TypedArray;
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_android_spinnersShown:I

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 90
    .local v8, "spinnersShown":Z
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_android_calendarViewShown:I

    invoke-virtual {v4, v9, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 92
    .local v9, "calendarViewShown":Z
    sget v10, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_android_startYear:I

    const/16 v11, 0x76c

    invoke-virtual {v4, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 94
    .local v10, "startYear":I
    sget v11, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_android_endYear:I

    const/16 v12, 0x834

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 95
    .local v11, "endYear":I
    sget v12, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_android_minDate:I

    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 96
    .local v12, "minDate":Ljava/lang/String;
    sget v13, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_android_maxDate:I

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 97
    .local v13, "maxDate":Ljava/lang/String;
    sget v14, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_legacyLayout:I

    sget v15, Lcom/oneplus/commonctrl/R$layout;->op_date_picker_legacy:I

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 99
    .local v14, "layoutResourceId":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    nop

    .line 102
    const-string v15, "layout_inflater"

    invoke-virtual {v1, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 103
    .local v15, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v15, v14, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 106
    new-instance v2, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;-><init>(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V

    .line 142
    .local v2, "onChangeListener":Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;
    move-object/from16 v17, v1

    .end local v1    # "view":Landroid/view/View;
    .local v17, "view":Landroid/view/View;
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    sget v3, Lcom/oneplus/commonctrl/R$id;->pickers:I

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    .line 145
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    sget v3, Lcom/oneplus/commonctrl/R$id;->calendar_view:I

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CalendarView;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    .line 146
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    new-instance v3, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$2;

    invoke-direct {v3, v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$2;-><init>(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V

    invoke-virtual {v1, v3}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    .line 155
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    sget v3, Lcom/oneplus/commonctrl/R$id;->day:I

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    .line 156
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {}, Lcom/oneplus/lib/widget/NumberPicker;->getTwoDigitFormatter()Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setFormatter(Lcom/oneplus/lib/widget/NumberPicker$Formatter;)V

    .line 157
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    move-object/from16 v18, v4

    .end local v4    # "attributesArray":Landroid/content/res/TypedArray;
    .local v18, "attributesArray":Landroid/content/res/TypedArray;
    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/lib/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 158
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    .line 159
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    sget v3, Lcom/oneplus/commonctrl/R$id;->numberpicker_input:I

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 162
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    sget v3, Lcom/oneplus/commonctrl/R$id;->month:I

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    .line 163
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    .line 164
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget v3, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    .line 165
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 166
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/lib/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 167
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    .line 168
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    sget v3, Lcom/oneplus/commonctrl/R$id;->numberpicker_input:I

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 171
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    sget v3, Lcom/oneplus/commonctrl/R$id;->year:I

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    .line 172
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/lib/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 173
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    .line 174
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    sget v3, Lcom/oneplus/commonctrl/R$id;->numberpicker_input:I

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 178
    if-nez v8, :cond_0

    if-nez v9, :cond_0

    .line 179
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {v0, v8}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    .line 182
    invoke-virtual {v0, v9}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setCalendarViewShown(Z)V

    .line 186
    :goto_0
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 187
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 188
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-direct {v0, v12, v1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v10, v3, v4}, Ljava/util/Calendar;->set(III)V

    goto :goto_1

    .line 188
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 192
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, v10, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 194
    :goto_1
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setMinDate(J)V

    .line 197
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 198
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x1f

    const/16 v4, 0xb

    if-nez v1, :cond_3

    .line 199
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-direct {v0, v13, v1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 200
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, v11, v4, v3}, Ljava/util/Calendar;->set(III)V

    goto :goto_2

    .line 203
    :cond_3
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, v11, v4, v3}, Ljava/util/Calendar;->set(III)V

    .line 205
    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setMaxDate(J)V

    .line 208
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 209
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v16, v2

    .end local v2    # "onChangeListener":Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;
    .local v16, "onChangeListener":Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;
    const/4 v2, 0x5

    .line 210
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x0

    .line 209
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->init(IIILcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V

    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->reorderSpinners()V

    .line 217
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/DatePicker;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 218
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/DatePicker;->setImportantForAccessibility(I)V

    .line 220
    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    .line 32
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    .line 32
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    .line 32
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    .line 32
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    .line 32
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;III)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setDate(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    .line 32
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    .line 32
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    .line 32
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->notifyDateChanged()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 434
    if-nez p1, :cond_0

    .line 435
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0

    .line 437
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 438
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 439
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 440
    return-object v2
.end method

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 534
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    .line 535
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    .line 536
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 534
    :goto_1
    return v1
.end method

.method private notifyDateChanged()V
    .locals 5

    .line 609
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/DatePicker;->sendAccessibilityEvent(I)V

    .line 610
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    .line 612
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    .line 611
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/oneplus/lib/widget/DatePicker;III)V

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    .line 616
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    .line 615
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/oneplus/lib/widget/DatePicker;III)V

    .line 618
    :cond_1
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 2
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    const/4 v0, 0x1

    return v0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 529
    const/4 v1, 0x0

    return v1
.end method

.method private reorderSpinners()V
    .locals 6

    .line 450
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 453
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyyMMMdd"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v1

    .line 455
    .local v1, "order":[C
    array-length v2, v1

    .line 456
    .local v2, "spinnerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 457
    aget-char v4, v1, v3

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_2

    const/16 v5, 0x64

    if-eq v4, v5, :cond_1

    const/16 v5, 0x79

    if-ne v4, v5, :cond_0

    .line 467
    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 468
    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0, v4, v2, v3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setImeOptions(Lcom/oneplus/lib/widget/NumberPicker;II)V

    .line 469
    goto :goto_1

    .line 471
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 459
    :cond_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 460
    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0, v4, v2, v3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setImeOptions(Lcom/oneplus/lib/widget/NumberPicker;II)V

    .line 461
    goto :goto_1

    .line 463
    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 464
    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0, v4, v2, v3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setImeOptions(Lcom/oneplus/lib/widget/NumberPicker;II)V

    .line 465
    nop

    .line 456
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 474
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private setDate(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 540
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 541
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 546
    :cond_1
    :goto_0
    return-void
.end method

.method private setImeOptions(Lcom/oneplus/lib/widget/NumberPicker;II)V
    .locals 2
    .param p1, "spinner"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .line 629
    add-int/lit8 v0, p2, -0x1

    if-ge p3, v0, :cond_0

    .line 630
    const/4 v0, 0x5

    .local v0, "imeOptions":I
    goto :goto_0

    .line 632
    .end local v0    # "imeOptions":I
    :cond_0
    const/4 v0, 0x6

    .line 634
    .restart local v0    # "imeOptions":I
    :goto_0
    sget v1, Lcom/oneplus/commonctrl/R$id;->numberpicker_input:I

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 635
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 636
    return-void
.end method

.method private updateCalendarView()V
    .locals 4

    .line 601
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/CalendarView;->setDate(JZZ)V

    .line 602
    return-void
.end method

.method private updateInputState()V
    .locals 3

    .line 645
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 646
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    .line 647
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 648
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 649
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 650
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 651
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 652
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 653
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 654
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 655
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 658
    :cond_2
    :goto_0
    return-void
.end method

.method private updateSpinners()V
    .locals 7

    .line 550
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    .line 552
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    .line 553
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 554
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    .line 556
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    .line 557
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_0

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    .line 560
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    .line 561
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 562
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    .line 564
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    .line 565
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_0

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    .line 568
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    .line 569
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 570
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    .line 572
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    .line 573
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 578
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    .line 579
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getMinValue()I

    move-result v1

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/NumberPicker;->getMaxValue()I

    move-result v6

    add-int/2addr v6, v5

    .line 578
    invoke-static {v0, v1, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 580
    .local v0, "displayedValues":[Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 583
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    .line 584
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    .line 585
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 588
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    .line 589
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    .line 590
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    .line 592
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 593
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 595
    :cond_2
    return-void
.end method

.method private usingNumericMonths()Z
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 388
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 389
    const/4 v0, 0x1

    return v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDateFormatOrder(Ljava/lang/String;)[C
    .locals 11
    .param p1, "pattern"    # Ljava/lang/String;

    .line 477
    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 478
    .local v0, "result":[C
    const/4 v1, 0x0

    .line 479
    .local v1, "resultIndex":I
    const/4 v2, 0x0

    .line 480
    .local v2, "sawDay":Z
    const/4 v3, 0x0

    .line 481
    .local v3, "sawMonth":Z
    const/4 v4, 0x0

    .line 483
    .local v4, "sawYear":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 484
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 485
    .local v6, "ch":C
    const/16 v7, 0x4c

    const/16 v8, 0x79

    const/16 v9, 0x4d

    const/16 v10, 0x64

    if-eq v6, v10, :cond_7

    if-eq v6, v7, :cond_7

    if-eq v6, v9, :cond_7

    if-ne v6, v8, :cond_0

    goto/16 :goto_2

    .line 496
    :cond_0
    const/16 v7, 0x47

    if-ne v6, v7, :cond_1

    goto/16 :goto_3

    .line 498
    :cond_1
    const/16 v7, 0x61

    if-lt v6, v7, :cond_2

    const/16 v7, 0x7a

    if-le v6, v7, :cond_3

    :cond_2
    const/16 v7, 0x41

    if-lt v6, v7, :cond_4

    const/16 v7, 0x5a

    if-le v6, v7, :cond_3

    goto :goto_1

    .line 499
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad pattern character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, "\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 500
    :cond_4
    :goto_1
    const/16 v7, 0x27

    if-ne v6, v7, :cond_b

    .line 501
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_5

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_5

    .line 502
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 504
    :cond_5
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 505
    const/4 v7, -0x1

    if-eq v5, v7, :cond_6

    .line 508
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 506
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad quoting in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 486
    :cond_7
    :goto_2
    if-ne v6, v10, :cond_8

    if-nez v2, :cond_8

    .line 487
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "resultIndex":I
    .local v7, "resultIndex":I
    aput-char v10, v0, v1

    .line 488
    const/4 v1, 0x1

    move v2, v1

    move v1, v7

    .end local v2    # "sawDay":Z
    .local v1, "sawDay":Z
    goto :goto_3

    .line 489
    .end local v7    # "resultIndex":I
    .local v1, "resultIndex":I
    .restart local v2    # "sawDay":Z
    :cond_8
    if-eq v6, v7, :cond_9

    if-ne v6, v9, :cond_a

    :cond_9
    if-nez v3, :cond_a

    .line 490
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "resultIndex":I
    .restart local v7    # "resultIndex":I
    aput-char v9, v0, v1

    .line 491
    const/4 v1, 0x1

    move v3, v1

    move v1, v7

    .end local v3    # "sawMonth":Z
    .local v1, "sawMonth":Z
    goto :goto_3

    .line 492
    .end local v7    # "resultIndex":I
    .local v1, "resultIndex":I
    .restart local v3    # "sawMonth":Z
    :cond_a
    if-ne v6, v8, :cond_b

    if-nez v4, :cond_b

    .line 493
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "resultIndex":I
    .restart local v7    # "resultIndex":I
    aput-char v8, v0, v1

    .line 494
    const/4 v1, 0x1

    move v4, v1

    move v1, v7

    .line 483
    .end local v6    # "ch":C
    .end local v7    # "resultIndex":I
    .restart local v1    # "resultIndex":I
    :cond_b
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 514
    .end local v5    # "i":I
    :cond_c
    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 3

    .line 311
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 312
    .local v0, "maxDate":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 313
    return-object v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 3

    .line 287
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 288
    .local v0, "minDate":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 289
    return-object v0
.end method

.method public getMonth()I
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    .line 225
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setDate(III)V

    .line 226
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 227
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 229
    iput-object p4, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    .line 230
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 327
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public isYearPickerIsShow()Z
    .locals 1

    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 367
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 368
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 378
    instance-of v0, p1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    .line 379
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 380
    .local v0, "ss":Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedYear()I

    move-result v1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedMonth()I

    move-result v2

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedDay()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setDate(III)V

    .line 381
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 382
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 384
    .end local v0    # "ss":Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 10
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 372
    new-instance v9, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    .line 373
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getMinDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getMaxDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJ)V

    .line 372
    return-object v9
.end method

.method public setCalendarViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .line 347
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CalendarView;->setVisibility(I)V

    .line 348
    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .line 399
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 401
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 402
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    .line 403
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 404
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 406
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    .line 407
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 409
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 413
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    if-ge v0, v2, :cond_0

    .line 414
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setCurrentYear()V
    .locals 0

    .line 343
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 318
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    .line 320
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    .line 321
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    .line 322
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    .line 323
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    .line 260
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setFirstDayOfWeek(I)V

    .line 261
    return-void
.end method

.method public setMaxDate(J)V
    .locals 3
    .param p1, "maxDate"    # J

    .line 294
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 295
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 296
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 298
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 301
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    .line 302
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 304
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 306
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 307
    return-void
.end method

.method public setMinDate(J)V
    .locals 3
    .param p1, "minDate"    # J

    .line 270
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 271
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 272
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 274
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 277
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    .line 278
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 280
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 282
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 283
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .line 357
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 234
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setDate(III)V

    .line 238
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 239
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 240
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->notifyDateChanged()V

    .line 241
    return-void
.end method
