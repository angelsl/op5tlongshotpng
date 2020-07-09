.class public Lcom/oneplus/lib/widget/listview/OPListView;
.super Landroid/widget/ListView;
.source "OPListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "OPListView"


# instance fields
.field private mAnimRunning:Z

.field private mAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mDelAniSet:Landroid/animation/AnimatorSet;

.field private mDelAnimationFlag:Z

.field private mDelOriViewTopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelPosList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

.field private mDisableTouchEvent:Z

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

.field private mDividerHeight:I

.field private mFooterDividersEnabled:Z

.field private mHeaderDividersEnabled:Z

.field private mInDeleteAnimation:Z

.field private mIsClipToPadding:Z

.field private mIsDisableAnimation:Z

.field private mNowViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOriBelowLeftCount:I

.field private mOriCurDeleteCount:I

.field private mOriCurLeftCount:I

.field private mOriFirstPosition:I

.field private mOriLastPage:Z

.field private mOriUpperDeleteCount:I

.field mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/listview/OPListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/listview/OPListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/listview/OPListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    .line 35
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsDisableAnimation:Z

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    .line 42
    iput-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    .line 43
    iput-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    .line 44
    iput-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    .line 45
    iput-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    .line 52
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3f99999a    # 1.2f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    .line 100
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mTempRect:Landroid/graphics/Rect;

    .line 101
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mHeaderDividersEnabled:Z

    .line 102
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mFooterDividersEnabled:Z

    .line 103
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsClipToPadding:Z

    .line 292
    iput-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    .line 321
    new-instance v0, Lcom/oneplus/lib/widget/listview/OPListView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/listview/OPListView$1;-><init>(Lcom/oneplus/lib/widget/listview/OPListView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/listview/OPListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;

    .line 28
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    return p1
.end method

.method static synthetic access$202(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mInDeleteAnimation:Z

    return p1
.end method

.method static synthetic access$302(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;

    .line 28
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;

    .line 28
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;

    .line 28
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;

    .line 28
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getAnimator(ILandroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 6
    .param p1, "index"    # I
    .param p2, "child"    # Landroid/view/View;
    .param p3, "startValue"    # F

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt p1, v1, :cond_0

    .line 331
    new-array v1, v2, [F

    aput p3, v1, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v3

    const-string v2, "y"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 332
    .local v1, "y":Landroid/animation/PropertyValuesHolder;
    new-array v2, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v4

    invoke-static {p2, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 333
    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v1    # "y":Landroid/animation/PropertyValuesHolder;
    goto :goto_0

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 336
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 337
    .local v1, "pvhArray":[Landroid/animation/PropertyValuesHolder;
    aget-object v5, v1, v4

    .line 338
    .local v5, "y":Landroid/animation/PropertyValuesHolder;
    new-array v2, v2, [F

    aput p3, v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-virtual {v5, v2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 339
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 341
    .end local v1    # "pvhArray":[Landroid/animation/PropertyValuesHolder;
    .end local v5    # "y":Landroid/animation/PropertyValuesHolder;
    :goto_0
    return-object v0
.end method

.method private getDividerType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 305
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    if-nez v0, :cond_0

    .line 306
    const/4 v0, -0x1

    return v0

    .line 309
    :cond_0
    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/listview/IOPDividerController;->getDividerType(I)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 77
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPListView:[I

    sget v1, Lcom/oneplus/commonctrl/R$attr;->OPListViewStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPListView_android_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 80
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPListView_android_background:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 82
    .local v3, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/listview/OPListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_0
    if-eqz v3, :cond_1

    .line 87
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/listview/OPListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$dimen;->listview_divider_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    .line 91
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->setOverScrollMode(I)V

    .line 93
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, 0x106000d

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-super {p0, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/listview/OPListView;->setDividerHeight(I)V

    .line 95
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->setFooterDividersEnabled(Z)V

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    return-void
.end method

.method private isClipToPadding()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsClipToPadding:Z

    return v0
.end method

.method private setDelViewLocation()V
    .locals 22

    .line 596
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v1

    .line 598
    .local v1, "nowFirstPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v2

    .line 599
    .local v2, "nowCurChildCount":I
    const/4 v3, 0x0

    .line 600
    .local v3, "nowLastPage":Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_0

    .line 601
    const/4 v3, 0x1

    .line 603
    :cond_0
    const/4 v4, 0x0

    .line 604
    .local v4, "nowFirstPage":Z
    if-nez v1, :cond_1

    .line 605
    const/4 v4, 0x1

    .line 607
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getTop()I

    move-result v5

    .line 608
    .local v5, "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getBottom()I

    move-result v7

    .line 610
    .local v7, "bottom":I
    const/4 v8, 0x0

    .line 611
    .local v8, "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v9

    .line 612
    .local v9, "childCount":I
    const/4 v10, 0x0

    .line 613
    .local v10, "height":I
    const/4 v11, 0x0

    .line 615
    .local v11, "diff":I
    iget-object v12, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    if-nez v12, :cond_2

    .line 616
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    goto :goto_0

    .line 618
    :cond_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 620
    :goto_0
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v9, :cond_4

    .line 621
    invoke-virtual {v0, v12}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 622
    iget-object v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    if-nez v12, :cond_3

    if-eqz v8, :cond_3

    .line 624
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 620
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 627
    .end local v12    # "i":I
    :cond_4
    const/4 v12, 0x1

    .line 628
    .local v12, "childIndex":I
    iget-boolean v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriLastPage:Z

    const/4 v14, 0x0

    const-string v15, "OPListView"

    if-nez v13, :cond_12

    .line 629
    if-nez v3, :cond_8

    .line 630
    iget v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-nez v13, :cond_5

    .line 631
    const-string v13, "DeleteAnimation Case 1"

    invoke-static {v15, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 633
    :cond_5
    iget v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v13, v6, :cond_6

    .line 634
    const-string v6, "DeleteAnimation Case 3 "

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_a

    .line 637
    :cond_6
    const-string v6, "DeleteAnimation Case 2 "

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-ge v6, v13, :cond_7

    .line 639
    iget-object v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 638
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v6    # "i":I
    :cond_7
    goto/16 :goto_a

    .line 643
    :cond_8
    if-nez v4, :cond_d

    .line 644
    iget v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-nez v6, :cond_9

    .line 645
    const-string v6, "DeleteAnimation Case 4 "

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 647
    :cond_9
    iget v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v13, :cond_b

    .line 648
    iget v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v6, v13, :cond_a

    .line 649
    const-string v6, "DeleteAnimation Case 9 "

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 651
    :cond_a
    const-string v6, "DeleteAnimation Case 10 "

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 654
    :cond_b
    iget v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v6, v13, :cond_c

    .line 655
    const-string v6, "DeleteAnimation Case 5 "

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 657
    :cond_c
    const-string v6, "DeleteAnimation Case 6 "

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 662
    :cond_d
    iget v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v6, :cond_e

    .line 663
    const-string v6, "DeleteAnimation Case 11 "

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 665
    :cond_e
    iget v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    iget v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v6, v13, :cond_f

    .line 666
    const-string v6, "DeleteAnimation Case 7 "

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 668
    :cond_f
    const-string v6, "DeleteAnimation Case 8 "

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :goto_3
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    iget v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriBelowLeftCount:I

    if-ge v6, v13, :cond_10

    .line 675
    iget-object v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    add-int/lit8 v15, v6, 0x1

    mul-int/2addr v15, v10

    add-int/2addr v15, v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 680
    .end local v6    # "i":I
    :cond_10
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v11, v6, v2

    .line 681
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    if-ge v6, v11, :cond_11

    .line 682
    iget-object v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 681
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 686
    .end local v6    # "i":I
    :cond_11
    const/4 v6, 0x1

    move v12, v6

    .line 687
    :goto_6
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v2, v6, :cond_1a

    .line 688
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    neg-int v13, v10

    mul-int/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v14, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 689
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 693
    :cond_12
    iget v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-nez v6, :cond_14

    .line 694
    iget v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v6, :cond_13

    goto :goto_8

    .line 697
    :cond_13
    const-string v6, "DeleteAnimation Case 14 "

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 700
    :cond_14
    iget v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v13, :cond_17

    .line 701
    iget v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v6, v13, :cond_15

    .line 702
    const-string v6, "DeleteAnimation Case 12 "

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_8

    .line 705
    :cond_15
    const-string v6, "DeleteAnimation Case 13 "

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    iget v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-ge v6, v13, :cond_16

    .line 707
    iget-object v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 706
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .end local v6    # "i":I
    :cond_16
    goto :goto_8

    .line 711
    :cond_17
    if-nez v4, :cond_19

    .line 712
    iget v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v6, v13, :cond_18

    .line 714
    const-string v6, "DeleteAnimation Case 15 "

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 716
    :cond_18
    const-string v6, "DeleteAnimation Case 16 "

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 719
    :cond_19
    const-string v6, "DeleteAnimation Case 17 "

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :goto_8
    const/4 v6, 0x1

    move v12, v6

    .line 726
    :goto_9
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v2, v6, :cond_1a

    .line 727
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    neg-int v13, v10

    mul-int/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v14, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 728
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 733
    :cond_1a
    :goto_a
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v6, v13

    .line 734
    .end local v11    # "diff":I
    .local v6, "diff":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_b
    if-ge v11, v6, :cond_1b

    .line 735
    iget-object v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    add-int/lit8 v14, v11, 0x1

    mul-int/2addr v14, v10

    add-int/2addr v14, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 739
    .end local v11    # "i":I
    :cond_1b
    const/4 v11, 0x0

    .line 740
    .local v11, "invertCount":I
    add-int/lit8 v13, v9, -0x1

    .local v13, "i":I
    :goto_c
    if-ltz v13, :cond_1e

    .line 741
    iget-object v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    iget-object v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v14, v15, :cond_1c

    .line 742
    iget-object v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 743
    iget-object v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_d

    .line 744
    :cond_1c
    iget-object v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    if-ge v14, v15, :cond_1d

    .line 745
    add-int/lit8 v11, v11, 0x1

    .line 740
    :cond_1d
    :goto_d
    add-int/lit8 v13, v13, -0x1

    goto :goto_c

    .line 750
    .end local v13    # "i":I
    :cond_1e
    const/4 v13, 0x1

    if-le v11, v13, :cond_21

    .line 751
    iget-object v13, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 752
    .local v13, "tmpViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 753
    .local v14, "tmpOriTopList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 754
    iget-object v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 755
    const/4 v15, 0x0

    .line 756
    .local v15, "tmpPos":I
    const/16 v17, 0x0

    move/from16 v21, v17

    move/from16 v17, v15

    move/from16 v15, v21

    .local v15, "i":I
    .local v17, "tmpPos":I
    :goto_e
    move/from16 v18, v1

    .end local v1    # "nowFirstPosition":I
    .local v18, "nowFirstPosition":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v15, v1, :cond_20

    .line 757
    if-ge v15, v11, :cond_1f

    .line 758
    sub-int v1, v11, v15

    const/16 v16, 0x1

    add-int/lit8 v1, v1, -0x1

    .end local v17    # "tmpPos":I
    .local v1, "tmpPos":I
    goto :goto_f

    .line 760
    .end local v1    # "tmpPos":I
    .restart local v17    # "tmpPos":I
    :cond_1f
    const/16 v16, 0x1

    move v1, v15

    .line 762
    .end local v17    # "tmpPos":I
    .restart local v1    # "tmpPos":I
    :goto_f
    move/from16 v19, v2

    .end local v2    # "nowCurChildCount":I
    .local v19, "nowCurChildCount":I
    iget-object v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v20, v3

    .end local v3    # "nowLastPage":Z
    .local v20, "nowLastPage":Z
    move-object/from16 v3, v17

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    iget-object v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    add-int/lit8 v15, v15, 0x1

    move/from16 v17, v1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    goto :goto_e

    .end local v1    # "tmpPos":I
    .end local v19    # "nowCurChildCount":I
    .end local v20    # "nowLastPage":Z
    .restart local v2    # "nowCurChildCount":I
    .restart local v3    # "nowLastPage":Z
    .restart local v17    # "tmpPos":I
    :cond_20
    move/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "nowCurChildCount":I
    .end local v3    # "nowLastPage":Z
    .restart local v19    # "nowCurChildCount":I
    .restart local v20    # "nowLastPage":Z
    goto :goto_10

    .line 750
    .end local v13    # "tmpViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v14    # "tmpOriTopList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v15    # "i":I
    .end local v17    # "tmpPos":I
    .end local v18    # "nowFirstPosition":I
    .end local v19    # "nowCurChildCount":I
    .end local v20    # "nowLastPage":Z
    .local v1, "nowFirstPosition":I
    .restart local v2    # "nowCurChildCount":I
    .restart local v3    # "nowLastPage":Z
    :cond_21
    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    .line 766
    .end local v1    # "nowFirstPosition":I
    .end local v2    # "nowCurChildCount":I
    .end local v3    # "nowLastPage":Z
    .restart local v18    # "nowFirstPosition":I
    .restart local v19    # "nowCurChildCount":I
    .restart local v20    # "nowLastPage":Z
    :goto_10
    return-void
.end method

.method private shouldDrawDivider(I)Z
    .locals 3
    .param p1, "childIndex"    # I

    .line 313
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/2addr v0, p1

    .line 314
    .local v0, "positionInAdapter":I
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerType(I)I

    move-result v1

    .line 315
    .local v1, "dividerType":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    if-eqz v2, :cond_1

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private startDelDropAnimation()V
    .locals 8

    .line 552
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    .line 553
    invoke-direct {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->setDelViewLocation()V

    .line 555
    const/16 v0, 0xc8

    .line 556
    .local v0, "minDuration":I
    const/16 v1, 0xc8

    .line 557
    .local v1, "time":I
    const/4 v2, 0x0

    .line 559
    .local v2, "child":Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 560
    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/view/View;

    .line 564
    const/16 v1, 0xc8

    .line 566
    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v3, v2, v4}, Lcom/oneplus/lib/widget/listview/OPListView;->getAnimator(ILandroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 567
    .local v4, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 569
    iget-object v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 570
    iget-object v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 571
    iget-object v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 559
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 574
    .end local v3    # "i":I
    .end local v4    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/oneplus/lib/widget/listview/OPListView$3;

    invoke-direct {v4, p0}, Lcom/oneplus/lib/widget/listview/OPListView$3;-><init>(Lcom/oneplus/lib/widget/listview/OPListView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 592
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 593
    return-void
.end method

.method private startDelGoneAnimation()V
    .locals 10

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    .line 488
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 489
    .local v1, "size":I
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 490
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    .line 491
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    if-eqz v0, :cond_0

    .line 492
    invoke-interface {v0}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    .line 494
    :cond_0
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    .line 496
    return-void

    .line 500
    :cond_1
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    .line 501
    const/16 v3, 0xc8

    .line 505
    .local v3, "time":I
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 507
    .local v4, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 508
    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 509
    .local v6, "child":Landroid/view/View;
    new-array v7, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v7, v2

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 510
    .local v7, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v8, v3

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 511
    iget-object v8, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 512
    iget-object v8, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 513
    iget-object v8, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-array v9, v0, [Landroid/animation/Animator;

    aput-object v7, v9, v2

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 507
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 516
    .end local v5    # "i":I
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/oneplus/lib/widget/listview/OPListView$2;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/listview/OPListView$2;-><init>(Lcom/oneplus/lib/widget/listview/OPListView;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 546
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 547
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 33
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 115
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getOverscrollHeader()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 118
    .local v2, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getOverscrollFooter()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 119
    .local v3, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 120
    .local v6, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v3, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 121
    .local v7, "drawOverscrollFooter":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 123
    .local v8, "drawDividers":Z
    :goto_2
    if-nez v8, :cond_4

    if-nez v6, :cond_4

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v21, v2

    move-object/from16 v24, v3

    move/from16 v25, v6

    move/from16 v29, v7

    goto/16 :goto_14

    .line 125
    :cond_4
    :goto_3
    iget-object v9, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mTempRect:Landroid/graphics/Rect;

    .line 126
    .local v9, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getPaddingLeft()I

    move-result v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getRight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v10

    .line 130
    .local v10, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getHeaderViewsCount()I

    move-result v11

    .line 131
    .local v11, "headerCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getCount()I

    move-result v12

    .line 132
    .local v12, "itemCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFooterViewsCount()I

    move-result v13

    sub-int v13, v12, v13

    .line 133
    .local v13, "footerLimit":I
    iget-boolean v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mHeaderDividersEnabled:Z

    .line 134
    .local v14, "headerDividers":Z
    iget-boolean v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mFooterDividersEnabled:Z

    .line 135
    .local v15, "footerDividers":Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v16

    .line 136
    .local v16, "first":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v17

    .line 142
    .local v17, "adapter":Landroid/widget/ListAdapter;
    const/16 v18, 0x0

    .line 143
    .local v18, "effectivePaddingTop":I
    const/16 v19, 0x0

    .line 144
    .local v19, "effectivePaddingBottom":I
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->isClipToPadding()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getListPaddingTop()I

    move-result v18

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getListPaddingBottom()I

    move-result v19

    move/from16 v5, v18

    goto :goto_4

    .line 144
    :cond_5
    move/from16 v5, v18

    .line 149
    .end local v18    # "effectivePaddingTop":I
    .local v5, "effectivePaddingTop":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getBottom()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getTop()I

    move-result v21

    sub-int v20, v20, v21

    sub-int v20, v20, v19

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getScrollY()I

    move-result v21

    add-int v4, v20, v21

    .line 150
    .local v4, "listBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->isStackFromBottom()Z

    move-result v20

    move-object/from16 v21, v2

    .end local v2    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v21, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    if-nez v20, :cond_14

    .line 151
    const/16 v20, 0x0

    .line 154
    .local v20, "bottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getScrollY()I

    move-result v22

    .line 155
    .local v22, "scrollY":I
    if-lez v10, :cond_6

    if-gez v22, :cond_6

    .line 156
    if-eqz v8, :cond_6

    .line 157
    const/4 v2, 0x0

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v2

    neg-int v2, v2

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 159
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v9, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 163
    :cond_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v10, :cond_13

    .line 164
    move-object/from16 v24, v3

    .end local v3    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v24, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    add-int v3, v16, v2

    .line 165
    .local v3, "itemIndex":I
    if-ge v3, v11, :cond_7

    const/16 v23, 0x1

    goto :goto_6

    :cond_7
    const/16 v23, 0x0

    .line 166
    .local v23, "isHeader":Z
    :goto_6
    if-lt v3, v13, :cond_8

    const/16 v25, 0x1

    goto :goto_7

    :cond_8
    const/16 v25, 0x0

    .line 167
    .local v25, "isFooter":Z
    :goto_7
    if-nez v14, :cond_9

    if-nez v23, :cond_a

    :cond_9
    if-nez v15, :cond_b

    if-nez v25, :cond_a

    goto :goto_8

    .line 163
    .end local v3    # "itemIndex":I
    .end local v23    # "isHeader":Z
    .end local v25    # "isFooter":Z
    :cond_a
    move/from16 v28, v5

    move/from16 v29, v7

    move/from16 v27, v12

    goto/16 :goto_c

    .line 168
    .restart local v3    # "itemIndex":I
    .restart local v23    # "isHeader":Z
    .restart local v25    # "isFooter":Z
    :cond_b
    :goto_8
    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 169
    .local v26, "child":Landroid/view/View;
    move/from16 v27, v12

    .end local v12    # "itemCount":I
    .local v27, "itemCount":I
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 170
    .end local v20    # "bottom":I
    .local v12, "bottom":I
    move/from16 v28, v5

    .end local v5    # "effectivePaddingTop":I
    .local v28, "effectivePaddingTop":I
    add-int/lit8 v5, v10, -0x1

    if-ne v2, v5, :cond_c

    const/4 v5, 0x1

    goto :goto_9

    :cond_c
    const/4 v5, 0x0

    .line 172
    .local v5, "isLastItem":Z
    :goto_9
    if-eqz v8, :cond_11

    invoke-direct {v0, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->shouldDrawDivider(I)Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v20

    if-lez v20, :cond_11

    if-ge v12, v4, :cond_11

    if-eqz v7, :cond_e

    if-nez v5, :cond_d

    goto :goto_a

    :cond_d
    move/from16 v29, v7

    goto :goto_b

    .line 173
    :cond_e
    :goto_a
    move/from16 v29, v7

    .end local v7    # "drawOverscrollFooter":Z
    .local v29, "drawOverscrollFooter":Z
    add-int/lit8 v7, v3, 0x1

    .line 177
    .local v7, "nextIndex":I
    if-nez v14, :cond_f

    if-nez v23, :cond_12

    if-lt v7, v11, :cond_12

    :cond_f
    if-nez v5, :cond_10

    if-nez v15, :cond_10

    if-nez v25, :cond_12

    if-ge v7, v13, :cond_12

    .line 180
    :cond_10
    move/from16 v30, v3

    .end local v3    # "itemIndex":I
    .local v30, "itemIndex":I
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    .line 181
    .local v3, "translationOffsetY":I
    move/from16 v20, v5

    .end local v5    # "isLastItem":Z
    .local v20, "isLastItem":Z
    add-int v5, v12, v3

    iput v5, v9, Landroid/graphics/Rect;->top:I

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v5, v12

    add-int/2addr v5, v3

    iput v5, v9, Landroid/graphics/Rect;->bottom:I

    .line 183
    invoke-virtual {v0, v1, v9, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_b

    .line 172
    .end local v20    # "isLastItem":Z
    .end local v29    # "drawOverscrollFooter":Z
    .end local v30    # "itemIndex":I
    .local v3, "itemIndex":I
    .restart local v5    # "isLastItem":Z
    .local v7, "drawOverscrollFooter":Z
    :cond_11
    move/from16 v30, v3

    move/from16 v20, v5

    move/from16 v29, v7

    .line 163
    .end local v3    # "itemIndex":I
    .end local v5    # "isLastItem":Z
    .end local v7    # "drawOverscrollFooter":Z
    .end local v23    # "isHeader":Z
    .end local v25    # "isFooter":Z
    .end local v26    # "child":Landroid/view/View;
    .restart local v29    # "drawOverscrollFooter":Z
    :cond_12
    :goto_b
    move/from16 v20, v12

    .end local v12    # "bottom":I
    .local v20, "bottom":I
    :goto_c
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v24

    move/from16 v12, v27

    move/from16 v5, v28

    move/from16 v7, v29

    goto/16 :goto_5

    .end local v24    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v27    # "itemCount":I
    .end local v28    # "effectivePaddingTop":I
    .end local v29    # "drawOverscrollFooter":Z
    .local v3, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v5, "effectivePaddingTop":I
    .restart local v7    # "drawOverscrollFooter":Z
    .local v12, "itemCount":I
    :cond_13
    move-object/from16 v24, v3

    move/from16 v28, v5

    move/from16 v29, v7

    move/from16 v27, v12

    .line 189
    .end local v2    # "i":I
    .end local v3    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v5    # "effectivePaddingTop":I
    .end local v7    # "drawOverscrollFooter":Z
    .end local v12    # "itemCount":I
    .end local v20    # "bottom":I
    .end local v22    # "scrollY":I
    .restart local v24    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v27    # "itemCount":I
    .restart local v28    # "effectivePaddingTop":I
    .restart local v29    # "drawOverscrollFooter":Z
    move/from16 v25, v6

    goto/16 :goto_14

    .line 191
    .end local v24    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v27    # "itemCount":I
    .end local v28    # "effectivePaddingTop":I
    .end local v29    # "drawOverscrollFooter":Z
    .restart local v3    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "effectivePaddingTop":I
    .restart local v7    # "drawOverscrollFooter":Z
    .restart local v12    # "itemCount":I
    :cond_14
    move-object/from16 v24, v3

    move/from16 v28, v5

    move/from16 v29, v7

    move/from16 v27, v12

    .end local v3    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v5    # "effectivePaddingTop":I
    .end local v7    # "drawOverscrollFooter":Z
    .end local v12    # "itemCount":I
    .restart local v24    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v27    # "itemCount":I
    .restart local v28    # "effectivePaddingTop":I
    .restart local v29    # "drawOverscrollFooter":Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getScrollY()I

    move-result v2

    .line 192
    .local v2, "scrollY":I
    if-eqz v6, :cond_15

    const/4 v3, 0x1

    goto :goto_d

    :cond_15
    const/4 v3, 0x0

    .line 194
    .local v3, "start":I
    :goto_d
    move v5, v3

    .local v5, "i":I
    :goto_e
    if-ge v5, v10, :cond_21

    .line 195
    add-int v7, v16, v5

    .line 196
    .local v7, "itemIndex":I
    if-ge v7, v11, :cond_16

    const/4 v12, 0x1

    goto :goto_f

    :cond_16
    const/4 v12, 0x0

    .line 197
    .local v12, "isHeader":Z
    :goto_f
    if-lt v7, v13, :cond_17

    const/16 v20, 0x1

    goto :goto_10

    :cond_17
    const/16 v20, 0x0

    .line 198
    .local v20, "isFooter":Z
    :goto_10
    if-nez v14, :cond_19

    if-nez v12, :cond_18

    goto :goto_11

    :cond_18
    move/from16 v30, v3

    move/from16 v26, v4

    move/from16 v25, v6

    move/from16 v4, v28

    goto :goto_13

    :cond_19
    :goto_11
    if-nez v15, :cond_1a

    if-nez v20, :cond_18

    .line 199
    :cond_1a
    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 200
    .local v22, "child":Landroid/view/View;
    move/from16 v25, v6

    .end local v6    # "drawOverscrollHeader":Z
    .local v25, "drawOverscrollHeader":Z
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v6

    .line 201
    .local v6, "top":I
    if-eqz v8, :cond_1f

    invoke-direct {v0, v5}, Lcom/oneplus/lib/widget/listview/OPListView;->shouldDrawDivider(I)Z

    move-result v26

    if-eqz v26, :cond_1f

    move/from16 v26, v4

    move/from16 v4, v28

    .end local v28    # "effectivePaddingTop":I
    .local v4, "effectivePaddingTop":I
    .local v26, "listBottom":I
    if-le v6, v4, :cond_1e

    .line 202
    if-ne v5, v3, :cond_1b

    const/16 v28, 0x1

    goto :goto_12

    :cond_1b
    const/16 v28, 0x0

    .line 203
    .local v28, "isFirstItem":Z
    :goto_12
    move/from16 v30, v3

    .end local v3    # "start":I
    .local v30, "start":I
    add-int/lit8 v3, v7, -0x1

    .line 207
    .local v3, "previousIndex":I
    if-nez v14, :cond_1c

    if-nez v12, :cond_20

    if-lt v3, v11, :cond_20

    :cond_1c
    if-nez v28, :cond_1d

    if-nez v15, :cond_1d

    if-nez v20, :cond_20

    if-ge v3, v13, :cond_20

    .line 209
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v31

    move/from16 v32, v3

    .end local v3    # "previousIndex":I
    .local v32, "previousIndex":I
    sub-int v3, v6, v31

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 210
    iput v6, v9, Landroid/graphics/Rect;->bottom:I

    .line 215
    add-int/lit8 v3, v5, -0x1

    invoke-virtual {v0, v1, v9, v3}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_13

    .line 201
    .end local v28    # "isFirstItem":Z
    .end local v30    # "start":I
    .end local v32    # "previousIndex":I
    .local v3, "start":I
    :cond_1e
    move/from16 v30, v3

    .end local v3    # "start":I
    .restart local v30    # "start":I
    goto :goto_13

    .end local v26    # "listBottom":I
    .end local v30    # "start":I
    .restart local v3    # "start":I
    .local v4, "listBottom":I
    .local v28, "effectivePaddingTop":I
    :cond_1f
    move/from16 v30, v3

    move/from16 v26, v4

    move/from16 v4, v28

    .line 194
    .end local v3    # "start":I
    .end local v6    # "top":I
    .end local v7    # "itemIndex":I
    .end local v12    # "isHeader":Z
    .end local v20    # "isFooter":Z
    .end local v22    # "child":Landroid/view/View;
    .end local v28    # "effectivePaddingTop":I
    .local v4, "effectivePaddingTop":I
    .restart local v26    # "listBottom":I
    .restart local v30    # "start":I
    :cond_20
    :goto_13
    add-int/lit8 v5, v5, 0x1

    move/from16 v28, v4

    move/from16 v6, v25

    move/from16 v4, v26

    move/from16 v3, v30

    goto :goto_e

    .end local v25    # "drawOverscrollHeader":Z
    .end local v26    # "listBottom":I
    .end local v30    # "start":I
    .restart local v3    # "start":I
    .local v4, "listBottom":I
    .local v6, "drawOverscrollHeader":Z
    .restart local v28    # "effectivePaddingTop":I
    :cond_21
    move/from16 v30, v3

    move/from16 v26, v4

    move/from16 v25, v6

    move/from16 v4, v28

    .line 221
    .end local v3    # "start":I
    .end local v5    # "i":I
    .end local v6    # "drawOverscrollHeader":Z
    .end local v28    # "effectivePaddingTop":I
    .local v4, "effectivePaddingTop":I
    .restart local v25    # "drawOverscrollHeader":Z
    .restart local v26    # "listBottom":I
    .restart local v30    # "start":I
    if-lez v10, :cond_23

    if-lez v2, :cond_23

    .line 222
    if-eqz v8, :cond_22

    .line 223
    move/from16 v3, v26

    .end local v26    # "listBottom":I
    .local v3, "listBottom":I
    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v5, v3

    iput v5, v9, Landroid/graphics/Rect;->bottom:I

    .line 225
    const/4 v5, -0x1

    invoke-virtual {v0, v1, v9, v5}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_14

    .line 222
    .end local v3    # "listBottom":I
    .restart local v26    # "listBottom":I
    :cond_22
    move/from16 v3, v26

    .end local v26    # "listBottom":I
    .restart local v3    # "listBottom":I
    goto :goto_14

    .line 221
    .end local v3    # "listBottom":I
    .restart local v26    # "listBottom":I
    :cond_23
    move/from16 v3, v26

    .line 233
    .end local v2    # "scrollY":I
    .end local v4    # "effectivePaddingTop":I
    .end local v9    # "bounds":Landroid/graphics/Rect;
    .end local v10    # "count":I
    .end local v11    # "headerCount":I
    .end local v13    # "footerLimit":I
    .end local v14    # "headerDividers":Z
    .end local v15    # "footerDividers":Z
    .end local v16    # "first":I
    .end local v17    # "adapter":Landroid/widget/ListAdapter;
    .end local v19    # "effectivePaddingBottom":I
    .end local v26    # "listBottom":I
    .end local v27    # "itemCount":I
    .end local v30    # "start":I
    :goto_14
    iget-boolean v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    .line 234
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->startDelDropAnimation()V

    .line 237
    :cond_24
    return-void
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .line 273
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 275
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, p3

    .line 276
    .local v1, "positionInAdapter":I
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerType(I)I

    move-result v2

    .line 277
    .local v2, "dividerType":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    if-eqz v3, :cond_1

    .line 278
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 280
    const/4 v3, 0x0

    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 281
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getWidth()I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 282
    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 284
    const/16 v3, 0x64

    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 285
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x20

    iput v3, p2, Landroid/graphics/Rect;->right:I

    .line 288
    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 289
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 290
    return-void
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .line 259
    iget v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    return v0
.end method

.method public isDeleteAnimationEnabled()Z
    .locals 1

    .line 772
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsDisableAnimation:Z

    return v0
.end method

.method public setClipToPadding(Z)V
    .locals 0
    .param p1, "clipToPadding"    # Z

    .line 266
    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 267
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsClipToPadding:Z

    .line 268
    return-void
.end method

.method public setDelPositionsList(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 371
    .local p1, "deleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 375
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 376
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    .line 377
    return-void

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->isDeleteAnimationEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 380
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    if-eqz v1, :cond_1

    .line 381
    invoke-interface {v1}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    .line 382
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v1}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationStart()V

    .line 383
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v1}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationEnd()V

    .line 385
    :cond_1
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    .line 386
    return-void

    .line 389
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 390
    .local v1, "listLength":I
    if-nez v1, :cond_3

    .line 391
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    .line 392
    return-void

    .line 395
    :cond_3
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    .line 396
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    if-eqz v3, :cond_4

    .line 397
    invoke-interface {v3}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationStart()V

    .line 399
    :cond_4
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mInDeleteAnimation:Z

    .line 400
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    .line 401
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v3

    .line 403
    .local v3, "childCount":I
    iget v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    add-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    add-int/2addr v5, v1

    if-ne v4, v5, :cond_5

    .line 404
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriLastPage:Z

    goto :goto_0

    .line 406
    :cond_5
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriLastPage:Z

    .line 409
    :goto_0
    iput v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    .line 410
    iput v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    .line 412
    iput v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    .line 413
    iput v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriBelowLeftCount:I

    .line 415
    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    .line 416
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    goto :goto_1

    .line 418
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 420
    :goto_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    if-nez v4, :cond_7

    .line 421
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    goto :goto_2

    .line 423
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 425
    :goto_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    if-nez v4, :cond_8

    .line 426
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    goto :goto_3

    .line 428
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 431
    :goto_3
    const/4 v4, 0x0

    .line 432
    .local v4, "delPos":I
    const/4 v5, 0x0

    .line 433
    .local v5, "belowDeleteCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v1, :cond_b

    .line 434
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 435
    iget v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    if-ge v4, v7, :cond_9

    .line 436
    iget v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    goto :goto_5

    .line 437
    :cond_9
    add-int/2addr v7, v3

    if-ge v4, v7, :cond_a

    .line 438
    iget-object v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    sub-int v8, v4, v8

    invoke-virtual {p0, v8}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    iget v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    goto :goto_5

    .line 442
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 433
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 446
    .end local v6    # "i":I
    :cond_b
    const/4 v6, 0x0

    .line 448
    .local v6, "isDel":Z
    iget v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-gtz v7, :cond_c

    iget-object v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_d

    .line 449
    :cond_c
    const/4 v6, 0x1

    .line 451
    :cond_d
    const/4 v7, 0x0

    .line 452
    .local v7, "pos":I
    if-nez v6, :cond_e

    .line 453
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    .line 454
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mInDeleteAnimation:Z

    .line 455
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    .line 456
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    if-eqz v0, :cond_12

    .line 457
    invoke-interface {v0}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    .line 458
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationEnd()V

    goto :goto_8

    .line 461
    :cond_e
    const/4 v0, 0x0

    .line 462
    .local v0, "child":Landroid/view/View;
    iget-object v8, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 463
    .local v8, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6
    if-ge v9, v3, :cond_11

    .line 464
    if-lez v8, :cond_f

    .line 465
    iget v10, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    add-int v7, v10, v9

    .line 466
    iget-object v10, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 467
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_10

    .line 469
    iget-object v10, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 472
    :cond_f
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_10

    .line 474
    iget-object v10, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_10
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 478
    .end local v9    # "i":I
    :cond_11
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v9

    iget v10, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    .line 479
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/2addr v9, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getLastVisiblePosition()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v2

    sub-int/2addr v9, v5

    iput v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriBelowLeftCount:I

    .line 481
    invoke-direct {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->startDelGoneAnimation()V

    .line 483
    .end local v0    # "child":Landroid/view/View;
    .end local v8    # "size":I
    :cond_12
    :goto_8
    return-void

    .line 372
    .end local v1    # "listLength":I
    .end local v3    # "childCount":I
    .end local v4    # "delPos":I
    .end local v5    # "belowDeleteCount":I
    .end local v6    # "isDel":Z
    .end local v7    # "pos":I
    :cond_13
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    .line 373
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The input parameter d is null!"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDeleteAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 769
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsDisableAnimation:Z

    .line 770
    return-void
.end method

.method public setDeleteAnimationListener(Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    .line 367
    iput-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    .line 368
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 250
    iput-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 251
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->requestLayout()V

    .line 252
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->invalidate()V

    .line 253
    return-void
.end method

.method public setDividerController(Lcom/oneplus/lib/widget/listview/IOPDividerController;)V
    .locals 0
    .param p1, "dividerController"    # Lcom/oneplus/lib/widget/listview/IOPDividerController;

    .line 301
    iput-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    .line 302
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z

    .line 110
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mFooterDividersEnabled:Z

    .line 111
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .param p1, "headerDividersEnabled"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mHeaderDividersEnabled:Z

    .line 107
    return-void
.end method
