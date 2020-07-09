.class Lcom/oneplus/lib/widget/DayPickerView;
.super Landroid/view/ViewGroup;
.source "DayPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;
    }
.end annotation


# static fields
.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DATE_FORMATTER:Ljava/text/DateFormat;

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_LAYOUT:I

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

.field private mContext:Landroid/content/Context;

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private final mNextButton:Landroid/widget/ImageButton;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

.field private final mOnPageChangedListener:Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

.field private final mPrevButton:Landroid/widget/ImageButton;

.field private final mSelectedDay:Ljava/util/Calendar;

.field private mTempCalendar:Ljava/util/Calendar;

.field private final mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    sget v0, Lcom/oneplus/commonctrl/R$layout;->op_day_picker_content_material:I

    sput v0, Lcom/oneplus/lib/widget/DayPickerView;->DEFAULT_LAYOUT:I

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/lib/widget/DayPickerView;->DATE_FORMATTER:Ljava/text/DateFormat;

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010098

    aput v2, v0, v1

    sput-object v0, Lcom/oneplus/lib/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    const v0, 0x101035d

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/lib/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    .line 40
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    .line 418
    new-instance v2, Lcom/oneplus/lib/widget/DayPickerView$2;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/widget/DayPickerView$2;-><init>(Lcom/oneplus/lib/widget/DayPickerView;)V

    iput-object v2, v0, Lcom/oneplus/lib/widget/DayPickerView;->mOnPageChangedListener:Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 435
    new-instance v2, Lcom/oneplus/lib/widget/DayPickerView$3;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/widget/DayPickerView$3;-><init>(Lcom/oneplus/lib/widget/DayPickerView;)V

    iput-object v2, v0, Lcom/oneplus/lib/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 70
    iput-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mContext:Landroid/content/Context;

    .line 71
    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, v0, Lcom/oneplus/lib/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 74
    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView:[I

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 77
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_android_firstDayOfWeek:I

    .line 78
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 77
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 80
    .local v6, "firstDayOfWeek":I
    sget v7, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_android_minDate:I

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, "minDate":Ljava/lang/String;
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_android_maxDate:I

    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "maxDate":Ljava/lang/String;
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_monthTextAppearance:I

    sget v10, Lcom/oneplus/commonctrl/R$style;->TextAppearance_Material_Widget_Calendar_Month:I

    invoke-virtual {v2, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 86
    .local v9, "monthTextAppearanceResId":I
    sget v10, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_weekDayTextAppearance:I

    sget v11, Lcom/oneplus/commonctrl/R$style;->TextAppearance_Material_Widget_Calendar_DayOfWeek:I

    invoke-virtual {v2, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 89
    .local v10, "dayOfWeekTextAppearanceResId":I
    sget v11, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_dateTextAppearance:I

    sget v12, Lcom/oneplus/commonctrl/R$style;->TextAppearance_Material_Widget_Calendar_Day:I

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 93
    .local v11, "dayTextAppearanceResId":I
    sget v12, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_daySelectorColor:I

    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 96
    .local v12, "daySelectorColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    new-instance v13, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    sget v14, Lcom/oneplus/commonctrl/R$layout;->op_date_picker_month_item_material:I

    sget v15, Lcom/oneplus/commonctrl/R$id;->month_view:I

    invoke-direct {v13, v1, v14, v15}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v13, v0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    .line 101
    iget-object v13, v0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v13, v9}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setMonthTextAppearance(I)V

    .line 102
    iget-object v13, v0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v13, v10}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    .line 103
    iget-object v13, v0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v13, v11}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    .line 104
    iget-object v13, v0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v13, v12}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    .line 106
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 107
    .local v13, "inflater":Landroid/view/LayoutInflater;
    sget v14, Lcom/oneplus/lib/widget/DayPickerView;->DEFAULT_LAYOUT:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 110
    .local v14, "content":Landroid/view/ViewGroup;
    :goto_0
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v16

    if-lez v16, :cond_0

    .line 111
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 112
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 113
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/DayPickerView;->addView(Landroid/view/View;)V

    .line 114
    .end local v1    # "child":Landroid/view/View;
    move-object/from16 v1, p1

    goto :goto_0

    .line 116
    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$id;->prev:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 117
    iget-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v15, v0, Lcom/oneplus/lib/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v15}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget v1, Lcom/oneplus/commonctrl/R$id;->next:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 120
    iget-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    iget-object v15, v0, Lcom/oneplus/lib/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v15}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    sget v1, Lcom/oneplus/commonctrl/R$id;->day_picker_view_pager:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/viewpager/widget/ViewPager;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    .line 123
    iget-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    iget-object v15, v0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v1, v15}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setAdapter(Lcom/oneplus/support/viewpager/widget/PagerAdapter;)V

    .line 124
    iget-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    iget-object v15, v0, Lcom/oneplus/lib/widget/DayPickerView;->mOnPageChangedListener:Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v15}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setOnPageChangeListener(Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 127
    if-eqz v9, :cond_2

    .line 128
    iget-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    move-object/from16 v17, v2

    .end local v2    # "a":Landroid/content/res/TypedArray;
    .local v17, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/oneplus/lib/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    const/4 v3, 0x0

    invoke-virtual {v1, v15, v2, v3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 130
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 131
    .local v2, "monthColor":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1

    .line 132
    iget-object v3, v0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 133
    iget-object v3, v0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 135
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 127
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    .end local v17    # "a":Landroid/content/res/TypedArray;
    .local v2, "a":Landroid/content/res/TypedArray;
    :cond_2
    move-object/from16 v17, v2

    .line 139
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .restart local v17    # "a":Landroid/content/res/TypedArray;
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 140
    .local v1, "tempDate":Ljava/util/Calendar;
    invoke-static {v7, v1}, Lcom/oneplus/lib/widget/DayPickerView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 141
    const/16 v2, 0x76c

    const/4 v3, 0x1

    const/4 v15, 0x0

    invoke-virtual {v1, v2, v15, v3}, Ljava/util/Calendar;->set(III)V

    .line 143
    :cond_3
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 145
    .local v2, "minDateMillis":J
    invoke-static {v8, v1}, Lcom/oneplus/lib/widget/DayPickerView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 146
    const/16 v15, 0x834

    const/16 v4, 0xb

    const/16 v5, 0x1f

    invoke-virtual {v1, v15, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 148
    :cond_4
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 150
    .local v4, "maxDateMillis":J
    cmp-long v15, v4, v2

    if-ltz v15, :cond_5

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 154
    move-wide/from16 v20, v2

    move-wide/from16 v22, v4

    move-object v15, v7

    move-object/from16 v24, v8

    .end local v7    # "minDate":Ljava/lang/String;
    .end local v8    # "maxDate":Ljava/lang/String;
    .local v15, "minDate":Ljava/lang/String;
    .local v24, "maxDate":Ljava/lang/String;
    invoke-static/range {v18 .. v23}, Lcom/oneplus/lib/util/MathUtils;->constrain(JJJ)J

    move-result-wide v7

    .line 157
    .local v7, "setDateMillis":J
    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 158
    invoke-virtual {v0, v2, v3}, Lcom/oneplus/lib/widget/DayPickerView;->setMinDate(J)V

    .line 159
    invoke-virtual {v0, v4, v5}, Lcom/oneplus/lib/widget/DayPickerView;->setMaxDate(J)V

    .line 160
    move-object/from16 v18, v1

    const/4 v1, 0x0

    .end local v1    # "tempDate":Ljava/util/Calendar;
    .local v18, "tempDate":Ljava/util/Calendar;
    invoke-virtual {v0, v7, v8, v1}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(JZ)V

    .line 163
    iget-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    move-wide/from16 v19, v2

    .end local v2    # "minDateMillis":J
    .local v19, "minDateMillis":J
    new-instance v2, Lcom/oneplus/lib/widget/DayPickerView$1;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/widget/DayPickerView$1;-><init>(Lcom/oneplus/lib/widget/DayPickerView;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setOnDaySelectedListener(Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;)V

    .line 171
    return-void

    .line 151
    .end local v15    # "minDate":Ljava/lang/String;
    .end local v18    # "tempDate":Ljava/util/Calendar;
    .end local v19    # "minDateMillis":J
    .end local v24    # "maxDate":Ljava/lang/String;
    .restart local v1    # "tempDate":Ljava/util/Calendar;
    .restart local v2    # "minDateMillis":J
    .local v7, "minDate":Ljava/lang/String;
    .restart local v8    # "maxDate":Ljava/lang/String;
    :cond_5
    move-object/from16 v18, v1

    move-wide/from16 v19, v2

    .end local v1    # "tempDate":Ljava/util/Calendar;
    .end local v2    # "minDateMillis":J
    .restart local v18    # "tempDate":Ljava/util/Calendar;
    .restart local v19    # "minDateMillis":J
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxDate must be >= minDate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/DayPickerView;)Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DayPickerView;

    .line 30
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/DayPickerView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DayPickerView;

    .line 30
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/DayPickerView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DayPickerView;

    .line 30
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/DayPickerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DayPickerView;
    .param p1, "x1"    # I

    .line 30
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/DayPickerView;->updateButtonVisibility(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DayPickerView;

    .line 30
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/DayPickerView;)Lcom/oneplus/support/viewpager/widget/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DayPickerView;

    .line 30
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    return-object v0
.end method

.method private getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 3
    .param p1, "start"    # Ljava/util/Calendar;
    .param p2, "end"    # Ljava/util/Calendar;

    .line 389
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    .line 390
    .local v1, "diffYears":I
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v2, v0

    mul-int/lit8 v0, v1, 0xc

    add-int/2addr v2, v0

    return v2
.end method

.method private getPositionFromDay(J)I
    .locals 3
    .param p1, "timeInMillis"    # J

    .line 394
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/DayPickerView;->getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    .line 395
    .local v0, "diffMonthMax":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/DayPickerView;->getTempCalendarForTime(J)Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/DayPickerView;->getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    .line 396
    .local v1, "diffMonth":I
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v2

    return v2
.end method

.method private getTempCalendarForTime(J)Ljava/util/Calendar;
    .locals 1
    .param p1, "timeInMillis"    # J

    .line 400
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 401
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 404
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "outDate"    # Ljava/util/Calendar;

    .line 174
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    :try_start_0
    sget-object v1, Lcom/oneplus/lib/widget/DayPickerView;->DATE_FORMATTER:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 180
    .local v1, "parsedDate":Ljava/util/Date;
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    const/4 v0, 0x1

    return v0

    .line 182
    .end local v1    # "parsedDate":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SearchView"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return v0

    .line 175
    .end local v1    # "e":Ljava/text/ParseException;
    :cond_1
    :goto_0
    return v0
.end method

.method private setDate(JZZ)V
    .locals 4
    .param p1, "timeInMillis"    # J
    .param p3, "animate"    # Z
    .param p4, "setSelected"    # Z

    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, "dateClamped":Z
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    .line 306
    const/4 v0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    .line 309
    const/4 v0, 0x1

    .line 312
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/DayPickerView;->getTempCalendarForTime(J)Ljava/util/Calendar;

    .line 314
    if-nez p4, :cond_2

    if-eqz v0, :cond_3

    .line 315
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 318
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/DayPickerView;->getPositionFromDay(J)I

    move-result v1

    .line 319
    .local v1, "position":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 320
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {v2, v1, p3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 323
    :cond_4
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    iget-object v3, p0, Lcom/oneplus/lib/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 324
    return-void
.end method

.method private updateButtonVisibility(I)V
    .locals 6
    .param p1, "position"    # I

    .line 189
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 190
    .local v2, "hasPrev":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 191
    .local v0, "hasNext":Z
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    const/4 v4, 0x4

    if-eqz v2, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 192
    iget-object v3, p0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 193
    return-void
.end method


# virtual methods
.method public getBoundsForDate(JLandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "timeInMillis"    # J
    .param p3, "outBounds"    # Landroid/graphics/Rect;

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/DayPickerView;->getPositionFromDay(J)I

    move-result v0

    .line 332
    .local v0, "position":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 333
    const/4 v1, 0x0

    return v1

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 337
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2, p3}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getBoundsForDate(Ljava/util/Calendar;Landroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method public getDate()J
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDayOfWeekTextAppearance()I
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getDayOfWeekTextAppearance()I

    move-result v0

    return v0
.end method

.method public getDayTextAppearance()I
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getDayTextAppearance()I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMostVisiblePosition()I
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 223
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 225
    .local v1, "leftButton":Landroid/widget/ImageButton;
    iget-object v2, v0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .local v2, "rightButton":Landroid/widget/ImageButton;
    goto :goto_0

    .line 227
    .end local v1    # "leftButton":Landroid/widget/ImageButton;
    .end local v2    # "rightButton":Landroid/widget/ImageButton;
    :cond_0
    iget-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 228
    .restart local v1    # "leftButton":Landroid/widget/ImageButton;
    iget-object v2, v0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 231
    .restart local v2    # "rightButton":Landroid/widget/ImageButton;
    :goto_0
    sub-int v3, p4, p2

    .line 232
    .local v3, "width":I
    sub-int v4, p5, p3

    .line 233
    .local v4, "height":I
    iget-object v5, v0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v3, v4}, Lcom/oneplus/support/viewpager/widget/ViewPager;->layout(IIII)V

    .line 235
    iget-object v5, v0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {v5, v6}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/SimpleMonthView;

    .line 236
    .local v5, "monthView":Lcom/oneplus/lib/widget/SimpleMonthView;
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/SimpleMonthView;->getMonthHeight()I

    move-result v6

    .line 237
    .local v6, "monthHeight":I
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/SimpleMonthView;->getCellWidth()I

    move-result v7

    .line 241
    .local v7, "cellWidth":I
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v8

    .line 242
    .local v8, "leftDW":I
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v9

    .line 243
    .local v9, "leftDH":I
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingTop()I

    move-result v10

    sub-int v11, v6, v9

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    .line 244
    .local v10, "leftIconTop":I
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v11

    sub-int v12, v7, v8

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    .line 245
    .local v11, "leftIconLeft":I
    add-int v12, v11, v8

    add-int v13, v10, v9

    invoke-virtual {v1, v11, v10, v12, v13}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 247
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v12

    .line 248
    .local v12, "rightDW":I
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v13

    .line 249
    .local v13, "rightDH":I
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingTop()I

    move-result v14

    sub-int v15, v6, v13

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    .line 250
    .local v14, "rightIconTop":I
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingRight()I

    move-result v15

    sub-int v15, v3, v15

    sub-int v16, v7, v12

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    .line 251
    .local v15, "rightIconRight":I
    sub-int v0, v15, v12

    move-object/from16 v16, v1

    .end local v1    # "leftButton":Landroid/widget/ImageButton;
    .local v16, "leftButton":Landroid/widget/ImageButton;
    add-int v1, v14, v13

    invoke-virtual {v2, v0, v14, v15, v1}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 253
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 197
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    .line 198
    .local v0, "viewPager":Lcom/oneplus/support/viewpager/widget/ViewPager;
    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/lib/widget/DayPickerView;->measureChild(Landroid/view/View;II)V

    .line 200
    invoke-virtual {v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getMeasuredWidthAndState()I

    move-result v1

    .line 201
    .local v1, "measuredWidthAndState":I
    invoke-virtual {v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getMeasuredHeightAndState()I

    move-result v2

    .line 202
    .local v2, "measuredHeightAndState":I
    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/widget/DayPickerView;->setMeasuredDimension(II)V

    .line 204
    invoke-virtual {v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getMeasuredWidth()I

    move-result v3

    .line 205
    .local v3, "pagerWidth":I
    invoke-virtual {v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getMeasuredHeight()I

    move-result v4

    .line 206
    .local v4, "pagerHeight":I
    const/high16 v5, -0x80000000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 207
    .local v6, "buttonWidthSpec":I
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 208
    .local v5, "buttonHeightSpec":I
    iget-object v7, p0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6, v5}, Landroid/widget/ImageButton;->measure(II)V

    .line 209
    iget-object v7, p0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6, v5}, Landroid/widget/ImageButton;->measure(II)V

    .line 210
    return-void
.end method

.method public onRangeChanged()V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 374
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(JZZ)V

    .line 376
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/DayPickerView;->updateButtonVisibility(I)V

    .line 377
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 214
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 216
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerView;->requestLayout()V

    .line 217
    return-void
.end method

.method public setDate(J)V
    .locals 1
    .param p1, "timeInMillis"    # J

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(JZ)V

    .line 280
    return-void
.end method

.method public setDate(JZ)V
    .locals 1
    .param p1, "timeInMillis"    # J
    .param p3, "animate"    # Z

    .line 290
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(JZZ)V

    .line 291
    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 256
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    .line 257
    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 264
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    .line 265
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    .line 341
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setFirstDayOfWeek(I)V

    .line 342
    return-void
.end method

.method public setMaxDate(J)V
    .locals 1
    .param p1, "timeInMillis"    # J

    .line 358
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 359
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerView;->onRangeChanged()V

    .line 360
    return-void
.end method

.method public setMinDate(J)V
    .locals 1
    .param p1, "timeInMillis"    # J

    .line 349
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 350
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerView;->onRangeChanged()V

    .line 351
    return-void
.end method

.method public setOnDaySelectedListener(Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

    .line 385
    iput-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

    .line 386
    return-void
.end method

.method public setPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 415
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 416
    return-void
.end method
