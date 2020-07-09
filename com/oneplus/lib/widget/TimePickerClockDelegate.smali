.class Lcom/oneplus/lib/widget/TimePickerClockDelegate;
.super Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;,
        Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;,
        Lcom/oneplus/lib/widget/TimePickerClockDelegate$ChangeSource;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DELAY_COMMIT_MILLIS:J = 0x7d0L

.field private static final FROM_EXTERNAL_API:I = 0x0

.field private static final FROM_INPUT_PICKER:I = 0x2

.field private static final FROM_RADIAL_PICKER:I = 0x1

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final HOUR_INDEX:I = 0x0

.field private static final MINUTE_INDEX:I = 0x1

.field private static final PM:I = 0x1


# instance fields
.field private mAllowAutoAdvance:Z

.field private final mAmLabel:Landroid/widget/RadioButton;

.field private final mAmPmLayout:Landroid/view/View;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mCommitHour:Ljava/lang/Runnable;

.field private final mCommitMinute:Ljava/lang/Runnable;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private final mDigitEnteredListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

.field private mDuration:I

.field private final mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mHeaderOffset:I

.field private mHeaderPositionY:I

.field private mHourFormatShowLeadingZero:Z

.field private mHourFormatStartsAtZero:Z

.field private final mHourView:Lcom/oneplus/lib/widget/NumericTextView;

.field private final mImageSeparatorView:Landroid/view/View;

.field private mInputBlockPositionY:I

.field private mIs24Hour:Z

.field private mIsAmPmAtStart:Z

.field private mIsEnabled:Z

.field private mIsToggleTimeMode:Z

.field private mLastAnnouncedIsHour:Z

.field private mLastAnnouncedText:Ljava/lang/CharSequence;

.field private final mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

.field private final mOnValueSelectedListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

.field private final mOnValueTypedListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

.field private final mPmLabel:Landroid/widget/RadioButton;

.field private mRadialPickerModeEnabled:Z

.field private final mRadialTimePickerHeader:Landroid/widget/LinearLayout;

.field private final mRadialTimePickerModeButton:Landroid/widget/ImageButton;

.field private final mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

.field private mRadialTimeViewAlpha:F

.field private mRadialTimeViewScale:F

.field private final mSelectHours:Ljava/lang/String;

.field private final mSelectMinutes:Ljava/lang/String;

.field private final mSeparatorView:Landroid/widget/TextView;

.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTextInputPickerHeader:Landroid/view/View;

