.class public Lcom/oneplus/lib/widget/RadialTimePickerView;
.super Landroid/view/View;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;,
        Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;,
        Lcom/oneplus/lib/widget/RadialTimePickerView$PickerType;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final ANIM_DURATION_NORMAL:I = 0x1f4

.field private static final ANIM_DURATION_TOUCH:I = 0x3c

.field private static final COS_30:[F

.field private static final DEGREES_FOR_ONE_HOUR:I = 0x1e

.field private static final DEGREES_FOR_ONE_MINUTE:I = 0x6

.field public static final HOURS:I = 0x0

.field private static final HOURS_INNER:I = 0x2

.field private static final HOURS_IN_CIRCLE:I = 0xc

.field private static final HOURS_NUMBERS:[I

.field private static final HOURS_NUMBERS_24:[I

.field private static final MAX_SECOND_MINUTES_SHOWING_TIMES:I = 0x1

.field public static final MINUTES:I = 0x1

.field private static final MINUTES_IN_CIRCLE:I = 0x3c

.field private static final MINUTES_NUMBERS:[I

.field private static final MISSING_COLOR:I = -0xff01

.field private static final NUM_POSITIONS:I = 0xc

.field private static final PM:I = 0x1

.field private static final SECOND_MINUTES_NUMBERS:[I

.field private static final SECOND_MINUTES_NUMBERS_RANGE:I = 0x4

.field private static final SELECTOR_CIRCLE:I = 0x0

.field private static final SELECTOR_DOT:I = 0x1

.field private static final SELECTOR_LINE:I = 0x2

.field private static final SIN_30:[F

.field private static final SNAP_PREFER_30S_MAP:[I

.field private static final TAG:Ljava/lang/String; = "RadialTimePickerView"


# instance fields
.field private final HOURS_TO_MINUTES:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oneplus/lib/widget/RadialTimePickerView;",
            ">;"
        }
    .end annotation
.end field

.field private mAmOrPm:I

.field private mCenterDotRadius:I

.field mChangedDuringTouch:Z

.field private mCircleRadius:I

.field private mDisabledAlpha:F

.field private mHalfwayDist:I

.field private final mHours12Texts:[Ljava/lang/String;

.field private mHoursToMinutes:F

.field private mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

.field private final mInnerHours24Texts:[Ljava/lang/String;

.field private mInnerTextHours:[Ljava/lang/String;

.field private final mInnerTextX:[F

.field private final mInnerTextY:[F

.field private mInputEnabled:Z

.field private mIs24HourMode:Z

.field private mIsOnInnerCircle:Z

.field private mListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

.field private mMaxDistForOuterNumber:I

.field private mMinDistForInnerNumber:I

.field private mMinutesText:[Ljava/lang/String;

.field private final mMinutesTexts:[Ljava/lang/String;

.field private final mOuterHours24Texts:[Ljava/lang/String;

.field private mOuterTextHours:[Ljava/lang/String;

.field private final mOuterTextX:[[F

.field private final mOuterTextY:[[F

.field private final mPaint:[Landroid/graphics/Paint;

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintCenter:Landroid/graphics/Paint;

.field private final mPaintSelector:[Landroid/graphics/Paint;

.field private mSecondMinutesShowTimes:I

.field private final mSelectionDegrees:[I

.field private mSelectorColor:I

.field private mSelectorDotColor:I

.field private mSelectorDotRadius:I

.field private final mSelectorPath:Landroid/graphics/Path;

.field private mSelectorRadius:I

.field private mSelectorStroke:I

.field private mShowHours:Z

.field private final mTextColor:[Landroid/content/res/ColorStateList;

.field private final mTextInset:[I

.field private final mTextSize:[I

.field private final mTouchHelper:Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

.field private final mTypeface:Landroid/graphics/Typeface;

.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;

.field private mXCenter:I

.field private mYCenter:I

.field oval:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 85
    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oneplus/lib/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    .line 86
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/oneplus/lib/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    .line 87
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/oneplus/lib/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    .line 92
    const/4 v1, 0x4

    new-array v1, v1, [I

    sput-object v1, Lcom/oneplus/lib/widget/RadialTimePickerView;->SECOND_MINUTES_NUMBERS:[I

    .line 100
    const/16 v1, 0x169

    new-array v1, v1, [I

    sput-object v1, Lcom/oneplus/lib/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    .line 103
    new-array v1, v0, [F

    sput-object v1, Lcom/oneplus/lib/widget/RadialTimePickerView;->COS_30:[F

    .line 104
    new-array v1, v0, [F

    sput-object v1, Lcom/oneplus/lib/widget/RadialTimePickerView;->SIN_30:[F

    .line 115
    invoke-static {}, Lcom/oneplus/lib/widget/RadialTimePickerView;->preparePrefer30sMap()V

    .line 117
    const-wide v1, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 118
    .local v1, "increment":D
    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 119
    .local v3, "angle":D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 120
    sget-object v6, Lcom/oneplus/lib/widget/RadialTimePickerView;->COS_30:[F

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v6, v5

    .line 121
    sget-object v6, Lcom/oneplus/lib/widget/RadialTimePickerView;->SIN_30:[F

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v6, v5

    .line 122
    const-wide v6, 0x3fe0c152382d7365L    # 0.5235987755982988

    add-double/2addr v3, v6

    .line 119
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "increment":D
    .end local v3    # "angle":D
    .end local v5    # "i":I
    :cond_0
    return-void

    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 327
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 328
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 331
    sget v0, Lcom/oneplus/commonctrl/R$attr;->timePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 332
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 336
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 340
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    new-instance v0, Lcom/oneplus/lib/widget/RadialTimePickerView$1;

    const-string v1, "hoursToMinutes"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView$1;-><init>(Lcom/oneplus/lib/widget/RadialTimePickerView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    .line 140
    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    .line 141
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    .line 142
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    .line 143
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    .line 145
    const/4 v1, 0x2

    new-array v2, v1, [Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 146
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    .line 147
    const/4 v2, 0x3

    new-array v3, v2, [Landroid/graphics/Paint;

    iput-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    .line 148
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    .line 152
    new-array v3, v2, [Landroid/content/res/ColorStateList;

    iput-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    .line 153
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    .line 154
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    .line 156
    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, F

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextX:[[F

    .line 157
    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, F

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextY:[[F

    .line 159
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerTextX:[F

    .line 160
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerTextY:[F

    .line 162
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 166
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    .line 206
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 817
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->oval:Landroid/graphics/RectF;

    .line 996
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 342
    invoke-virtual {p0, p2, p3, p4}, Lcom/oneplus/lib/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    .line 345
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 346
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010033

    invoke-virtual {v5, v6, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 347
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    iput v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mDisabledAlpha:F

    .line 349
    const-string v5, "sans-serif"

    invoke-static {v5, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    .line 351
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v3

    .line 352
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 353
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v3

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 355
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v2

    .line 356
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 357
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v2

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 359
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 361
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v3

    .line 362
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 364
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v2

    .line 365
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 367
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v1

    .line 368
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 369
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 371
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 373
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 374
    .local v5, "res":Landroid/content/res/Resources;
    sget v6, Lcom/oneplus/commonctrl/R$dimen;->timepicker_selector_radius:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 375
    sget v6, Lcom/oneplus/commonctrl/R$dimen;->timepicker_selector_stroke:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorStroke:I

    .line 376
    sget v6, Lcom/oneplus/commonctrl/R$dimen;->timepicker_selector_dot_radius:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorDotRadius:I

    .line 377
    sget v6, Lcom/oneplus/commonctrl/R$dimen;->timepicker_center_dot_radius:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCenterDotRadius:I

    .line 379
    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    sget v7, Lcom/oneplus/commonctrl/R$dimen;->timepicker_text_size_normal:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v3

    .line 380
    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    sget v7, Lcom/oneplus/commonctrl/R$dimen;->timepicker_text_size_normal:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v2

    .line 381
    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    sget v7, Lcom/oneplus/commonctrl/R$dimen;->timepicker_text_size_inner:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v1

    .line 383
    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    sget v7, Lcom/oneplus/commonctrl/R$dimen;->timepicker_text_inset_normal:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v3

    .line 384
    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    sget v7, Lcom/oneplus/commonctrl/R$dimen;->timepicker_text_inset_normal:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v2

    .line 385
    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    sget v7, Lcom/oneplus/commonctrl/R$dimen;->timepicker_text_inset_inner:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v1

    .line 387
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    .line 388
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 389
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 390
    iput v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mAmOrPm:I

    .line 393
    new-instance v1, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;-><init>(Lcom/oneplus/lib/widget/RadialTimePickerView;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTouchHelper:Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 394
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTouchHelper:Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 396
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 397
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setImportantForAccessibility(I)V

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->initHoursAndMinutesText()V

    .line 401
    invoke-direct {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->initData()V

    .line 404
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 405
    .local v1, "calendar":Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 406
    .local v6, "currentHour":I
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 408
    .local v0, "currentMinute":I
    invoke-direct {p0, v6, v3, v3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 409
    invoke-direct {p0, v0, v3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 410
    invoke-static {}, Lcom/oneplus/lib/util/OPFeaturesUtils;->isSupportXVibrate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 411
    const-string v3, "vibrator"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mVibrator:Landroid/os/Vibrator;

    .line 414
    :cond_1
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setHapticFeedbackEnabled(Z)V

    .line 415
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/RadialTimePickerView;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 61
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/lib/widget/RadialTimePickerView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;
    .param p1, "x1"    # F

    .line 61
    iput p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 61
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 61
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    return v0
.end method

.method static synthetic access$1100(Lcom/oneplus/lib/widget/RadialTimePickerView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 61
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/lib/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 61
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorRadius:I

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/lib/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getDegreesForHour(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/lib/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getDegreesForMinute(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/oneplus/lib/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 61
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    return v0
.end method

.method static synthetic access$1600(Lcom/oneplus/lib/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 61
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 61
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/RadialTimePickerView;FFZ)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Z

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 61
    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/RadialTimePickerView;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/RadialTimePickerView;IZ)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 61
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method static synthetic access$900(Lcom/oneplus/lib/widget/RadialTimePickerView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result v0

    return v0
.end method

.method private animatePicker(ZJ)V
    .locals 4
    .param p1, "hoursToMinutes"    # Z
    .param p2, "duration"    # J

    .line 719
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 720
    .local v0, "target":F
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    cmpl-float v2, v1, v0

    if-nez v2, :cond_2

    .line 722
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 723
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 724
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 728
    :cond_1
    return-void

    .line 731
    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    const-string v3, "HoursToMinutes"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 732
    iget-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 733
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 734
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 735
    return-void
.end method

.method private static calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V
    .locals 2
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "radius"    # F
    .param p2, "xCenter"    # F
    .param p3, "yCenter"    # F
    .param p4, "textSize"    # F
    .param p5, "x"    # [F
    .param p6, "y"    # [F

    .line 917
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 918
    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p3, v0

    .line 920
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 921
    sget-object v1, Lcom/oneplus/lib/widget/RadialTimePickerView;->COS_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p2, v1

    aput v1, p5, v0

    .line 922
    sget-object v1, Lcom/oneplus/lib/widget/RadialTimePickerView;->SIN_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p3, v1

    aput v1, p6, v0

    .line 920
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 924
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private calculatePositionsHours()V
    .locals 12

    .line 886
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 889
    .local v0, "numbersRadius":F
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v3, v1, v2

    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v1

    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v1

    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    aget v1, v1, v2

    int-to-float v7, v1

    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v8, v1, v2

    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v9, v1, v2

    move v4, v0

    invoke-static/range {v3 .. v9}, Lcom/oneplus/lib/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 893
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_0

    .line 894
    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    sub-int/2addr v1, v3

    .line 895
    .local v1, "innerNumbersRadius":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v3, v2

    int-to-float v6, v1

    iget v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v7, v2

    iget v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v8, v2

    iget-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    aget v2, v2, v4

    int-to-float v9, v2

    iget-object v10, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v11, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerTextY:[F

    invoke-static/range {v5 .. v11}, Lcom/oneplus/lib/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 898
    .end local v1    # "innerNumbersRadius":I
    :cond_0
    return-void
.end method

.method private calculatePositionsMinutes()V
    .locals 10

    .line 902
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 905
    .local v0, "numbersRadius":F
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v3, v1, v2

    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v1

    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v1

    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    aget v1, v1, v2

    int-to-float v7, v1

    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v8, v1, v2

    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v9, v1, v2

    move v4, v0

    invoke-static/range {v3 .. v9}, Lcom/oneplus/lib/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 907
    return-void
.end method

.method private drawCenter(Landroid/graphics/Canvas;F)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alphaMod"    # F

    .line 809
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 810
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 811
    return-void
.end method

.method private drawCircleBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 747
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 748
    return-void
.end method

.method private drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;
    .param p3, "alphaMod"    # F

    .line 751
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    mul-float/2addr v1, p3

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 752
    .local v0, "hoursAlpha":I
    if-lez v0, :cond_0

    .line 755
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 756
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 757
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 758
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 762
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 763
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 764
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 765
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 767
    :cond_0
    return-void
.end method

.method private drawHoursClipped(Landroid/graphics/Canvas;IZ)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "hoursAlpha"    # I
    .param p3, "showActivated"    # Z

    .line 771
    move-object/from16 v13, p0

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v14, 0x0

    aget v0, v0, v14

    int-to-float v2, v0

    iget-object v3, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v14

    iget-object v5, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v6, v0, v14

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v7, v0, v14

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v0, v14

    const/4 v15, 0x1

    if-eqz p3, :cond_0

    iget-boolean v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-nez v0, :cond_0

    move v10, v15

    goto :goto_0

    :cond_0
    move v10, v14

    :goto_0
    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v0, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 776
    iget-boolean v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_2

    iget-object v5, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 777
    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v1

    iget-object v6, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v7, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerTextY:[F

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v0, v14

    if-eqz p3, :cond_1

    iget-boolean v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v0, :cond_1

    move v10, v15

    goto :goto_1

    :cond_1
    move v10, v14

    :goto_1
    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v0, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 781
    :cond_2
    return-void
.end method

.method private drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;
    .param p3, "alphaMod"    # F

    .line 784
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 785
    .local v0, "minutesAlpha":I
    if-lez v0, :cond_0

    .line 788
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 789
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 790
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 791
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 795
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 796
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 797
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 798
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 800
    :cond_0
    return-void
.end method

.method private drawMinutesClipped(Landroid/graphics/Canvas;IZ)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "minutesAlpha"    # I
    .param p3, "showActivated"    # Z

    .line 803
    move-object v13, p0

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v1

    iget-object v5, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v6, v0, v1

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v7, v0, v1

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v0, v1

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v0, v1

    move-object v0, p0

    move-object v1, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 806
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 38
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;

    .line 821
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-boolean v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v10, v1

    .line 822
    .local v10, "hoursIndex":I
    iget-object v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    aget v11, v1, v10

    .line 823
    .local v11, "hoursInset":I
    iget-object v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v3, v10, 0x2

    aget v12, v1, v3

    .line 824
    .local v12, "hoursAngleDeg":I
    rem-int/lit8 v3, v10, 0x2

    aget v1, v1, v3

    rem-int/lit8 v1, v1, 0x1e

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v13, v1

    .line 826
    .local v13, "hoursDotScale":F
    const/4 v14, 0x1

    .line 827
    .local v14, "minutesIndex":I
    iget-object v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v15, 0x1

    aget v6, v1, v15

    .line 828
    .local v6, "minutesInset":I
    iget-object v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v5, v1, v15

    .line 829
    .local v5, "minutesAngleDeg":I
    aget v1, v1, v15

    rem-int/lit8 v1, v1, 0x1e

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 832
    .local v3, "minutesDotScale":F
    :goto_2
    iget v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 833
    .local v1, "selRadius":I
    iget v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v2, v2

    int-to-float v15, v11

    int-to-float v4, v6

    iget v9, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 834
    invoke-static {v15, v4, v9}, Lcom/oneplus/lib/util/MathUtils;->lerp(FFF)F

    move-result v4

    sub-float v9, v2, v4

    .line 835
    .local v9, "selLength":F
    int-to-float v2, v12

    int-to-float v4, v5

    iget v15, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 836
    invoke-static {v2, v4, v15}, Lcom/oneplus/lib/util/MathUtils;->lerpDeg(FFF)F

    move-result v2

    move v15, v5

    .end local v5    # "minutesAngleDeg":I
    .local v15, "minutesAngleDeg":I
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    .line 837
    .local v20, "selAngleRad":D
    iget v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v9

    add-float v5, v2, v4

    .line 838
    .local v5, "selCenterX":F
    iget v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v2, v2

    move/from16 v22, v10

    move/from16 v23, v11

    .end local v10    # "hoursIndex":I
    .end local v11    # "hoursInset":I
    .local v22, "hoursIndex":I
    .local v23, "hoursInset":I
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v4, v10

    mul-float/2addr v4, v9

    sub-float v10, v2, v4

    .line 841
    .local v10, "selCenterY":F
    iget-object v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v4, 0x0

    aget-object v11, v2, v4

    .line 842
    .local v11, "paint":Landroid/graphics/Paint;
    iget v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorColor:I

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 843
    int-to-float v2, v1

    invoke-virtual {v7, v5, v10, v2, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 846
    if-eqz v8, :cond_3

    .line 847
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->reset()V

    .line 848
    int-to-float v2, v1

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v5, v10, v2, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 852
    :cond_3
    iget v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    invoke-static {v13, v3, v2}, Lcom/oneplus/lib/util/MathUtils;->lerp(FFF)F

    move-result v24

    .line 853
    .local v24, "dotScale":F
    const/4 v2, 0x0

    cmpl-float v2, v24, v2

    if-lez v2, :cond_4

    .line 854
    iget-object v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    .line 855
    .local v2, "dotPaint":Landroid/graphics/Paint;
    iget v4, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorDotColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 856
    iget v4, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorDotRadius:I

    int-to-float v4, v4

    mul-float v4, v4, v24

    invoke-virtual {v7, v5, v10, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 861
    .end local v2    # "dotPaint":Landroid/graphics/Paint;
    :cond_4
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    .line 862
    .local v25, "sin":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    .line 863
    .local v27, "cos":D
    int-to-float v2, v1

    sub-float v4, v9, v2

    .line 864
    .local v4, "lineLength":F
    iget v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v18, v1

    .end local v1    # "selRadius":I
    .local v18, "selRadius":I
    iget v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCenterDotRadius:I

    move/from16 v30, v5

    move/from16 v29, v6

    .end local v5    # "selCenterX":F
    .end local v6    # "minutesInset":I
    .local v29, "minutesInset":I
    .local v30, "selCenterX":F
    int-to-double v5, v1

    mul-double v5, v5, v25

    double-to-int v5, v5

    add-int v31, v2, v5

    .line 865
    .local v31, "centerX":I
    iget v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    int-to-double v5, v1

    mul-double v5, v5, v27

    double-to-int v1, v5

    sub-int v32, v2, v1

    .line 866
    .local v32, "centerY":I
    float-to-double v1, v4

    mul-double v1, v1, v25

    double-to-int v1, v1

    add-int v1, v31, v1

    int-to-float v6, v1

    .line 867
    .local v6, "linePointX":F
    float-to-double v1, v4

    mul-double v1, v1, v27

    double-to-int v1, v1

    sub-int v1, v32, v1

    int-to-float v5, v1

    .line 870
    .local v5, "linePointY":F
    iget-object v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v2, 0x2

    aget-object v2, v1, v2

    .line 871
    .local v2, "linePaint":Landroid/graphics/Paint;
    iget v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorColor:I

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 872
    iget v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorStroke:I

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 873
    iget v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v1, v1

    move/from16 v16, v1

    iget v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    move/from16 v33, v1

    move/from16 v37, v18

    move/from16 v18, v16

    move/from16 v16, v37

    .end local v18    # "selRadius":I
    .local v16, "selRadius":I
    move-object/from16 v1, p1

    move-object/from16 v34, v2

    .end local v2    # "linePaint":Landroid/graphics/Paint;
    .local v34, "linePaint":Landroid/graphics/Paint;
    move/from16 v2, v18

    move/from16 v18, v3

    .end local v3    # "minutesDotScale":F
    .local v18, "minutesDotScale":F
    move/from16 v3, v33

    move/from16 v33, v4

    .end local v4    # "lineLength":F
    .local v33, "lineLength":F
    move v4, v6

    move/from16 v35, v5

    .end local v5    # "linePointY":F
    .local v35, "linePointY":F
    move/from16 v36, v6

    .end local v6    # "linePointX":F
    .local v36, "linePointX":F
    move-object/from16 v6, v34

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 875
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    if-nez v1, :cond_5

    .line 876
    const v1, -0x777778

    move-object/from16 v6, v34

    .end local v34    # "linePaint":Landroid/graphics/Paint;
    .local v6, "linePaint":Landroid/graphics/Paint;
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 877
    iget-object v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->oval:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextX:[[F

    const/4 v3, 0x1

    aget-object v4, v2, v3

    const/16 v5, 0x9

    aget v4, v4, v5

    aget-object v5, v2, v3

    const/16 v17, 0x0

    aget v5, v5, v17

    aget-object v17, v2, v3

    const/16 v19, 0x3

    .end local v6    # "linePaint":Landroid/graphics/Paint;
    .restart local v34    # "linePaint":Landroid/graphics/Paint;
    aget v6, v17, v19

    aget-object v2, v2, v3

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 879
    iget-object v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->oval:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getDegreesForMinute(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x2d

    int-to-float v3, v1

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v17, v34

    .end local v34    # "linePaint":Landroid/graphics/Paint;
    .local v17, "linePaint":Landroid/graphics/Paint;
    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_3

    .line 875
    .end local v17    # "linePaint":Landroid/graphics/Paint;
    .restart local v34    # "linePaint":Landroid/graphics/Paint;
    :cond_5
    move-object/from16 v17, v34

    .line 882
    .end local v34    # "linePaint":Landroid/graphics/Paint;
    .restart local v17    # "linePaint":Landroid/graphics/Paint;
    :goto_3
    return-void
.end method

.method private drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "textColor"    # Landroid/content/res/ColorStateList;
    .param p5, "texts"    # [Ljava/lang/String;
    .param p6, "textX"    # [F
    .param p7, "textY"    # [F
    .param p8, "paint"    # Landroid/graphics/Paint;
    .param p9, "alpha"    # I
    .param p10, "showActivated"    # Z
    .param p11, "activatedDegrees"    # I
    .param p12, "activatedOnly"    # Z

    .line 932
    move-object/from16 v0, p8

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 933
    move-object/from16 v2, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 936
    move/from16 v3, p11

    int-to-float v4, v3

    const/high16 v5, 0x41f00000    # 30.0f

    div-float/2addr v4, v5

    .line 937
    .local v4, "activatedIndex":F
    float-to-int v5, v4

    .line 938
    .local v5, "activatedFloor":I
    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/16 v7, 0xc

    rem-int/2addr v6, v7

    .line 940
    .local v6, "activatedCeil":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_4

    .line 941
    const/4 v9, 0x0

    if-eq v5, v8, :cond_1

    if-ne v6, v8, :cond_0

    goto :goto_1

    :cond_0
    move v10, v9

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v10, 0x1

    .line 942
    .local v10, "activated":Z
    :goto_2
    if-eqz p12, :cond_2

    if-nez v10, :cond_2

    .line 943
    move-object/from16 v12, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p4

    move/from16 v14, p9

    goto :goto_4

    .line 946
    :cond_2
    const/16 v11, 0x8

    .line 947
    if-eqz p10, :cond_3

    if-eqz v10, :cond_3

    const/16 v12, 0x20

    goto :goto_3

    :cond_3
    move v12, v9

    :goto_3
    or-int/2addr v11, v12

    .line 948
    .local v11, "stateMask":I
    invoke-static {v11}, Lcom/oneplus/lib/widget/util/ViewUtils;->getViewState(I)[I

    move-result-object v12

    move-object/from16 v13, p4

    invoke-virtual {v13, v12, v9}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v9

    .line 949
    .local v9, "color":I
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 950
    move-object/from16 v12, p0

    move/from16 v14, p9

    invoke-direct {v12, v9, v14}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v15

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 952
    aget-object v15, p5, v8

    aget v7, p6, v8

    aget v1, p7, v8

    move-object/from16 v2, p1

    invoke-virtual {v2, v15, v7, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 940
    .end local v9    # "color":I
    .end local v10    # "activated":Z
    .end local v11    # "stateMask":I
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/16 v7, 0xc

    goto :goto_0

    :cond_4
    move-object/from16 v12, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p4

    move/from16 v14, p9

    .line 954
    .end local v8    # "i":I
    return-void
.end method

.method private getDegreesForHour(I)I
    .locals 2
    .param p1, "hour"    # I

    .line 561
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/16 v1, 0xc

    if-eqz v0, :cond_0

    .line 562
    if-lt p1, v1, :cond_1

    .line 563
    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    .line 565
    :cond_0
    if-ne p1, v1, :cond_1

    .line 566
    const/4 p1, 0x0

    .line 568
    :cond_1
    :goto_0
    mul-int/lit8 v0, p1, 0x1e

    return v0
.end method

.method private getDegreesForMinute(I)I
    .locals 1
    .param p1, "minute"    # I

    .line 602
    mul-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getDegreesFromXY(FFZ)I
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "constrainOutside"    # Z

    .line 960
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    .line 961
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    .line 962
    .local v0, "innerBound":I
    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    .local v1, "outerBound":I
    goto :goto_0

    .line 964
    .end local v0    # "innerBound":I
    .end local v1    # "outerBound":I
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    xor-int/lit8 v0, v0, 0x1

    .line 965
    .local v0, "index":I
    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    .line 966
    .local v1, "center":I
    iget v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int v3, v1, v2

    .line 967
    .local v3, "innerBound":I
    add-int/2addr v1, v2

    move v0, v3

    .line 970
    .end local v3    # "innerBound":I
    .local v0, "innerBound":I
    .local v1, "outerBound":I
    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    float-to-double v2, v2

    .line 971
    .local v2, "dX":D
    iget v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    float-to-double v4, v4

    .line 972
    .local v4, "dY":D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 973
    .local v6, "distFromCenter":D
    int-to-double v8, v0

    cmpg-double v8, v6, v8

    if-ltz v8, :cond_3

    if-eqz p3, :cond_1

    int-to-double v8, v1

    cmpl-double v8, v6, v8

    if-lez v8, :cond_1

    goto :goto_1

    .line 978
    :cond_1
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v8, v8

    .line 979
    .local v8, "degrees":I
    if-gez v8, :cond_2

    .line 980
    add-int/lit16 v9, v8, 0x168

    return v9

    .line 982
    :cond_2
    return v8

    .line 974
    .end local v8    # "degrees":I
    :cond_3
    :goto_1
    const/4 v8, -0x1

    return v8
.end method

.method private getHourForDegrees(IZ)I
    .locals 3
    .param p1, "degrees"    # I
    .param p2, "innerCircle"    # Z

    .line 539
    div-int/lit8 v0, p1, 0x1e

    rem-int/lit8 v0, v0, 0xc

    .line 540
    .local v0, "hour":I
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_1

    .line 543
    if-nez p2, :cond_0

    if-nez v0, :cond_0

    .line 545
    const/16 v0, 0xc

    goto :goto_0

    .line 546
    :cond_0
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 548
    add-int/lit8 v0, v0, 0xc

    goto :goto_0

    .line 550
    :cond_1
    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mAmOrPm:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 551
    add-int/lit8 v0, v0, 0xc

    .line 553
    :cond_2
    :goto_0
    return v0
.end method

.method private getInnerCircleForHour(I)Z
    .locals 1
    .param p1, "hour"    # I

    .line 575
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getInnerCircleFromXY(FF)Z
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 987
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_1

    .line 988
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-double v2, v0

    .line 989
    .local v2, "dX":D
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    float-to-double v4, v0

    .line 990
    .local v4, "dY":D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 991
    .local v6, "distFromCenter":D
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHalfwayDist:I

    int-to-double v8, v0

    cmpg-double v0, v6, v8

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 993
    .end local v2    # "dX":D
    .end local v4    # "dY":D
    .end local v6    # "distFromCenter":D
    :cond_1
    return v1
.end method

.method private getMinuteForDegrees(I)I
    .locals 1
    .param p1, "degrees"    # I

    .line 598
    div-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getMultipliedAlpha(II)I
    .locals 6
    .param p1, "argb"    # I
    .param p2, "alpha"    # I

    .line 814
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private handleTouchInput(FFZZ)Z
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "forceSelection"    # Z
    .param p4, "autoAdvance"    # Z

    .line 1040
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result v0

    .line 1041
    .local v0, "isOnInnerCircle":Z
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v2

    .line 1042
    .local v2, "degrees":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1043
    return v1

    .line 1047
    :cond_0
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    const-wide/16 v4, 0x3c

    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/lib/widget/RadialTimePickerView;->animatePicker(ZJ)V

    .line 1053
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 1054
    invoke-static {v2, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v3

    rem-int/lit16 v3, v3, 0x168

    .line 1055
    .local v3, "snapDegrees":I
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-ne v5, v0, :cond_2

    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v5, v5, v1

    if-eq v5, v3, :cond_1

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    .line 1057
    .local v5, "valueChanged":Z
    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 1058
    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v3, v6, v1

    .line 1059
    const/4 v6, 0x0

    .line 1060
    .local v6, "type":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v3

    .line 1061
    .local v3, "newValue":I
    goto :goto_3

    .line 1062
    .end local v3    # "newValue":I
    .end local v5    # "valueChanged":Z
    .end local v6    # "type":I
    :cond_3
    invoke-static {v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->snapPrefer30s(I)I

    move-result v3

    rem-int/lit16 v3, v3, 0x168

    .line 1063
    .local v3, "snapDegrees":I
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v5, v5, v4

    if-eq v5, v3, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v1

    .line 1064
    .restart local v5    # "valueChanged":Z
    :goto_2
    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v3, v6, v4

    .line 1065
    const/4 v6, 0x1

    .line 1066
    .restart local v6    # "type":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v3

    .line 1069
    .local v3, "newValue":I
    :goto_3
    if-nez v5, :cond_6

    if-nez p3, :cond_6

    if-eqz p4, :cond_5

    goto :goto_4

    .line 1095
    :cond_5
    return v1

    .line 1071
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v1, :cond_7

    .line 1072
    invoke-interface {v1, v6, v3, p4}, Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 1076
    :cond_7
    if-nez v5, :cond_8

    if-eqz p3, :cond_c

    .line 1077
    :cond_8
    invoke-static {}, Lcom/oneplus/lib/util/OPFeaturesUtils;->isSupportXVibrate()Z

    move-result v1

    const/4 v7, 0x4

    if-eqz v1, :cond_a

    .line 1078
    if-ne v6, v4, :cond_9

    .line 1079
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/lib/util/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1080
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v7, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mVibrator:Landroid/os/Vibrator;

    const/16 v8, 0x406

    invoke-static {v1, v7, v8}, Lcom/oneplus/lib/util/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mVibratePattern:[J

    .line 1082
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mVibratePattern:[J

    iget-object v7, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v1, v7}, Lcom/oneplus/lib/util/VibratorSceneUtils;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    goto :goto_5

    .line 1085
    :cond_9
    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/RadialTimePickerView;->performHapticFeedback(I)Z

    goto :goto_5

    .line 1088
    :cond_a
    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/RadialTimePickerView;->performHapticFeedback(I)Z

    .line 1090
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->invalidate()V

    .line 1092
    :cond_c
    return v4
.end method

.method private initData()V
    .locals 1

    .line 647
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 649
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    goto :goto_0

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 652
    iput-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    .line 655
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    .line 656
    return-void
.end method

.method private initHoursAndMinutesText()V
    .locals 8

    .line 638
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/oneplus/lib/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 640
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v6, Lcom/oneplus/lib/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "%02d"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 641
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v7, Lcom/oneplus/lib/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v7, v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 642
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/oneplus/lib/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private isVisible()Z
    .locals 1

    .line 999
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static preparePrefer30sMap()V
    .locals 5

    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, "snappedOutputDegrees":I
    const/4 v1, 0x1

    .line 258
    .local v1, "count":I
    const/16 v2, 0x8

    .line 260
    .local v2, "expectedCount":I
    const/4 v3, 0x0

    .local v3, "degrees":I
    :goto_0
    const/16 v4, 0x169

    if-ge v3, v4, :cond_3

    .line 262
    sget-object v4, Lcom/oneplus/lib/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aput v0, v4, v3

    .line 265
    if-ne v1, v2, :cond_2

    .line 266
    add-int/lit8 v0, v0, 0x6

    .line 267
    const/16 v4, 0x168

    if-ne v0, v4, :cond_0

    .line 268
    const/4 v2, 0x7

    goto :goto_1

    .line 269
    :cond_0
    rem-int/lit8 v4, v0, 0x1e

    if-nez v4, :cond_1

    .line 270
    const/16 v2, 0xe

    goto :goto_1

    .line 272
    :cond_1
    const/4 v2, 0x4

    .line 274
    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    .line 276
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 260
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 279
    .end local v3    # "degrees":I
    :cond_3
    return-void
.end method

.method private setCurrentHourInternal(IZZ)V
    .locals 5
    .param p1, "hour"    # I
    .param p2, "callback"    # Z
    .param p3, "autoAdvance"    # Z

    .line 508
    rem-int/lit8 v0, p1, 0xc

    mul-int/lit8 v0, v0, 0x1e

    .line 509
    .local v0, "degrees":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 512
    if-eqz p1, :cond_1

    rem-int/lit8 v1, p1, 0x18

    const/16 v3, 0xc

    if-ge v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 513
    .local v1, "amOrPm":I
    :goto_1
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result v3

    .line 514
    .local v3, "isOnInnerCircle":Z
    iget v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mAmOrPm:I

    if-ne v4, v1, :cond_2

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eq v4, v3, :cond_3

    .line 515
    :cond_2
    iput v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mAmOrPm:I

    .line 516
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 518
    invoke-direct {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->initData()V

    .line 519
    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTouchHelper:Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 522
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->invalidate()V

    .line 524
    if-eqz p2, :cond_4

    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v4, :cond_4

    .line 525
    invoke-interface {v4, v2, p1, p3}, Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 527
    :cond_4
    return-void
.end method

.method private setCurrentMinuteInternal(IZ)V
    .locals 3
    .param p1, "minute"    # I
    .param p2, "callback"    # Z

    .line 583
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x6

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 585
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->invalidate()V

    .line 587
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v0, :cond_0

    .line 588
    const/4 v1, 0x0

    invoke-interface {v0, v2, p1, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 590
    :cond_0
    return-void
.end method

.method private showPicker(ZZ)V
    .locals 2
    .param p1, "hours"    # Z
    .param p2, "animate"    # Z

    .line 696
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    if-ne v0, p1, :cond_0

    .line 697
    return-void

    .line 700
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    .line 702
    if-eqz p2, :cond_1

    .line 703
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->animatePicker(ZJ)V

    goto :goto_1

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 707
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 708
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 710
    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 713
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->initData()V

    .line 714
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->invalidate()V

    .line 715
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTouchHelper:Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 716
    return-void
.end method

.method private static snapOnly30s(II)I
    .locals 5
    .param p0, "degrees"    # I
    .param p1, "forceHigherOrLower"    # I

    .line 305
    const/16 v0, 0x1e

    .line 306
    .local v0, "stepSize":I
    div-int/lit8 v1, p0, 0x1e

    mul-int/lit8 v1, v1, 0x1e

    .line 307
    .local v1, "floor":I
    add-int/lit8 v2, v1, 0x1e

    .line 308
    .local v2, "ceiling":I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 309
    move p0, v2

    goto :goto_0

    .line 310
    :cond_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    .line 311
    if-ne p0, v1, :cond_1

    .line 312
    add-int/lit8 v1, v1, -0x1e

    .line 314
    :cond_1
    move p0, v1

    goto :goto_0

    .line 316
    :cond_2
    sub-int v3, p0, v1

    sub-int v4, v2, p0

    if-ge v3, v4, :cond_3

    .line 317
    move p0, v1

    goto :goto_0

    .line 319
    :cond_3
    move p0, v2

    .line 322
    :goto_0
    return p0
.end method

.method private static snapPrefer30s(I)I
    .locals 1
    .param p0, "degrees"    # I

    .line 289
    sget-object v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    if-nez v0, :cond_0

    .line 290
    const/4 v0, -0x1

    return v0

    .line 292
    :cond_0
    aget v0, v0, p0

    return v0
.end method


# virtual methods
.method applyAttributes(Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 418
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 419
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->TimePicker:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 422
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_numbersTextColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 424
    .local v2, "numbersTextColor":Landroid/content/res/ColorStateList;
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_numbersInnerTextColor:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 426
    .local v3, "numbersInnerTextColor":Landroid/content/res/ColorStateList;
    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const v5, -0xff01

    if-nez v2, :cond_0

    .line 427
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    const/4 v7, 0x0

    aput-object v6, v4, v7

    .line 428
    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v6, 0x2

    if-nez v3, :cond_1

    .line 429
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    aput-object v5, v4, v6

    .line 430
    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v5, 0x1

    aget-object v6, v4, v7

    aput-object v6, v4, v5

    .line 433
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_android_numbersSelectorColor:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 436
    .local v4, "selectorColors":Landroid/content/res/ColorStateList;
    const/16 v5, 0x28

    if-eqz v4, :cond_2

    .line 437
    invoke-static {v5}, Lcom/oneplus/lib/widget/util/ViewUtils;->getViewState(I)[I

    move-result-object v6

    .line 439
    .local v6, "stateSetEnabledActivated":[I
    invoke-virtual {v4, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    .line 441
    .local v6, "selectorActivatedColor":I
    goto :goto_2

    .line 442
    .end local v6    # "selectorActivatedColor":I
    :cond_2
    const v6, -0xff01

    .line 445
    .restart local v6    # "selectorActivatedColor":I
    :goto_2
    iget-object v8, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 447
    invoke-static {v5}, Lcom/oneplus/lib/widget/util/ViewUtils;->getViewState(I)[I

    move-result-object v5

    .line 450
    .local v5, "stateSetActivated":[I
    iput v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorColor:I

    .line 451
    iget-object v8, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v8, v8, v7

    invoke-virtual {v8, v5, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    iput v7, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorDotColor:I

    .line 453
    iget-object v7, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    sget v8, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_android_numbersBackgroundColor:I

    .line 454
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/oneplus/commonctrl/R$color;->timepicker_default_numbers_background_color_material:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 453
    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 456
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 457
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1101
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTouchHelper:Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    const/4 v0, 0x1

    return v0

    .line 1104
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getAmOrPm()I
    .locals 1

    .line 625
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method public getCurrentItemShowing()I
    .locals 1

    .line 483
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCurrentMinute()I
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method public getHoursToMinutes()F
    .locals 1

    .line 743
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    return v0
.end method

.method public initialize(IIZ)V
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourMode"    # Z

    .line 460
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eq v0, p3, :cond_0

    .line 461
    iput-boolean p3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 462
    invoke-direct {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->initData()V

    .line 465
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 466
    invoke-direct {p0, p2, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 467
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 684
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInputEnabled:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mDisabledAlpha:F

    .line 686
    .local v0, "alphaMod":F
    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawCircleBackground(Landroid/graphics/Canvas;)V

    .line 688
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    .line 689
    .local v1, "selectorPath":Landroid/graphics/Path;
    invoke-direct {p0, p1, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .line 690
    invoke-direct {p0, p1, v1, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    .line 691
    invoke-direct {p0, p1, v1, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    .line 692
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawCenter(Landroid/graphics/Canvas;F)V

    .line 693
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 661
    if-nez p1, :cond_0

    .line 662
    return-void

    .line 665
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    .line 666
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    .line 667
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getPaddingRight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 668
    .local v0, "maxPaddingHorizontal":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getPaddingBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 669
    .local v2, "maxPaddingVertical":I
    iget v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    .line 672
    iget v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    aget v5, v4, v1

    sub-int v5, v3, v5

    iget v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    .line 673
    const/4 v5, 0x0

    aget v7, v4, v5

    sub-int v7, v3, v7

    add-int/2addr v7, v6

    iput v7, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    .line 674
    aget v5, v4, v5

    aget v4, v4, v1

    add-int/2addr v5, v4

    div-int/2addr v5, v1

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHalfwayDist:I

    .line 676
    invoke-direct {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->calculatePositionsHours()V

    .line 677
    invoke-direct {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->calculatePositionsMinutes()V

    .line 679
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTouchHelper:Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 680
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 1114
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    const/4 v0, 0x0

    return-object v0

    .line 1117
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v0

    .line 1118
    .local v0, "degrees":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1119
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 1120
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1

    .line 1123
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1004
    invoke-direct {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1005
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1007
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInputEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1008
    return v1

    .line 1011
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1012
    .local v0, "action":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_5

    .line 1015
    :cond_2
    const/4 v2, 0x0

    .line 1016
    .local v2, "forceSelection":Z
    const/4 v3, 0x0

    .line 1018
    .local v3, "autoAdvance":Z
    if-nez v0, :cond_3

    .line 1020
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    goto :goto_0

    .line 1021
    :cond_3
    if-ne v0, v1, :cond_4

    .line 1022
    const/4 v3, 0x1

    .line 1026
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    if-nez v4, :cond_4

    .line 1027
    const/4 v2, 0x1

    .line 1031
    :cond_4
    :goto_0
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 1032
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 1031
    invoke-direct {p0, v5, v6, v2, v3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->handleTouchInput(FFZZ)Z

    move-result v5

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 1035
    .end local v2    # "forceSelection":Z
    .end local v3    # "autoAdvance":Z
    :cond_5
    return v1
.end method

.method public setAmOrPm(I)Z
    .locals 1
    .param p1, "amOrPm"    # I

    .line 614
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mAmOrPm:I

    if-eq v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 618
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mAmOrPm:I

    .line 619
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->invalidate()V

    .line 620
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTouchHelper:Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 621
    const/4 v0, 0x1

    return v0

    .line 615
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCurrentHour(I)V
    .locals 2
    .param p1, "hour"    # I

    .line 496
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 497
    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "animate"    # Z

    .line 470
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClockView does not support showing item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadialTimePickerView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->showMinutes(Z)V

    .line 476
    goto :goto_0

    .line 472
    :cond_1
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->showHours(Z)V

    .line 473
    nop

    .line 480
    :goto_0
    return-void
.end method

.method public setCurrentMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .line 579
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 580
    return-void
.end method

.method public setHoursToMinutes(F)V
    .locals 0
    .param p1, "value"    # F

    .line 738
    iput p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 739
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->invalidate()V

    .line 740
    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0
    .param p1, "inputEnabled"    # Z

    .line 1108
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 1109
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->invalidate()V

    .line 1110
    return-void
.end method

.method public setOnValueSelectedListener(Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 487
    iput-object p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 488
    return-void
.end method

.method public showHours(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 629
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->showPicker(ZZ)V

    .line 630
    return-void
.end method

.method public showMinutes(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 633
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->showPicker(ZZ)V

    .line 634
    return-void
.end method
