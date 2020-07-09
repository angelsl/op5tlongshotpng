.class Lcom/oneplus/lib/widget/SimpleMonthView;
.super Landroid/view/View;
.source "SimpleMonthView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;,
        Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;
    }
.end annotation


# static fields
.field private static final DAYS_IN_WEEK:I = 0x7

.field private static final DEFAULT_SELECTED_DAY:I = -0x1

.field private static final DEFAULT_WEEK_START:I = 0x1

.field private static final MAX_WEEKS_IN_MONTH:I = 0x6

.field private static final MONTH_YEAR_FORMAT:Ljava/lang/String; = "MMMMy"

.field private static final SELECTED_HIGHLIGHT_ALPHA:I = 0xb0


# instance fields
.field private mActivatedDay:I

.field private final mCalendar:Ljava/util/Calendar;

.field private mCellWidth:I

.field private mContext:Landroid/content/Context;

.field private final mDayFormatter:Ljava/text/NumberFormat;

.field private mDayHeight:I

.field private final mDayHighlightPaint:Landroid/graphics/Paint;

.field private final mDayHighlightSelectorPaint:Landroid/graphics/Paint;

.field private mDayOfWeekHeight:I

.field private final mDayOfWeekLabels:[Ljava/lang/String;

.field private final mDayOfWeekPaint:Landroid/text/TextPaint;

.field private mDayOfWeekStart:I

.field private final mDayPaint:Landroid/text/TextPaint;

.field private final mDaySelectorPaint:Landroid/graphics/Paint;

.field private mDaySelectorRadius:I

.field private mDayTextColor:Landroid/content/res/ColorStateList;

.field private mDaysInMonth:I

.field private final mDesiredCellWidth:I

.field private final mDesiredDayHeight:I

.field private final mDesiredDayOfWeekHeight:I

.field private final mDesiredDaySelectorRadius:I

.field private final mDesiredMonthHeight:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mHighlightedDay:I

.field private mIsTouchHighlighted:Z

.field private final mLocale:Ljava/util/Locale;

.field private mMonth:I

.field private mMonthHeight:I

.field private final mMonthPaint:Landroid/text/TextPaint;

.field private mMonthYearLabel:Ljava/lang/String;

.field private mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

.field private mPaddedHeight:I

.field private mPaddedWidth:I

.field private mPreviouslyHighlightedDay:I

.field private mToday:I

.field private final mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

.field private mWeekStart:I

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 137
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 58
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 59
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    .line 65
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mActivatedDay:I

    .line 103
    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mToday:I

    .line 106
    const/4 v1, 0x1

    iput v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    .line 118
    iput v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 121
    const/16 v2, 0x1f

    iput v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 128
    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 129
    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 146
    iput-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mContext:Landroid/content/Context;

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 148
    .local v0, "res":Landroid/content/res/Resources;
    sget v2, Lcom/oneplus/commonctrl/R$dimen;->date_picker_month_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredMonthHeight:I

    .line 149
    sget v2, Lcom/oneplus/commonctrl/R$dimen;->date_picker_day_of_week_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    .line 150
    sget v2, Lcom/oneplus/commonctrl/R$dimen;->date_picker_day_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDayHeight:I

    .line 151
    sget v2, Lcom/oneplus/commonctrl/R$dimen;->date_picker_day_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredCellWidth:I

    .line 152
    sget v2, Lcom/oneplus/commonctrl/R$dimen;->date_picker_day_selector_radius:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    .line 156
    new-instance v2, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-direct {v2, p0, p0}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;-><init>(Lcom/oneplus/lib/widget/SimpleMonthView;Landroid/view/View;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 157
    iget-object v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 158
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->setImportantForAccessibility(I)V

    .line 160
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 161
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 163
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    .line 165
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->updateMonthYearLabel()V

    .line 166
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 168
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/SimpleMonthView;->initPaints(Landroid/content/res/Resources;)V

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/SimpleMonthView;II)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/SimpleMonthView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/SimpleMonthView;

    .line 46
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/SimpleMonthView;
    .param p1, "x1"    # I

    .line 46
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/SimpleMonthView;

    .line 46
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mActivatedDay:I

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/SimpleMonthView;
    .param p1, "x1"    # I

    .line 46
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->onDayClicked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/SimpleMonthView;
    .param p1, "x1"    # I

    .line 46
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/SimpleMonthView;

    .line 46
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mYear:I

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/SimpleMonthView;

    .line 46
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonth:I

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/SimpleMonthView;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/SimpleMonthView;

    .line 46
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    return-object v0
.end method

.method private applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "p"    # Landroid/graphics/Paint;
    .param p2, "resId"    # I

    .line 198
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextAppearance:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 201
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextAppearance_android_fontFamily:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "fontFamily":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 203
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 206
    :cond_0
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTextAppearance_android_textSize:I

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    .line 206
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 209
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTextAppearance_android_textColor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 210
    .local v3, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v3, :cond_1

    .line 211
    sget-object v4, Lcom/oneplus/lib/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 212
    .local v2, "enabledColor":I
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    .end local v2    # "enabledColor":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    return-object v3
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 647
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 648
    .local v2, "p":Landroid/text/TextPaint;
    iget v3, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    iget v4, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v3, v4

    .line 649
    .local v3, "headerHeight":I
    iget v4, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHeight:I

    .line 650
    .local v4, "rowHeight":I
    iget v5, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCellWidth:I

    .line 653
    .local v5, "colWidth":I
    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 654
    .local v6, "halfLineHeight":F
    div-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v3

    .line 656
    .local v7, "rowCenter":I
    const/4 v8, 0x1

    .local v8, "day":I
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result v9

    .local v9, "col":I
    :goto_0
    iget v10, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt v8, v10, :cond_b

    .line 657
    mul-int v10, v5, v9

    div-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    .line 659
    .local v10, "colCenter":I
    invoke-static/range {p0 .. p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 660
    iget v11, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int/2addr v11, v10

    .local v11, "colCenterRtl":I
    goto :goto_1

    .line 662
    .end local v11    # "colCenterRtl":I
    :cond_0
    move v11, v10

    .line 665
    .restart local v11    # "colCenterRtl":I
    :goto_1
    const/4 v12, 0x0

    .line 667
    .local v12, "stateMask":I
    invoke-direct {v0, v8}, Lcom/oneplus/lib/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v13

    .line 668
    .local v13, "isDayEnabled":Z
    if-eqz v13, :cond_1

    .line 669
    or-int/lit8 v12, v12, 0x8

    .line 672
    :cond_1
    iget v14, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mActivatedDay:I

    if-ne v14, v8, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 673
    .local v14, "isDayActivated":Z
    :goto_2
    iget v15, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    if-ne v15, v8, :cond_3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 674
    .local v15, "isDayHighlighted":Z
    :goto_3
    if-eqz v14, :cond_5

    .line 675
    or-int/lit8 v12, v12, 0x20

    .line 678
    if-eqz v15, :cond_4

    move/from16 v17, v3

    .end local v3    # "headerHeight":I
    .local v17, "headerHeight":I
    iget-object v3, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    goto :goto_4

    .line 679
    .end local v17    # "headerHeight":I
    .restart local v3    # "headerHeight":I
    :cond_4
    move/from16 v17, v3

    .end local v3    # "headerHeight":I
    .restart local v17    # "headerHeight":I
    iget-object v3, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    :goto_4
    nop

    .line 680
    .local v3, "paint":Landroid/graphics/Paint;
    move/from16 v18, v5

    .end local v5    # "colWidth":I
    .local v18, "colWidth":I
    int-to-float v5, v11

    move/from16 v19, v10

    .end local v10    # "colCenter":I
    .local v19, "colCenter":I
    int-to-float v10, v7

    move/from16 v20, v12

    .end local v12    # "stateMask":I
    .local v20, "stateMask":I
    iget v12, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorRadius:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v1, v5, v10, v12, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 681
    .end local v3    # "paint":Landroid/graphics/Paint;
    goto :goto_5

    .end local v17    # "headerHeight":I
    .end local v18    # "colWidth":I
    .end local v19    # "colCenter":I
    .end local v20    # "stateMask":I
    .local v3, "headerHeight":I
    .restart local v5    # "colWidth":I
    .restart local v10    # "colCenter":I
    .restart local v12    # "stateMask":I
    :cond_5
    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v10

    .end local v3    # "headerHeight":I
    .end local v5    # "colWidth":I
    .end local v10    # "colCenter":I
    .restart local v17    # "headerHeight":I
    .restart local v18    # "colWidth":I
    .restart local v19    # "colCenter":I
    if-eqz v15, :cond_7

    .line 682
    or-int/lit8 v12, v12, 0x10

    .line 684
    if-eqz v13, :cond_6

    .line 686
    int-to-float v3, v11

    int-to-float v5, v7

    iget v10, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorRadius:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    move/from16 v20, v12

    .end local v12    # "stateMask":I
    .restart local v20    # "stateMask":I
    iget-object v12, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v10, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 684
    .end local v20    # "stateMask":I
    .restart local v12    # "stateMask":I
    :cond_6
    move/from16 v20, v12

    .end local v12    # "stateMask":I
    .restart local v20    # "stateMask":I
    goto :goto_5

    .line 681
    .end local v20    # "stateMask":I
    .restart local v12    # "stateMask":I
    :cond_7
    move/from16 v20, v12

    .line 691
    .end local v12    # "stateMask":I
    .restart local v20    # "stateMask":I
    :goto_5
    iget v3, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mToday:I

    if-ne v3, v8, :cond_8

    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    .line 693
    .local v3, "isDayToday":Z
    :goto_6
    if-eqz v3, :cond_9

    if-nez v14, :cond_9

    .line 694
    iget-object v5, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    .local v5, "dayTextColor":I
    goto :goto_7

    .line 696
    .end local v5    # "dayTextColor":I
    :cond_9
    invoke-static/range {v20 .. v20}, Lcom/oneplus/lib/widget/util/ViewUtils;->getViewState(I)[I

    move-result-object v5

    .line 697
    .local v5, "stateSet":[I
    iget-object v10, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v12}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v10

    .line 698
    .local v10, "dayTextColor":I
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    move v5, v10

    .line 700
    .end local v10    # "dayTextColor":I
    .local v5, "dayTextColor":I
    :goto_7
    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 702
    iget-object v10, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    move/from16 v16, v13

    .end local v13    # "isDayEnabled":Z
    .local v16, "isDayEnabled":Z
    int-to-long v12, v8

    invoke-virtual {v10, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    int-to-float v12, v11

    int-to-float v13, v7

    sub-float/2addr v13, v6

    invoke-virtual {v1, v10, v12, v13, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 704
    add-int/lit8 v9, v9, 0x1

    .line 706
    const/4 v10, 0x7

    if-ne v9, v10, :cond_a

    .line 707
    const/4 v9, 0x0

    .line 708
    add-int/2addr v7, v4

    .line 656
    .end local v3    # "isDayToday":Z
    .end local v5    # "dayTextColor":I
    .end local v11    # "colCenterRtl":I
    .end local v14    # "isDayActivated":Z
    .end local v15    # "isDayHighlighted":Z
    .end local v16    # "isDayEnabled":Z
    .end local v19    # "colCenter":I
    .end local v20    # "stateMask":I
    :cond_a
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v17

    move/from16 v5, v18

    goto/16 :goto_0

    .line 711
    .end local v8    # "day":I
    .end local v9    # "col":I
    .end local v17    # "headerHeight":I
    .end local v18    # "colWidth":I
    .local v3, "headerHeight":I
    .local v5, "colWidth":I
    :cond_b
    return-void
.end method

.method private drawDaysOfWeek(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 620
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 621
    .local v0, "p":Landroid/text/TextPaint;
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    .line 622
    .local v1, "headerHeight":I
    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 623
    .local v2, "rowHeight":I
    iget v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCellWidth:I

    .line 626
    .local v3, "colWidth":I
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 627
    .local v4, "halfLineHeight":F
    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v1

    .line 629
    .local v5, "rowCenter":I
    const/4 v6, 0x0

    .local v6, "col":I
    :goto_0
    const/4 v7, 0x7

    if-ge v6, v7, :cond_1

    .line 630
    mul-int v7, v3, v6

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    .line 632
    .local v7, "colCenter":I
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 633
    iget v8, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int/2addr v8, v7

    .local v8, "colCenterRtl":I
    goto :goto_1

    .line 635
    .end local v8    # "colCenterRtl":I
    :cond_0
    move v8, v7

    .line 638
    .restart local v8    # "colCenterRtl":I
    :goto_1
    iget-object v9, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    aget-object v9, v9, v6

    .line 639
    .local v9, "label":Ljava/lang/String;
    int-to-float v10, v8

    int-to-float v11, v5

    sub-float/2addr v11, v4

    invoke-virtual {p1, v9, v10, v11, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 629
    .end local v7    # "colCenter":I
    .end local v8    # "colCenterRtl":I
    .end local v9    # "label":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 641
    .end local v6    # "col":I
    :cond_1
    return-void
.end method

.method private drawMonth(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 606
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 609
    .local v0, "x":F
    iget-object v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    .line 610
    .local v2, "lineHeight":F
    iget v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v1

    .line 612
    .local v3, "y":F
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 613
    return-void
.end method

.method private ensureFocusedDay()V
    .locals 2

    .line 568
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 569
    return-void

    .line 571
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    if-eq v0, v1, :cond_1

    .line 572
    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 573
    return-void

    .line 575
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mActivatedDay:I

    if-eq v0, v1, :cond_2

    .line 576
    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 577
    return-void

    .line 579
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 580
    return-void
.end method

.method private findClosestColumn(Landroid/graphics/Rect;)I
    .locals 4
    .param p1, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 534
    const/4 v0, 0x3

    if-nez p1, :cond_0

    .line 535
    return v0

    .line 537
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 541
    .local v1, "centerX":I
    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCellWidth:I

    if-nez v2, :cond_1

    .line 542
    return v0

    .line 545
    :cond_1
    div-int v0, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 546
    invoke-static {v0, v2, v3}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v0

    .line 547
    .local v0, "columnFromLeft":I
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    rsub-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    return v2
.end method

.method private findClosestRow(Landroid/graphics/Rect;)I
    .locals 11
    .param p1, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 506
    if-nez p1, :cond_0

    .line 507
    const/4 v0, 0x3

    return v0

    .line 509
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    .line 511
    .local v0, "centerY":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 512
    .local v1, "p":Landroid/text/TextPaint;
    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    iget v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v2, v3

    .line 513
    .local v2, "headerHeight":I
    iget v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHeight:I

    .line 516
    .local v3, "rowHeight":I
    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 517
    .local v4, "halfLineHeight":F
    div-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v2

    .line 519
    .local v5, "rowCenter":I
    int-to-float v6, v0

    int-to-float v7, v5

    sub-float/2addr v7, v4

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 520
    int-to-float v6, v0

    int-to-float v7, v3

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 521
    .local v6, "row":I
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result v7

    iget v8, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    add-int/2addr v7, v8

    .line 522
    .local v7, "maxDay":I
    div-int/lit8 v8, v7, 0x7

    rem-int/lit8 v9, v7, 0x7

    const/4 v10, 0x0

    if-nez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    move v9, v10

    :goto_0
    sub-int/2addr v8, v9

    .line 524
    .local v8, "maxRows":I
    invoke-static {v6, v10, v8}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v6

    .line 525
    return v6
.end method

.method private findDayOffset()I
    .locals 3

    .line 916
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    sub-int v2, v0, v1

    .line 917
    .local v2, "offset":I
    if-ge v0, v1, :cond_0

    .line 918
    add-int/lit8 v0, v2, 0x7

    return v0

    .line 920
    :cond_0
    return v2
.end method

.method private getDayAtLocation(II)I
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 933
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    .line 934
    .local v0, "paddedX":I
    const/4 v1, -0x1

    if-ltz v0, :cond_5

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    if-lt v0, v2, :cond_0

    goto :goto_2

    .line 938
    :cond_0
    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    iget v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v2, v3

    .line 939
    .local v2, "headerHeight":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingTop()I

    move-result v3

    sub-int v3, p2, v3

    .line 940
    .local v3, "paddedY":I
    if-lt v3, v2, :cond_4

    iget v4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedHeight:I

    if-lt v3, v4, :cond_1

    goto :goto_1

    .line 946
    :cond_1
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 947
    iget v4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int/2addr v4, v0

    .local v4, "paddedXRtl":I
    goto :goto_0

    .line 949
    .end local v4    # "paddedXRtl":I
    :cond_2
    move v4, v0

    .line 952
    .restart local v4    # "paddedXRtl":I
    :goto_0
    sub-int v5, v3, v2

    iget v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHeight:I

    div-int/2addr v5, v6

    .line 953
    .local v5, "row":I
    mul-int/lit8 v6, v4, 0x7

    iget v7, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    div-int/2addr v6, v7

    .line 954
    .local v6, "col":I
    mul-int/lit8 v7, v5, 0x7

    add-int/2addr v7, v6

    .line 955
    .local v7, "index":I
    add-int/lit8 v8, v7, 0x1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result v9

    sub-int/2addr v8, v9

    .line 956
    .local v8, "day":I
    invoke-direct {p0, v8}, Lcom/oneplus/lib/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 957
    return v1

    .line 960
    :cond_3
    return v8

    .line 941
    .end local v4    # "paddedXRtl":I
    .end local v5    # "row":I
    .end local v6    # "col":I
    .end local v7    # "index":I
    .end local v8    # "day":I
    :cond_4
    :goto_1
    return v1

    .line 935
    .end local v2    # "headerHeight":I
    .end local v3    # "paddedY":I
    :cond_5
    :goto_2
    return v1
.end method

.method private static getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .line 822
    packed-switch p0, :pswitch_data_0

    .line 839
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 835
    :pswitch_0
    const/16 v0, 0x1e

    return v0

    .line 837
    :pswitch_1
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    :goto_0
    return v0

    .line 830
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

.method private initPaints(Landroid/content/res/Resources;)V
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 252
    sget v0, Lcom/oneplus/commonctrl/R$string;->date_picker_month_typeface:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "monthTypeface":Ljava/lang/String;
    sget v1, Lcom/oneplus/commonctrl/R$string;->date_picker_day_of_week_typeface:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "dayOfWeekTypeface":Ljava/lang/String;
    sget v2, Lcom/oneplus/commonctrl/R$string;->date_picker_day_typeface:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "dayTypeface":Ljava/lang/String;
    sget v3, Lcom/oneplus/commonctrl/R$dimen;->date_picker_month_text_size:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 258
    .local v3, "monthTextSize":I
    sget v4, Lcom/oneplus/commonctrl/R$dimen;->date_picker_day_of_week_text_size:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 260
    .local v4, "dayOfWeekTextSize":I
    sget v5, Lcom/oneplus/commonctrl/R$dimen;->date_picker_day_text_size:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 263
    .local v5, "dayTextSize":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 264
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    int-to-float v8, v3

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 265
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v8, 0x0

    invoke-static {v0, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 266
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 267
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 269
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 270
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    int-to-float v9, v4

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 271
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-static {v1, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 272
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 273
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 275
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 276
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 278
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 279
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 281
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 282
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 284
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 285
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 286
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-static {v2, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 287
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 288
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 289
    return-void
.end method

.method private isDayEnabled(I)Z
    .locals 1
    .param p1, "day"    # I

    .line 714
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayEnd:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFirstDayOfWeek(I)Z
    .locals 3
    .param p1, "day"    # I

    .line 583
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 584
    .local v0, "offset":I
    add-int v1, v0, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isLastDayOfWeek(I)Z
    .locals 2
    .param p1, "day"    # I

    .line 588
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 589
    .local v0, "offset":I
    add-int v1, v0, p1

    rem-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isValidDayOfMonth(I)Z
    .locals 2
    .param p1, "day"    # I

    .line 718
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidDayOfWeek(I)Z
    .locals 2
    .param p0, "day"    # I

    .line 722
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidMonth(I)Z
    .locals 1
    .param p0, "month"    # I

    .line 726
    if-ltz p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private moveOneDay(Z)Z
    .locals 4
    .param p1, "positive"    # Z

    .line 447
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, "focusChanged":Z
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 450
    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->isLastDayOfWeek(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    iget v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge v2, v3, :cond_1

    .line 451
    add-int/2addr v2, v1

    iput v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 452
    const/4 v0, 0x1

    goto :goto_0

    .line 455
    :cond_0
    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->isFirstDayOfWeek(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    if-le v2, v1, :cond_1

    .line 456
    sub-int/2addr v2, v1

    iput v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 457
    const/4 v0, 0x1

    .line 460
    :cond_1
    :goto_0
    return v0
.end method

.method private onDayClicked(I)Z
    .locals 3
    .param p1, "day"    # I

    .line 1004
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

    if-eqz v0, :cond_1

    .line 1009
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1010
    .local v0, "date":Ljava/util/Calendar;
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mYear:I

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    .line 1011
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

    invoke-interface {v1, p0, v0}, Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;->onDayClick(Lcom/oneplus/lib/widget/SimpleMonthView;Ljava/util/Calendar;)V

    .line 1015
    .end local v0    # "date":Ljava/util/Calendar;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    .line 1016
    return v1

    .line 1005
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private sameDay(ILjava/util/Calendar;)Z
    .locals 3
    .param p1, "day"    # I
    .param p2, "today"    # Ljava/util/Calendar;

    .line 844
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mYear:I

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonth:I

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x5

    .line 845
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 844
    :goto_0
    return v1
.end method

.method private updateDayOfWeekLabels()V
    .locals 5

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "tinyWeekdayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 182
    const/16 v2, 0x32

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 185
    iget-object v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    iget v4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    rem-int/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v3, v1

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 187
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private updateMonthYearLabel()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    const-string v1, "MMMMy"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 174
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    .line 175
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 332
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getBoundsForDay(ILandroid/graphics/Rect;)Z
    .locals 10
    .param p1, "id"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 970
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 971
    const/4 v0, 0x0

    return v0

    .line 974
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 977
    .local v0, "index":I
    rem-int/lit8 v1, v0, 0x7

    .line 978
    .local v1, "col":I
    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCellWidth:I

    .line 980
    .local v2, "colWidth":I
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 981
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    mul-int/2addr v4, v2

    sub-int/2addr v3, v4

    .local v3, "left":I
    goto :goto_0

    .line 983
    .end local v3    # "left":I
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v3

    mul-int v4, v1, v2

    add-int/2addr v3, v4

    .line 987
    .restart local v3    # "left":I
    :goto_0
    div-int/lit8 v4, v0, 0x7

    .line 988
    .local v4, "row":I
    iget v5, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHeight:I

    .line 989
    .local v5, "rowHeight":I
    iget v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    iget v7, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v6, v7

    .line 990
    .local v6, "headerHeight":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v6

    mul-int v8, v4, v5

    add-int/2addr v7, v8

    .line 992
    .local v7, "top":I
    add-int v8, v3, v2

    add-int v9, v7, v5

    invoke-virtual {p2, v3, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 994
    const/4 v8, 0x1

    return v8
.end method

.method public getCellWidth()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCellWidth:I

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 553
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    if-lez v0, :cond_0

    .line 554
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    goto :goto_0

    .line 556
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 558
    :goto_0
    return-void
.end method

.method public getMonthHeight()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    return v0
.end method

.method public getMonthYearLabel()Ljava/lang/String;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 594
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v0

    .line 595
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingTop()I

    move-result v1

    .line 596
    .local v1, "paddingTop":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 598
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->drawMonth(Landroid/graphics/Canvas;)V

    .line 599
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->drawDaysOfWeek(Landroid/graphics/Canvas;)V

    .line 600
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    .line 602
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 603
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 1038
    if-nez p2, :cond_0

    .line 1039
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    if-nez v0, :cond_0

    .line 1041
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 1042
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 1043
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->invalidate()V

    .line 1046
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 466
    if-eqz p1, :cond_7

    .line 470
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 471
    .local v0, "offset":I
    const/16 v1, 0x11

    const/4 v2, 0x1

    if-eq p2, v1, :cond_6

    const/16 v1, 0x21

    if-eq p2, v1, :cond_4

    const/16 v1, 0x42

    if-eq p2, v1, :cond_2

    const/16 v1, 0x82

    if-eq p2, v1, :cond_0

    goto :goto_3

    .line 483
    :cond_0
    invoke-direct {p0, p3}, Lcom/oneplus/lib/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v1

    .line 484
    .local v1, "col":I
    sub-int v3, v1, v0

    add-int/2addr v3, v2

    .line 485
    .local v3, "day":I
    if-ge v3, v2, :cond_1

    add-int/lit8 v2, v3, 0x7

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 486
    goto :goto_3

    .line 473
    .end local v1    # "col":I
    .end local v3    # "day":I
    :cond_2
    invoke-direct {p0, p3}, Lcom/oneplus/lib/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v1

    .line 474
    .local v1, "row":I
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    mul-int/lit8 v3, v1, 0x7

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    :goto_1
    iput v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 475
    goto :goto_3

    .line 489
    .end local v1    # "row":I
    :cond_4
    invoke-direct {p0, p3}, Lcom/oneplus/lib/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v1

    .line 490
    .local v1, "col":I
    iget v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    add-int v4, v0, v3

    div-int/lit8 v4, v4, 0x7

    .line 491
    .local v4, "maxWeeks":I
    sub-int v5, v1, v0

    mul-int/lit8 v6, v4, 0x7

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    .line 492
    .local v5, "day":I
    if-le v5, v3, :cond_5

    add-int/lit8 v2, v5, -0x7

    goto :goto_2

    :cond_5
    move v2, v5

    :goto_2
    iput v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 493
    goto :goto_3

    .line 478
    .end local v1    # "col":I
    .end local v4    # "maxWeeks":I
    .end local v5    # "day":I
    :cond_6
    invoke-direct {p0, p3}, Lcom/oneplus/lib/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v1

    add-int/2addr v1, v2

    .line 479
    .local v1, "row":I
    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    mul-int/lit8 v3, v1, 0x7

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 480
    nop

    .line 496
    .end local v1    # "row":I
    :goto_3
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 497
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->invalidate()V

    .line 499
    .end local v0    # "offset":I
    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 500
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "focusChanged":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 386
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 387
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v0

    goto/16 :goto_1

    .line 381
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 382
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v0

    goto :goto_1

    .line 400
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 401
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 402
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    iget v4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_6

    .line 403
    add-int/2addr v1, v2

    iput v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 404
    const/4 v0, 0x1

    goto :goto_1

    .line 391
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 392
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 393
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    if-le v1, v2, :cond_6

    .line 394
    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 395
    const/4 v0, 0x1

    goto :goto_1

    .line 410
    :cond_0
    :pswitch_4
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 411
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->onDayClicked(I)Z

    .line 412
    return v3

    .line 416
    :cond_1
    const/4 v1, 0x0

    .line 417
    .local v1, "focusChangeDirection":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 418
    const/4 v1, 0x2

    goto :goto_0

    .line 419
    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 420
    const/4 v1, 0x1

    .line 422
    :cond_3
    :goto_0
    if-eqz v1, :cond_6

    .line 423
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 425
    .local v2, "parent":Landroid/view/ViewParent;
    move-object v4, p0

    .line 427
    .local v4, "nextFocus":Landroid/view/View;
    :cond_4
    invoke-virtual {v4, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    .line 428
    if-eqz v4, :cond_5

    if-eq v4, p0, :cond_5

    .line 429
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, v2, :cond_4

    .line 430
    :cond_5
    if-eqz v4, :cond_6

    .line 431
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 432
    return v3

    .line 438
    .end local v1    # "focusChangeDirection":I
    .end local v2    # "parent":Landroid/view/ViewParent;
    .end local v4    # "nextFocus":Landroid/view/View;
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 439
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->invalidate()V

    .line 440
    return v3

    .line 442
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 869
    move-object/from16 v0, p0

    if-nez p1, :cond_0

    .line 870
    return-void

    .line 874
    :cond_0
    sub-int v1, p4, p2

    .line 875
    .local v1, "w":I
    sub-int v2, p5, p3

    .line 876
    .local v2, "h":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v3

    .line 877
    .local v3, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingTop()I

    move-result v4

    .line 878
    .local v4, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingRight()I

    move-result v5

    .line 879
    .local v5, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingBottom()I

    move-result v6

    .line 880
    .local v6, "paddingBottom":I
    sub-int v7, v1, v5

    .line 881
    .local v7, "paddedRight":I
    sub-int v8, v2, v6

    .line 882
    .local v8, "paddedBottom":I
    sub-int v9, v7, v3

    .line 883
    .local v9, "paddedWidth":I
    sub-int v10, v8, v4

    .line 885
    .local v10, "paddedHeight":I
    iget v11, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    if-eq v9, v11, :cond_2

    iget v11, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedHeight:I

    if-eq v10, v11, :cond_2

    if-ltz v9, :cond_2

    if-gez v10, :cond_1

    move/from16 v16, v1

    goto :goto_0

    .line 890
    :cond_1
    iput v9, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    .line 891
    iput v10, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedHeight:I

    .line 895
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v11, v4

    sub-int/2addr v11, v6

    .line 896
    .local v11, "measuredPaddedHeight":I
    int-to-float v12, v10

    int-to-float v13, v11

    div-float/2addr v12, v13

    .line 897
    .local v12, "scaleH":F
    iget v13, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredMonthHeight:I

    int-to-float v13, v13

    mul-float/2addr v13, v12

    float-to-int v13, v13

    .line 898
    .local v13, "monthHeight":I
    iget v14, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    div-int/lit8 v14, v14, 0x7

    .line 899
    .local v14, "cellWidth":I
    iput v13, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    .line 900
    iget v15, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    int-to-float v15, v15

    mul-float/2addr v15, v12

    float-to-int v15, v15

    iput v15, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 901
    iget v15, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDayHeight:I

    int-to-float v15, v15

    mul-float/2addr v15, v12

    float-to-int v15, v15

    iput v15, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHeight:I

    .line 902
    iput v14, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCellWidth:I

    .line 906
    div-int/lit8 v15, v14, 0x2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v16

    add-int v15, v15, v16

    .line 907
    .local v15, "maxSelectorWidth":I
    move/from16 v16, v1

    .end local v1    # "w":I
    .local v16, "w":I
    iget v1, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v6

    .line 908
    .local v1, "maxSelectorHeight":I
    move/from16 v17, v1

    .end local v1    # "maxSelectorHeight":I
    .local v17, "maxSelectorHeight":I
    iget v1, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    iput v1, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorRadius:I

    .line 912
    iget-object v1, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 913
    return-void

    .line 885
    .end local v11    # "measuredPaddedHeight":I
    .end local v12    # "scaleH":F
    .end local v13    # "monthHeight":I
    .end local v14    # "cellWidth":I
    .end local v15    # "maxSelectorWidth":I
    .end local v16    # "w":I
    .end local v17    # "maxSelectorHeight":I
    .local v1, "w":I
    :cond_2
    move/from16 v16, v1

    .line 887
    .end local v1    # "w":I
    .restart local v16    # "w":I
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 850
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDayHeight:I

    mul-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredMonthHeight:I

    add-int/2addr v0, v1

    .line 852
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 853
    .local v0, "preferredHeight":I
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredCellWidth:I

    mul-int/lit8 v1, v1, 0x7

    .line 854
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingStart()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    .line 855
    .local v1, "preferredWidth":I
    invoke-static {v1, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->resolveSize(II)I

    move-result v2

    .line 856
    .local v2, "resolvedWidth":I
    invoke-static {v0, p2}, Lcom/oneplus/lib/widget/SimpleMonthView;->resolveSize(II)I

    move-result v3

    .line 857
    .local v3, "resolvedHeight":I
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/lib/widget/SimpleMonthView;->setMeasuredDimension(II)V

    .line 858
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 1021
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    const/4 v0, 0x0

    return-object v0

    .line 1025
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1026
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 1027
    .local v1, "y":I
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v2

    .line 1028
    .local v2, "dayUnderPointer":I
    if-ltz v2, :cond_1

    .line 1029
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    .line 1030
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x3ea

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v3

    return-object v3

    .line 1033
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v3

    return-object v3
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 862
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 864
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->requestLayout()V

    .line 865
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 338
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 340
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 341
    .local v2, "action":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_0

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    goto :goto_0

    .line 358
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v5

    .line 359
    .local v5, "clickedDay":I
    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/SimpleMonthView;->onDayClicked(I)Z

    .line 363
    .end local v5    # "clickedDay":I
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 364
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 365
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->invalidate()V

    goto :goto_0

    .line 344
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v5

    .line 345
    .local v5, "touchedItem":I
    iput-boolean v4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 346
    iget v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    if-eq v6, v5, :cond_3

    .line 347
    iput v5, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 348
    iput v5, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 349
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->invalidate()V

    .line 351
    :cond_3
    if-nez v2, :cond_4

    if-gez v5, :cond_4

    .line 353
    return v3

    .line 368
    .end local v5    # "touchedItem":I
    :cond_4
    :goto_0
    return v4
.end method

.method setDayHighlightColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "dayHighlightColor"    # Landroid/content/res/ColorStateList;

    .line 319
    nop

    .line 320
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/oneplus/lib/widget/util/ViewUtils;->getViewState(I)[I

    move-result-object v0

    .line 319
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 321
    .local v0, "pressedColor":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->invalidate()V

    .line 323
    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 235
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 236
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->invalidate()V

    .line 237
    return-void
.end method

.method setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "dayOfWeekTextColor"    # Landroid/content/res/ColorStateList;

    .line 298
    sget-object v0, Lcom/oneplus/lib/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 299
    .local v0, "enabledColor":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 300
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->invalidate()V

    .line 301
    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "dayBackgroundColor"    # Landroid/content/res/ColorStateList;

    .line 309
    nop

    .line 310
    const/16 v0, 0x28

    invoke-static {v0}, Lcom/oneplus/lib/widget/util/ViewUtils;->getViewState(I)[I

    move-result-object v0

    .line 309
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 311
    .local v0, "activatedColor":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 314
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 315
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->invalidate()V

    .line 316
    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 240
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 241
    .local v0, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 242
    iput-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->invalidate()V

    .line 246
    return-void
.end method

.method setDayTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "dayTextColor"    # Landroid/content/res/ColorStateList;

    .line 304
    iput-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 305
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->invalidate()V

    .line 306
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "weekStart"    # I

    .line 750
    invoke-static {p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    .line 756
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 759
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 760
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->invalidate()V

    .line 761
    return-void
.end method

.method setMonthParams(IIIIII)V
    .locals 5
    .param p1, "selectedDay"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I
    .param p4, "weekStart"    # I
    .param p5, "enabledDayStart"    # I
    .param p6, "enabledDayEnd"    # I

    .line 781
    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mActivatedDay:I

    .line 783
    invoke-static {p2}, Lcom/oneplus/lib/widget/SimpleMonthView;->isValidMonth(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonth:I

    .line 786
    :cond_0
    iput p3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mYear:I

    .line 788
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 789
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mYear:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 790
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 791
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekStart:I

    .line 793
    invoke-static {p4}, Lcom/oneplus/lib/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    iput p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    .line 800
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 801
    .local v0, "today":Ljava/util/Calendar;
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mToday:I

    .line 802
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonth:I

    iget v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mYear:I

    invoke-static {v1, v3}, Lcom/oneplus/lib/widget/SimpleMonthView;->getDaysInMonth(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    .line 803
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge v1, v3, :cond_3

    .line 804
    add-int/lit8 v3, v1, 0x1

    .line 805
    .local v3, "day":I
    invoke-direct {p0, v3, v0}, Lcom/oneplus/lib/widget/SimpleMonthView;->sameDay(ILjava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 806
    iput v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mToday:I

    .line 803
    .end local v3    # "day":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 810
    .end local v1    # "i":I
    :cond_3
    invoke-static {p5, v2, v3}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 811
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayStart:I

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p6, v1, v2}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 813
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->updateMonthYearLabel()V

    .line 814
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 817
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 818
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->invalidate()V

    .line 819
    return-void
.end method

.method public setMonthTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 229
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 231
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->invalidate()V

    .line 232
    return-void
.end method

.method setMonthTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "monthTextColor"    # Landroid/content/res/ColorStateList;

    .line 292
    sget-object v0, Lcom/oneplus/lib/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 293
    .local v0, "enabledColor":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 294
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->invalidate()V

    .line 295
    return-void
.end method

.method public setOnDayClickListener(Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

    .line 326
    iput-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

    .line 327
    return-void
.end method

.method public setSelectedDay(I)V
    .locals 1
    .param p1, "dayOfMonth"    # I

    .line 736
    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mActivatedDay:I

    .line 739
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 740
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->invalidate()V

    .line 741
    return-void
.end method
