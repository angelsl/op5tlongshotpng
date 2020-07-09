.class Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;
.super Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePickerCalendarDelegate.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final UNINITIALIZED:I = -0x1

.field private static final USE_LOCALE:I = 0x0

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final VIEW_MONTH_DAY:I = 0x0

.field private static final VIEW_YEAR:I = 0x1


# instance fields
.field private mAnimator:Landroid/widget/ViewAnimator;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCurrentView:I

.field private mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

.field private mFirstDayOfWeek:I

.field private mHeaderLunarMonthDay:Landroid/widget/TextView;

.field private mHeaderMonthDay:Landroid/widget/TextView;

.field private mHeaderYear:Landroid/widget/TextView;

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private mMonthDayFormat:Ljava/text/SimpleDateFormat;

.field private final mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

.field private final mOnHeaderClickListener:Landroid/view/View$OnClickListener;

.field private final mOnYearSelectedListener:Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private final mTempDate:Ljava/util/Calendar;

.field private mYearFormat:Ljava/text/SimpleDateFormat;

.field private mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010098

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    .line 53
    new-array v0, v0, [I

    const v1, 0x1010033

    aput v1, v0, v2

    sput-object v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->ATTRS_DISABLED_ALPHA:[I

    .line 599
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 600
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 601
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 599
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "delegator"    # Lcom/oneplus/lib/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 85
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Lcom/oneplus/lib/widget/DatePicker;Landroid/content/Context;)V

    .line 75
    const/4 v1, -0x1

    iput v1, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 81
    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 187
    new-instance v2, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$1;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$1;-><init>(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V

    iput-object v2, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

    .line 209
    new-instance v2, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;-><init>(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V

    iput-object v2, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnYearSelectedListener:Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;

    .line 238
    new-instance v2, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$3;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$3;-><init>(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V

    iput-object v2, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 87
    iget-object v2, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 88
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 89
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    .line 90
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    .line 91
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 93
    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    const/4 v4, 0x1

    const/16 v5, 0x76c

    invoke-virtual {v3, v5, v1, v4}, Ljava/util/Calendar;->set(III)V

    .line 94
    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    const/16 v5, 0x834

    const/16 v6, 0xb

    const/16 v7, 0x1f

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    .line 96
    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 97
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v5, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/oneplus/commonctrl/R$styleable;->DatePicker:[I

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual {v5, v7, v6, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 99
    .local v5, "a":Landroid/content/res/TypedArray;
    iget-object v6, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v6, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 101
    .local v6, "inflater":Landroid/view/LayoutInflater;
    sget v10, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_internalLayout:I

    sget v11, Lcom/oneplus/commonctrl/R$layout;->op_date_picker_material:I

    invoke-virtual {v5, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 105
    .local v10, "layoutResourceId":I
    iget-object v11, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v6, v10, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    .line 106
    iget-object v11, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->setSaveFromParentEnabled(Z)V

    .line 107
    iget-object v11, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    iget-object v12, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v11, v12}, Lcom/oneplus/lib/widget/DatePicker;->addView(Landroid/view/View;)V

    .line 110
    iget-object v11, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    sget v12, Lcom/oneplus/commonctrl/R$id;->date_picker_header:I

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 111
    .local v11, "header":Landroid/view/ViewGroup;
    sget v12, Lcom/oneplus/commonctrl/R$id;->date_picker_header_year:I

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 112
    iget-object v12, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    iget-object v13, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget v12, Lcom/oneplus/commonctrl/R$id;->date_picker_header_date:I

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    .line 114
    iget-object v12, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    iget-object v13, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget v12, Lcom/oneplus/commonctrl/R$id;->date_picker_header_lunar:I

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderLunarMonthDay:Landroid/widget/TextView;

    .line 120
    const/4 v12, 0x0

    .line 123
    .local v12, "headerTextColor":Landroid/content/res/ColorStateList;
    sget v13, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_android_headerMonthTextAppearance:I

    invoke-virtual {v5, v13, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 125
    .local v13, "monthHeaderTextAppearance":I
    if-eqz v13, :cond_0

    .line 126
    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    sget-object v4, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    invoke-virtual {v14, v15, v4, v1, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 128
    .local v4, "textAppearance":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 129
    .local v14, "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    .end local v4    # "textAppearance":Landroid/content/res/TypedArray;
    .end local v14    # "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    :cond_0
    if-nez v12, :cond_1

    .line 133
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_headerTextColor:I

    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 136
    :cond_1
    if-eqz v12, :cond_2

    .line 137
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 138
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 146
    :cond_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    sget v14, Lcom/oneplus/commonctrl/R$id;->animator:I

    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ViewAnimator;

    iput-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    .line 152
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    sget v14, Lcom/oneplus/commonctrl/R$id;->date_picker_day_picker:I

    invoke-virtual {v4, v14}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/DayPickerView;

    iput-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    .line 153
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    invoke-virtual {v4, v14}, Lcom/oneplus/lib/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 154
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lcom/oneplus/lib/widget/DayPickerView;->setMinDate(J)V

    .line 155
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lcom/oneplus/lib/widget/DayPickerView;->setMaxDate(J)V

    .line 156
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(J)V

    .line 157
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

    invoke-virtual {v4, v14}, Lcom/oneplus/lib/widget/DayPickerView;->setOnDaySelectedListener(Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;)V

    .line 160
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    sget v14, Lcom/oneplus/commonctrl/R$id;->date_picker_year_picker:I

    invoke-virtual {v4, v14}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/YearPickerView;

    iput-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    .line 161
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object v15, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v4, v14, v15}, Lcom/oneplus/lib/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 162
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/oneplus/lib/widget/YearPickerView;->setYear(I)V

    .line 163
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnYearSelectedListener:Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;

    invoke-virtual {v4, v14}, Lcom/oneplus/lib/widget/YearPickerView;->setOnYearSelectedListener(Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;)V

    .line 166
    sget v4, Lcom/oneplus/commonctrl/R$string;->select_day:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    .line 167
    sget v4, Lcom/oneplus/commonctrl/R$string;->select_year:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    .line 171
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    .line 173
    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;
    .param p1, "x1"    # I

    .line 40
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    .line 40
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    .line 40
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->tryVibrate()V

    return-void
.end method

.method public static getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .line 578
    packed-switch p0, :pswitch_data_0

    .line 595
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :pswitch_0
    const/16 v0, 0x1e

    return v0

    .line 593
    :pswitch_1
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    :goto_0
    return v0

    .line 586
    :pswitch_2
    const/16 v0, 0x1f

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private multiplyAlphaComponent(IF)I
    .locals 4
    .param p1, "color"    # I
    .param p2, "alphaMod"    # F

    .line 178
    const v0, 0xffffff

    and-int/2addr v0, p1

    .line 179
    .local v0, "srcRgb":I
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 180
    .local v1, "srcAlpha":I
    int-to-float v2, v1

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 181
    .local v2, "dstAlpha":I
    shl-int/lit8 v3, v2, 0x18

    or-int/2addr v3, v0

    return v3
.end method

.method private onCurrentDateChanged(Z)V
    .locals 4
    .param p1, "announce"    # Z

    .line 270
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 273
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "year":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "monthDay":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->updateLunarDate()V

    .line 284
    if-eqz p1, :cond_1

    .line 285
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->getFormattedCurrentDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 287
    :cond_1
    return-void
.end method

.method private onDateChanged(ZZ)V
    .locals 5
    .param p1, "fromUser"    # Z
    .param p2, "callbackToClient"    # Z

    .line 378
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 380
    .local v0, "year":I
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-eqz v1, :cond_2

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 383
    .local v1, "monthOfYear":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 384
    .local v2, "dayOfMonth":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-eqz v3, :cond_1

    .line 385
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-interface {v3, v4, v0, v1, v2}, Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/oneplus/lib/widget/DatePicker;III)V

    .line 387
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-eqz v3, :cond_2

    .line 388
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-interface {v3, v4, v0, v1, v2}, Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/oneplus/lib/widget/DatePicker;III)V

    .line 392
    .end local v1    # "monthOfYear":I
    .end local v2    # "dayOfMonth":I
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(J)V

    .line 393
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/YearPickerView;->setYear(I)V

    .line 395
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 397
    if-eqz p1, :cond_3

    .line 398
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->tryVibrate()V

    .line 400
    :cond_3
    return-void
.end method

.method private setCurrentView(I)V
    .locals 5
    .param p1, "viewIndex"    # I

    .line 301
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->changeYearLayoutParams()V

    .line 318
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 319
    .local v2, "year":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/YearPickerView;->setYear(I)V

    .line 331
    iget v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v3, p1, :cond_1

    .line 332
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 333
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 334
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 335
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 336
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 337
    iput p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 341
    goto :goto_0

    .line 303
    .end local v2    # "year":I
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(J)V

    .line 305
    iget v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v2, p1, :cond_3

    .line 306
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 307
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 308
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 309
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 310
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 311
    iput p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 315
    nop

    .line 345
    :goto_0
    return-void
.end method

.method private tryVibrate()V
    .locals 7

    .line 605
    invoke-static {}, Lcom/oneplus/lib/util/OPFeaturesUtils;->isSupportZVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    .line 607
    :try_start_0
    const-class v0, Landroid/os/VibrationEffect;

    const-string v1, "EFFECT_CLICK"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 608
    .local v0, "effectClick":Ljava/lang/reflect/Field;
    const-class v1, Landroid/os/VibrationEffect;

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 609
    .local v1, "getMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 610
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 611
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/VibrationEffect;

    .line 612
    .local v2, "effect":Landroid/os/VibrationEffect;
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 613
    .local v3, "vib":Landroid/os/Vibrator;
    sget-object v4, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v3, v2, v4}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "effectClick":Ljava/lang/reflect/Field;
    .end local v1    # "getMethod":Ljava/lang/reflect/Method;
    .end local v2    # "effect":Landroid/os/VibrationEffect;
    .end local v3    # "vib":Landroid/os/Vibrator;
    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 616
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/DatePicker;->performHapticFeedback(I)Z

    .line 620
    :goto_1
    return-void
.end method

.method private updateLunarDate()V
    .locals 6

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "language":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->solarToLunar(Ljava/util/Calendar;)Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;

    move-result-object v1

    .line 293
    .local v1, "lunarCalendar":Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;
    const-string v2, "zh_CN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 294
    .local v2, "isSimple":Z
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderLunarMonthDay:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_0

    const-string v5, "\u519c\u5386\uff1a"

    goto :goto_0

    :cond_0
    const-string v5, "\u8fb2\u66c6\uff1a"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->getYYMMDD()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderLunarMonthDay:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    .end local v1    # "lunarCalendar":Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;
    .end local v2    # "isSimple":Z
    goto :goto_1

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderLunarMonthDay:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    :goto_1
    return-void
.end method


# virtual methods
.method public changeYearLayoutParams()V
    .locals 6

    .line 348
    iget v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 349
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 350
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 351
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-ne v3, v4, :cond_0

    .line 352
    const/4 v3, -0x2

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-direct {v2, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 350
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/YearPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 569
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 570
    const/4 v0, 0x1

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 574
    const-class v0, Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 2

    .line 492
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by calendar-mode DatePicker"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 470
    iget v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    if-eqz v0, :cond_0

    .line 471
    return v0

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonth()I
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .line 512
    const/4 v0, 0x0

    return v0
.end method

.method public getYear()I
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "callBack"    # Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    .line 359
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 360
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 361
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 365
    iput-object p4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    .line 366
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isYearPickerIsShow()Z
    .locals 2

    .line 198
    iget v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 517
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 518
    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 253
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 254
    .local v0, "headerYear":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 257
    return-void

    .line 261
    :cond_0
    const-string v1, "EMMMd"

    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "datePattern":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    .line 263
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "y"

    invoke-direct {v2, v3, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    .line 266
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 267
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 542
    instance-of v0, p1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    if-eqz v0, :cond_1

    .line 543
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 546
    .local v0, "ss":Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedYear()I

    move-result v2

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedMonth()I

    move-result v3

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedDay()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 547
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getMinDate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 548
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getMaxDate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 550
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 552
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getCurrentView()I

    move-result v1

    .line 553
    .local v1, "currentView":I
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 555
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPosition()I

    move-result v2

    .line 556
    .local v2, "listPosition":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 557
    if-nez v1, :cond_0

    .line 558
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/DayPickerView;->setPosition(I)V

    goto :goto_0

    .line 559
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 560
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPositionOffset()I

    .line 565
    .end local v0    # "ss":Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    .end local v1    # "currentView":I
    .end local v2    # "listPosition":I
    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 19
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 522
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 523
    .local v1, "year":I
    iget-object v2, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 524
    .local v2, "month":I
    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 526
    .local v15, "day":I
    const/4 v3, -0x1

    .line 527
    .local v3, "listPosition":I
    const/16 v16, -0x1

    .line 529
    .local v16, "listPositionOffset":I
    iget v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-nez v4, :cond_0

    .line 530
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/DayPickerView;->getMostVisiblePosition()I

    move-result v3

    move/from16 v17, v3

    goto :goto_0

    .line 531
    :cond_0
    move/from16 v17, v3

    .line 536
    .end local v3    # "listPosition":I
    .local v17, "listPosition":I
    :goto_0
    new-instance v18, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 537
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    iget v12, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    move-object/from16 v3, v18

    move-object/from16 v4, p1

    move v5, v1

    move v6, v2

    move v7, v15

    move/from16 v13, v17

    move/from16 v14, v16

    invoke-direct/range {v3 .. v14}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    .line 536
    return-object v18
.end method

.method public setCalendarViewShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .line 498
    return-void
.end method

.method public setCurrentYear()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/YearPickerView;->setCurrentYear()V

    .line 204
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 478
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 479
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/DayPickerView;->setEnabled(Z)V

    .line 480
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/YearPickerView;->setEnabled(Z)V

    .line 481
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 482
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 483
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    .line 463
    iput p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 465
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 466
    return-void
.end method

.method public setMaxDate(J)V
    .locals 4
    .param p1, "maxDate"    # J

    .line 441
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 442
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    .line 443
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 445
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 449
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 452
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/DayPickerView;->setMaxDate(J)V

    .line 453
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 454
    return-void
.end method

.method public setMinDate(J)V
    .locals 4
    .param p1, "minDate"    # J

    .line 419
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 420
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    .line 421
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 423
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 427
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 430
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/DayPickerView;->setMinDate(J)V

    .line 431
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 432
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .line 508
    return-void
.end method

.method public updateDate(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 370
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 371
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 372
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 374
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 375
    return-void
.end method
