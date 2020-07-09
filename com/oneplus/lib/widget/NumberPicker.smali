.class public Lcom/oneplus/lib/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Lcom/oneplus/lib/widget/NumberPicker$CustomEditText;,
        Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;,
        Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;,
        Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;,
        Lcom/oneplus/lib/widget/NumberPicker$Formatter;,
        Lcom/oneplus/lib/widget/NumberPicker$OnScrollListener;,
        Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;,
        Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;


# instance fields
.field private mAccessibilityNodeProvider:Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lcom/oneplus/lib/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private mHideWheelUntilFocused:Z

.field private mIgnoreMoveEvents:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lcom/oneplus/lib/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;

.field private mPaintColor:I

.field private mPerformClickOnTap:Z

.field private final mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectMiddleCount:I

.field private mSelectedValueColor:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private mSelectionDividerWidth:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

.field private final mSolidColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelPreferred:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    sget v0, Lcom/oneplus/commonctrl/R$layout;->op_number_picker:I

    sput v0, Lcom/oneplus/lib/widget/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    .line 196
    new-instance v0, Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/NumberPicker;->sTwoDigitFormatter:Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;

    .line 2088
    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/lib/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 574
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 575
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 584
    sget v0, Lcom/oneplus/commonctrl/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 585
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 597
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 155
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 298
    const-wide/16 v6, 0x12c

    iput-wide v6, v0, Lcom/oneplus/lib/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 303
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 308
    const/4 v6, 0x3

    new-array v6, v6, [I

    iput-object v6, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    .line 328
    const/high16 v6, -0x80000000

    iput v6, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    .line 437
    iput v4, v0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    .line 488
    const/4 v6, -0x1

    iput v6, v0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 499
    iput v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    .line 599
    sget-object v7, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker:[I

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 601
    .local v7, "attributesArray":Landroid/content/res/TypedArray;
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_internalLayout:I

    sget v9, Lcom/oneplus/lib/widget/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 604
    .local v8, "layoutResId":I
    sget v9, Lcom/oneplus/lib/widget/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    if-eq v8, v9, :cond_0

    move v9, v5

    goto :goto_0

    :cond_0
    move v9, v4

    :goto_0
    iput-boolean v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 606
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_hideWheelUntilFocused:I

    invoke-virtual {v7, v9, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mHideWheelUntilFocused:Z

    .line 609
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_opsolidColor:I

    invoke-virtual {v7, v9, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSolidColor:I

    .line 611
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_selectionDivider:I

    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 613
    .local v9, "selectionDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_2

    .line 614
    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 615
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-lt v10, v11, :cond_1

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getLayoutDirection()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 618
    :cond_1
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getDrawableState()[I

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 622
    :cond_2
    iput-object v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 624
    const/high16 v10, 0x40000000    # 2.0f

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 624
    invoke-static {v5, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    .line 627
    .local v10, "defSelectionDividerHeight":I
    sget v11, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_selectionDividerHeight:I

    invoke-virtual {v7, v11, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 630
    sget v11, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_selectionDividerWidth:I

    invoke-virtual {v7, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerWidth:I

    .line 633
    const/high16 v11, 0x42400000    # 48.0f

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 633
    invoke-static {v5, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    .line 636
    .local v11, "defSelectionDividerDistance":I
    sget v12, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_selectionDividersDistance:I

    invoke-virtual {v7, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 639
    sget v12, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_internalMinHeight:I

    invoke-virtual {v7, v12, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMinHeight:I

    .line 642
    sget v12, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_internalMaxHeight:I

    invoke-virtual {v7, v12, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxHeight:I

    .line 644
    iget v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMinHeight:I

    if-eq v12, v6, :cond_4

    iget v13, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxHeight:I

    if-eq v13, v6, :cond_4

    if-gt v12, v13, :cond_3

    goto :goto_1

    .line 646
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "minHeight > maxHeight"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 649
    :cond_4
    :goto_1
    sget v12, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_internalMinWidth:I

    invoke-virtual {v7, v12, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMinWidth:I

    .line 652
    sget v12, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_internalMaxWidth:I

    invoke-virtual {v7, v12, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    .line 654
    iget v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMinWidth:I

    if-eq v12, v6, :cond_6

    iget v13, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    if-eq v13, v6, :cond_6

    if-gt v12, v13, :cond_5

    goto :goto_2

    .line 656
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "minWidth > maxWidth"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 659
    :cond_6
    :goto_2
    iget v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    if-ne v12, v6, :cond_7

    move v6, v5

    goto :goto_3

    :cond_7
    move v6, v4

    :goto_3
    iput-boolean v6, v0, Lcom/oneplus/lib/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 661
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_virtualButtonPressedDrawable:I

    invoke-virtual {v7, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 663
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_selectionOtherNumberColor:I

    const/high16 v12, -0x1000000

    invoke-virtual {v7, v6, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 664
    .local v6, "paintColor":I
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 666
    new-instance v13, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    invoke-direct {v13, v0}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    iput-object v13, v0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    .line 673
    iget-boolean v13, v0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    xor-int/2addr v13, v5

    invoke-virtual {v0, v13}, Lcom/oneplus/lib/widget/NumberPicker;->setWillNotDraw(Z)V

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 677
    .local v13, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v13, v8, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 679
    new-instance v14, Lcom/oneplus/lib/widget/NumberPicker$1;

    invoke-direct {v14, v0}, Lcom/oneplus/lib/widget/NumberPicker$1;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    .line 691
    .local v14, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v15, Lcom/oneplus/lib/widget/NumberPicker$2;

    invoke-direct {v15, v0}, Lcom/oneplus/lib/widget/NumberPicker$2;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    .line 705
    .local v15, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    iget-boolean v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v4, 0x0

    if-nez v12, :cond_8

    .line 706
    sget v12, Lcom/oneplus/commonctrl/R$id;->increment:I

    invoke-virtual {v0, v12}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    iput-object v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 707
    iget-object v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    iget-object v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v15}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_4

    .line 710
    :cond_8
    iput-object v4, v0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 714
    :goto_4
    iget-boolean v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v12, :cond_9

    .line 715
    sget v12, Lcom/oneplus/commonctrl/R$id;->decrement:I

    invoke-virtual {v0, v12}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    iput-object v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 716
    iget-object v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    iget-object v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v15}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_5

    .line 719
    :cond_9
    iput-object v4, v0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 723
    :goto_5
    sget v12, Lcom/oneplus/commonctrl/R$id;->numberpicker_input:I

    invoke-virtual {v0, v12}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 724
    iget-object v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 725
    iget-object v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v4, Lcom/oneplus/lib/widget/NumberPicker$3;

    invoke-direct {v4, v0}, Lcom/oneplus/lib/widget/NumberPicker$3;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    invoke-virtual {v12, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 735
    iget-object v4, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-array v12, v5, [Landroid/text/InputFilter;

    new-instance v5, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;

    invoke-direct {v5, v0}, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    const/16 v17, 0x0

    aput-object v5, v12, v17

    invoke-virtual {v4, v12}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 739
    iget-object v4, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 740
    iget-object v4, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 743
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 744
    .local v4, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mTouchSlop:I

    .line 745
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 746
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    iput v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 748
    iget-object v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getTextSize()F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mTextSize:I

    .line 751
    iget-object v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    sget-object v12, Lcom/oneplus/lib/widget/NumberPicker;->ENABLED_STATE_SET:[I

    const/high16 v1, -0x1000000

    invoke-virtual {v5, v12, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectedValueColor:I

    .line 752
    iput v6, v0, Lcom/oneplus/lib/widget/NumberPicker;->mPaintColor:I

    .line 753
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 754
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 755
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 756
    iget v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mTextSize:I

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 757
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 758
    iput-object v1, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 761
    new-instance v5, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v16, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .end local v1    # "paint":Landroid/graphics/Paint;
    .local v16, "paint":Landroid/graphics/Paint;
    invoke-direct {v5, v12, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 762
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v12, 0x40200000    # 2.5f

    invoke-direct {v5, v12}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v1, v2, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 764
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 767
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_a

    .line 768
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setImportantForAccessibility(I)V

    .line 770
    :cond_a
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/NumberPicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 99
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 99
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 99
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$1100(Lcom/oneplus/lib/widget/NumberPicker;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/lib/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 99
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/oneplus/lib/widget/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # Z

    .line 99
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1280(Lcom/oneplus/lib/widget/NumberPicker;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # I

    .line 99
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 99
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/lib/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 99
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/oneplus/lib/widget/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # Z

    .line 99
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1480(Lcom/oneplus/lib/widget/NumberPicker;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # I

    .line 99
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 99
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$1600(Lcom/oneplus/lib/widget/NumberPicker;)J
    .locals 2
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 99
    iget-wide v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/oneplus/lib/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 99
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/oneplus/lib/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 99
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    return v0
.end method

.method static synthetic access$1900(Lcom/oneplus/lib/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 99
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # Z

    .line 99
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/lib/widget/NumberPicker;I)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # I

    .line 99
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/oneplus/lib/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 99
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method static synthetic access$2200(Lcom/oneplus/lib/widget/NumberPicker;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # I

    .line 99
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/NumberPicker;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/NumberPicker;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # Landroid/view/View;

    .line 99
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600()[C
    .locals 1

    .line 99
    sget-object v0, Lcom/oneplus/lib/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/NumberPicker;)Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 99
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSetSelectionCommand:Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 99
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/lib/widget/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private changeValueByOne(Z)V
    .locals 13
    .param p1, "increment"    # Z

    .line 1768
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1769
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1770
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1773
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1774
    if-eqz p1, :cond_1

    .line 1775
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v5, v0

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1777
    :cond_1
    iget-object v7, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1779
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    goto :goto_1

    .line 1781
    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1782
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 1784
    :cond_3
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1787
    :goto_1
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .line 1888
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 1889
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1888
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1891
    .end local v0    # "i":I
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 1892
    .local v0, "nextScrollSelectorIndex":I
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 1893
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    .line 1895
    :cond_1
    const/4 v1, 0x0

    aput v0, p1, v1

    .line 1896
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1897
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .line 1904
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1905
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1906
    .local v1, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1907
    return-void

    .line 1909
    :cond_0
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    if-lt p1, v2, :cond_3

    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_1

    goto :goto_0

    .line 1912
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1913
    sub-int v2, p1, v2

    .line 1914
    .local v2, "displayedValueIndex":I
    aget-object v1, v3, v2

    .line 1915
    .end local v2    # "displayedValueIndex":I
    goto :goto_1

    .line 1916
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1910
    :cond_3
    :goto_0
    const-string v1, ""

    .line 1919
    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1920
    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 2188
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    .line 2189
    .local v0, "deltaY":I
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2190
    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    .line 2191
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    .line 2192
    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    .line 2194
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2195
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    .line 2196
    const/4 v1, 0x1

    return v1

    .line 2198
    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10
    .param p1, "velocityY"    # I

    .line 1844
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1846
    if-lez p1, :cond_0

    .line 1847
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1849
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1852
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    .line 1853
    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .line 1923
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFormatter:Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/oneplus/lib/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # I

    .line 2834
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 2045
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2047
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2048
    :catch_0
    move-exception v0

    .line 2050
    goto :goto_1

    .line 2052
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2054
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2055
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2056
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    return v1

    .line 2052
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2065
    .end local v0    # "i":I
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 2066
    :catch_1
    move-exception v0

    .line 2071
    :goto_1
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public static final getTwoDigitFormatter()Lcom/oneplus/lib/widget/NumberPicker$Formatter;
    .locals 1

    .line 202
    sget-object v0, Lcom/oneplus/lib/widget/NumberPicker;->sTwoDigitFormatter:Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 3
    .param p1, "selectorIndex"    # I

    .line 1859
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 1860
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    sub-int v2, p1, v0

    sub-int/2addr v0, v1

    rem-int/2addr v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 1861
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    if-ge p1, v1, :cond_1

    .line 1862
    sub-int v2, v1, p1

    sub-int v1, v0, v1

    rem-int/2addr v2, v1

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1864
    :cond_1
    return p1
.end method

.method private hideSoftInput()V
    .locals 3

    .line 1292
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1293
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1294
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1295
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1296
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1297
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1300
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 2
    .param p1, "selectorIndices"    # [I

    .line 1872
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1873
    add-int/lit8 v1, v0, 0x1

    aget v1, p1, v1

    aput v1, p1, v0

    .line 1872
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1875
    .end local v0    # "i":I
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1876
    .local v0, "nextScrollSelectorIndex":I
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 1877
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    .line 1879
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 1880
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1881
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .line 1807
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1808
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setFadingEdgeLength(I)V

    .line 1809
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .line 1790
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1791
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    .line 1792
    .local v0, "selectorIndices":[I
    array-length v1, v0

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    .line 1793
    .local v1, "totalTextHeight":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v2, v2

    .line 1794
    .local v2, "totalTextGapHeight":F
    array-length v3, v0

    int-to-float v3, v3

    .line 1795
    .local v3, "textGapCount":F
    div-float v4, v2, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1796
    iget v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTextSize:I

    iget v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1799
    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBaseline()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 1800
    .local v4, "editTextTextPosition":I
    iget v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    iget v6, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    mul-int/2addr v5, v6

    sub-int v5, v4, v5

    iput v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1802
    iget v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1803
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 1804
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1720
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1721
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    .line 1722
    .local v0, "selectorIndices":[I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v1

    .line 1723
    .local v1, "current":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1724
    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    sub-int v3, v2, v3

    add-int/2addr v3, v1

    .line 1725
    .local v3, "selectorIndex":I
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1726
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1728
    :cond_0
    aput v3, v0, v2

    .line 1729
    aget v4, v0, v2

    invoke-direct {p0, v4}, Lcom/oneplus/lib/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1723
    .end local v3    # "selectorIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1731
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .line 1678
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1679
    return p1

    .line 1681
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1682
    .local v0, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1683
    .local v1, "mode":I
    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    .line 1685
    return p1

    .line 1691
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1689
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 1687
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 8
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .line 838
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 839
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 840
    .local v1, "amountToScroll":I
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int/2addr v2, v3

    .line 841
    .local v2, "futureScrollOffset":I
    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v3, v2

    .line 842
    .local v3, "overshootAdjustment":I
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 843
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v7, v6, 0x2

    if-le v5, v7, :cond_1

    .line 844
    if-lez v3, :cond_0

    .line 845
    sub-int/2addr v3, v6

    goto :goto_0

    .line 847
    :cond_0
    add-int/2addr v3, v6

    .line 850
    :cond_1
    :goto_0
    add-int/2addr v1, v3

    .line 851
    invoke-virtual {p0, v4, v1}, Lcom/oneplus/lib/widget/NumberPicker;->scrollBy(II)V

    .line 852
    return v0

    .line 854
    :cond_2
    return v4
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .line 1967
    invoke-static {}, Lcom/oneplus/lib/util/OPFeaturesUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1969
    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1972
    goto :goto_0

    .line 1970
    :catch_0
    move-exception v0

    .line 1971
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1974
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mOnValueChangeListener:Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_1

    .line 1975
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lcom/oneplus/lib/widget/NumberPicker;II)V

    .line 1977
    :cond_1
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .line 1831
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 1832
    return-void

    .line 1834
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    .line 1835
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mOnScrollListener:Lcom/oneplus/lib/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1836
    invoke-interface {v0, p0, p1}, Lcom/oneplus/lib/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Lcom/oneplus/lib/widget/NumberPicker;I)V

    .line 1838
    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 2
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .line 1815
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1816
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1817
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 1819
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 1821
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 1822
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 1825
    :cond_2
    :goto_0
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .line 2008
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 2009
    new-instance v0, Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    .line 2011
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2013
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2014
    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .line 1985
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1986
    new-instance v0, Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 1988
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1990
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$500(Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1991
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lcom/oneplus/lib/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1992
    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 2
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .line 2079
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSetSelectionCommand:Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2080
    new-instance v0, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSetSelectionCommand:Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    .line 2082
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSetSelectionCommand:Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->post(II)V

    .line 2083
    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 2029
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2030
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2032
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSetSelectionCommand:Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 2033
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->cancel()V

    .line 2035
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 2036
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2038
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2039
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .line 2020
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 2021
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2023
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .line 1998
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1999
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2001
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .line 1707
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1708
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1709
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/oneplus/lib/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result v1

    return v1

    .line 1711
    .end local v0    # "desiredWidth":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 1
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .line 1740
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 1741
    return-void

    .line 1744
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    .line 1745
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 1747
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1748
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1750
    :goto_0
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    .line 1751
    .local v0, "previous":I
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    .line 1752
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 1753
    if-eqz p2, :cond_2

    .line 1754
    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->notifyChange(II)V

    .line 1756
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1757
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    .line 1758
    return-void
.end method

.method private showSoftInput()V
    .locals 3

    .line 1277
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1278
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1279
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1280
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1281
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1283
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1284
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1286
    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 5

    .line 1306
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    .line 1307
    return-void

    .line 1309
    :cond_0
    const/4 v0, 0x0

    .line 1310
    .local v0, "maxTextWidth":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_4

    .line 1311
    const/4 v1, 0x0

    .line 1312
    .local v1, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    .line 1313
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/oneplus/lib/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1314
    .local v3, "digitWidth":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    .line 1315
    move v1, v3

    .line 1312
    .end local v3    # "digitWidth":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1318
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    .line 1319
    .local v2, "numberOfDigits":I
    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    .line 1320
    .local v3, "current":I
    :goto_1
    if-lez v3, :cond_3

    .line 1321
    add-int/lit8 v2, v2, 0x1

    .line 1322
    div-int/lit8 v3, v3, 0xa

    goto :goto_1

    .line 1324
    :cond_3
    int-to-float v4, v2

    mul-float/2addr v4, v1

    float-to-int v0, v4

    .line 1325
    .end local v1    # "maxDigitWidth":F
    .end local v2    # "numberOfDigits":I
    .end local v3    # "current":I
    goto :goto_3

    .line 1326
    :cond_4
    array-length v1, v1

    .line 1327
    .local v1, "valueCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_6

    .line 1328
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1329
    .local v3, "textWidth":F
    int-to-float v4, v0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    .line 1330
    float-to-int v0, v3

    .line 1327
    .end local v3    # "textWidth":F
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1334
    .end local v1    # "valueCount":I
    .end local v2    # "i":I
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1335
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    if-eq v1, v0, :cond_8

    .line 1336
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinWidth:I

    if-le v0, v1, :cond_7

    .line 1337
    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    goto :goto_4

    .line 1339
    :cond_7
    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    .line 1341
    :goto_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    .line 1343
    :cond_8
    return-void
.end method

.method private updateInputTextView()Z
    .locals 3

    .line 1952
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1953
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    nop

    .line 1954
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1955
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1956
    const/4 v1, 0x1

    return v1

    .line 1959
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private updateWrapSelectorWheel()V
    .locals 4

    .line 1387
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1388
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1389
    return-void
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1927
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1928
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1930
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0

    .line 1933
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v1

    .line 1934
    .local v1, "current":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1936
    .end local v1    # "current":I
    :goto_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1097
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1098
    .local v0, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1100
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1101
    return-void

    .line 1104
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1105
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1106
    .local v1, "currentScrollerY":I
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1107
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1109
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->scrollBy(II)V

    .line 1110
    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1111
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1112
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1114
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    .line 1116
    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 1174
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .line 1164
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .line 1169
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1047
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1048
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1050
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1051
    .local v0, "assm":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1052
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1054
    .local v1, "eventY":I
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v1, v2, :cond_1

    .line 1055
    const/4 v2, 0x3

    .local v2, "hoveredVirtualViewId":I
    goto :goto_0

    .line 1056
    .end local v2    # "hoveredVirtualViewId":I
    :cond_1
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v1, v2, :cond_2

    .line 1057
    const/4 v2, 0x1

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1059
    .end local v2    # "hoveredVirtualViewId":I
    :cond_2
    const/4 v2, 0x2

    .line 1061
    .restart local v2    # "hoveredVirtualViewId":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 1062
    .local v3, "action":I
    nop

    .line 1063
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1064
    .local v4, "provider":Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;
    const/4 v5, 0x7

    const/4 v6, -0x1

    const/16 v7, 0x100

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/16 v10, 0x80

    if-eq v3, v5, :cond_5

    const/16 v5, 0x9

    if-eq v3, v5, :cond_4

    const/16 v5, 0xa

    if-eq v3, v5, :cond_3

    goto :goto_1

    .line 1086
    :cond_3
    invoke-virtual {v4, v2, v7}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1088
    iput v6, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_1

    .line 1066
    :cond_4
    invoke-virtual {v4, v2, v10}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1068
    iput v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1069
    invoke-virtual {v4, v2, v9, v8}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 1071
    goto :goto_1

    .line 1073
    :cond_5
    iget v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v5, v2, :cond_6

    if-eq v5, v6, :cond_6

    .line 1075
    invoke-virtual {v4, v5, v7}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1078
    invoke-virtual {v4, v2, v10}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1080
    iput v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1081
    invoke-virtual {v4, v2, v9, v8}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 1092
    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "action":I
    .end local v4    # "provider":Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :cond_6
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 998
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 999
    .local v0, "keyCode":I
    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1002
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    .line 1003
    goto :goto_1

    .line 1006
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_2

    .line 1007
    goto :goto_1

    .line 1009
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    goto :goto_1

    .line 1023
    :cond_3
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_6

    .line 1024
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1025
    return v3

    .line 1011
    :cond_4
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_7

    if-ne v0, v2, :cond_5

    .line 1012
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_6

    :goto_0
    goto :goto_2

    .line 1030
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1013
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->requestFocus()Z

    .line 1014
    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1015
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    .line 1016
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1017
    if-ne v0, v2, :cond_8

    move v1, v3

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1019
    :cond_9
    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 986
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 987
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 990
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    .line 993
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1035
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1036
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1039
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    .line 1042
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 1556
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1558
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 1559
    .local v0, "selectionDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1560
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1561
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1563
    :cond_0
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1661
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1662
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAccessibilityNodeProvider:Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 1665
    new-instance v0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAccessibilityNodeProvider:Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1667
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAccessibilityNodeProvider:Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .line 1545
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValueForCurrentSelection()Ljava/lang/CharSequence;
    .locals 2

    .line 1535
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 1494
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 1457
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 1420
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .line 1179
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .line 1540
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 1411
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 1353
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1568
    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    .line 1570
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1571
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1573
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1550
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1551
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    .line 1552
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1578
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v2, :cond_0

    .line 1579
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1580
    return-void

    .line 1582
    :cond_0
    iget-boolean v2, v0, Lcom/oneplus/lib/widget/NumberPicker;->mHideWheelUntilFocused:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->hasFocus()Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1583
    .local v2, "showSelectorWheel":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 1584
    .local v4, "x":F
    iget v5, v0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v5, v5

    .line 1587
    .local v5, "y":F
    const/4 v6, 0x0

    if-eqz v2, :cond_3

    iget-object v7, v0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    iget v8, v0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    if-nez v8, :cond_3

    .line 1589
    iget-boolean v8, v0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    if-eqz v8, :cond_2

    .line 1590
    sget-object v8, Lcom/oneplus/lib/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1591
    iget-object v7, v0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v8

    iget v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    invoke-virtual {v7, v6, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1592
    iget-object v7, v0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1594
    :cond_2
    iget-boolean v7, v0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    if-eqz v7, :cond_3

    .line 1595
    iget-object v7, v0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v8, Lcom/oneplus/lib/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1596
    iget-object v7, v0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, v0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v9

    .line 1597
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v10

    .line 1596
    invoke-virtual {v7, v6, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1598
    iget-object v7, v0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1603
    :cond_3
    iget-object v7, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    .line 1604
    .local v7, "selectorIndices":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v9, v7

    if-ge v8, v9, :cond_8

    .line 1605
    aget v9, v7, v8

    .line 1606
    .local v9, "selectorIndex":I
    iget-object v10, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1612
    .local v10, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_4

    iget v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    if-ne v8, v11, :cond_5

    :cond_4
    iget v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    if-ne v8, v11, :cond_7

    iget-object v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 1613
    invoke-virtual {v11}, Landroid/widget/EditText;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_7

    .line 1614
    :cond_5
    iget v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    if-ne v8, v11, :cond_6

    .line 1615
    iget-object v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectedValueColor:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1616
    iget-object v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_2

    .line 1618
    :cond_6
    iget-object v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v12, v0, Lcom/oneplus/lib/widget/NumberPicker;->mPaintColor:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1619
    iget-object v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1621
    :goto_2
    iget-object v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v4, v5, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1623
    :cond_7
    iget v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v11, v11

    add-float/2addr v5, v11

    .line 1604
    .end local v9    # "selectorIndex":I
    .end local v10    # "scrollSelectorValue":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1627
    .end local v8    # "i":I
    :cond_8
    if-eqz v2, :cond_b

    iget-object v3, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_b

    .line 1629
    iget v3, v0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 1630
    .local v3, "topOfTopDivider":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    .line 1631
    .local v8, "halfWidth":I
    iget v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerWidth:I

    div-int/lit8 v10, v9, 0x2

    .line 1632
    .local v10, "halfDividerWidth":I
    sub-int v11, v8, v10

    .line 1633
    .local v11, "dividerLeft":I
    add-int v12, v8, v10

    .line 1637
    .local v12, "dividerRight":I
    iget v13, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerHeight:I

    add-int/2addr v13, v3

    .line 1638
    .local v13, "bottomOfTopDivider":I
    if-nez v9, :cond_9

    .line 1639
    iget-object v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v14

    invoke-virtual {v9, v6, v3, v14, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    .line 1641
    :cond_9
    iget-object v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v11, v3, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1644
    :goto_3
    iget-object v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1647
    iget v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 1648
    .local v9, "bottomOfBottomDivider":I
    iget v14, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int v14, v9, v14

    .line 1649
    .local v14, "topOfBottomDivider":I
    iget v15, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerWidth:I

    if-nez v15, :cond_a

    .line 1650
    iget-object v15, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move/from16 v16, v2

    .end local v2    # "showSelectorWheel":Z
    .local v16, "showSelectorWheel":Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v2

    invoke-virtual {v15, v6, v14, v2, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4

    .line 1652
    .end local v16    # "showSelectorWheel":Z
    .restart local v2    # "showSelectorWheel":Z
    :cond_a
    move/from16 v16, v2

    .end local v2    # "showSelectorWheel":Z
    .restart local v16    # "showSelectorWheel":Z
    iget-object v2, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v11, v14, v12, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1654
    :goto_4
    iget-object v2, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 1627
    .end local v3    # "topOfTopDivider":I
    .end local v8    # "halfWidth":I
    .end local v9    # "bottomOfBottomDivider":I
    .end local v10    # "halfDividerWidth":I
    .end local v11    # "dividerLeft":I
    .end local v12    # "dividerRight":I
    .end local v13    # "bottomOfTopDivider":I
    .end local v14    # "topOfBottomDivider":I
    .end local v16    # "showSelectorWheel":Z
    .restart local v2    # "showSelectorWheel":Z
    :cond_b
    move/from16 v16, v2

    .line 1656
    .end local v2    # "showSelectorWheel":Z
    .restart local v16    # "showSelectorWheel":Z
    :goto_5
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 859
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 862
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 863
    .local v0, "action":I
    if-eqz v0, :cond_1

    .line 907
    return v1

    .line 865
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    .line 866
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 867
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventY:F

    iput v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 868
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventTime:J

    .line 869
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 870
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 872
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    const/4 v4, 0x1

    if-gez v3, :cond_2

    .line 873
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    if-nez v2, :cond_3

    .line 874
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 877
    :cond_2
    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 878
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    if-nez v2, :cond_3

    .line 879
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 884
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 885
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 886
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 887
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 888
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    .line 889
    :cond_4
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 890
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 891
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 892
    :cond_5
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_6

    .line 893
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->hideSoftInput()V

    .line 894
    nop

    .line 895
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 894
    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 896
    :cond_6
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_7

    .line 897
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->hideSoftInput()V

    .line 898
    nop

    .line 899
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    .line 898
    invoke-direct {p0, v4, v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 901
    :cond_7
    iput-boolean v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 902
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    .line 904
    :goto_1
    return v4

    .line 860
    .end local v0    # "action":I
    :cond_8
    :goto_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 784
    move-object v0, p0

    iget-boolean v1, v0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_0

    .line 785
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 786
    return-void

    .line 788
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getMeasuredWidth()I

    move-result v1

    .line 789
    .local v1, "msrdWdth":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getMeasuredHeight()I

    move-result v2

    .line 792
    .local v2, "msrdHght":I
    iget-object v3, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    .line 793
    .local v3, "inptTxtMsrdWdth":I
    iget-object v4, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v4

    .line 794
    .local v4, "inptTxtMsrdHght":I
    sub-int v5, v1, v3

    div-int/lit8 v5, v5, 0x2

    .line 795
    .local v5, "inptTxtLeft":I
    sub-int v6, v2, v4

    div-int/lit8 v6, v6, 0x2

    .line 796
    .local v6, "inptTxtTop":I
    add-int v7, v5, v3

    .line 797
    .local v7, "inptTxtRight":I
    add-int v8, v6, v4

    .line 798
    .local v8, "inptTxtBottom":I
    iget-object v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9, v5, v6, v7, v8}, Landroid/widget/EditText;->layout(IIII)V

    .line 800
    if-eqz p1, :cond_1

    .line 802
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheel()V

    .line 803
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeFadingEdges()V

    .line 804
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getHeight()I

    move-result v9

    iget v10, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget v11, v0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v9, v11

    iput v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 806
    iget v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v9, v11

    add-int/2addr v9, v10

    iput v9, v0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 809
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 813
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 814
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 815
    return-void

    .line 818
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 819
    .local v0, "newWidthMeasureSpec":I
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lcom/oneplus/lib/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 820
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 822
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getMeasuredWidth()I

    move-result v3

    invoke-direct {p0, v2, v3, p1}, Lcom/oneplus/lib/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v2

    .line 824
    .local v2, "widthSize":I
    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lcom/oneplus/lib/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 826
    .local v3, "heightSize":I
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setMeasuredDimension(II)V

    .line 827
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 912
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 916
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 918
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 919
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 920
    .local v0, "action":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_2

    goto/16 :goto_4

    .line 922
    :cond_2
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIgnoreMoveEvents:Z

    if-eqz v2, :cond_3

    .line 923
    goto/16 :goto_4

    .line 925
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 926
    .local v2, "currentMoveY":F
    iget v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    if-eq v4, v3, :cond_5

    .line 927
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventY:F

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 928
    .local v1, "deltaDownY":I
    iget v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTouchSlop:I

    if-le v1, v4, :cond_4

    .line 929
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    .line 930
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->onScrollStateChange(I)V

    .line 932
    .end local v1    # "deltaDownY":I
    :cond_4
    goto :goto_0

    .line 933
    :cond_5
    iget v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v4, v2, v4

    float-to-int v4, v4

    .line 934
    .local v4, "deltaMoveY":I
    invoke-virtual {p0, v1, v4}, Lcom/oneplus/lib/widget/NumberPicker;->scrollBy(II)V

    .line 935
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    .line 937
    .end local v4    # "deltaMoveY":I
    :goto_0
    iput v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 939
    .end local v2    # "currentMoveY":F
    goto/16 :goto_4

    .line 941
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 942
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 943
    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 944
    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 945
    .local v4, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v5, 0x3e8

    iget v6, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 946
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    float-to-int v5, v5

    .line 947
    .local v5, "initialVelocity":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v6, v7, :cond_7

    .line 948
    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/NumberPicker;->fling(I)V

    .line 949
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_3

    .line 951
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    .line 952
    .local v6, "eventY":I
    int-to-float v7, v6

    iget v8, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v7, v7

    .line 953
    .local v7, "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventTime:J

    sub-long/2addr v8, v10

    .line 954
    .local v8, "deltaTime":J
    iget v10, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTouchSlop:I

    if-gt v7, v10, :cond_b

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_b

    .line 955
    iget-boolean v10, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPerformClickOnTap:Z

    if-eqz v10, :cond_8

    .line 956
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 957
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->performClick()Z

    goto :goto_2

    .line 959
    :cond_8
    iget v10, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    div-int v10, v6, v10

    iget v11, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    sub-int/2addr v10, v11

    .line 961
    .local v10, "selectorIndexOffset":I
    if-lez v10, :cond_9

    .line 962
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->changeValueByOne(Z)V

    .line 963
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    .line 965
    :cond_9
    if-gez v10, :cond_a

    .line 966
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->changeValueByOne(Z)V

    .line 967
    iget-object v11, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v11, v2}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    .line 970
    .end local v10    # "selectorIndexOffset":I
    :cond_a
    :goto_1
    goto :goto_2

    .line 972
    :cond_b
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 974
    :goto_2
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->onScrollStateChange(I)V

    .line 976
    .end local v6    # "eventY":I
    .end local v7    # "deltaMoveY":I
    .end local v8    # "deltaTime":J
    :goto_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 977
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 981
    .end local v4    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v5    # "initialVelocity":I
    :goto_4
    return v3

    .line 913
    .end local v0    # "action":I
    :cond_c
    :goto_5
    return v1
.end method

.method public performClick()Z
    .locals 1

    .line 1254
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1255
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0

    .line 1256
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1257
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->showSoftInput()V

    .line 1259
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public performLongClick()Z
    .locals 2

    .line 1264
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1265
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    return v0

    .line 1266
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1267
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->showSoftInput()V

    .line 1268
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 1270
    :cond_1
    return v1
.end method

.method public scrollBy(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1132
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    .line 1133
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    aget v1, v0, v1

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_0

    .line 1135
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1136
    return-void

    .line 1138
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-gez p2, :cond_1

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    aget v1, v0, v1

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_1

    .line 1140
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1141
    return-void

    .line 1143
    :cond_1
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1144
    :cond_2
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v2, v1, v2

    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorTextGapHeight:I

    const/4 v4, 0x1

    if-le v2, v3, :cond_3

    .line 1145
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1146
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1147
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    aget v1, v0, v1

    invoke-direct {p0, v1, v4}, Lcom/oneplus/lib/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1148
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    aget v1, v0, v1

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_2

    .line 1149
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1152
    :cond_3
    :goto_1
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v2, v1, v2

    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v3, v3

    if-ge v2, v3, :cond_4

    .line 1153
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1154
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1155
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    aget v1, v0, v1

    invoke-direct {p0, v1, v4}, Lcom/oneplus/lib/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1156
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    aget v1, v0, v1

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 1157
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1160
    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .line 1507
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1508
    return-void

    .line 1510
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1511
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1513
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    .line 1516
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1518
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 1519
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1520
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1521
    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0
    .param p1, "dividerWidth"    # I

    .line 778
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerWidth:I

    .line 779
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    .line 780
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1120
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1121
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1124
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1125
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1127
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1128
    return-void
.end method

.method public setFormatter(Lcom/oneplus/lib/widget/NumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    .line 1212
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFormatter:Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1213
    return-void

    .line 1215
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFormatter:Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    .line 1216
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1217
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 1218
    return-void
.end method

.method public setMaxValue(I)V
    .locals 2
    .param p1, "maxValue"    # I

    .line 1471
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    .line 1472
    return-void

    .line 1474
    :cond_0
    if-ltz p1, :cond_2

    .line 1477
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    .line 1478
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    if-ge v0, v1, :cond_1

    .line 1479
    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    .line 1481
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1482
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1483
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 1484
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1485
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    .line 1486
    return-void

    .line 1475
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinValue(I)V
    .locals 2
    .param p1, "minValue"    # I

    .line 1434
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    .line 1435
    return-void

    .line 1437
    :cond_0
    if-ltz p1, :cond_2

    .line 1440
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    .line 1441
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    if-le v0, v1, :cond_1

    .line 1442
    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    .line 1444
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1445
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1446
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 1447
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1448
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate()V

    .line 1449
    return-void

    .line 1438
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .param p1, "intervalMillis"    # J

    .line 1402
    iput-wide p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 1403
    return-void
.end method

.method public setOnScrollListener(Lcom/oneplus/lib/widget/NumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lcom/oneplus/lib/widget/NumberPicker$OnScrollListener;

    .line 1197
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mOnScrollListener:Lcom/oneplus/lib/widget/NumberPicker$OnScrollListener;

    .line 1198
    return-void
.end method

.method public setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;

    .line 1188
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mOnValueChangeListener:Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;

    .line 1189
    return-void
.end method

.method public setSelectNumberCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 775
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1249
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1250
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0
    .param p1, "wrapSelectorWheel"    # Z

    .line 1374
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 1375
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1377
    return-void
.end method
