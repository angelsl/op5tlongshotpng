.class public Lcom/oneplus/support/viewpager/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/viewpager/widget/ViewPager$ViewPositionComparator;,
        Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;,
        Lcom/oneplus/support/viewpager/widget/ViewPager$PagerObserver;,
        Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;,
        Lcom/oneplus/support/viewpager/widget/ViewPager$SavedState;,
        Lcom/oneplus/support/viewpager/widget/ViewPager$DecorView;,
        Lcom/oneplus/support/viewpager/widget/ViewPager$OnAdapterChangeListener;,
        Lcom/oneplus/support/viewpager/widget/ViewPager$PageTransformer;,
        Lcom/oneplus/support/viewpager/widget/ViewPager$SimpleOnPageChangeListener;,
        Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;,
        Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z = false

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/oneplus/support/viewpager/widget/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

.field private mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/support/viewpager/widget/ViewPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Lcom/oneplus/support/viewpager/widget/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Lcom/oneplus/support/viewpager/widget/ViewPager$PageTransformer;

.field private mPageTransformerLayerType:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->LAYOUT_ATTRS:[I

    .line 140
    new-instance v0, Lcom/oneplus/support/viewpager/widget/ViewPager$1;

    invoke-direct {v0}, Lcom/oneplus/support/viewpager/widget/ViewPager$1;-><init>()V

    sput-object v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 147
    new-instance v0, Lcom/oneplus/support/viewpager/widget/ViewPager$2;

    invoke-direct {v0}, Lcom/oneplus/support/viewpager/widget/ViewPager$2;-><init>()V

    sput-object v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 251
    new-instance v0, Lcom/oneplus/support/viewpager/widget/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/oneplus/support/viewpager/widget/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->sPositionComparator:Lcom/oneplus/support/viewpager/widget/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 391
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 392
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 395
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 396
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 399
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 400
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 403
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mTempItem:Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRestoredCurItem:I

    .line 163
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 164
    iput-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 179
    const v1, -0x800001

    iput v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFirstOffset:F

    .line 180
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastOffset:F

    .line 189
    const/4 v1, 0x1

    iput v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 207
    iput v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 234
    iput-boolean v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 269
    new-instance v1, Lcom/oneplus/support/viewpager/widget/ViewPager$3;

    invoke-direct {v1, p0}, Lcom/oneplus/support/viewpager/widget/ViewPager$3;-><init>(Lcom/oneplus/support/viewpager/widget/ViewPager;)V

    iput-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 277
    iput v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScrollState:I

    .line 404
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->initViewPager()V

    .line 405
    return-void
.end method

.method private calculatePageOffsets(Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;ILcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;)V
    .locals 11
    .param p1, "curItem"    # Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 1306
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 1307
    .local v0, "N":I
    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v1

    .line 1308
    .local v1, "width":I
    if-lez v1, :cond_0

    iget v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1310
    .local v2, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_6

    .line 1311
    iget v3, p3, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 1313
    .local v3, "oldCurPosition":I
    iget v4, p1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_3

    .line 1314
    const/4 v4, 0x0

    .line 1315
    .local v4, "itemIndex":I
    const/4 v5, 0x0

    .line 1316
    .local v5, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iget v6, p3, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v7, p3, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    .line 1317
    .local v6, "offset":F
    add-int/lit8 v7, v3, 0x1

    .line 1318
    .local v7, "pos":I
    :goto_1
    iget v8, p1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-gt v7, v8, :cond_6

    iget-object v8, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_6

    .line 1319
    iget-object v8, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 1320
    :goto_2
    iget v8, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v7, v8, :cond_1

    iget-object v8, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_1

    .line 1321
    add-int/lit8 v4, v4, 0x1

    .line 1322
    iget-object v8, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_2

    .line 1324
    :cond_1
    :goto_3
    iget v8, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v7, v8, :cond_2

    .line 1327
    iget-object v8, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v8, v7}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    add-float/2addr v6, v8

    .line 1328
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1330
    :cond_2
    iput v6, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 1331
    iget v8, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    add-float/2addr v6, v8

    .line 1318
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1333
    .end local v4    # "itemIndex":I
    .end local v5    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .end local v6    # "offset":F
    .end local v7    # "pos":I
    :cond_3
    iget v4, p1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v3, v4, :cond_6

    .line 1334
    iget-object v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1335
    .restart local v4    # "itemIndex":I
    const/4 v5, 0x0

    .line 1336
    .restart local v5    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iget v6, p3, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 1337
    .restart local v6    # "offset":F
    add-int/lit8 v7, v3, -0x1

    .line 1338
    .restart local v7    # "pos":I
    :goto_4
    iget v8, p1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-lt v7, v8, :cond_6

    if-ltz v4, :cond_6

    .line 1339
    iget-object v8, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 1340
    :goto_5
    iget v8, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v7, v8, :cond_4

    if-lez v4, :cond_4

    .line 1341
    add-int/lit8 v4, v4, -0x1

    .line 1342
    iget-object v8, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_5

    .line 1344
    :cond_4
    :goto_6
    iget v8, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v7, v8, :cond_5

    .line 1347
    iget-object v8, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v8, v7}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    sub-float/2addr v6, v8

    .line 1348
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 1350
    :cond_5
    iget v8, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    sub-float/2addr v6, v8

    .line 1351
    iput v6, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 1338
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 1357
    .end local v3    # "oldCurPosition":I
    .end local v4    # "itemIndex":I
    .end local v5    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .end local v6    # "offset":F
    .end local v7    # "pos":I
    :cond_6
    iget-object v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1358
    .local v3, "itemCount":I
    iget v4, p1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 1359
    .local v4, "offset":F
    iget v5, p1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v5, v5, -0x1

    .line 1360
    .local v5, "pos":I
    iget v6, p1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-nez v6, :cond_7

    iget v6, p1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    goto :goto_7

    :cond_7
    const v6, -0x800001

    :goto_7
    iput v6, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFirstOffset:F

    .line 1361
    iget v6, p1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v7, v0, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v6, v7, :cond_8

    .line 1362
    iget v6, p1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    sub-float/2addr v6, v8

    goto :goto_8

    :cond_8
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v6, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastOffset:F

    .line 1364
    add-int/lit8 v6, p2, -0x1

    .local v6, "i":I
    :goto_9
    if-ltz v6, :cond_b

    .line 1365
    iget-object v7, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 1366
    .local v7, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :goto_a
    iget v9, v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v5, v9, :cond_9

    .line 1367
    iget-object v9, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    add-int/lit8 v10, v5, -0x1

    .end local v5    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v9, v5}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr v4, v5

    move v5, v10

    goto :goto_a

    .line 1369
    .end local v10    # "pos":I
    .restart local v5    # "pos":I
    :cond_9
    iget v9, v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    sub-float/2addr v4, v9

    .line 1370
    iput v4, v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 1371
    iget v9, v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-nez v9, :cond_a

    iput v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFirstOffset:F

    .line 1364
    .end local v7    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :cond_a
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    .line 1373
    .end local v6    # "i":I
    :cond_b
    iget v6, p1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    .line 1374
    .end local v4    # "offset":F
    .local v6, "offset":F
    iget v4, p1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, 0x1

    .line 1376
    .end local v5    # "pos":I
    .local v4, "pos":I
    add-int/lit8 v5, p2, 0x1

    .local v5, "i":I
    :goto_b
    if-ge v5, v3, :cond_e

    .line 1377
    iget-object v7, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 1378
    .restart local v7    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :goto_c
    iget v9, v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v4, v9, :cond_c

    .line 1379
    iget-object v9, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v9, v4}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v4

    add-float/2addr v4, v2

    add-float/2addr v6, v4

    move v4, v10

    goto :goto_c

    .line 1381
    .end local v10    # "pos":I
    .restart local v4    # "pos":I
    :cond_c
    iget v9, v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v10, v0, -0x1

    if-ne v9, v10, :cond_d

    .line 1382
    iget v9, v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v6

    sub-float/2addr v9, v8

    iput v9, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastOffset:F

    .line 1384
    :cond_d
    iput v6, v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 1385
    iget v9, v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    add-float/2addr v6, v9

    .line 1376
    .end local v7    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1388
    .end local v5    # "i":I
    :cond_e
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 1389
    return-void
.end method