.field private final mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 60
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010098

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    .line 61
    new-array v0, v0, [I

    const v1, 0x1010033

    aput v1, v0, v2

    sput-object v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->ATTRS_DISABLED_ALPHA:[I

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17
    .param p1, "delegator"    # Lcom/oneplus/lib/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 115
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct/range {p0 .. p2}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;)V

    .line 77
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    .line 90
    iput-boolean v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsEnabled:Z

    .line 929
    new-instance v6, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;

    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v6, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnValueSelectedListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 961
    new-instance v6, Lcom/oneplus/lib/widget/TimePickerClockDelegate$5;

    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$5;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v6, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnValueTypedListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 979
    new-instance v6, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;

    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v6, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    .line 1015
    new-instance v6, Lcom/oneplus/lib/widget/TimePickerClockDelegate$7;

    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$7;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v6, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    .line 1022
    new-instance v6, Lcom/oneplus/lib/widget/TimePickerClockDelegate$8;

    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$8;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v6, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    .line 1029
    new-instance v6, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;

    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v6, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 1051
    new-instance v6, Lcom/oneplus/lib/widget/TimePickerClockDelegate$10;

    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$10;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v6, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    .line 118
    iget-object v6, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/oneplus/commonctrl/R$styleable;->TimePicker:[I

    invoke-virtual {v6, v2, v7, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 120
    .local v6, "a":Landroid/content/res/TypedArray;
    iget-object v7, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 122
    .local v7, "inflater":Landroid/view/LayoutInflater;
    iget-object v8, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 124
    .local v8, "res":Landroid/content/res/Resources;
    sget v9, Lcom/oneplus/commonctrl/R$string;->select_hours:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    .line 125
    sget v9, Lcom/oneplus/commonctrl/R$string;->select_minutes:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    .line 127
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_internalLayout:I

    sget v10, Lcom/oneplus/commonctrl/R$layout;->op_time_picker_material:I

    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 129
    .local v9, "layoutResourceId":I
    move-object/from16 v10, p1

    invoke-virtual {v7, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 130
    .local v11, "mainView":Landroid/view/View;
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 131
    sget v13, Lcom/oneplus/commonctrl/R$id;->time_header:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    iput-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    .line 132
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    new-instance v14, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;)V

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    sget v13, Lcom/oneplus/commonctrl/R$id;->hours:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/oneplus/lib/widget/NumericTextView;

    iput-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    .line 135
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 137
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;)V

    .line 138
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    new-instance v14, Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;

    sget v15, Lcom/oneplus/commonctrl/R$string;->select_hours:I

    invoke-direct {v14, v1, v15}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 140
    sget v13, Lcom/oneplus/commonctrl/R$id;->separator:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    .line 141
    sget v13, Lcom/oneplus/commonctrl/R$id;->separator_shape:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iput-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mImageSeparatorView:Landroid/view/View;

    .line 142
    sget v13, Lcom/oneplus/commonctrl/R$id;->minutes:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/oneplus/lib/widget/NumericTextView;

    iput-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    .line 143
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 145
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;)V

    .line 146
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    new-instance v14, Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;

    sget v15, Lcom/oneplus/commonctrl/R$string;->select_minutes:I

    invoke-direct {v14, v1, v15}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 148
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    const/16 v14, 0x3b

    invoke-virtual {v13, v12, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setRange(II)V

    .line 149
    sget v13, Lcom/oneplus/commonctrl/R$id;->separator:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/view/View;->setActivated(Z)V

    .line 150
    sget v13, Lcom/oneplus/commonctrl/R$id;->separator:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 152
    sget v13, Lcom/oneplus/commonctrl/R$id;->ampm_layout:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iput-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    .line 153
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    new-instance v14, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    invoke-static/range {p2 .. p2}, Lcom/oneplus/lib/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v13

    .line 156
    .local v13, "amPmStrings":[Ljava/lang/String;
    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    sget v15, Lcom/oneplus/commonctrl/R$id;->am_label:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RadioButton;

    iput-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    .line 157
    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    aget-object v15, v13, v12

    invoke-static {v15}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    iget-object v15, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-static {v14}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    .line 161
    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    sget v15, Lcom/oneplus/commonctrl/R$id;->pm_label:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RadioButton;

    iput-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    .line 162
    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    aget-object v15, v13, v5

    invoke-static {v15}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    iget-object v15, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-static {v14}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    .line 169
    const/4 v14, 0x0

    .line 172
    .local v14, "headerTextColor":Landroid/content/res/ColorStateList;
    sget v15, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_android_headerTimeTextAppearance:I

    invoke-virtual {v6, v15, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 174
    .local v15, "timeHeaderTextAppearance":I
    if-eqz v15, :cond_0

    .line 175
    iget-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    move-object/from16 v16, v7

    const/4 v7, 0x0

    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .local v16, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v5, v7, v1, v12, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 177
    .local v1, "textAppearance":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 179
    .local v5, "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 174
    .end local v1    # "textAppearance":Landroid/content/res/TypedArray;
    .end local v5    # "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    .end local v16    # "inflater":Landroid/view/LayoutInflater;
    .restart local v7    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    move-object/from16 v16, v7

    .line 182
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .restart local v16    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    if-nez v14, :cond_1

    .line 183
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_headerTextColor:I

    invoke-virtual {v6, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 186
    :cond_1
    sget v1, Lcom/oneplus/commonctrl/R$id;->input_header:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    .line 188
    if-eqz v14, :cond_2

    .line 189
    iget-object v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v1, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 190
    iget-object v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 191
    iget-object v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v1, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 192
    iget-object v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v1, v14}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 193
    iget-object v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v1, v14}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 204
    :cond_2
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/oneplus/commonctrl/R$integer;->oneplus_contorl_time_part6:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    .line 207
    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewScale:F

    .line 208
    iput v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewAlpha:F

    .line 210
    sget v1, Lcom/oneplus/commonctrl/R$id;->radial_picker:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/RadialTimePickerView;

    iput-object v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 211
    iget-object v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v1, v2, v3, v4}, Lcom/oneplus/lib/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    .line 212
    iget-object v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    iget-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnValueSelectedListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setOnValueSelectedListener(Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;)V

    .line 214
    sget v1, Lcom/oneplus/commonctrl/R$id;->input_mode:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/TextInputTimePickerView;

    iput-object v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    .line 215
    iget-object v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    iget-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnValueTypedListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->setListener(Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;)V

    .line 217
    sget v1, Lcom/oneplus/commonctrl/R$id;->toggle_mode:I

    .line 218
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    .line 219
    iget-object v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;

    invoke-direct {v5, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    .line 232
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHourFormat()V

    .line 235
    iget-object v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 236
    iget-object v1, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 237
    .local v1, "currentHour":I
    iget-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 238
    .local v5, "currentMinute":I
    iget-boolean v7, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-direct {v0, v1, v5, v7, v12}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->initialize(IIZI)V

    .line 239
    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 42
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->toggleRadialPickerMode()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/widget/TimePickerClockDelegate;IZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/lib/widget/TimePickerClockDelegate;I)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I

    .line 42
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 42
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/lib/widget/TimePickerClockDelegate;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setMinuteInternal(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/lib/widget/TimePickerClockDelegate;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I

    .line 42
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setAmOrPm(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/NumericTextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 42
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 42
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/NumericTextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 42
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 42
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 42
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->tryVibrate()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/TextInputTimePickerView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 42
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oneplus/lib/widget/TimePickerClockDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;
    .param p1, "x1"    # Z

    .line 42
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsToggleTimeMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/RadialTimePickerView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 42
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 42
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 42
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 42
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 42
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    return v0
.end method

.method static synthetic access$900(Lcom/oneplus/lib/widget/TimePickerClockDelegate;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setHourInternal(IIZ)V

    return-void
.end method

.method private animationInInputTimeField()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 278
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewScale:F

    .line 279
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewScale:F

    .line 280
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewAlpha:F

    .line 281
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 283
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 284
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 285
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 286
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mInputBlockPositionY:I

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderPositionY:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    .line 287
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderOffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    .line 288
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$2;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$2;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 316
    return-void
.end method

.method private animationOutInputTimeField()V
    .locals 6

    .line 319
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    move-result-object v0

    .line 320
    .local v0, "inputBlock":Landroid/view/View;
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setVisibility(I)V

    .line 321
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setAlpha(F)V

    .line 323
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 324
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 325
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->showLabels(Z)V

    .line 326
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 327
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 328
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 329
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 330
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v4, v2

    .line 331
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 332
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 333
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 334
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v2, v2

    .line 335
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    .line 336
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 362
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 364
    return-void
.end method

.method private static ensureMinimumTextWidth(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "v"    # Landroid/widget/TextView;

    .line 379
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 383
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 384
    .local v0, "minWidth":I
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 385
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 386
    return-void
.end method

.method private getCurrentItemShowing()I
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    return v0
.end method

.method private getLocalizedHour(I)I
    .locals 1
    .param p1, "hourOfDay"    # I

    .line 798
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-nez v0, :cond_0

    .line 800
    rem-int/lit8 p1, p1, 0xc

    .line 803
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 805
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    :goto_0
    move p1, v0

    .line 808
    :cond_2
    return p1
.end method

.method private initialize(IIZI)V
    .locals 0
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourView"    # Z
    .param p4, "index"    # I

    .line 500
    iput p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 501
    iput p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 502
    iput-boolean p3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 503
    invoke-direct {p0, p4}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateUI(I)V

    .line 504
    return-void
.end method

.method private static lastIndexOfAny(Ljava/lang/String;[C)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "any"    # [C

    .line 858
    array-length v0, p1

    .line 859
    .local v0, "lengthAny":I
    if-lez v0, :cond_2

    .line 860
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 861
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 862
    .local v2, "c":C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 863
    aget-char v4, p1, v3

    if-ne v2, v4, :cond_0

    .line 864
    return v1

    .line 862
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 860
    .end local v2    # "c":C
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 869
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private multiplyAlphaComponent(IF)I
    .locals 4
    .param p1, "color"    # I
    .param p2, "alphaMod"    # F

    .line 477
    const v0, 0xffffff

    and-int/2addr v0, p1

    .line 478
    .local v0, "srcRgb":I
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 479
    .local v1, "srcAlpha":I
    int-to-float v2, v1

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 480
    .local v2, "dstAlpha":I
    shl-int/lit8 v3, v2, 0x18

    or-int/2addr v3, v0

    return v3
.end method

.method static final obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .line 431
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    .line 431
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private onTimeChanged()V
    .locals 4

    .line 762
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 763
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V

    .line 769
    :cond_1
    return-void
.end method

.method private resetInputTimeTextAppearance(ILandroid/widget/TextView;)V
    .locals 1
    .param p1, "textAppearance"    # I
    .param p2, "targetTextView"    # Landroid/widget/TextView;

    .line 909
    invoke-static {}, Lcom/oneplus/lib/util/SystemUtils;->isAtLeastM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 914
    :goto_0
    return-void
.end method

.method private setAmOrPm(I)V
    .locals 4
    .param p1, "amOrPm"    # I

    .line 917
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    .line 919
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setAmOrPm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 921
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 922
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V

    .line 926
    :cond_0
    return-void
.end method

.method private setAmPmAtStart(Z)V
    .locals 3
    .param p1, "isAmPmAtStart"    # Z

    .line 545
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    if-eq v0, p1, :cond_1

    .line 546
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    .line 548
    if-eqz p1, :cond_0

    .line 549
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 550
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 554
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 559
    :cond_1
    :goto_0
    return-void
.end method

.method private setCurrentItemShowing(IZZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "animateCircle"    # Z
    .param p3, "announce"    # Z

    .line 885
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentItemShowing(IZ)V

    .line 887
    if-nez p1, :cond_0

    .line 888
    if-eqz p3, :cond_1

    .line 889
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 892
    :cond_0
    if-eqz p3, :cond_1

    .line 893
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 897
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/NumericTextView;->setActivated(Z)V

    .line 898
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    if-ne p1, v2, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumericTextView;->setActivated(Z)V

    .line 899
    if-nez p1, :cond_4

    .line 900
    sget v0, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Material_TimePicker_TimeLabel:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    .line 901
    sget v0, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Material_TimePicker_TimeLabelUnActivated:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    goto :goto_2

    .line 903
    :cond_4
    sget v0, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Material_TimePicker_TimeLabel:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    .line 904
    sget v0, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Material_TimePicker_TimeLabelUnActivated:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    .line 906
    :goto_2
    return-void
.end method

.method private setHourInternal(IIZ)V
    .locals 3
    .param p1, "hour"    # I
    .param p2, "source"    # I
    .param p3, "announce"    # Z

    .line 570
    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    if-ne v0, p1, :cond_0

    .line 571
    return-void

    .line 574
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 575
    invoke-direct {p0, p1, p3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    .line 576
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    .line 578
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    .line 579
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 580
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    const/16 v2, 0xc

    if-ge p1, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setAmOrPm(I)Z

    .line 582
    :cond_2
    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    .line 583
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 586
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TimePicker;->invalidate()V

    .line 587
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->onTimeChanged()V

    .line 588
    return-void
.end method

.method private setInputAmPmAtStart(Z)V
    .locals 1
    .param p1, "isAmPmAtStart"    # Z

    .line 541
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->setAmPmAtStart(Z)V

    .line 542
    return-void
.end method

.method private setMinuteInternal(II)V
    .locals 1
    .param p1, "minute"    # I
    .param p2, "source"    # I

    .line 616
    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    if-ne v0, p1, :cond_0

    .line 617
    return-void

    .line 620
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 621
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    .line 623
    if-eq p2, v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 626
    :cond_1
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    .line 627
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 630
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TimePicker;->invalidate()V

    .line 631
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->onTimeChanged()V

    .line 632
    return-void
.end method

.method private toggleRadialPickerMode()V
    .locals 7

    .line 242
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsToggleTimeMode:Z

    if-eqz v0, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderPositionY:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 246
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 247
    .local v0, "headerLocation":[I
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 248
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    sget v3, Lcom/oneplus/commonctrl/R$id;->hours:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 249
    .local v2, "headerLocationY":I
    aget v3, v0, v1

    iput v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderPositionY:I

    .line 250
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    move-result-object v3

    .line 251
    .local v3, "inputBlock":Landroid/view/View;
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$id;->input_hour:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 252
    .local v4, "inputLocationY":I
    sub-int v5, v4, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iput v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderOffset:I

    .line 253
    iget v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderOffset:I

    if-nez v5, :cond_1

    .line 254
    iget-object v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderOffset:I

    .line 256
    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 257
    aget v5, v0, v1

    iput v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mInputBlockPositionY:I

    .line 259
    .end local v0    # "headerLocation":[I
    .end local v2    # "headerLocationY":I
    .end local v3    # "inputBlock":Landroid/view/View;
    .end local v4    # "inputLocationY":I
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    if-eqz v0, :cond_3

    .line 261
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->animationInInputTimeField()V

    .line 262
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->op_btn_clock_material:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    goto :goto_0

    .line 265
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->animationOutInputTimeField()V

    .line 266
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    sget v2, Lcom/oneplus/commonctrl/R$drawable;->op_btn_keyboard_key_material:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 267
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    .line 269
    :goto_0
    return-void
.end method

.method private tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isHour"    # Z

    .line 873
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 876
    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    .line 877
    iput-boolean p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    .line 879
    :cond_1
    return-void
.end method

.method private tryVibrate()V
    .locals 2

    .line 772
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;->performHapticFeedback(I)Z

    .line 773
    return-void
.end method

.method private updateAmPmLabelStates(I)V
    .locals 4
    .param p1, "amOrPm"    # I

    .line 776
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 777
    .local v2, "isAm":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 778
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 779
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 781
    if-ne p1, v1, :cond_1

    move v0, v1

    .line 782
    .local v0, "isPm":Z
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 783
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 784
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 785
    return-void
.end method

.method private updateHeaderAmPm()V
    .locals 4

    .line 528
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    const-string v1, "hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "dateTimePattern":Ljava/lang/String;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 534
    .local v1, "isAmPmAtStart":Z
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setAmPmAtStart(Z)V

    .line 535
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setInputAmPmAtStart(Z)V

    .line 536
    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    .line 538
    .end local v0    # "dateTimePattern":Ljava/lang/String;
    .end local v1    # "isAmPmAtStart":Z
    :goto_1
    return-void
.end method

.method private updateHeaderHour(IZ)V
    .locals 3
    .param p1, "hourOfDay"    # I
    .param p2, "announce"    # Z

    .line 812
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v0

    .line 813
    .local v0, "localizedHour":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/NumericTextView;->setValue(I)V

    .line 815
    if-eqz p2, :cond_0

    .line 816
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    .line 818
    :cond_0
    return-void
.end method

.method private updateHeaderMinute(IZ)V
    .locals 2
    .param p1, "minuteOfHour"    # I
    .param p2, "announce"    # Z

    .line 821
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumericTextView;->setValue(I)V

    .line 823
    if-eqz p2, :cond_0

    .line 824
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    .line 826
    :cond_0
    return-void
.end method

.method private updateHeaderSeparator()V
    .locals 5

    .line 837
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    .line 838
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    .line 837
    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    .line 842
    .local v1, "hourFormats":[C
    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->lastIndexOfAny(Ljava/lang/String;[C)I

    move-result v2

    .line 843
    .local v2, "hIndex":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 845
    const-string v3, ":"

    .local v3, "separatorText":Ljava/lang/String;
    goto :goto_1

    .line 851
    .end local v3    # "separatorText":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .line 854
    .restart local v3    # "separatorText":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->updateSeparator(Ljava/lang/String;)V

    .line 855
    return-void

    nop

    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
    .end array-data
.end method

.method private updateHourFormat()V
    .locals 9

    .line 395
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    .line 396
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    .line 395
    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 398
    .local v1, "lengthPattern":I
    const/4 v2, 0x0

    .line 399
    .local v2, "showLeadingZero":Z
    const/4 v3, 0x0

    .line 401
    .local v3, "hourFormat":C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/16 v5, 0x48

    const/16 v6, 0x4b

    if-ge v4, v1, :cond_3

    .line 402
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 403
    .local v7, "c":C
    if-eq v7, v5, :cond_2

    const/16 v8, 0x68

    if-eq v7, v8, :cond_2

    if-eq v7, v6, :cond_2

    const/16 v8, 0x6b

    if-ne v7, v8, :cond_1

    goto :goto_2

    .line 401
    .end local v7    # "c":C
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 404
    .restart local v7    # "c":C
    :cond_2
    :goto_2
    move v3, v7

    .line 405
    add-int/lit8 v8, v4, 0x1

    if-ge v8, v1, :cond_3

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_3

    .line 406
    const/4 v2, 0x1

    .line 412
    .end local v4    # "i":I
    .end local v7    # "c":C
    :cond_3
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    .line 413
    const/4 v4, 0x1

    if-eq v3, v6, :cond_5

    if-ne v3, v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v4

    :goto_4
    iput-boolean v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    .line 416
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    xor-int/2addr v4, v5

    .line 417
    .local v4, "minHour":I
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v5, :cond_6

    const/16 v5, 0x17

    goto :goto_5

    :cond_6
    const/16 v5, 0xb

    :goto_5
    add-int/2addr v5, v4

    .line 418
    .local v5, "maxHour":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v6, v4, v5}, Lcom/oneplus/lib/widget/NumericTextView;->setRange(II)V

    .line 419
    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-boolean v7, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/widget/NumericTextView;->setShowLeadingZeroes(Z)V

    .line 422
    :try_start_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_7

    .line 423
    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    iget-object v7, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v6, v7}, Lcom/oneplus/lib/widget/TimePickerCompat24;->setHourFormat(Lcom/oneplus/lib/widget/TextInputTimePickerView;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :cond_7
    goto :goto_6

    .line 425
    :catch_0
    move-exception v6

    .line 426
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 428
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method private updateRadialPicker(I)V
    .locals 4
    .param p1, "index"    # I

    .line 523
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->initialize(IIZ)V

    .line 524
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    .line 525
    return-void
.end method

.method private updateTextInputPicker()V
    .locals 6

    .line 518
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 519
    iget v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    .line 518
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->updateTextInputValues(IIIZZ)V

    .line 520
    return-void
.end method

.method private updateUI(I)V
    .locals 2
    .param p1, "index"    # I

    .line 507
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    .line 508
    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    .line 509
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderSeparator()V

    .line 510
    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    .line 511
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateRadialPicker(I)V

    .line 512
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 514
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TimePicker;->invalidate()V

    .line 515
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 708
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 709
    const/4 v0, 0x1

    return v0
.end method

.method public getAmView()Landroid/view/View;
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .line 688
    const/4 v0, -0x1

    return v0
.end method

.method public getHour()I
    .locals 3

    .line 595
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    .line 596
    .local v0, "currentHour":I
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    .line 597
    return v0

    .line 600
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getAmOrPm()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 601
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    return v1

    .line 603
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    return v1
.end method

.method public getHourView()Landroid/view/View;
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    return v0
.end method

.method public getMinuteView()Landroid/view/View;
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    return-object v0
.end method

.method public getPmView()Landroid/view/View;
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public is24Hour()Z
    .locals 1

    .line 667
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 682
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 714
    const/4 v0, 0x1

    .line 715
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    .line 716
    or-int/lit16 v0, v0, 0x80

    goto :goto_0

    .line 718
    :cond_0
    or-int/lit8 v0, v0, 0x40

    .line 721
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 722
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 724
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 725
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 724
    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 726
    .local v1, "selectedTime":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v2

    if-nez v2, :cond_1

    .line 727
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    .line 728
    .local v2, "selectionMode":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 699
    instance-of v0, p1, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    .line 700
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    .line 701
    .local v0, "ss":Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    move-result v2

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->is24HourMode()Z

    move-result v3

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getCurrentItemShowing()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->initialize(IIZI)V

    .line 702
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->invalidate()V

    .line 704
    .end local v0    # "ss":Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 7
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 693
    new-instance v6, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    .line 694
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->is24Hour()Z

    move-result v4

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getCurrentItemShowing()I

    move-result v5

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    .line 693
    return-object v6
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 672
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumericTextView;->setEnabled(Z)V

    .line 673
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumericTextView;->setEnabled(Z)V

    .line 674
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 675
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 676
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setEnabled(Z)V

    .line 677
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsEnabled:Z

    .line 678
    return-void
.end method

.method public setHour(I)V
    .locals 2
    .param p1, "hour"    # I

    .line 566
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setHourInternal(IIZ)V

    .line 567
    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 1
    .param p1, "is24Hour"    # Z

    .line 650
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->setIs24Hour(Z)V

    .line 651
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eq v0, p1, :cond_0

    .line 652
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 653
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 655
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHourFormat()V

    .line 656
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateUI(I)V

    .line 658
    :cond_0
    return-void
.end method

.method public setMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .line 612
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setMinuteInternal(II)V

    .line 613
    return-void
.end method

.method public validateInput()Z
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->validateInput()Z

    move-result v0

    return v0
.end method
