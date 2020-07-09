.class public abstract Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback$ItemTouchUIUtilImplHoneycomb;,
        Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback$ItemTouchUIUtilImplLollipop;
    }
.end annotation


# static fields
.field private static final ABS_HORIZONTAL_DIR_FLAGS:I = 0xc0c0c

.field public static final DEFAULT_DRAG_ANIMATION_DURATION:I = 0xc8

.field public static final DEFAULT_SWIPE_ANIMATION_DURATION:I = 0xfa

.field private static final DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS:J = 0x7d0L

.field static final RELATIVE_DIR_FLAGS:I = 0x303030

.field private static final sDragScrollInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

.field private static final sUICallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchUIUtil;


# instance fields
.field private mCachedMaxScrollSpeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1337
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback$1;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 1343
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback$2;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback$2;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 1359
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback$ItemTouchUIUtilImplLollipop;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback$ItemTouchUIUtilImplLollipop;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->sUICallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchUIUtil;

    .line 1365
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1355
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "x3"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # I
    .param p6, "x6"    # F
    .param p7, "x7"    # F

    .line 1321
    invoke-direct/range {p0 .. p7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->onDrawOver(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "x3"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # I
    .param p6, "x6"    # F
    .param p7, "x7"    # F

    .line 1321
    invoke-direct/range {p0 .. p7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->onDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    return-void
.end method

.method static synthetic access$2100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;
    .param p1, "x1"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "x2"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 1321
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->hasDragFlag(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;
    .param p1, "x1"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "x2"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 1321
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->hasSwipeFlag(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public static convertToRelativeDirection(II)I
    .locals 4
    .param p0, "flags"    # I
    .param p1, "layoutDirection"    # I

    .line 1492
    const v0, 0xc0c0c

    and-int v1, p0, v0

    .line 1493
    .local v1, "masked":I
    if-nez v1, :cond_0

    .line 1494
    return p0

    .line 1496
    :cond_0
    not-int v2, v1

    and-int/2addr p0, v2

    .line 1497
    if-nez p1, :cond_1

    .line 1499
    shl-int/lit8 v0, v1, 0x2

    or-int/2addr p0, v0

    .line 1500
    return p0

    .line 1503
    :cond_1
    shl-int/lit8 v2, v1, 0x1

    const v3, -0xc0c0d

    and-int/2addr v2, v3

    or-int/2addr p0, v2

    .line 1505
    shl-int/lit8 v2, v1, 0x1

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x2

    or-int/2addr p0, v0

    .line 1507
    return p0
.end method

.method public static getDefaultUIUtil()Lcom/oneplus/lib/widget/recyclerview/ItemTouchUIUtil;
    .locals 1

    .line 1477
    sget-object v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->sUICallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchUIUtil;

    return-object v0
.end method

.method private getMaxDragScroll(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I
    .locals 2
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 1855
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1856
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->item_touch_helper_max_drag_scroll_per_frame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    .line 1859
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return v0
.end method

.method private hasDragFlag(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 1606
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1607
    .local v0, "flags":I
    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private hasSwipeFlag(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 1612
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1613
    .local v0, "flags":I
    const v1, 0xff00

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static makeFlag(II)I
    .locals 1
    .param p0, "actionState"    # I
    .param p1, "directions"    # I

    .line 1538
    mul-int/lit8 v0, p0, 0x8

    shl-int v0, p1, v0

    return v0
.end method

.method public static makeMovementFlags(II)I
    .locals 2
    .param p0, "dragFlags"    # I
    .param p1, "swipeFlags"    # I

    .line 1522
    or-int v0, p1, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v0

    .line 1523
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v1

    or-int/2addr v0, v1

    .line 1522
    return v0
.end method

.method private onDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "selected"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p5, "actionState"    # I
    .param p6, "dX"    # F
    .param p7, "dY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .line 1932
    .local p4, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;>;"
    move-object v8, p1

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v9

    .line 1933
    .local v9, "recoverAnimSize":I
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 1934
    move-object/from16 v11, p4

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    .line 1935
    .local v12, "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    invoke-virtual {v12}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->update()V

    .line 1936
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 1937
    .local v13, "count":I
    iget-object v3, v12, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget v4, v12, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v5, v12, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v6, v12, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FFIZ)V

    .line 1939
    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1933
    .end local v12    # "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    .end local v13    # "count":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p4

    .line 1941
    .end local v10    # "i":I
    if-eqz p3, :cond_1

    .line 1942
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1943
    .local v10, "count":I
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FFIZ)V

    .line 1944
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1946
    .end local v10    # "count":I
    :cond_1
    return-void
.end method

.method private onDrawOver(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "selected"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p5, "actionState"    # I
    .param p6, "dX"    # F
    .param p7, "dY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .line 1951
    .local p4, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;>;"
    move-object v8, p1

    move-object/from16 v9, p4

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v10

    .line 1952
    .local v10, "recoverAnimSize":I
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_0

    .line 1953
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    .line 1954
    .local v12, "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 1955
    .local v13, "count":I
    iget-object v3, v12, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget v4, v12, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v5, v12, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v6, v12, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FFIZ)V

    .line 1957
    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1952
    .end local v12    # "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    .end local v13    # "count":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1959
    .end local v11    # "i":I
    :cond_0
    if-eqz p3, :cond_1

    .line 1960
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 1961
    .local v11, "count":I
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FFIZ)V

    .line 1962
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1964
    .end local v11    # "count":I
    :cond_1
    const/4 v0, 0x0

    .line 1965
    .local v0, "hasRunningAnimation":Z
    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 1966
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    .line 1967
    .local v2, "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->access$1900(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    if-nez v3, :cond_2

    .line 1968
    invoke-interface {v9, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1969
    iget-object v3, v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    goto :goto_2

    .line 1970
    :cond_2
    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->access$1900(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1971
    const/4 v0, 0x1

    .line 1965
    .end local v2    # "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1974
    .end local v1    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 1975
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->invalidate()V

    .line 1977
    :cond_5
    return-void
.end method


# virtual methods
.method public canDropOver(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "current"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "target"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 1633
    const/4 v0, 0x1

    return v0
.end method

.method public chooseDropTarget(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Ljava/util/List;II)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 14
    .param p1, "selected"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "curX"    # I
    .param p4, "curY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;II)",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;"
        }
    .end annotation

    .line 1755
    .local p2, "dropTargets":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    move-object v0, p1

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int v1, p3, v1

    .line 1756
    .local v1, "right":I
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v2, p4, v2

    .line 1757
    .local v2, "bottom":I
    const/4 v3, 0x0

    .line 1758
    .local v3, "winner":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    const/4 v4, -0x1

    .line 1759
    .local v4, "winnerScore":I
    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v5, p3, v5

    .line 1760
    .local v5, "dx":I
    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v6, p4, v6

    .line 1761
    .local v6, "dy":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    .line 1762
    .local v7, "targetsSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_4

    .line 1763
    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 1764
    .local v10, "target":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-lez v5, :cond_0

    .line 1765
    iget-object v11, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int/2addr v11, v1

    .line 1766
    .local v11, "diff":I
    if-gez v11, :cond_0

    iget-object v12, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v13

    if-le v12, v13, :cond_0

    .line 1767
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1768
    .local v12, "score":I
    if-le v12, v4, :cond_0

    .line 1769
    move v4, v12

    .line 1770
    move-object v3, v10

    .line 1774
    .end local v11    # "diff":I
    .end local v12    # "score":I
    :cond_0
    if-gez v5, :cond_1

    .line 1775
    iget-object v11, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v11, v11, p3

    .line 1776
    .restart local v11    # "diff":I
    if-lez v11, :cond_1

    iget-object v12, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    if-ge v12, v13, :cond_1

    .line 1777
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1778
    .restart local v12    # "score":I
    if-le v12, v4, :cond_1

    .line 1779
    move v4, v12

    .line 1780
    move-object v3, v10

    .line 1784
    .end local v11    # "diff":I
    .end local v12    # "score":I
    :cond_1
    if-gez v6, :cond_2

    .line 1785
    iget-object v11, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v11, v11, p4

    .line 1786
    .restart local v11    # "diff":I
    if-lez v11, :cond_2

    iget-object v12, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    if-ge v12, v13, :cond_2

    .line 1787
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1788
    .restart local v12    # "score":I
    if-le v12, v4, :cond_2

    .line 1789
    move v4, v12

    .line 1790
    move-object v3, v10

    .line 1795
    .end local v11    # "diff":I
    .end local v12    # "score":I
    :cond_2
    if-lez v6, :cond_3

    .line 1796
    iget-object v11, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    sub-int/2addr v11, v2

    .line 1797
    .restart local v11    # "diff":I
    if-gez v11, :cond_3

    iget-object v12, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    if-le v12, v13, :cond_3

    .line 1798
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1799
    .restart local v12    # "score":I
    if-le v12, v4, :cond_3

    .line 1800
    move v4, v12

    .line 1801
    move-object v3, v10

    .line 1762
    .end local v10    # "target":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v11    # "diff":I
    .end local v12    # "score":I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v9, p2

    .line 1806
    .end local v8    # "i":I
    return-object v3
.end method

.method public clearView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 1993
    sget-object v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->sUICallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchUIUtil;

    iget-object v1, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchUIUtil;->clearView(Landroid/view/View;)V

    .line 1994
    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .locals 4
    .param p1, "flags"    # I
    .param p2, "layoutDirection"    # I

    .line 1581
    const v0, 0x303030

    and-int v1, p1, v0

    .line 1582
    .local v1, "masked":I
    if-nez v1, :cond_0

    .line 1583
    return p1

    .line 1585
    :cond_0
    not-int v2, v1

    and-int/2addr p1, v2

    .line 1586
    if-nez p2, :cond_1

    .line 1588
    shr-int/lit8 v0, v1, 0x2

    or-int/2addr p1, v0

    .line 1589
    return p1

    .line 1592
    :cond_1
    shr-int/lit8 v2, v1, 0x1

    const v3, -0x303031

    and-int/2addr v2, v3

    or-int/2addr p1, v2

    .line 1594
    shr-int/lit8 v2, v1, 0x1

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr p1, v0

    .line 1596
    return p1
.end method

.method final getAbsoluteMovementFlags(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 1601
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getMovementFlags(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1602
    .local v0, "flags":I
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v1

    return v1
.end method

.method public getAnimationDuration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;IFF)J
    .locals 3
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "animationType"    # I
    .param p3, "animateDx"    # F
    .param p4, "animateDy"    # F

    .line 2086
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getItemAnimator()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 2087
    .local v0, "itemAnimator":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 2088
    if-ne p2, v1, :cond_0

    const-wide/16 v1, 0xc8

    goto :goto_0

    .line 2089
    :cond_0
    const-wide/16 v1, 0xfa

    .line 2088
    :goto_0
    return-wide v1

    .line 2091
    :cond_1
    if-ne p2, v1, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v1

    goto :goto_1

    .line 2092
    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v1

    .line 2091
    :goto_1
    return-wide v1
.end method

.method public getBoundingBoxMargin()I
    .locals 1

    .line 1696
    const/4 v0, 0x0

    return v0
.end method

.method public getMoveThreshold(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)F
    .locals 1
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 1724
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public abstract getMovementFlags(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
.end method

.method public getSwipeThreshold(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)F
    .locals 1
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 1711
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public interpolateOutOfBoundsScroll(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;IIIJ)I
    .locals 8
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "viewSize"    # I
    .param p3, "viewSizeOutOfBounds"    # I
    .param p4, "totalSize"    # I
    .param p5, "msSinceStartScroll"    # J

    .line 2120
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getMaxDragScroll(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v0

    .line 2121
    .local v0, "maxScroll":I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2122
    .local v1, "absOutOfBounds":I
    int-to-float v2, p3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    .line 2124
    .local v2, "direction":I
    int-to-float v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v5, p2

    div-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2125
    .local v3, "outOfBoundsRatio":F
    mul-int v4, v2, v0

    int-to-float v4, v4

    sget-object v5, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 2126
    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 2128
    .local v4, "cappedScroll":I
    const-wide/16 v5, 0x7d0

    cmp-long v5, p5, v5

    if-lez v5, :cond_0

    .line 2129
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "timeRatio":F
    goto :goto_0

    .line 2131
    .end local v5    # "timeRatio":F
    :cond_0
    long-to-float v5, p5

    const/high16 v6, 0x44fa0000    # 2000.0f

    div-float/2addr v5, v6

    .line 2133
    .restart local v5    # "timeRatio":F
    :goto_0
    int-to-float v6, v4

    sget-object v7, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 2134
    invoke-interface {v7, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 2135
    .local v6, "value":I
    if-nez v6, :cond_2

    .line 2136
    if-lez p3, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :goto_1
    return v7

    .line 2138
    :cond_2
    return v6
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 1685
    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 1670
    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FFIZ)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 2026
    sget-object v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->sUICallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchUIUtil;

    iget-object v3, p3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;FFIZ)V

    .line 2028
    return-void
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FFIZ)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 2060
    sget-object v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->sUICallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchUIUtil;

    iget-object v3, p3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchUIUtil;->onDrawOver(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;FFIZ)V

    .line 2062
    return-void
.end method

.method public abstract onMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
.end method

.method public onMoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ILcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;III)V
    .locals 5
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "fromPos"    # I
    .param p4, "target"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p5, "toPos"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I

    .line 1898
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    .line 1899
    .local v0, "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    instance-of v1, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ViewDropHandler;

    if-eqz v1, :cond_0

    .line 1900
    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ViewDropHandler;

    iget-object v2, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2, v3, p6, p7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ViewDropHandler;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    .line 1902
    return-void

    .line 1906
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1907
    iget-object v1, p4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    .line 1908
    .local v1, "minLeft":I
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingLeft()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 1909
    invoke-virtual {p1, p5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->scrollToPosition(I)V

    .line 1911
    :cond_1
    iget-object v2, p4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v2

    .line 1912
    .local v2, "maxRight":I
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_2

    .line 1913
    invoke-virtual {p1, p5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->scrollToPosition(I)V

    .line 1917
    .end local v1    # "minLeft":I
    .end local v2    # "maxRight":I
    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1918
    iget-object v1, p4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    .line 1919
    .local v1, "minTop":I
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingTop()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 1920
    invoke-virtual {p1, p5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->scrollToPosition(I)V

    .line 1922
    :cond_3
    iget-object v2, p4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v2

    .line 1923
    .local v2, "maxBottom":I
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_4

    .line 1924
    invoke-virtual {p1, p5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->scrollToPosition(I)V

    .line 1927
    .end local v1    # "minTop":I
    .end local v2    # "maxBottom":I
    :cond_4
    return-void
.end method

.method public onSelectedChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .line 1849
    if-eqz p1, :cond_0

    .line 1850
    sget-object v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->sUICallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchUIUtil;

    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchUIUtil;->onSelected(Landroid/view/View;)V

    .line 1852
    :cond_0
    return-void
.end method

.method public abstract onSwiped(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
.end method