.method private completeScroll(Z)V
    .locals 7
    .param p1, "postEvents"    # Z

    .line 1982
    iget v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScrollState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1983
    .local v0, "needPopulate":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1985
    invoke-direct {p0, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1986
    iget-object v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    xor-int/2addr v1, v3

    .line 1987
    .local v1, "wasScrolling":Z
    if-eqz v1, :cond_2

    .line 1988
    iget-object v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1989
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollX()I

    move-result v3

    .line 1990
    .local v3, "oldX":I
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollY()I

    move-result v4

    .line 1991
    .local v4, "oldY":I
    iget-object v5, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1992
    .local v5, "x":I
    iget-object v6, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1993
    .local v6, "y":I
    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    .line 1994
    :cond_1
    invoke-virtual {p0, v5, v6}, Lcom/oneplus/support/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 1995
    if-eq v5, v3, :cond_2

    .line 1996
    invoke-direct {p0, v5}, Lcom/oneplus/support/viewpager/widget/ViewPager;->pageScrolled(I)Z

    .line 2001
    .end local v1    # "wasScrolling":Z
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_2
    iput-boolean v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 2002
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 2003
    iget-object v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 2004
    .local v3, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iget-boolean v4, v3, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v4, :cond_3

    .line 2005
    const/4 v0, 0x1

    .line 2006
    iput-boolean v2, v3, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 2002
    .end local v3    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2009
    .end local v1    # "i":I
    :cond_4
    if-eqz v0, :cond_6

    .line 2010
    if-eqz p1, :cond_5

    .line 2011
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Lcom/oneplus/support/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2013
    :cond_5
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2016
    :cond_6
    :goto_2
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 5
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .line 2419
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFlingDistance:I

    if-le v0, v1, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mMinimumVelocity:I

    if-le v0, v1, :cond_1

    .line 2420
    if-lez p3, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .local v0, "targetPage":I
    :goto_0
    goto :goto_2

    .line 2422
    .end local v0    # "targetPage":I
    :cond_1
    iget v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    if-lt p1, v0, :cond_2

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_2
    const v0, 0x3f19999a    # 0.6f

    .line 2423
    .local v0, "truncator":F
    :goto_1
    add-float v1, p2, v0

    float-to-int v1, v1

    add-int v0, p1, v1

    .line 2426
    .local v0, "targetPage":I
    :goto_2
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2427
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 2428
    .local v1, "firstItem":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iget-object v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 2431
    .local v2, "lastItem":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iget v3, v1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v4, v2, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2434
    .end local v1    # "firstItem":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .end local v2    # "lastItem":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :cond_3
    return v0
.end method

.method private dispatchOnPageScrolled(IFI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .line 1931
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOnPageChangeListener:Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1932
    invoke-interface {v0, p1, p2, p3}, Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1934
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1935
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "z":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1936
    iget-object v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 1937
    .local v2, "listener":Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;
    if-eqz v2, :cond_1

    .line 1938
    invoke-interface {v2, p1, p2, p3}, Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1935
    .end local v2    # "listener":Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1942
    .end local v0    # "z":I
    .end local v1    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInternalPageChangeListener:Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 1943
    invoke-interface {v0, p1, p2, p3}, Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1945
    :cond_3
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .line 1948
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOnPageChangeListener:Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1949
    invoke-interface {v0, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1951
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1952
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "z":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1953
    iget-object v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 1954
    .local v2, "listener":Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;
    if-eqz v2, :cond_1

    .line 1955
    invoke-interface {v2, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1952
    .end local v2    # "listener":Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1959
    .end local v0    # "z":I
    .end local v1    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInternalPageChangeListener:Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 1960
    invoke-interface {v0, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1962
    :cond_3
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 1965
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOnPageChangeListener:Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1966
    invoke-interface {v0, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1968
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1969
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "z":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1970
    iget-object v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 1971
    .local v2, "listener":Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;
    if-eqz v2, :cond_1

    .line 1972
    invoke-interface {v2, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1969
    .end local v2    # "listener":Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1976
    .end local v0    # "z":I
    .end local v1    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInternalPageChangeListener:Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 1977
    invoke-interface {v0, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1979
    :cond_3
    return-void
.end method

.method private enableLayers(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .line 2023
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 2024
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2025
    if-eqz p1, :cond_0

    .line 2026
    iget v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageTransformerLayerType:I

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 2027
    .local v2, "layerType":I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2024
    .end local v2    # "layerType":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2029
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    .line 2672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 2673
    iput-boolean v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    .line 2675
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2676
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2677
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2679
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .line 2872
    if-nez p1, :cond_0

    .line 2873
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object p1, v0

    .line 2875
    :cond_0
    if-nez p2, :cond_1

    .line 2876
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2877
    return-object p1

    .line 2879
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2880
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2881
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2882
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2884
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2885
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    if-eq v0, p0, :cond_2

    .line 2886
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2887
    .local v1, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2888
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2889
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2890
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2892
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2893
    .end local v1    # "group":Landroid/view/ViewGroup;
    goto :goto_0

    .line 2894
    :cond_2
    return-object p1
.end method

.method private getClientWidth()I
    .locals 2

    .line 608
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .locals 14

    .line 2376
    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v0

    .line 2377
    .local v0, "width":I
    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2378
    .local v2, "scrollOffset":F
    :goto_0
    if-lez v0, :cond_1

    iget v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v1, v1

    int-to-float v3, v0

    div-float/2addr v1, v3

    .line 2379
    .local v1, "marginOffset":F
    :cond_1
    const/4 v3, -0x1

    .line 2380
    .local v3, "lastPos":I
    const/4 v4, 0x0

    .line 2381
    .local v4, "lastOffset":F
    const/4 v5, 0x0

    .line 2382
    .local v5, "lastWidth":F
    const/4 v6, 0x1

    .line 2384
    .local v6, "first":Z
    const/4 v7, 0x0

    .line 2385
    .local v7, "lastItem":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v9, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 2386
    iget-object v9, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 2388
    .local v9, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    if-nez v6, :cond_2

    iget v10, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v11, v3, 0x1

    if-eq v10, v11, :cond_2

    .line 2390
    iget-object v9, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mTempItem:Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 2391
    add-float v10, v4, v5

    add-float/2addr v10, v1

    iput v10, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 2392
    add-int/lit8 v10, v3, 0x1

    iput v10, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 2393
    iget-object v10, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    iget v11, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    invoke-virtual {v10, v11}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v10

    iput v10, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2394
    add-int/lit8 v8, v8, -0x1

    .line 2396
    :cond_2
    iget v10, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 2398
    .local v10, "offset":F
    move v11, v10

    .line 2399
    .local v11, "leftBound":F
    iget v12, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v10

    add-float/2addr v12, v1

    .line 2400
    .local v12, "rightBound":F
    if-nez v6, :cond_4

    cmpl-float v13, v2, v11

    if-ltz v13, :cond_3

    goto :goto_2

    .line 2405
    :cond_3
    return-object v7

    .line 2401
    :cond_4
    :goto_2
    cmpg-float v13, v2, v12

    if-ltz v13, :cond_6

    iget-object v13, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v8, v13, :cond_5

    goto :goto_3

    .line 2407
    :cond_5
    const/4 v6, 0x0

    .line 2408
    iget v3, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 2409
    move v4, v10

    .line 2410
    iget v5, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2411
    move-object v7, v9

    .line 2385
    .end local v9    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .end local v10    # "offset":F
    .end local v11    # "leftBound":F
    .end local v12    # "rightBound":F
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2402
    .restart local v9    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .restart local v10    # "offset":F
    .restart local v11    # "leftBound":F
    .restart local v12    # "rightBound":F
    :cond_6
    :goto_3
    return-object v9

    .line 2414
    .end local v8    # "i":I
    .end local v9    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .end local v10    # "offset":F
    .end local v11    # "leftBound":F
    .end local v12    # "rightBound":F
    :cond_7
    return-object v7
.end method

.method private static isDecorView(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1506
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1507
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/oneplus/support/viewpager/widget/ViewPager$DecorView;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isGutterDrag(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .line 2019
    iget v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v1

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2658
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2659
    .local v1, "pointerId":I
    iget v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 2662
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2663
    .local v2, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2664
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 2665
    iget-object v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    .line 2666
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2669
    .end local v2    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private pageScrolled(I)Z
    .locals 9
    .param p1, "xpos"    # I

    .line 1826
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1827
    iget-boolean v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_0

    .line 1830
    return v2

    .line 1832
    :cond_0
    iput-boolean v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCalledSuper:Z

    .line 1833
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1834
    iget-boolean v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCalledSuper:Z

    if-eqz v0, :cond_1

    .line 1838
    return v2

    .line 1835
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1840
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->infoForCurrentScrollPosition()Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 1841
    .local v0, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v3

    .line 1842
    .local v3, "width":I
    iget v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageMargin:I

    add-int v5, v3, v4

    .line 1843
    .local v5, "widthWithMargin":I
    int-to-float v4, v4

    int-to-float v6, v3

    div-float/2addr v4, v6

    .line 1844
    .local v4, "marginOffset":F
    iget v6, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 1845
    .local v6, "currentPage":I
    int-to-float v7, p1

    int-to-float v8, v3

    div-float/2addr v7, v8

    iget v8, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v7, v8

    iget v8, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v4

    div-float/2addr v7, v8

    .line 1847
    .local v7, "pageOffset":F
    int-to-float v8, v5

    mul-float/2addr v8, v7

    float-to-int v8, v8

    .line 1849
    .local v8, "offsetPixels":I
    iput-boolean v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCalledSuper:Z

    .line 1850
    invoke-virtual {p0, v6, v7, v8}, Lcom/oneplus/support/viewpager/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1851
    iget-boolean v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCalledSuper:Z

    if-eqz v2, :cond_3

    .line 1855
    const/4 v1, 0x1

    return v1

    .line 1852
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private performDrag(F)Z
    .locals 16
    .param p1, "x"    # F

    .line 2323
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 2325
    .local v2, "needsInvalidate":Z
    iget v3, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    sub-float/2addr v3, v1

    .line 2326
    .local v3, "deltaX":F
    iput v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2328
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    .line 2329
    .local v4, "oldScrollX":F
    add-float v5, v4, v3

    .line 2330
    .local v5, "scrollX":F
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v6

    .line 2332
    .local v6, "width":I
    int-to-float v7, v6

    iget v8, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr v7, v8

    .line 2333
    .local v7, "leftBound":F
    int-to-float v8, v6

    iget v9, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastOffset:F

    mul-float/2addr v8, v9

    .line 2334
    .local v8, "rightBound":F
    const/4 v9, 0x1

    .line 2335
    .local v9, "leftAbsolute":Z
    const/4 v10, 0x1

    .line 2337
    .local v10, "rightAbsolute":Z
    iget-object v11, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 2338
    .local v11, "firstItem":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iget-object v12, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 2339
    .local v12, "lastItem":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iget v13, v11, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-eqz v13, :cond_0

    .line 2340
    const/4 v9, 0x0

    .line 2341
    iget v13, v11, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v14, v6

    mul-float v7, v13, v14

    .line 2343
    :cond_0
    iget v13, v12, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget-object v14, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v14}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-eq v13, v14, :cond_1

    .line 2344
    const/4 v10, 0x0

    .line 2345
    iget v13, v12, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v14, v6

    mul-float v8, v13, v14

    .line 2348
    :cond_1
    cmpg-float v13, v5, v7

    if-gez v13, :cond_3

    .line 2349
    if-eqz v9, :cond_2

    .line 2350
    sub-float v13, v7, v5

    .line 2351
    .local v13, "over":F
    iget-object v14, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v1, v6

    div-float/2addr v15, v1

    invoke-virtual {v14, v15}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2352
    const/4 v2, 0x1

    .line 2354
    .end local v13    # "over":F
    :cond_2
    move v5, v7

    goto :goto_0

    .line 2355
    :cond_3
    cmpl-float v1, v5, v8

    if-lez v1, :cond_5

    .line 2356
    if-eqz v10, :cond_4

    .line 2357
    sub-float v1, v5, v8

    .line 2358
    .local v1, "over":F
    iget-object v13, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v14

    int-to-float v15, v6

    div-float/2addr v14, v15

    invoke-virtual {v13, v14}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2359
    const/4 v2, 0x1

    .line 2361
    .end local v1    # "over":F
    :cond_4
    move v5, v8

    .line 2364
    :cond_5
    :goto_0
    iget v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    float-to-int v13, v5

    int-to-float v13, v13

    sub-float v13, v5, v13

    add-float/2addr v1, v13

    iput v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2365
    float-to-int v1, v5

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollY()I

    move-result v13

    invoke-virtual {v0, v1, v13}, Lcom/oneplus/support/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 2366
    float-to-int v1, v5

    invoke-direct {v0, v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->pageScrolled(I)Z

    .line 2368
    return v2
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .line 1663
    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1664
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_1

    .line 1667
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 1668
    .local v0, "widthWithMargin":I
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p4

    .line 1670
    .local v1, "oldWidthWithMargin":I
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollX()I

    move-result v2

    .line 1671
    .local v2, "xpos":I
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 1672
    .local v3, "pageOffset":F
    int-to-float v4, v0

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 1674
    .local v4, "newOffsetPixels":I
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/support/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 1675
    .end local v0    # "widthWithMargin":I
    .end local v1    # "oldWidthWithMargin":I
    .end local v2    # "xpos":I
    .end local v3    # "pageOffset":F
    .end local v4    # "newOffsetPixels":I
    goto :goto_1

    .line 1677
    :cond_1
    iget v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->infoForPosition(I)Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 1678
    .local v0, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastOffset:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1679
    .local v1, "scrollOffset":F
    :goto_0
    nop

    .line 1680
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 1681
    .local v2, "scrollPos":I
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollX()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 1682
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 1683
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 1686
    .end local v0    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .end local v1    # "scrollOffset":F
    .end local v2    # "scrollPos":I
    :cond_3
    :goto_1
    return-void
.end method

.method private removeNonDecorViews()V
    .locals 4

    .line 563
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 564
    invoke-virtual {p0, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 565
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;

    .line 566
    .local v2, "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    iget-boolean v3, v2, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 567
    invoke-virtual {p0, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->removeViewAt(I)V

    .line 568
    add-int/lit8 v0, v0, -0x1

    .line 563
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .line 2316
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2317
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2318
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2320
    :cond_0
    return-void
.end method

.method private resetTouch()Z
    .locals 1

    .line 2307
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 2308
    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->endDrag()V

    .line 2309
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2310
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2311
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2312
    .local v0, "needsInvalidate":Z
    :goto_1
    return v0
.end method

.method private scrollToItem(IZIZ)V
    .locals 7
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .line 684
    invoke-virtual {p0, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->infoForPosition(I)Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 685
    .local v0, "curInfo":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    const/4 v1, 0x0

    .line 686
    .local v1, "destX":I
    if-eqz v0, :cond_0

    .line 687
    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v2

    .line 688
    .local v2, "width":I
    int-to-float v3, v2

    iget v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFirstOffset:F

    iget v5, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v6, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastOffset:F

    .line 689
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 688
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 691
    .end local v2    # "width":I
    :cond_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 692
    invoke-virtual {p0, v1, v2, p3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->smoothScrollTo(III)V

    .line 693
    if-eqz p4, :cond_3

    .line 694
    invoke-direct {p0, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->dispatchOnPageSelected(I)V

    goto :goto_0

    .line 697
    :cond_1
    if-eqz p4, :cond_2

    .line 698
    invoke-direct {p0, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->dispatchOnPageSelected(I)V

    .line 700
    :cond_2
    invoke-direct {p0, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 701
    invoke-virtual {p0, v1, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 702
    invoke-direct {p0, v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->pageScrolled(I)Z

    .line 704
    :cond_3
    :goto_0
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2682
    iget-boolean v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2683
    iput-boolean p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScrollingCacheEnabled:Z

    .line 2694
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 4

    .line 1290
    iget v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2

    .line 1291
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_0

    .line 1294
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1296
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 1297
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1298
    invoke-virtual {p0, v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1299
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1301
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v2, Lcom/oneplus/support/viewpager/widget/ViewPager;->sPositionComparator:Lcom/oneplus/support/viewpager/widget/ViewPager$ViewPositionComparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1303
    .end local v0    # "childCount":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2918
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2920
    .local v0, "focusableCount":I
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2922
    .local v1, "descendantFocusability":I
    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    .line 2923
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2924
    invoke-virtual {p0, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2925
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2926
    invoke-virtual {p0, v3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 2927
    .local v4, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 2928
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2923
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2938
    .end local v2    # "i":I
    :cond_1
    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_2

    .line 2939
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 2942
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2943
    return-void

    .line 2945
    :cond_3
    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 2946
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2947
    return-void

    .line 2949
    :cond_4
    nop

    .line 2950
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2953
    :cond_5
    return-void
.end method

.method addNewItem(II)Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .line 1016
    new-instance v0, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;-><init>()V

    .line 1017
    .local v0, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iput p1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 1018
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 1019
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p1}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 1020
    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 1023
    :cond_0
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1021
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    :goto_1
    return-object v0
.end method

.method public addOnAdapterChangeListener(Lcom/oneplus/support/viewpager/widget/ViewPager$OnAdapterChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/support/viewpager/widget/ViewPager$OnAdapterChangeListener;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 589
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    return-void
.end method

.method public addOnPageChangeListener(Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 731
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2963
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2964
    invoke-virtual {p0, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2965
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2966
    invoke-virtual {p0, v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v2

    .line 2967
    .local v2, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2968
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2963
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2972
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1480
    invoke-virtual {p0, p3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1481
    invoke-virtual {p0, p3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1483
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;

    .line 1485
    .local v0, "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    iget-boolean v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    invoke-static {p1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->isDecorView(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 1486
    iget-boolean v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 1487
    iget-boolean v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_1

    .line 1490
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1491
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_0

    .line 1488
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1493
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1503
    :goto_0
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 5
    .param p1, "direction"    # I

    .line 2806
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2807
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 2808
    const/4 v0, 0x0

    goto :goto_3

    .line 2809
    :cond_0
    if-eqz v0, :cond_4

    .line 2810
    const/4 v1, 0x0

    .line 2811
    .local v1, "isChild":Z
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .local v2, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 2813
    if-ne v2, p0, :cond_1

    .line 2814
    const/4 v1, 0x1

    .line 2815
    goto :goto_1

    .line 2812
    :cond_1
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    .line 2818
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 2820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2821
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2822
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .local v3, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 2824
    const-string v4, " => "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2823
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_2

    .line 2826
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2827
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2826
    const-string v4, "ViewPager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    const/4 v0, 0x0

    .line 2832
    .end local v1    # "isChild":Z
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :goto_3
    const/4 v1, 0x0

    .line 2834
    .local v1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2836
    .local v2, "nextFocused":Landroid/view/View;
    const/16 v3, 0x42

    const/16 v4, 0x11

    if-eqz v2, :cond_9

    if-eq v2, v0, :cond_9

    .line 2837
    if-ne p1, v4, :cond_7

    .line 2840
    iget-object v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2841
    .local v3, "nextLeft":I
    iget-object v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2842
    .local v4, "currLeft":I
    if-eqz v0, :cond_5

    if-lt v3, v4, :cond_5

    .line 2843
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->pageLeft()Z

    move-result v1

    goto :goto_4

    .line 2845
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 2847
    .end local v3    # "nextLeft":I
    .end local v4    # "currLeft":I
    :cond_6
    :goto_4
    goto :goto_7

    :cond_7
    if-ne p1, v3, :cond_6

    .line 2850
    iget-object v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2851
    .restart local v3    # "nextLeft":I
    iget-object v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2852
    .restart local v4    # "currLeft":I
    if-eqz v0, :cond_8

    if-gt v3, v4, :cond_8

    .line 2853
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_5

    .line 2855
    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 2857
    .end local v3    # "nextLeft":I
    .end local v4    # "currLeft":I
    :goto_5
    goto :goto_7

    .line 2858
    :cond_9
    if-eq p1, v4, :cond_c

    const/4 v4, 0x1

    if-ne p1, v4, :cond_a

    goto :goto_6

    .line 2861
    :cond_a
    if-eq p1, v3, :cond_b

    const/4 v3, 0x2

    if-ne p1, v3, :cond_d

    .line 2863
    :cond_b
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_7

    .line 2860
    :cond_c
    :goto_6
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->pageLeft()Z

    move-result v1

    .line 2865
    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 2866
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->playSoundEffect(I)V

    .line 2868
    :cond_e
    return v1
.end method

.method public beginFakeDrag()Z
    .locals 12

    .line 2541
    iget-boolean v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    .line 2542
    const/4 v0, 0x0

    return v0

    .line 2544
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFakeDragging:Z

    .line 2545
    invoke-virtual {p0, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 2546
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    iput v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInitialMotionX:F

    .line 2547
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 2548
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 2550
    :cond_1
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 2552
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2553
    .local v10, "time":J
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 2554
    .local v1, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2555
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 2556
    iput-wide v10, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFakeDragBeginTime:J

    .line 2557
    return v0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .line 2732
    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2733
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2734
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2735
    .local v3, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2736
    .local v4, "scrollY":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 2738
    .local v5, "count":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 2741
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2742
    .local v13, "child":Landroid/view/View;
    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v7, v8, :cond_0

    add-int v7, p5, v4

    .line 2743
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p5, v4

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_0

    const/4 v9, 0x1

    add-int v7, p4, v3

    .line 2744
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v11, v7, v8

    add-int v7, p5, v4

    .line 2745
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v12, v7, v8

    .line 2744
    move-object v7, p0

    move-object v8, v13

    move/from16 v10, p3

    invoke-virtual/range {v7 .. v12}, Lcom/oneplus/support/viewpager/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2746
    return v2

    .line 2738
    .end local v13    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 2751
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    move/from16 v1, p3

    neg-int v3, v1

    invoke-virtual {p1, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_2
    move/from16 v1, p3

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    .line 2705
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2706
    return v1

    .line 2709
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v0

    .line 2710
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollX()I

    move-result v2

    .line 2711
    .local v2, "scrollX":I
    const/4 v3, 0x1

    if-gez p1, :cond_2

    .line 2712
    int-to-float v4, v0

    iget v5, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v2, v4, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 2713
    :cond_2
    if-lez p1, :cond_4

    .line 2714
    int-to-float v4, v0

    iget v5, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v2, v4, :cond_3

    move v1, v3

    :cond_3
    return v1

    .line 2716
    :cond_4
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 3042
    instance-of v0, p1, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearOnPageChangeListeners()V
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 754
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 756
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 5

    .line 1801
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    .line 1802
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1803
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollX()I

    move-result v0

    .line 1804
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollY()I

    move-result v1

    .line 1805
    .local v1, "oldY":I
    iget-object v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1806
    .local v2, "x":I
    iget-object v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1808
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1809
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 1810
    invoke-direct {p0, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1811
    iget-object v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1812
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 1817
    :cond_1
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1818
    return-void

    .line 1822
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 1823
    return-void
.end method

.method dataSetChanged()V
    .locals 12

    .line 1031
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 1032
    .local v0, "adapterCount":I
    iput v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    .line 1033
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 1034
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 1035
    .local v1, "needPopulate":Z
    :goto_0
    iget v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    .line 1037
    .local v2, "newCurrItem":I
    const/4 v5, 0x0

    .line 1038
    .local v5, "isUpdating":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v7, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 1039
    iget-object v7, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 1040
    .local v7, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iget-object v8, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    iget-object v9, v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    .line 1042
    .local v8, "newPos":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 1043
    goto :goto_2

    .line 1046
    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_3

    .line 1047
    iget-object v9, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1048
    add-int/lit8 v6, v6, -0x1

    .line 1050
    if-nez v5, :cond_2

    .line 1051
    iget-object v9, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v9, p0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1052
    const/4 v5, 0x1

    .line 1055
    :cond_2
    iget-object v9, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    iget v10, v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget-object v11, v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v9, p0, v10, v11}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1056
    const/4 v1, 0x1

    .line 1058
    iget v9, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    iget v10, v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v9, v10, :cond_5

    .line 1060
    iget v9, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    add-int/lit8 v10, v0, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1061
    const/4 v1, 0x1

    goto :goto_2

    .line 1066
    :cond_3
    iget v9, v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_5

    .line 1067
    iget v9, v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v10, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v9, v10, :cond_4

    .line 1069
    move v2, v8

    .line 1072
    :cond_4
    iput v8, v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 1073
    const/4 v1, 0x1

    .line 1038
    .end local v7    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .end local v8    # "newPos":I
    :cond_5
    :goto_2
    add-int/2addr v6, v3

    goto :goto_1

    .line 1077
    .end local v6    # "i":I
    :cond_6
    if-eqz v5, :cond_7

    .line 1078
    iget-object v6, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v6, p0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1081
    :cond_7
    iget-object v6, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v7, Lcom/oneplus/support/viewpager/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1083
    if-eqz v1, :cond_a

    .line 1085
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildCount()I

    move-result v6

    .line 1086
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v6, :cond_9

    .line 1087
    invoke-virtual {p0, v7}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1088
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;

    .line 1089
    .local v9, "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    iget-boolean v10, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_8

    .line 1090
    const/4 v10, 0x0

    iput v10, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 1086
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1094
    .end local v7    # "i":I
    :cond_9
    invoke-virtual {p0, v2, v4, v3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1095
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->requestLayout()V

    .line 1097
    .end local v6    # "childCount":I
    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2757
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 3010
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 3011
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 3015
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 3016
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3017
    invoke-virtual {p0, v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3018
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 3019
    invoke-virtual {p0, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v3

    .line 3020
    .local v3, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    .line 3021
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3022
    const/4 v4, 0x1

    return v4

    .line 3016
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3027
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 2
    .param p1, "f"    # F

    .line 935
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 936
    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    .line 937
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2439
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2440
    const/4 v0, 0x0

    .line 2442
    .local v0, "needsInvalidate":Z
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getOverScrollMode()I

    move-result v1

    .line 2443
    .local v1, "overScrollMode":I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    if-eqz v3, :cond_0

    .line 2445
    invoke-virtual {v3}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    if-le v3, v2, :cond_0

    goto :goto_0

    .line 2469
    :cond_0
    iget-object v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 2470
    iget-object v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    .line 2446
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2447
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2448
    .local v2, "restoreCount":I
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2449
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getWidth()I

    move-result v4

    .line 2451
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2452
    neg-int v5, v3

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2453
    iget-object v5, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2454
    iget-object v5, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2455
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2457
    .end local v2    # "restoreCount":I
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_2
    iget-object v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2458
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2459
    .restart local v2    # "restoreCount":I
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getWidth()I

    move-result v3

    .line 2460
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2462
    .local v4, "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2463
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v3

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2464
    iget-object v5, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v4, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2465
    iget-object v5, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2466
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2473
    .end local v2    # "restoreCount":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 2475
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2477
    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 923
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 924
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 925
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 928
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 10

    .line 2567
    iget-boolean v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_1

    .line 2571
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    .line 2572
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2573
    .local v0, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2574
    iget v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 2575
    .local v1, "initialVelocity":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 2576
    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v3

    .line 2577
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollX()I

    move-result v4

    .line 2578
    .local v4, "scrollX":I
    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->infoForCurrentScrollPosition()Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v5

    .line 2579
    .local v5, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iget v6, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 2580
    .local v6, "currentPage":I
    int-to-float v7, v4

    int-to-float v8, v3

    div-float/2addr v7, v8

    iget v8, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v7, v8

    iget v8, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v7, v8

    .line 2581
    .local v7, "pageOffset":F
    iget v8, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    iget v9, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInitialMotionX:F

    sub-float/2addr v8, v9

    float-to-int v8, v8

    .line 2582
    .local v8, "totalDelta":I
    invoke-direct {p0, v6, v7, v1, v8}, Lcom/oneplus/support/viewpager/widget/ViewPager;->determineTargetPage(IFII)I

    move-result v9

    .line 2584
    .local v9, "nextPage":I
    invoke-virtual {p0, v9, v2, v2, v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2586
    .end local v0    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v1    # "initialVelocity":I
    .end local v3    # "width":I
    .end local v4    # "scrollX":I
    .end local v5    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .end local v6    # "currentPage":I
    .end local v7    # "pageOffset":F
    .end local v8    # "totalDelta":I
    .end local v9    # "nextPage":I
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->endDrag()V

    .line 2588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFakeDragging:Z

    .line 2589
    return-void

    .line 2568
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2769
    const/4 v0, 0x0

    .line 2770
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_6

    .line 2771
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x15

    const/4 v3, 0x2

    if-eq v1, v2, :cond_4

    const/16 v2, 0x16

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2787
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2788
    invoke-virtual {p0, v3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2789
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2790
    invoke-virtual {p0, v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2780
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2781
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->pageRight()Z

    move-result v0

    goto :goto_0

    .line 2783
    :cond_3
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2785
    goto :goto_0

    .line 2773
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2774
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->pageLeft()Z

    move-result v0

    goto :goto_0

    .line 2776
    :cond_5
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2795
    :cond_6
    :goto_0
    return v0
.end method

.method public fakeDragBy(F)V
    .locals 19
    .param p1, "xOffset"    # F

    .line 2599
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFakeDragging:Z

    if-eqz v1, :cond_5

    .line 2603
    iget-object v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    if-nez v1, :cond_0

    .line 2604
    return-void

    .line 2607
    :cond_0
    iget v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    add-float v1, v1, p1

    iput v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2609
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 2610
    .local v1, "oldScrollX":F
    sub-float v2, v1, p1

    .line 2611
    .local v2, "scrollX":F
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v3

    .line 2613
    .local v3, "width":I
    int-to-float v4, v3

    iget v5, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    .line 2614
    .local v4, "leftBound":F
    int-to-float v5, v3

    iget v6, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastOffset:F

    mul-float/2addr v5, v6

    .line 2616
    .local v5, "rightBound":F
    iget-object v6, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 2617
    .local v6, "firstItem":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iget-object v7, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 2618
    .local v7, "lastItem":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iget v8, v6, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-eqz v8, :cond_1

    .line 2619
    iget v8, v6, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v9, v3

    mul-float v4, v8, v9

    .line 2621
    :cond_1
    iget v8, v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget-object v9, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v9}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_2

    .line 2622
    iget v8, v7, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v9, v3

    mul-float v5, v8, v9

    .line 2625
    :cond_2
    cmpg-float v8, v2, v4

    if-gez v8, :cond_3

    .line 2626
    move v2, v4

    goto :goto_0

    .line 2627
    :cond_3
    cmpl-float v8, v2, v5

    if-lez v8, :cond_4

    .line 2628
    move v2, v5

    .line 2631
    :cond_4
    :goto_0
    iget v8, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    float-to-int v9, v2

    int-to-float v9, v9

    sub-float v9, v2, v9

    add-float/2addr v8, v9

    iput v8, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2632
    float-to-int v8, v2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollY()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Lcom/oneplus/support/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 2633
    float-to-int v8, v2

    invoke-direct {v0, v8}, Lcom/oneplus/support/viewpager/widget/ViewPager;->pageScrolled(I)Z

    .line 2636
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 2637
    .local v17, "time":J
    iget-wide v9, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFakeDragBeginTime:J

    const/4 v13, 0x2

    iget v14, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v11, v17

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2639
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v9, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2640
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2641
    return-void

    .line 2600
    .end local v1    # "oldScrollX":F
    .end local v2    # "scrollX":F
    .end local v3    # "width":I
    .end local v4    # "leftBound":F
    .end local v5    # "rightBound":F
    .end local v6    # "firstItem":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .end local v7    # "lastItem":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .end local v8    # "ev":Landroid/view/MotionEvent;
    .end local v17    # "time":J
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3032
    new-instance v0, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 3047
    new-instance v0, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 3037
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/oneplus/support/viewpager/widget/PagerAdapter;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 810
    iget v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, p2

    .line 811
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 812
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;

    iget v1, v1, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->childIndex:I

    .line 813
    .local v1, "result":I
    return v1
.end method

.method public getCurrentItem()I
    .locals 1

    .line 635
    iget v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 836
    iget v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 892
    iget v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1531
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, v0

    .local v1, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 1532
    if-eqz v1, :cond_1

    instance-of v0, v1, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1535
    :cond_0
    move-object p1, v1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1533
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 1537
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method infoForChild(Landroid/view/View;)Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 1520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1521
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 1522
    .local v1, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iget-object v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    iget-object v3, v1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1523
    return-object v1

    .line 1520
    .end local v1    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1526
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method infoForPosition(I)Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .line 1541
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1542
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 1543
    .local v1, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iget v2, v1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1544
    return-object v1

    .line 1541
    .end local v1    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1547
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method initViewPager()V
    .locals 5

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setWillNotDraw(Z)V

    .line 410
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setDescendantFocusability(I)V

    .line 411
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setFocusable(Z)V

    .line 412
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 413
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/oneplus/support/viewpager/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 414
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 415
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 417
    .local v3, "density":F
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mTouchSlop:I

    .line 418
    const/high16 v4, 0x43c80000    # 400.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mMinimumVelocity:I

    .line 419
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mMaximumVelocity:I

    .line 420
    new-instance v4, Landroid/widget/EdgeEffect;

    invoke-direct {v4, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 421
    new-instance v4, Landroid/widget/EdgeEffect;

    invoke-direct {v4, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 423
    const/high16 v4, 0x41c80000    # 25.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFlingDistance:I

    .line 424
    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCloseEnough:I

    .line 425
    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mDefaultGutterSize:I

    .line 427
    new-instance v4, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;

    invoke-direct {v4, p0}, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;-><init>(Lcom/oneplus/support/viewpager/widget/ViewPager;)V

    invoke-static {p0, v4}, Lcom/oneplus/support/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;)V

    .line 429
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_0

    .line 431
    invoke-static {p0, v0}, Lcom/oneplus/support/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 435
    :cond_0
    new-instance v0, Lcom/oneplus/support/viewpager/widget/ViewPager$4;

    invoke-direct {v0, p0}, Lcom/oneplus/support/viewpager/widget/ViewPager$4;-><init>(Lcom/oneplus/support/viewpager/widget/ViewPager;)V

    invoke-static {p0, v0}, Lcom/oneplus/support/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;)V

    .line 483
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .line 2653
    iget-boolean v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1552
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 1554
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 489
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 492
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 493
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2481
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2484
    iget v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageMargin:I

    if-lez v1, :cond_5

    iget-object v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    if-eqz v1, :cond_5

    .line 2485
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollX()I

    move-result v1

    .line 2486
    .local v1, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getWidth()I

    move-result v2

    .line 2488
    .local v2, "width":I
    iget v3, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2489
    .local v3, "marginOffset":F
    const/4 v4, 0x0

    .line 2490
    .local v4, "itemIndex":I
    iget-object v5, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 2491
    .local v5, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iget v6, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 2492
    .local v6, "offset":F
    iget-object v7, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2493
    .local v7, "itemCount":I
    iget v8, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 2494
    .local v8, "firstPos":I
    iget-object v9, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    iget v9, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 2495
    .local v9, "lastPos":I
    move v10, v8

    .local v10, "pos":I
    :goto_0
    if-ge v10, v9, :cond_4

    .line 2496
    :goto_1
    iget v11, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v10, v11, :cond_0

    if-ge v4, v7, :cond_0

    .line 2497
    iget-object v11, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    check-cast v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_1

    .line 2501
    :cond_0
    iget v11, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v10, v11, :cond_1

    .line 2502
    iget v11, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v12, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v12

    int-to-float v12, v2

    mul-float/2addr v11, v12

    .line 2503
    .local v11, "drawAt":F
    iget v12, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v13, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float/2addr v12, v3

    move v6, v12

    .end local v6    # "offset":F
    .local v12, "offset":F
    goto :goto_2

    .line 2505
    .end local v11    # "drawAt":F
    .end local v12    # "offset":F
    .restart local v6    # "offset":F
    :cond_1
    iget-object v11, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v11, v10}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v11

    .line 2506
    .local v11, "widthFactor":F
    add-float v12, v6, v11

    int-to-float v13, v2

    mul-float/2addr v12, v13

    .line 2507
    .local v12, "drawAt":F
    add-float v13, v11, v3

    add-float/2addr v6, v13

    move v11, v12

    .line 2510
    .end local v12    # "drawAt":F
    .local v11, "drawAt":F
    :goto_2
    iget v12, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v12, v12

    add-float/2addr v12, v11

    int-to-float v13, v1

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 2511
    iget-object v12, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mTopPageBounds:I

    iget v15, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v15, v15

    add-float/2addr v15, v11

    .line 2512
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v3

    .end local v3    # "marginOffset":F
    .local v16, "marginOffset":F
    iget v3, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mBottomPageBounds:I

    .line 2511
    invoke-virtual {v12, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2513
    iget-object v3, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v12, p1

    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 2510
    .end local v16    # "marginOffset":F
    .restart local v3    # "marginOffset":F
    :cond_2
    move-object/from16 v12, p1

    move/from16 v16, v3

    .line 2516
    .end local v3    # "marginOffset":F
    .restart local v16    # "marginOffset":F
    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v11, v3

    if-lez v3, :cond_3

    .line 2517
    goto :goto_4

    .line 2495
    .end local v11    # "drawAt":F
    :cond_3
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v16

    goto :goto_0

    .end local v16    # "marginOffset":F
    .restart local v3    # "marginOffset":F
    :cond_4
    move-object/from16 v12, p1

    move/from16 v16, v3

    .end local v3    # "marginOffset":F
    .restart local v16    # "marginOffset":F
    goto :goto_4

    .line 2484
    .end local v1    # "scrollX":I
    .end local v2    # "width":I
    .end local v4    # "itemIndex":I
    .end local v5    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .end local v6    # "offset":F
    .end local v7    # "itemCount":I
    .end local v8    # "firstPos":I
    .end local v9    # "lastPos":I
    .end local v10    # "pos":I
    .end local v16    # "marginOffset":F
    :cond_5
    move-object/from16 v12, p1

    .line 2521
    :goto_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2039
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v8, v0, 0xff

    .line 2042
    .local v8, "action":I
    const/4 v9, 0x0

    const/4 v0, 0x3

    if-eq v8, v0, :cond_11

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    goto/16 :goto_4

    .line 2051
    :cond_0
    if-eqz v8, :cond_2

    .line 2052
    iget-boolean v0, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_1

    .line 2054
    return v10

    .line 2056
    :cond_1
    iget-boolean v0, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_2

    .line 2058
    return v9

    .line 2062
    :cond_2
    const/4 v0, 0x2

    if-eqz v8, :cond_d

    if-eq v8, v0, :cond_4

    const/4 v0, 0x6

    if-eq v8, v0, :cond_3

    goto/16 :goto_3

    .line 2161
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 2073
    :cond_4
    iget v11, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 2074
    .local v11, "activePointerId":I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_5

    .line 2076
    goto/16 :goto_3

    .line 2079
    :cond_5
    invoke-virtual {v7, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 2081
    .local v12, "pointerIndex":I
    if-ltz v12, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v12, v0, :cond_6

    goto/16 :goto_2

    .line 2085
    :cond_6
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 2086
    .local v13, "x":F
    iget v0, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    sub-float v14, v13, v0

    .line 2087
    .local v14, "dx":F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 2088
    .local v15, "xDiff":F
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 2089
    .local v5, "y":F
    iget v0, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInitialMotionY:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 2092
    .local v16, "yDiff":F
    const/16 v17, 0x0

    cmpl-float v0, v14, v17

    if-eqz v0, :cond_7

    iget v0, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    invoke-direct {v6, v0, v14}, Lcom/oneplus/support/viewpager/widget/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v2, 0x0

    float-to-int v3, v14

    float-to-int v4, v13

    float-to-int v1, v5

    .line 2093
    move-object/from16 v0, p0

    move/from16 v18, v1

    move-object/from16 v1, p0

    move v9, v5

    .end local v5    # "y":F
    .local v9, "y":F
    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/support/viewpager/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2095
    iput v13, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2096
    iput v9, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 2097
    iput-boolean v10, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    .line 2098
    const/4 v0, 0x0

    return v0

    .line 2092
    .end local v9    # "y":F
    .restart local v5    # "y":F
    :cond_7
    move v9, v5

    .line 2100
    .end local v5    # "y":F
    .restart local v9    # "y":F
    :cond_8
    iget v0, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v15, v0

    if-lez v0, :cond_a

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v15

    cmpl-float v0, v0, v16

    if-lez v0, :cond_a

    .line 2102
    iput-boolean v10, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 2103
    invoke-direct {v6, v10}, Lcom/oneplus/support/viewpager/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2104
    invoke-virtual {v6, v10}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 2105
    cmpl-float v0, v14, v17

    if-lez v0, :cond_9

    .line 2106
    iget v0, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInitialMotionX:F

    iget v1, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_9
    iget v0, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInitialMotionX:F

    iget v1, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2107
    iput v9, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 2108
    invoke-direct {v6, v10}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    .line 2109
    :cond_a
    iget v0, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v16, v0

    if-lez v0, :cond_b

    .line 2115
    iput-boolean v10, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    .line 2117
    :cond_b
    :goto_1
    iget-boolean v0, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_f

    .line 2119
    invoke-direct {v6, v13}, Lcom/oneplus/support/viewpager/widget/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2120
    invoke-static/range {p0 .. p0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_3

    .line 2082
    .end local v9    # "y":F
    .end local v13    # "x":F
    .end local v14    # "dx":F
    .end local v15    # "xDiff":F
    .end local v16    # "yDiff":F
    :cond_c
    :goto_2
    const/4 v1, 0x0

    return v1

    .line 2131
    .end local v11    # "activePointerId":I
    .end local v12    # "pointerIndex":I
    :cond_d
    move v1, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInitialMotionX:F

    iput v2, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2132
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInitialMotionY:F

    iput v2, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 2133
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 2134
    iput-boolean v1, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    .line 2136
    iput-boolean v10, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    .line 2137
    iget-object v1, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2138
    iget v1, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScrollState:I

    if-ne v1, v0, :cond_e

    iget-object v0, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 2139
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_e

    .line 2141
    iget-object v0, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2142
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 2143
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->populate()V

    .line 2144
    iput-boolean v10, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 2145
    invoke-direct {v6, v10}, Lcom/oneplus/support/viewpager/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2146
    invoke-virtual {v6, v10}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setScrollState(I)V

    goto :goto_3

    .line 2148
    :cond_e
    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 2149
    iput-boolean v0, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 2157
    nop

    .line 2165
    :cond_f
    :goto_3
    iget-object v0, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_10

    .line 2166
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2168
    :cond_10
    iget-object v0, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2174
    iget-boolean v0, v6, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    return v0

    .line 2045
    :cond_11
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->resetTouch()Z

    .line 2046
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1690
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

    .line 1691
    .local v1, "count":I
    sub-int v2, p4, p2

    .line 1692
    .local v2, "width":I
    sub-int v3, p5, p3

    .line 1693
    .local v3, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v4

    .line 1694
    .local v4, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v5

    .line 1695
    .local v5, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v6

    .line 1696
    .local v6, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v7

    .line 1697
    .local v7, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollX()I

    move-result v8

    .line 1699
    .local v8, "scrollX":I
    const/4 v9, 0x0

    .line 1703
    .local v9, "decorCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/16 v11, 0x8

    if-ge v10, v1, :cond_8

    .line 1704
    invoke-virtual {v0, v10}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1705
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v11, :cond_7

    .line 1706
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;

    .line 1707
    .local v11, "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    const/4 v13, 0x0

    .line 1708
    .local v13, "childLeft":I
    const/4 v14, 0x0

    .line 1709
    .local v14, "childTop":I
    iget-boolean v15, v11, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_6

    .line 1710
    iget v15, v11, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v15, v15, 0x7

    .line 1711
    .local v15, "hgrav":I
    move/from16 v16, v13

    .end local v13    # "childLeft":I
    .local v16, "childLeft":I
    iget v13, v11, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v13, v13, 0x70

    .line 1712
    .local v13, "vgrav":I
    move-object/from16 v17, v11

    .end local v11    # "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    .local v17, "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    const/4 v11, 0x1

    if-eq v15, v11, :cond_2

    const/4 v11, 0x3

    if-eq v15, v11, :cond_1

    const/4 v11, 0x5

    if-eq v15, v11, :cond_0

    .line 1714
    move v11, v4

    .line 1715
    .end local v16    # "childLeft":I
    .local v11, "childLeft":I
    goto :goto_1

    .line 1725
    .end local v11    # "childLeft":I
    .restart local v16    # "childLeft":I
    :cond_0
    sub-int v11, v2, v6

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v11, v11, v18

    .line 1726
    .end local v16    # "childLeft":I
    .restart local v11    # "childLeft":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v6, v6, v16

    goto :goto_1

    .line 1717
    .end local v11    # "childLeft":I
    .restart local v16    # "childLeft":I
    :cond_1
    move v11, v4

    .line 1718
    .end local v16    # "childLeft":I
    .restart local v11    # "childLeft":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v4, v4, v16

    .line 1719
    goto :goto_1

    .line 1721
    .end local v11    # "childLeft":I
    .restart local v16    # "childLeft":I
    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int v11, v2, v11

    div-int/lit8 v11, v11, 0x2

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1723
    .end local v16    # "childLeft":I
    .restart local v11    # "childLeft":I
    nop

    .line 1729
    :goto_1
    move/from16 v16, v4

    .end local v4    # "paddingLeft":I
    .local v16, "paddingLeft":I
    const/16 v4, 0x10

    if-eq v13, v4, :cond_5

    const/16 v4, 0x30

    if-eq v13, v4, :cond_4

    const/16 v4, 0x50

    if-eq v13, v4, :cond_3

    .line 1731
    move v4, v5

    .line 1732
    .end local v14    # "childTop":I
    .local v4, "childTop":I
    goto :goto_2

    .line 1742
    .end local v4    # "childTop":I
    .restart local v14    # "childTop":I
    :cond_3
    sub-int v4, v3, v7

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v4, v4, v18

    .line 1743
    .end local v14    # "childTop":I
    .restart local v4    # "childTop":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v7, v14

    goto :goto_2

    .line 1734
    .end local v4    # "childTop":I
    .restart local v14    # "childTop":I
    :cond_4
    move v4, v5

    .line 1735
    .end local v14    # "childTop":I
    .restart local v4    # "childTop":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v5, v14

    .line 1736
    goto :goto_2

    .line 1738
    .end local v4    # "childTop":I
    .restart local v14    # "childTop":I
    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v3, v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1740
    .end local v14    # "childTop":I
    .restart local v4    # "childTop":I
    nop

    .line 1746
    :goto_2
    add-int/2addr v11, v8

    .line 1747
    nop

    .line 1748
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v11

    .line 1749
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v19, v5

    .end local v5    # "paddingTop":I
    .local v19, "paddingTop":I
    add-int v5, v4, v18

    .line 1747
    invoke-virtual {v12, v11, v4, v14, v5}, Landroid/view/View;->layout(IIII)V

    .line 1750
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v16

    move/from16 v5, v19

    goto :goto_3

    .line 1709
    .end local v15    # "hgrav":I
    .end local v16    # "paddingLeft":I
    .end local v17    # "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    .end local v19    # "paddingTop":I
    .local v4, "paddingLeft":I
    .restart local v5    # "paddingTop":I
    .local v11, "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    .local v13, "childLeft":I
    .restart local v14    # "childTop":I
    :cond_6
    move-object/from16 v17, v11

    move/from16 v16, v13

    .line 1703
    .end local v11    # "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "childLeft":I
    .end local v14    # "childTop":I
    :cond_7
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1755
    .end local v10    # "i":I
    :cond_8
    sub-int v10, v2, v4

    sub-int/2addr v10, v6

    .line 1757
    .local v10, "childWidth":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    if-ge v12, v1, :cond_d

    .line 1758
    invoke-virtual {v0, v12}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1759
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v11, :cond_c

    .line 1760
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;

    .line 1762
    .local v15, "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    iget-boolean v11, v15, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v11, :cond_b

    invoke-virtual {v0, v14}, Lcom/oneplus/support/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v11

    move-object/from16 v17, v11

    .local v17, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    if-eqz v11, :cond_a

    .line 1763
    int-to-float v11, v10

    move-object/from16 v13, v17

    move/from16 v17, v1

    .end local v1    # "count":I
    .local v13, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .local v17, "count":I
    iget v1, v13, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v11, v1

    float-to-int v1, v11

    .line 1764
    .local v1, "loff":I
    add-int v11, v4, v1

    .line 1765
    .local v11, "childLeft":I
    move/from16 v19, v5

    .line 1766
    .local v19, "childTop":I
    move/from16 v20, v1

    .end local v1    # "loff":I
    .local v20, "loff":I
    iget-boolean v1, v15, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v1, :cond_9

    .line 1769
    const/4 v1, 0x0

    iput-boolean v1, v15, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1770
    int-to-float v1, v10

    move/from16 v21, v2

    .end local v2    # "width":I
    .local v21, "width":I
    iget v2, v15, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1773
    .local v1, "widthSpec":I
    sub-int v18, v3, v5

    move/from16 v22, v4

    .end local v4    # "paddingLeft":I
    .local v22, "paddingLeft":I
    sub-int v4, v18, v7

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1776
    .local v2, "heightSpec":I
    invoke-virtual {v14, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_5

    .line 1766
    .end local v1    # "widthSpec":I
    .end local v21    # "width":I
    .end local v22    # "paddingLeft":I
    .local v2, "width":I
    .restart local v4    # "paddingLeft":I
    :cond_9
    move/from16 v21, v2

    move/from16 v22, v4

    .line 1783
    .end local v2    # "width":I
    .end local v4    # "paddingLeft":I
    .restart local v21    # "width":I
    .restart local v22    # "paddingLeft":I
    :goto_5
    nop

    .line 1784
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v11

    .line 1785
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move/from16 v4, v19

    .end local v19    # "childTop":I
    .local v4, "childTop":I
    add-int/2addr v2, v4

    .line 1783
    invoke-virtual {v14, v11, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    .line 1762
    .end local v11    # "childLeft":I
    .end local v13    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .end local v20    # "loff":I
    .end local v21    # "width":I
    .end local v22    # "paddingLeft":I
    .local v1, "count":I
    .restart local v2    # "width":I
    .local v4, "paddingLeft":I
    .local v17, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :cond_a
    move/from16 v21, v2

    move/from16 v22, v4

    move-object/from16 v13, v17

    move/from16 v17, v1

    .end local v1    # "count":I
    .end local v2    # "width":I
    .end local v4    # "paddingLeft":I
    .restart local v13    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .local v17, "count":I
    .restart local v21    # "width":I
    .restart local v22    # "paddingLeft":I
    goto :goto_6

    .end local v13    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .end local v17    # "count":I
    .end local v21    # "width":I
    .end local v22    # "paddingLeft":I
    .restart local v1    # "count":I
    .restart local v2    # "width":I
    .restart local v4    # "paddingLeft":I
    :cond_b
    move/from16 v17, v1

    move/from16 v21, v2

    move/from16 v22, v4

    .end local v1    # "count":I
    .end local v2    # "width":I
    .end local v4    # "paddingLeft":I
    .restart local v17    # "count":I
    .restart local v21    # "width":I
    .restart local v22    # "paddingLeft":I
    goto :goto_6

    .line 1759
    .end local v15    # "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    .end local v17    # "count":I
    .end local v21    # "width":I
    .end local v22    # "paddingLeft":I
    .restart local v1    # "count":I
    .restart local v2    # "width":I
    .restart local v4    # "paddingLeft":I
    :cond_c
    move/from16 v17, v1

    move/from16 v21, v2

    move/from16 v22, v4

    .line 1757
    .end local v1    # "count":I
    .end local v2    # "width":I
    .end local v4    # "paddingLeft":I
    .end local v14    # "child":Landroid/view/View;
    .restart local v17    # "count":I
    .restart local v21    # "width":I
    .restart local v22    # "paddingLeft":I
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v17

    move/from16 v2, v21

    move/from16 v4, v22

    const/16 v11, 0x8

    goto/16 :goto_4

    .end local v17    # "count":I
    .end local v21    # "width":I
    .end local v22    # "paddingLeft":I
    .restart local v1    # "count":I
    .restart local v2    # "width":I
    .restart local v4    # "paddingLeft":I
    :cond_d
    move/from16 v17, v1

    move/from16 v21, v2

    move/from16 v22, v4

    .line 1789
    .end local v1    # "count":I
    .end local v2    # "width":I
    .end local v4    # "paddingLeft":I
    .end local v12    # "i":I
    .restart local v17    # "count":I
    .restart local v21    # "width":I
    .restart local v22    # "paddingLeft":I
    iput v5, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mTopPageBounds:I

    .line 1790
    sub-int v1, v3, v7

    iput v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mBottomPageBounds:I

    .line 1791
    iput v9, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mDecorChildCount:I

    .line 1793
    iget-boolean v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_e

    .line 1794
    iget v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_7

    .line 1793
    :cond_e
    const/4 v2, 0x0

    .line 1796
    :goto_7
    iput-boolean v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 1797
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1563
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v1, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getDefaultSize(II)I

    move-result v3

    .line 1564
    move/from16 v4, p2

    invoke-static {v1, v4}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getDefaultSize(II)I

    move-result v5

    .line 1563
    invoke-virtual {v0, v3, v5}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setMeasuredDimension(II)V

    .line 1566
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getMeasuredWidth()I

    move-result v3

    .line 1567
    .local v3, "measuredWidth":I
    div-int/lit8 v5, v3, 0xa

    .line 1568
    .local v5, "maxGutterSize":I
    iget v6, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mDefaultGutterSize:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mGutterSize:I

    .line 1571
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1572
    .local v6, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getMeasuredHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    .line 1579
    .local v7, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildCount()I

    move-result v8

    .line 1580
    .local v8, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/16 v10, 0x8

    if-ge v9, v8, :cond_e

    .line 1581
    invoke-virtual {v0, v9}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1582
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v10, :cond_c

    .line 1583
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;

    .line 1584
    .local v10, "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    if-eqz v10, :cond_b

    iget-boolean v13, v10, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v13, :cond_b

    .line 1585
    iget v13, v10, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v13, v13, 0x7

    .line 1586
    .local v13, "hgrav":I
    iget v14, v10, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x70

    .line 1587
    .local v14, "vgrav":I
    const/high16 v15, -0x80000000

    .line 1588
    .local v15, "widthMode":I
    const/high16 v16, -0x80000000

    .line 1589
    .local v16, "heightMode":I
    const/16 v1, 0x30

    if-eq v14, v1, :cond_1

    const/16 v1, 0x50

    if-ne v14, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 1590
    .local v1, "consumeVertical":Z
    :goto_2
    const/4 v11, 0x3

    if-eq v13, v11, :cond_3

    const/4 v11, 0x5

    if-ne v13, v11, :cond_2

    goto :goto_3

    :cond_2
    const/16 v17, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/16 v17, 0x1

    :goto_4
    move/from16 v11, v17

    .line 1592
    .local v11, "consumeHorizontal":Z
    if-eqz v1, :cond_4

    .line 1593
    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_5

    .line 1594
    :cond_4
    if-eqz v11, :cond_5

    .line 1595
    const/high16 v16, 0x40000000    # 2.0f

    .line 1598
    :cond_5
    :goto_5
    move/from16 v17, v6

    .line 1599
    .local v17, "widthSize":I
    move/from16 v18, v7

    .line 1600
    .local v18, "heightSize":I
    iget v2, v10, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->width:I

    move/from16 v19, v3

    .end local v3    # "measuredWidth":I
    .local v19, "measuredWidth":I
    const/4 v3, -0x2

    if-eq v2, v3, :cond_7

    .line 1601
    const/high16 v15, 0x40000000    # 2.0f

    .line 1602
    iget v2, v10, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 1603
    iget v2, v10, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->width:I

    .end local v17    # "widthSize":I
    .local v2, "widthSize":I
    goto :goto_6

    .line 1602
    .end local v2    # "widthSize":I
    .restart local v17    # "widthSize":I
    :cond_6
    move/from16 v2, v17

    goto :goto_6

    .line 1600
    :cond_7
    move/from16 v2, v17

    .line 1606
    .end local v17    # "widthSize":I
    .restart local v2    # "widthSize":I
    :goto_6
    iget v3, v10, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_9

    .line 1607
    const/high16 v16, 0x40000000    # 2.0f

    .line 1608
    iget v3, v10, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    .line 1609
    iget v3, v10, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->height:I

    move/from16 v4, v16

    .end local v18    # "heightSize":I
    .local v3, "heightSize":I
    goto :goto_7

    .line 1608
    .end local v3    # "heightSize":I
    .restart local v18    # "heightSize":I
    :cond_8
    move/from16 v4, v16

    move/from16 v3, v18

    goto :goto_7

    .line 1606
    :cond_9
    move/from16 v4, v16

    move/from16 v3, v18

    .line 1612
    .end local v16    # "heightMode":I
    .end local v18    # "heightSize":I
    .restart local v3    # "heightSize":I
    .local v4, "heightMode":I
    :goto_7
    move/from16 v16, v5

    .end local v5    # "maxGutterSize":I
    .local v16, "maxGutterSize":I
    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1613
    .local v5, "widthSpec":I
    move/from16 v17, v2

    .end local v2    # "widthSize":I
    .restart local v17    # "widthSize":I
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1614
    .local v2, "heightSpec":I
    invoke-virtual {v12, v5, v2}, Landroid/view/View;->measure(II)V

    .line 1616
    if-eqz v1, :cond_a

    .line 1617
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v7, v7, v18

    goto :goto_8

    .line 1618
    :cond_a
    if-eqz v11, :cond_d

    .line 1619
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v6, v6, v18

    goto :goto_8

    .line 1584
    .end local v1    # "consumeVertical":Z
    .end local v2    # "heightSpec":I
    .end local v4    # "heightMode":I
    .end local v11    # "consumeHorizontal":Z
    .end local v13    # "hgrav":I
    .end local v14    # "vgrav":I
    .end local v15    # "widthMode":I
    .end local v16    # "maxGutterSize":I
    .end local v17    # "widthSize":I
    .end local v19    # "measuredWidth":I
    .local v3, "measuredWidth":I
    .local v5, "maxGutterSize":I
    :cond_b
    move/from16 v19, v3

    move/from16 v16, v5

    .end local v3    # "measuredWidth":I
    .end local v5    # "maxGutterSize":I
    .restart local v16    # "maxGutterSize":I
    .restart local v19    # "measuredWidth":I
    goto :goto_8

    .line 1582
    .end local v10    # "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    .end local v16    # "maxGutterSize":I
    .end local v19    # "measuredWidth":I
    .restart local v3    # "measuredWidth":I
    .restart local v5    # "maxGutterSize":I
    :cond_c
    move/from16 v19, v3

    move/from16 v16, v5

    .line 1580
    .end local v3    # "measuredWidth":I
    .end local v5    # "maxGutterSize":I
    .end local v12    # "child":Landroid/view/View;
    .restart local v16    # "maxGutterSize":I
    .restart local v19    # "measuredWidth":I
    :cond_d
    :goto_8
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, v16

    move/from16 v3, v19

    const/4 v1, 0x0

    goto/16 :goto_0

    .end local v16    # "maxGutterSize":I
    .end local v19    # "measuredWidth":I
    .restart local v3    # "measuredWidth":I
    .restart local v5    # "maxGutterSize":I
    :cond_e
    move/from16 v19, v3

    move/from16 v16, v5

    .line 1625
    .end local v3    # "measuredWidth":I
    .end local v5    # "maxGutterSize":I
    .end local v9    # "i":I
    .restart local v16    # "maxGutterSize":I
    .restart local v19    # "measuredWidth":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mChildWidthMeasureSpec:I

    .line 1626
    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mChildHeightMeasureSpec:I

    .line 1629
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInLayout:Z

    .line 1630
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->populate()V

    .line 1631
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInLayout:Z

    .line 1634
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildCount()I

    move-result v2

    .line 1635
    .end local v8    # "size":I
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_11

    .line 1636
    invoke-virtual {v0, v3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1637
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_10

    .line 1642
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;

    .line 1643
    .local v5, "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    if-eqz v5, :cond_f

    iget-boolean v8, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v8, :cond_10

    .line 1644
    :cond_f
    int-to-float v8, v6

    iget v9, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1646
    .local v8, "widthSpec":I
    iget v9, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v4, v8, v9}, Landroid/view/View;->measure(II)V

    .line 1635
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    .end local v8    # "widthSpec":I
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1650
    .end local v3    # "i":I
    :cond_11
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 14
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 1873
    move-object v0, p0

    iget v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mDecorChildCount:I

    const/4 v2, 0x1

    if-lez v1, :cond_5

    .line 1874
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollX()I

    move-result v1

    .line 1875
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v3

    .line 1876
    .local v3, "paddingLeft":I
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v4

    .line 1877
    .local v4, "paddingRight":I
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getWidth()I

    move-result v5

    .line 1878
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildCount()I

    move-result v6

    .line 1879
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_5

    .line 1880
    invoke-virtual {p0, v7}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1881
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;

    .line 1882
    .local v9, "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    iget-boolean v10, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_0

    goto :goto_2

    .line 1884
    :cond_0
    iget v10, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v10, v10, 0x7

    .line 1885
    .local v10, "hgrav":I
    const/4 v11, 0x0

    .line 1886
    .local v11, "childLeft":I
    if-eq v10, v2, :cond_3

    const/4 v12, 0x3

    if-eq v10, v12, :cond_2

    const/4 v12, 0x5

    if-eq v10, v12, :cond_1

    .line 1888
    move v11, v3

    .line 1889
    goto :goto_1

    .line 1899
    :cond_1
    sub-int v12, v5, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v11, v12, v13

    .line 1900
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v4, v12

    goto :goto_1

    .line 1891
    :cond_2
    move v11, v3

    .line 1892
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v3, v12

    .line 1893
    goto :goto_1

    .line 1895
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int v12, v5, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1897
    nop

    .line 1903
    :goto_1
    add-int/2addr v11, v1

    .line 1905
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int v12, v11, v12

    .line 1906
    .local v12, "childOffset":I
    if-eqz v12, :cond_4

    .line 1907
    invoke-virtual {v8, v12}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1879
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    .end local v10    # "hgrav":I
    .end local v11    # "childLeft":I
    .end local v12    # "childOffset":I
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1912
    .end local v1    # "scrollX":I
    .end local v3    # "paddingLeft":I
    .end local v4    # "paddingRight":I
    .end local v5    # "width":I
    .end local v6    # "childCount":I
    .end local v7    # "i":I
    :cond_5
    invoke-direct/range {p0 .. p3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->dispatchOnPageScrolled(IFI)V

    .line 1914
    iget-object v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageTransformer:Lcom/oneplus/support/viewpager/widget/ViewPager$PageTransformer;

    if-eqz v1, :cond_7

    .line 1915
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollX()I

    move-result v1

    .line 1916
    .restart local v1    # "scrollX":I
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildCount()I

    move-result v3

    .line 1917
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v3, :cond_7

    .line 1918
    invoke-virtual {p0, v4}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1919
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;

    .line 1921
    .local v6, "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    iget-boolean v7, v6, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v7, :cond_6

    goto :goto_4

    .line 1922
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v7, v1

    int-to-float v7, v7

    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 1923
    .local v7, "transformPos":F
    iget-object v8, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageTransformer:Lcom/oneplus/support/viewpager/widget/ViewPager$PageTransformer;

    invoke-interface {v8, v5, v7}, Lcom/oneplus/support/viewpager/widget/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    .line 1917
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    .end local v7    # "transformPos":F
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1927
    .end local v1    # "scrollX":I
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_7
    iput-boolean v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCalledSuper:Z

    .line 1928
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2983
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 2984
    .local v0, "count":I
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 2985
    const/4 v1, 0x0

    .line 2986
    .local v1, "index":I
    const/4 v2, 0x1

    .line 2987
    .local v2, "increment":I
    move v3, v0

    .local v3, "end":I
    goto :goto_0

    .line 2989
    .end local v1    # "index":I
    .end local v2    # "increment":I
    .end local v3    # "end":I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 2990
    .restart local v1    # "index":I
    const/4 v2, -0x1

    .line 2991
    .restart local v2    # "increment":I
    const/4 v3, -0x1

    .line 2993
    .restart local v3    # "end":I
    :goto_0
    move v4, v1

    .local v4, "i":I
    :goto_1
    if-eq v4, v3, :cond_2

    .line 2994
    invoke-virtual {p0, v4}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2995
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2996
    invoke-virtual {p0, v5}, Lcom/oneplus/support/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v6

    .line 2997
    .local v6, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    if-eqz v6, :cond_1

    iget v7, v6, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2998
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2999
    const/4 v7, 0x1

    return v7

    .line 2993
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :cond_1
    add-int/2addr v4, v2

    goto :goto_1

    .line 3004
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1460
    instance-of v0, p1, Lcom/oneplus/support/viewpager/widget/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1461
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1462
    return-void

    .line 1465
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/support/viewpager/widget/ViewPager$SavedState;

    .line 1466
    .local v0, "ss":Lcom/oneplus/support/viewpager/widget/ViewPager$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/support/viewpager/widget/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1468
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    if-eqz v1, :cond_1

    .line 1469
    iget-object v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1470
    iget v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1472
    :cond_1
    iget v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$SavedState;->position:I

    iput v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRestoredCurItem:I

    .line 1473
    iget-object v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1474
    iget-object v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 1476
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1449
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1450
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/oneplus/support/viewpager/widget/ViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1451
    .local v1, "ss":Lcom/oneplus/support/viewpager/widget/ViewPager$SavedState;
    iget v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    iput v2, v1, Lcom/oneplus/support/viewpager/widget/ViewPager$SavedState;->position:I

    .line 1452
    iget-object v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    if-eqz v2, :cond_0

    .line 1453
    invoke-virtual {v2}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/support/viewpager/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1455
    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1654
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1657
    if-eq p1, p3, :cond_0

    .line 1658
    iget v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1660
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2179
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFakeDragging:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 2183
    return v3

    .line 2186
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2189
    return v4

    .line 2192
    :cond_1
    iget-object v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 2197
    :cond_2
    iget-object v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_3

    .line 2198
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2200
    :cond_3
    iget-object v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2202
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 2203
    .local v2, "action":I
    const/4 v5, 0x0

    .line 2205
    .local v5, "needsInvalidate":Z
    and-int/lit16 v6, v2, 0xff

    if-eqz v6, :cond_f

    if-eq v6, v3, :cond_d

    const/4 v7, 0x2

    if-eq v6, v7, :cond_8

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    const/4 v4, 0x5

    if-eq v6, v4, :cond_5

    const/4 v4, 0x6

    if-eq v6, v4, :cond_4

    move/from16 v16, v2

    goto/16 :goto_1

    .line 2295
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2296
    iget v4, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    move/from16 v16, v2

    goto/16 :goto_1

    .line 2288
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 2289
    .local v4, "index":I
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 2290
    .local v6, "x":F
    iput v6, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2291
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 2292
    move/from16 v16, v2

    goto/16 :goto_1

    .line 2282
    .end local v4    # "index":I
    .end local v6    # "x":F
    :cond_6
    iget-boolean v6, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v6, :cond_7

    .line 2283
    iget v6, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    invoke-direct {v0, v6, v3, v4, v4}, Lcom/oneplus/support/viewpager/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 2284
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->resetTouch()Z

    move-result v5

    move/from16 v16, v2

    goto/16 :goto_1

    .line 2282
    :cond_7
    move/from16 v16, v2

    goto/16 :goto_1

    .line 2218
    :cond_8
    iget-boolean v4, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-nez v4, :cond_b

    .line 2219
    iget v4, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 2220
    .local v4, "pointerIndex":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_9

    .line 2223
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->resetTouch()Z

    move-result v5

    .line 2224
    move/from16 v16, v2

    goto/16 :goto_1

    .line 2226
    :cond_9
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 2227
    .restart local v6    # "x":F
    iget v7, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 2228
    .local v7, "xDiff":F
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 2229
    .local v8, "y":F
    iget v9, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionY:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 2233
    .local v9, "yDiff":F
    iget v10, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v10, v7, v10

    if-lez v10, :cond_b

    cmpl-float v10, v7, v9

    if-lez v10, :cond_b

    .line 2235
    iput-boolean v3, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 2236
    invoke-direct {v0, v3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2237
    iget v10, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInitialMotionX:F

    sub-float v11, v6, v10

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_a

    iget v11, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    goto :goto_0

    .line 2238
    :cond_a
    iget v11, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    :goto_0
    iput v10, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2239
    iput v8, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 2240
    invoke-virtual {v0, v3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 2241
    invoke-direct {v0, v3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2244
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 2245
    .local v10, "parent":Landroid/view/ViewParent;
    if-eqz v10, :cond_b

    .line 2246
    invoke-interface {v10, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2251
    .end local v4    # "pointerIndex":I
    .end local v6    # "x":F
    .end local v7    # "xDiff":F
    .end local v8    # "y":F
    .end local v9    # "yDiff":F
    .end local v10    # "parent":Landroid/view/ViewParent;
    :cond_b
    iget-boolean v4, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v4, :cond_c

    .line 2253
    iget v4, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 2254
    .local v4, "activePointerIndex":I
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 2255
    .restart local v6    # "x":F
    invoke-direct {v0, v6}, Lcom/oneplus/support/viewpager/widget/ViewPager;->performDrag(F)Z

    move-result v7

    or-int/2addr v5, v7

    .line 2256
    .end local v4    # "activePointerIndex":I
    .end local v6    # "x":F
    move/from16 v16, v2

    goto/16 :goto_1

    .line 2251
    :cond_c
    move/from16 v16, v2

    goto/16 :goto_1

    .line 2259
    :cond_d
    iget-boolean v4, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v4, :cond_e

    .line 2260
    iget-object v4, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2261
    .local v4, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v6, 0x3e8

    iget v7, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mMaximumVelocity:I

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2262
    iget v6, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v6

    float-to-int v6, v6

    .line 2263
    .local v6, "initialVelocity":I
    iput-boolean v3, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 2264
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v7

    .line 2265
    .local v7, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollX()I

    move-result v8

    .line 2266
    .local v8, "scrollX":I
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->infoForCurrentScrollPosition()Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v9

    .line 2267
    .local v9, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iget v10, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v10, v10

    int-to-float v11, v7

    div-float/2addr v10, v11

    .line 2268
    .local v10, "marginOffset":F
    iget v11, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 2269
    .local v11, "currentPage":I
    int-to-float v12, v8

    int-to-float v13, v7

    div-float/2addr v12, v13

    iget v13, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v12, v13

    iget v13, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v10

    div-float/2addr v12, v13

    .line 2271
    .local v12, "pageOffset":F
    iget v13, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 2272
    .local v13, "activePointerIndex":I
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 2273
    .local v14, "x":F
    iget v15, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInitialMotionX:F

    sub-float v15, v14, v15

    float-to-int v15, v15

    .line 2274
    .local v15, "totalDelta":I
    move/from16 v16, v2

    .end local v2    # "action":I
    .local v16, "action":I
    invoke-direct {v0, v11, v12, v6, v15}, Lcom/oneplus/support/viewpager/widget/ViewPager;->determineTargetPage(IFII)I

    move-result v2

    .line 2276
    .local v2, "nextPage":I
    invoke-virtual {v0, v2, v3, v3, v6}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2278
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->resetTouch()Z

    move-result v5

    .line 2279
    .end local v2    # "nextPage":I
    .end local v4    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v6    # "initialVelocity":I
    .end local v7    # "width":I
    .end local v8    # "scrollX":I
    .end local v9    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .end local v10    # "marginOffset":F
    .end local v11    # "currentPage":I
    .end local v12    # "pageOffset":F
    .end local v13    # "activePointerIndex":I
    .end local v14    # "x":F
    .end local v15    # "totalDelta":I
    goto :goto_1

    .line 2259
    .end local v16    # "action":I
    .local v2, "action":I
    :cond_e
    move/from16 v16, v2

    .end local v2    # "action":I
    .restart local v16    # "action":I
    goto :goto_1

    .line 2207
    .end local v16    # "action":I
    .restart local v2    # "action":I
    :cond_f
    move/from16 v16, v2

    .end local v2    # "action":I
    .restart local v16    # "action":I
    iget-object v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2208
    iput-boolean v4, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 2209
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->populate()V

    .line 2212
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInitialMotionX:F

    iput v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2213
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInitialMotionY:F

    iput v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 2214
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 2215
    nop

    .line 2299
    :goto_1
    if-eqz v5, :cond_10

    .line 2300
    invoke-static/range {p0 .. p0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2302
    :cond_10
    return v3

    .line 2194
    .end local v5    # "needsInvalidate":Z
    .end local v16    # "action":I
    :cond_11
    :goto_2
    return v4
.end method

.method pageLeft()Z
    .locals 2

    .line 2898
    iget v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    if-lez v0, :cond_0

    .line 2899
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 2900
    return v1

    .line 2902
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method pageRight()Z
    .locals 3

    .line 2906
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {v0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 2907
    iget v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 2908
    return v2

    .line 2910
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public populate()V
    .locals 1

    .line 1100
    iget v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->populate(I)V

    .line 1101
    return-void
.end method

.method populate(I)V
    .locals 19
    .param p1, "newCurrentItem"    # I

    .line 1104
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v0, 0x0

    .line 1105
    .local v0, "oldCurInfo":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iget v3, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    if-eq v3, v2, :cond_0

    .line 1106
    invoke-virtual {v1, v3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->infoForPosition(I)Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 1107
    iput v2, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    move-object v3, v0

    goto :goto_0

    .line 1105
    :cond_0
    move-object v3, v0

    .line 1110
    .end local v0    # "oldCurInfo":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .local v3, "oldCurInfo":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :goto_0
    iget-object v0, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_1

    .line 1111
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->sortChildDrawingOrder()V

    .line 1112
    return-void

    .line 1119
    :cond_1
    iget-boolean v0, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPopulatePending:Z

    if-eqz v0, :cond_2

    .line 1121
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->sortChildDrawingOrder()V

    .line 1122
    return-void

    .line 1128
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1129
    return-void

    .line 1132
    :cond_3
    iget-object v0, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1134
    iget v4, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 1135
    .local v4, "pageLimit":I
    const/4 v0, 0x0

    iget v5, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1136
    .local v5, "startPos":I
    iget-object v0, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getCount()I

    move-result v6

    .line 1137
    .local v6, "N":I
    add-int/lit8 v0, v6, -0x1

    iget v7, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    add-int/2addr v7, v4

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1139
    .local v7, "endPos":I
    iget v0, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    if-ne v6, v0, :cond_24

    .line 1155
    const/4 v0, -0x1

    .line 1156
    .local v0, "curIndex":I
    const/4 v8, 0x0

    .line 1157
    .local v8, "curItem":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    const/4 v0, 0x0

    :goto_1
    iget-object v9, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 1158
    iget-object v9, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 1159
    .local v9, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iget v10, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v11, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    if-lt v10, v11, :cond_4

    .line 1160
    iget v10, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v11, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v10, v11, :cond_5

    move-object v8, v9

    goto :goto_2

    .line 1157
    .end local v9    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1165
    :cond_5
    :goto_2
    if-nez v8, :cond_6

    if-lez v6, :cond_6

    .line 1166
    iget v9, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {v1, v9, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->addNewItem(II)Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v8

    .line 1172
    :cond_6
    if-eqz v8, :cond_1c

    .line 1173
    const/4 v11, 0x0

    .line 1174
    .local v11, "extraWidthLeft":F
    add-int/lit8 v12, v0, -0x1

    .line 1175
    .local v12, "itemIndex":I
    if-ltz v12, :cond_7

    iget-object v13, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    .line 1176
    .local v13, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v14

    .line 1177
    .local v14, "clientWidth":I
    const/high16 v15, 0x40000000    # 2.0f

    if-gtz v14, :cond_8

    const/4 v9, 0x0

    goto :goto_4

    .line 1178
    :cond_8
    iget v10, v8, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    sub-float v10, v15, v10

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    int-to-float v15, v14

    div-float/2addr v9, v15

    add-float/2addr v9, v10

    :goto_4
    nop

    .line 1179
    .local v9, "leftWidthNeeded":F
    iget v10, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    add-int/lit8 v10, v10, -0x1

    .local v10, "pos":I
    :goto_5
    if-ltz v10, :cond_10

    .line 1180
    cmpl-float v15, v11, v9

    if-ltz v15, :cond_b

    if-ge v10, v5, :cond_b

    .line 1181
    if-nez v13, :cond_9

    .line 1182
    goto :goto_a

    .line 1184
    :cond_9
    iget v15, v13, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v10, v15, :cond_f

    iget-boolean v15, v13, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v15, :cond_f

    .line 1185
    iget-object v15, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1186
    iget-object v15, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    iget-object v2, v13, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v15, v1, v10, v2}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1191
    add-int/lit8 v12, v12, -0x1

    .line 1192
    add-int/lit8 v0, v0, -0x1

    .line 1193
    if-ltz v12, :cond_a

    iget-object v2, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    :goto_6
    move-object v13, v2

    .end local v13    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .local v2, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    goto :goto_9

    .line 1195
    .end local v2    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .restart local v13    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :cond_b
    if-eqz v13, :cond_d

    iget v2, v13, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v10, v2, :cond_d

    .line 1196
    iget v2, v13, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v2

    .line 1197
    add-int/lit8 v12, v12, -0x1

    .line 1198
    if-ltz v12, :cond_c

    iget-object v2, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    :goto_7
    move-object v13, v2

    .end local v13    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .restart local v2    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    goto :goto_9

    .line 1200
    .end local v2    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .restart local v13    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :cond_d
    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v1, v10, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->addNewItem(II)Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v2

    .line 1201
    .end local v13    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .restart local v2    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iget v13, v2, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v13

    .line 1202
    add-int/lit8 v0, v0, 0x1

    .line 1203
    if-ltz v12, :cond_e

    iget-object v13, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_8

    :cond_e
    const/4 v13, 0x0

    :goto_8
    move-object v2, v13

    .line 1179
    .end local v2    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .restart local v13    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :cond_f
    :goto_9
    add-int/lit8 v10, v10, -0x1

    move/from16 v2, p1

    goto :goto_5

    .line 1207
    .end local v10    # "pos":I
    :cond_10
    :goto_a
    iget v2, v8, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 1208
    .local v2, "extraWidthRight":F
    add-int/lit8 v10, v0, 0x1

    .line 1209
    .end local v12    # "itemIndex":I
    .local v10, "itemIndex":I
    const/high16 v12, 0x40000000    # 2.0f

    cmpg-float v15, v2, v12

    if-gez v15, :cond_1b

    .line 1210
    iget-object v12, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_11

    iget-object v12, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_b

    :cond_11
    const/4 v12, 0x0

    .line 1211
    .end local v13    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .local v12, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :goto_b
    if-gtz v14, :cond_12

    const/4 v13, 0x0

    goto :goto_c

    .line 1212
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v13

    int-to-float v13, v13

    int-to-float v15, v14

    div-float/2addr v13, v15

    const/high16 v15, 0x40000000    # 2.0f

    add-float/2addr v13, v15

    :goto_c
    nop

    .line 1213
    .local v13, "rightWidthNeeded":F
    iget v15, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    add-int/lit8 v15, v15, 0x1

    .local v15, "pos":I
    :goto_d
    if-ge v15, v6, :cond_1a

    .line 1214
    cmpl-float v17, v2, v13

    if-ltz v17, :cond_16

    if-le v15, v7, :cond_16

    .line 1215
    if-nez v12, :cond_13

    .line 1216
    move/from16 v17, v4

    move/from16 v18, v5

    goto/16 :goto_12

    .line 1218
    :cond_13
    move/from16 v17, v4

    .end local v4    # "pageLimit":I
    .local v17, "pageLimit":I
    iget v4, v12, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v15, v4, :cond_15

    iget-boolean v4, v12, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v4, :cond_15

    .line 1219
    iget-object v4, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1220
    iget-object v4, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    move/from16 v18, v5

    .end local v5    # "startPos":I
    .local v18, "startPos":I
    iget-object v5, v12, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, v1, v15, v5}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1225
    iget-object v4, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_14

    iget-object v4, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_e

    :cond_14
    const/4 v4, 0x0

    :goto_e
    move-object v12, v4

    goto :goto_11

    .line 1218
    .end local v18    # "startPos":I
    .restart local v5    # "startPos":I
    :cond_15
    move/from16 v18, v5

    .end local v5    # "startPos":I
    .restart local v18    # "startPos":I
    goto :goto_11

    .line 1214
    .end local v17    # "pageLimit":I
    .end local v18    # "startPos":I
    .restart local v4    # "pageLimit":I
    .restart local v5    # "startPos":I
    :cond_16
    move/from16 v17, v4

    move/from16 v18, v5

    .line 1227
    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .restart local v17    # "pageLimit":I
    .restart local v18    # "startPos":I
    if-eqz v12, :cond_18

    iget v4, v12, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v15, v4, :cond_18

    .line 1228
    iget v4, v12, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v4

    .line 1229
    add-int/lit8 v10, v10, 0x1

    .line 1230
    iget-object v4, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_17

    iget-object v4, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_f

    :cond_17
    const/4 v4, 0x0

    :goto_f
    move-object v12, v4

    goto :goto_11

    .line 1232
    :cond_18
    invoke-virtual {v1, v15, v10}, Lcom/oneplus/support/viewpager/widget/ViewPager;->addNewItem(II)Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 1233
    .end local v12    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .local v4, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    add-int/lit8 v10, v10, 0x1

    .line 1234
    iget v5, v4, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v5

    .line 1235
    iget-object v5, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v10, v5, :cond_19

    iget-object v5, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_10

    :cond_19
    const/4 v5, 0x0

    :goto_10
    move-object v12, v5

    .line 1213
    .end local v4    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .restart local v12    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :goto_11
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v17

    move/from16 v5, v18

    goto/16 :goto_d

    .end local v17    # "pageLimit":I
    .end local v18    # "startPos":I
    .local v4, "pageLimit":I
    .restart local v5    # "startPos":I
    :cond_1a
    move/from16 v17, v4

    move/from16 v18, v5

    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .restart local v17    # "pageLimit":I
    .restart local v18    # "startPos":I
    goto :goto_12

    .line 1209
    .end local v12    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .end local v15    # "pos":I
    .end local v17    # "pageLimit":I
    .end local v18    # "startPos":I
    .restart local v4    # "pageLimit":I
    .restart local v5    # "startPos":I
    .local v13, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :cond_1b
    move/from16 v17, v4

    move/from16 v18, v5

    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .restart local v17    # "pageLimit":I
    .restart local v18    # "startPos":I
    move-object v12, v13

    .line 1240
    .end local v13    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .restart local v12    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :goto_12
    invoke-direct {v1, v8, v0, v3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->calculatePageOffsets(Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;ILcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;)V

    .line 1242
    iget-object v4, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    iget v5, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    iget-object v13, v8, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, v1, v5, v13}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    goto :goto_13

    .line 1172
    .end local v2    # "extraWidthRight":F
    .end local v9    # "leftWidthNeeded":F
    .end local v10    # "itemIndex":I
    .end local v11    # "extraWidthLeft":F
    .end local v12    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .end local v14    # "clientWidth":I
    .end local v17    # "pageLimit":I
    .end local v18    # "startPos":I
    .restart local v4    # "pageLimit":I
    .restart local v5    # "startPos":I
    :cond_1c
    move/from16 v17, v4

    move/from16 v18, v5

    .line 1252
    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .restart local v17    # "pageLimit":I
    .restart local v18    # "startPos":I
    :goto_13
    iget-object v2, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v2, v1}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1256
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildCount()I

    move-result v2

    .line 1257
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v2, :cond_1f

    .line 1258
    invoke-virtual {v1, v4}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1259
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;

    .line 1260
    .local v9, "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    iput v4, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->childIndex:I

    .line 1261
    iget-boolean v10, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_1d

    iget v10, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1e

    .line 1263
    invoke-virtual {v1, v5}, Lcom/oneplus/support/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v10

    .line 1264
    .local v10, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    if-eqz v10, :cond_1e

    .line 1265
    iget v12, v10, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    iput v12, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 1266
    iget v12, v10, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    iput v12, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->position:I

    goto :goto_15

    .line 1261
    .end local v10    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    :cond_1d
    const/4 v11, 0x0

    .line 1257
    .end local v5    # "child":Landroid/view/View;
    .end local v9    # "lp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    :cond_1e
    :goto_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 1270
    .end local v4    # "i":I
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->sortChildDrawingOrder()V

    .line 1272
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1273
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v4

    .line 1274
    .local v4, "currentFocused":Landroid/view/View;
    if-eqz v4, :cond_20

    invoke-virtual {v1, v4}, Lcom/oneplus/support/viewpager/widget/ViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v10

    move-object/from16 v16, v10

    goto :goto_16

    :cond_20
    const/16 v16, 0x0

    :goto_16
    move-object/from16 v5, v16

    .line 1275
    .local v5, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    if-eqz v5, :cond_21

    iget v9, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v10, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    if-eq v9, v10, :cond_23

    .line 1276
    :cond_21
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_23

    .line 1277
    invoke-virtual {v1, v9}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1278
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v1, v10}, Lcom/oneplus/support/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v5

    .line 1279
    if-eqz v5, :cond_22

    iget v11, v5, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v12, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v11, v12, :cond_22

    .line 1280
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/view/View;->requestFocus(I)Z

    move-result v11

    if-eqz v11, :cond_22

    .line 1281
    goto :goto_18

    .line 1276
    .end local v10    # "child":Landroid/view/View;
    :cond_22
    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    .line 1287
    .end local v4    # "currentFocused":Landroid/view/View;
    .end local v5    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .end local v9    # "i":I
    :cond_23
    :goto_18
    return-void

    .line 1142
    .end local v0    # "curIndex":I
    .end local v2    # "childCount":I
    .end local v8    # "curItem":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .end local v17    # "pageLimit":I
    .end local v18    # "startPos":I
    .local v4, "pageLimit":I
    .local v5, "startPos":I
    :cond_24
    move/from16 v17, v4

    move/from16 v18, v5

    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .restart local v17    # "pageLimit":I
    .restart local v18    # "startPos":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    .local v0, "resName":Ljava/lang/String;
    goto :goto_19

    .line 1143
    .end local v0    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1146
    .local v0, "resName":Ljava/lang/String;
    :goto_19
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Pager id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Pager class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Problematic adapter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    .line 1151
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeOnAdapterChangeListener(Lcom/oneplus/support/viewpager/widget/ViewPager$OnAdapterChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/support/viewpager/widget/ViewPager$OnAdapterChangeListener;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 602
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 603
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 605
    :cond_0
    return-void
.end method

.method public removeOnPageChangeListener(Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 744
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 745
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 747
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1512
    iget-boolean v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1513
    invoke-virtual {p0, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 1515
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1517
    :goto_0
    return-void
.end method

.method public setAdapter(Lcom/oneplus/support/viewpager/widget/PagerAdapter;)V
    .locals 8
    .param p1, "adapter"    # Lcom/oneplus/support/viewpager/widget/PagerAdapter;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 514
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 515
    invoke-virtual {v0, v1}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 516
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 517
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 518
    iget-object v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 519
    .local v3, "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    iget-object v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    iget v5, v3, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget-object v6, v3, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 517
    .end local v3    # "ii":Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 522
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 523
    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->removeNonDecorViews()V

    .line 524
    iput v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    .line 525
    invoke-virtual {p0, v2, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    .line 529
    .local v0, "oldAdapter":Lcom/oneplus/support/viewpager/widget/PagerAdapter;
    iput-object p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    .line 530
    iput v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    .line 532
    iget-object v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    if-eqz v3, :cond_5

    .line 533
    iget-object v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mObserver:Lcom/oneplus/support/viewpager/widget/ViewPager$PagerObserver;

    if-nez v3, :cond_2

    .line 534
    new-instance v3, Lcom/oneplus/support/viewpager/widget/ViewPager$PagerObserver;

    invoke-direct {v3, p0}, Lcom/oneplus/support/viewpager/widget/ViewPager$PagerObserver;-><init>(Lcom/oneplus/support/viewpager/widget/ViewPager;)V

    iput-object v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mObserver:Lcom/oneplus/support/viewpager/widget/ViewPager$PagerObserver;

    .line 536
    :cond_2
    iget-object v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    iget-object v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mObserver:Lcom/oneplus/support/viewpager/widget/ViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 537
    iput-boolean v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 538
    iget-boolean v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 539
    .local v3, "wasFirstLayout":Z
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 540
    iget-object v5, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v5}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    .line 541
    iget v5, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_3

    .line 542
    iget-object v5, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    iget-object v6, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v7, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 543
    iget v5, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v5, v2, v4}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 544
    const/4 v2, -0x1

    iput v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRestoredCurItem:I

    .line 545
    iput-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 546
    iput-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    .line 547
    :cond_3
    if-nez v3, :cond_4

    .line 548
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->populate()V

    goto :goto_1

    .line 550
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->requestLayout()V

    .line 555
    .end local v3    # "wasFirstLayout":Z
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 556
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_2
    if-ge v1, v2, :cond_6

    .line 557
    iget-object v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/viewpager/widget/ViewPager$OnAdapterChangeListener;

    invoke-interface {v3, p0, v0, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/oneplus/support/viewpager/widget/ViewPager;Lcom/oneplus/support/viewpager/widget/PagerAdapter;Lcom/oneplus/support/viewpager/widget/PagerAdapter;)V

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 560
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 620
    iget-boolean v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 621
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .line 630
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 631
    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 632
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .line 639
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 640
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .line 643
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_4

    .line 647
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    invoke-direct {p0, v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 649
    return-void

    .line 652
    :cond_1
    const/4 v0, 0x1

    if-gez p1, :cond_2

    .line 653
    const/4 p1, 0x0

    goto :goto_0

    .line 654
    :cond_2
    iget-object v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v2}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_3

    .line 655
    iget-object v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v2}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 p1, v2, -0x1

    .line 657
    :cond_3
    :goto_0
    iget v2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 658
    .local v2, "pageLimit":I
    iget v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    add-int v4, v3, v2

    if-gt p1, v4, :cond_4

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_5

    .line 662
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 663
    iget-object v4, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    iput-boolean v0, v4, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 662
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 666
    .end local v3    # "i":I
    :cond_5
    iget v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    if-eq v3, p1, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    .line 668
    .local v0, "dispatchSelected":Z
    :goto_2
    iget-boolean v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_8

    .line 671
    iput p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    .line 672
    if-eqz v0, :cond_7

    .line 673
    invoke-direct {p0, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->dispatchOnPageSelected(I)V

    .line 675
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->requestLayout()V

    goto :goto_3

    .line 677
    :cond_8
    invoke-virtual {p0, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->populate(I)V

    .line 678
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 680
    :goto_3
    return-void

    .line 644
    .end local v0    # "dispatchSelected":Z
    .end local v2    # "pageLimit":I
    :cond_9
    :goto_4
    invoke-direct {p0, v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 645
    return-void
.end method

.method setInternalPageChangeListener(Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;)Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 823
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInternalPageChangeListener:Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 824
    .local v0, "oldListener":Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;
    iput-object p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mInternalPageChangeListener:Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 825
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3
    .param p1, "limit"    # I

    .line 857
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewPager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/4 p1, 0x1

    .line 862
    :cond_0
    iget v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 863
    iput p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 864
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->populate()V

    .line 866
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 717
    iput-object p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mOnPageChangeListener:Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 718
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .line 877
    iget v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageMargin:I

    .line 878
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageMargin:I

    .line 880
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getWidth()I

    move-result v1

    .line 881
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 883
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->requestLayout()V

    .line 884
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 913
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/support/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 914
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 901
    iput-object p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 902
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->refreshDrawableState()V

    .line 903
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setWillNotDraw(Z)V

    .line 904
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->invalidate()V

    .line 905
    return-void
.end method

.method public setPageTransformer(ZLcom/oneplus/support/viewpager/widget/ViewPager$PageTransformer;)V
    .locals 1
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Lcom/oneplus/support/viewpager/widget/ViewPager$PageTransformer;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 777
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setPageTransformer(ZLcom/oneplus/support/viewpager/widget/ViewPager$PageTransformer;I)V

    .line 778
    return-void
.end method

.method public setPageTransformer(ZLcom/oneplus/support/viewpager/widget/ViewPager$PageTransformer;I)V
    .locals 4
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Lcom/oneplus/support/viewpager/widget/ViewPager$PageTransformer;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "pageLayerType"    # I

    .line 795
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 796
    .local v2, "hasTransformer":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageTransformer:Lcom/oneplus/support/viewpager/widget/ViewPager$PageTransformer;

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eq v2, v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v1

    .line 797
    .local v3, "needsPopulate":Z
    :goto_2
    iput-object p2, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageTransformer:Lcom/oneplus/support/viewpager/widget/ViewPager$PageTransformer;

    .line 798
    invoke-virtual {p0, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setChildrenDrawingOrderEnabled(Z)V

    .line 799
    if-eqz v2, :cond_4

    .line 800
    if-eqz p1, :cond_3

    const/4 v0, 0x2

    :cond_3
    iput v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mDrawingOrder:I

    .line 801
    iput p3, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageTransformerLayerType:I

    goto :goto_3

    .line 803
    :cond_4
    iput v1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mDrawingOrder:I

    .line 805
    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->populate()V

    .line 806
    :cond_5
    return-void
.end method

.method setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .line 496
    iget v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 497
    return-void

    .line 500
    :cond_0
    iput p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScrollState:I

    .line 501
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageTransformer:Lcom/oneplus/support/viewpager/widget/ViewPager$PageTransformer;

    if-eqz v0, :cond_2

    .line 503
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->enableLayers(Z)V

    .line 505
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->dispatchOnScrollStateChanged(I)V

    .line 506
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 947
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->smoothScrollTo(III)V

    .line 948
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 18
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .line 958
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 960
    invoke-direct {v0, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 961
    return-void

    .line 965
    :cond_0
    iget-object v1, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 966
    .local v1, "wasScrolling":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 971
    iget-boolean v4, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getStartX()I

    move-result v4

    .line 973
    .local v4, "sx":I
    :goto_1
    iget-object v5, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 974
    invoke-direct {v0, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_2

    .line 976
    .end local v4    # "sx":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollX()I

    move-result v4

    .line 978
    .restart local v4    # "sx":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getScrollY()I

    move-result v11

    .line 979
    .local v11, "sy":I
    sub-int v12, p1, v4

    .line 980
    .local v12, "dx":I
    sub-int v13, p2, v11

    .line 981
    .local v13, "dy":I
    if-nez v12, :cond_4

    if-nez v13, :cond_4

    .line 982
    invoke-direct {v0, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 983
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->populate()V

    .line 984
    invoke-virtual {v0, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 985
    return-void

    .line 988
    :cond_4
    invoke-direct {v0, v3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 989
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 991
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v3

    .line 992
    .local v3, "width":I
    div-int/lit8 v14, v3, 0x2

    .line 993
    .local v14, "halfWidth":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    int-to-float v7, v3

    div-float/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 994
    .local v15, "distanceRatio":F
    int-to-float v5, v14

    int-to-float v7, v14

    .line 995
    invoke-virtual {v0, v15}, Lcom/oneplus/support/viewpager/widget/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v16, v5, v7

    .line 998
    .local v16, "distance":F
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 999
    .end local p3    # "velocity":I
    .local v10, "velocity":I
    if-lez v10, :cond_5

    .line 1000
    const/high16 v5, 0x447a0000    # 1000.0f

    int-to-float v6, v10

    div-float v6, v16, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    .local v5, "duration":I
    goto :goto_3

    .line 1002
    .end local v5    # "duration":I
    :cond_5
    int-to-float v5, v3

    iget-object v7, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    iget v8, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {v7, v8}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v7

    mul-float/2addr v5, v7

    .line 1003
    .local v5, "pageWidth":F
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v8, v8

    add-float/2addr v8, v5

    div-float/2addr v7, v8

    .line 1004
    .local v7, "pageDelta":F
    add-float/2addr v6, v7

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v6, v8

    float-to-int v5, v6

    .line 1006
    .end local v7    # "pageDelta":F
    .local v5, "duration":I
    :goto_3
    const/16 v6, 0x258

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1010
    .end local v5    # "duration":I
    .local v17, "duration":I
    iput-boolean v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    .line 1011
    iget-object v5, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    move v6, v4

    move v7, v11

    move v8, v12

    move v9, v13

    move v2, v10

    .end local v10    # "velocity":I
    .local v2, "velocity":I
    move/from16 v10, v17

    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1012
    invoke-static/range {p0 .. p0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1013
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 918
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
