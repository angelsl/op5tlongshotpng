.class public Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;
.source "ItemTouchHelper.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;,
        Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;,
        Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$SimpleCallback;,
        Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;,
        Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ViewDropHandler;
    }
.end annotation


# static fields
.field private static final ACTION_MODE_DRAG_MASK:I = 0xff0000

.field private static final ACTION_MODE_IDLE_MASK:I = 0xff

.field private static final ACTION_MODE_SWIPE_MASK:I = 0xff00

.field public static final ACTION_STATE_DRAG:I = 0x2

.field public static final ACTION_STATE_IDLE:I = 0x0

.field public static final ACTION_STATE_SWIPE:I = 0x1

.field private static final ACTIVE_POINTER_ID_NONE:I = -0x1

.field public static final ANIMATION_TYPE_DRAG:I = 0x8

.field public static final ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DIRECTION_FLAG_COUNT:I = 0x8

.field public static final DOWN:I = 0x2

.field public static final END:I = 0x20

.field public static final LEFT:I = 0x4

.field public static final RIGHT:I = 0x8

.field public static final START:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ItemTouchHelper"

.field public static final UP:I = 0x1


# instance fields
.field mActionState:I

.field mActivePointerId:I

.field mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

.field private mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

.field private mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScrollStartTimeInMs:J

.field mDx:F

.field mDy:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mInitialTouchX:F

.field mInitialTouchY:F

.field private final mOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

.field private mOverdrawChild:Landroid/view/View;

.field private mOverdrawChildPosition:I

.field final mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field private final mScrollRunnable:Ljava/lang/Runnable;

.field mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field mSelectedFlags:I

.field mSelectedStartX:F

.field mSelectedStartY:F

.field private mSlop:I

.field private mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpPosition:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    .line 421
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpPosition:[F

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 199
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    .line 209
    const/4 v2, 0x0

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 235
    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$1;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 262
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    .line 269
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 276
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 283
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;-><init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    .line 422
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    .line 423
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .line 72
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->scrollIfNecessary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 72
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->moveIfNecessary(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;ILandroid/view/MotionEvent;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # I

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .line 72
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    .param p2, "x2"    # I

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->postDispatchSwipe(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .line 72
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # Landroid/view/View;

    .line 72
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .line 72
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->hasRunningRecoverAnim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .line 72
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .line 72
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChildPosition:I

    return v0
.end method

.method static synthetic access$2302(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # I

    .line 72
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChildPosition:I

    return p1
.end method

.method static synthetic access$2400(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 72
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .line 72
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .line 72
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .line 72
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->obtainVelocityTracker()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;)Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 72
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "x2"    # Z

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->endRecoverAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "x2"    # I

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->select(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method private addChildDrawingOrderCallback()V
    .locals 2

    .line 1227
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1228
    return-void

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_1

    .line 1231
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$5;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$5;-><init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    .line 1249
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setChildDrawingOrderCallback(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1250
    return-void
.end method

.method private checkHorizontalSwipe(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)I
    .locals 7
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .line 1184
    and-int/lit8 v0, p2, 0xc

    if-eqz v0, :cond_3

    .line 1185
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1186
    .local v0, "dirFlag":I
    :goto_0
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_2

    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_2

    .line 1187
    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1188
    .local v4, "xVelocity":F
    cmpl-float v1, v4, v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    move v1, v2

    .line 1189
    .local v1, "velDirFlag":I
    and-int v2, v1, p2

    if-eqz v2, :cond_2

    if-ne v0, v1, :cond_2

    .line 1190
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMinFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 1191
    return v1

    .line 1195
    .end local v1    # "velDirFlag":I
    .end local v4    # "xVelocity":F
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    .line 1196
    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getSwipeThreshold(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 1198
    .local v1, "threshold":F
    and-int v2, p2, v0

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_3

    .line 1199
    return v0

    .line 1202
    .end local v0    # "dirFlag":I
    .end local v1    # "threshold":F
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    .locals 16
    .param p1, "action"    # I
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .param p3, "pointerIndex"    # I

    .line 929
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    const/4 v3, 0x0

    if-nez v2, :cond_9

    const/4 v2, 0x2

    move/from16 v4, p1

    if-ne v4, v2, :cond_a

    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    if-eq v5, v2, :cond_a

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    .line 930
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 933
    :cond_0
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getScrollState()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 934
    return v3

    .line 936
    :cond_1
    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->findSwipedView(Landroid/view/MotionEvent;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    .line 937
    .local v2, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-nez v2, :cond_2

    .line 938
    return v3

    .line 940
    :cond_2
    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v6, v7, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v6

    .line 942
    .local v6, "movementFlags":I
    const v7, 0xff00

    and-int/2addr v7, v6

    shr-int/lit8 v7, v7, 0x8

    .line 945
    .local v7, "swipeFlags":I
    if-nez v7, :cond_3

    .line 946
    return v3

    .line 951
    :cond_3
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 952
    .local v8, "x":F
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 955
    .local v9, "y":F
    iget v10, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    sub-float v10, v8, v10

    .line 956
    .local v10, "dx":F
    iget v11, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    sub-float v11, v9, v11

    .line 959
    .local v11, "dy":F
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 960
    .local v12, "absDx":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 962
    .local v13, "absDy":F
    iget v14, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSlop:I

    int-to-float v15, v14

    cmpg-float v15, v12, v15

    if-gez v15, :cond_4

    int-to-float v14, v14

    cmpg-float v14, v13, v14

    if-gez v14, :cond_4

    .line 963
    return v3

    .line 965
    :cond_4
    cmpl-float v14, v12, v13

    const/4 v15, 0x0

    if-lez v14, :cond_6

    .line 966
    cmpg-float v14, v10, v15

    if-gez v14, :cond_5

    and-int/lit8 v14, v7, 0x4

    if-nez v14, :cond_5

    .line 967
    return v3

    .line 969
    :cond_5
    cmpl-float v14, v10, v15

    if-lez v14, :cond_8

    and-int/lit8 v14, v7, 0x8

    if-nez v14, :cond_8

    .line 970
    return v3

    .line 973
    :cond_6
    cmpg-float v14, v11, v15

    if-gez v14, :cond_7

    and-int/lit8 v14, v7, 0x1

    if-nez v14, :cond_7

    .line 974
    return v3

    .line 976
    :cond_7
    cmpl-float v14, v11, v15

    if-lez v14, :cond_8

    and-int/lit8 v14, v7, 0x2

    if-nez v14, :cond_8

    .line 977
    return v3

    .line 980
    :cond_8
    iput v15, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    iput v15, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    .line 981
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    .line 982
    invoke-direct {v0, v2, v5}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->select(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 983
    return v5

    .line 929
    .end local v2    # "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v6    # "movementFlags":I
    .end local v7    # "swipeFlags":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    .end local v10    # "dx":F
    .end local v11    # "dy":F
    .end local v12    # "absDx":F
    .end local v13    # "absDy":F
    :cond_9
    move/from16 v4, p1

    .line 931
    :cond_a
    :goto_0
    return v3
.end method

.method private checkVerticalSwipe(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)I
    .locals 7
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .line 1206
    and-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_3

    .line 1207
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1208
    .local v0, "dirFlag":I
    :goto_0
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_2

    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_2

    .line 1209
    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    .line 1210
    .local v4, "yVelocity":F
    cmpl-float v1, v4, v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    move v1, v2

    .line 1211
    .local v1, "velDirFlag":I
    and-int v2, v1, p2

    if-eqz v2, :cond_2

    if-ne v1, v0, :cond_2

    .line 1212
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMinFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 1213
    return v1

    .line 1217
    .end local v1    # "velDirFlag":I
    .end local v4    # "yVelocity":F
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    .line 1218
    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getSwipeThreshold(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 1219
    .local v1, "threshold":F
    and-int v2, p2, v0

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_3

    .line 1220
    return v0

    .line 1223
    .end local v0    # "dirFlag":I
    .end local v1    # "threshold":F
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private destroyCallbacks()V
    .locals 6

    .line 462
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V

    .line 463
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeOnItemTouchListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;)V

    .line 464
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeOnChildAttachStateChangeListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 466
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 467
    .local v0, "recoverAnimSize":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 468
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    .line 469
    .local v2, "recoverAnimation":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v5, v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->clearView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 467
    .end local v2    # "recoverAnimation":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 471
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 472
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 473
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 474
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->releaseVelocityTracker()V

    .line 475
    return-void
.end method

.method private endRecoverAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)I
    .locals 5
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "override"    # Z

    .line 863
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 864
    .local v0, "recoverAnimSize":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 865
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    .line 866
    .local v2, "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    iget-object v3, v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_1

    .line 867
    iget-boolean v3, v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    or-int/2addr v3, p2

    iput-boolean v3, v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 868
    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->access$1900(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 869
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->cancel()V

    .line 871
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 872
    iget-object v3, v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 873
    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->access$2000(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;)I

    move-result v3

    return v3

    .line 864
    .end local v2    # "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 876
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private findAnimation(Landroid/view/MotionEvent;)Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1103
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1104
    return-object v1

    .line 1106
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 1107
    .local v0, "target":Landroid/view/View;
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1108
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    .line 1109
    .local v3, "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    iget-object v4, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v4, v0, :cond_1

    .line 1110
    return-object v3

    .line 1107
    .end local v3    # "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1113
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 988
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 989
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 990
    .local v1, "y":F
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    .line 991
    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 992
    .local v2, "selectedView":Landroid/view/View;
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartX:F

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartY:F

    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    add-float/2addr v4, v5

    invoke-static {v2, v0, v1, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 993
    return-object v2

    .line 996
    .end local v2    # "selectedView":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 997
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    .line 998
    .local v3, "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    iget-object v4, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 999
    .local v4, "view":Landroid/view/View;
    iget v5, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v6, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mY:F

    invoke-static {v4, v0, v1, v5, v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1000
    return-object v4

    .line 996
    .end local v3    # "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1003
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private findSwapTargets(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Ljava/util/List;
    .locals 21
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 751
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    if-nez v2, :cond_0

    .line 752
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 753
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDistances:Ljava/util/List;

    goto :goto_0

    .line 755
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 756
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 758
    :goto_0
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v2

    .line 759
    .local v2, "margin":I
    iget v3, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartX:F

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v3, v2

    .line 760
    .local v3, "left":I
    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartY:F

    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v4, v2

    .line 761
    .local v4, "top":I
    iget-object v5, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    .line 762
    .local v5, "right":I
    iget-object v6, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    .line 763
    .local v6, "bottom":I
    add-int v7, v3, v5

    div-int/lit8 v7, v7, 0x2

    .line 764
    .local v7, "centerX":I
    add-int v8, v4, v6

    div-int/lit8 v8, v8, 0x2

    .line 765
    .local v8, "centerY":I
    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v9

    .line 766
    .local v9, "lm":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v10

    .line 767
    .local v10, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v10, :cond_8

    .line 768
    invoke-virtual {v9, v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 769
    .local v12, "other":Landroid/view/View;
    iget-object v13, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v12, v13, :cond_1

    .line 770
    move/from16 v19, v2

    move/from16 v16, v3

    goto/16 :goto_3

    .line 772
    :cond_1
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v13

    if-lt v13, v4, :cond_7

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    if-gt v13, v6, :cond_7

    .line 773
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    if-lt v13, v3, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    if-le v13, v5, :cond_2

    .line 774
    move/from16 v19, v2

    move/from16 v16, v3

    goto/16 :goto_3

    .line 776
    :cond_2
    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v13, v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v13

    .line 777
    .local v13, "otherVh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v15, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v14, v15, v1, v13}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->canDropOver(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 779
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v14

    add-int/2addr v1, v14

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 780
    .local v1, "dx":I
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v15

    add-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    sub-int v14, v8, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 781
    .local v14, "dy":I
    mul-int v15, v1, v1

    mul-int v16, v14, v14

    add-int v15, v15, v16

    .line 783
    .local v15, "dist":I
    const/16 v16, 0x0

    .line 784
    .local v16, "pos":I
    move/from16 v17, v1

    .end local v1    # "dx":I
    .local v17, "dx":I
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 785
    .local v1, "cnt":I
    const/16 v18, 0x0

    move/from16 v19, v2

    move/from16 v2, v18

    move/from16 v20, v16

    move/from16 v16, v3

    move/from16 v3, v20

    .local v2, "j":I
    .local v3, "pos":I
    .local v16, "left":I
    .local v19, "margin":I
    :goto_2
    if-ge v2, v1, :cond_3

    .line 786
    move/from16 v18, v1

    .end local v1    # "cnt":I
    .local v18, "cnt":I
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v15, v1, :cond_4

    .line 787
    add-int/lit8 v3, v3, 0x1

    .line 785
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v18

    goto :goto_2

    .end local v18    # "cnt":I
    .restart local v1    # "cnt":I
    :cond_3
    move/from16 v18, v1

    .line 792
    .end local v1    # "cnt":I
    .end local v2    # "j":I
    .restart local v18    # "cnt":I
    :cond_4
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v1, v3, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 793
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 777
    .end local v14    # "dy":I
    .end local v15    # "dist":I
    .end local v16    # "left":I
    .end local v17    # "dx":I
    .end local v18    # "cnt":I
    .end local v19    # "margin":I
    .local v2, "margin":I
    .local v3, "left":I
    :cond_5
    move/from16 v19, v2

    move/from16 v16, v3

    .end local v2    # "margin":I
    .end local v3    # "left":I
    .restart local v16    # "left":I
    .restart local v19    # "margin":I
    goto :goto_3

    .line 773
    .end local v13    # "otherVh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v16    # "left":I
    .end local v19    # "margin":I
    .restart local v2    # "margin":I
    .restart local v3    # "left":I
    :cond_6
    move/from16 v19, v2

    move/from16 v16, v3

    .end local v2    # "margin":I
    .end local v3    # "left":I
    .restart local v16    # "left":I
    .restart local v19    # "margin":I
    goto :goto_3

    .line 772
    .end local v16    # "left":I
    .end local v19    # "margin":I
    .restart local v2    # "margin":I
    .restart local v3    # "left":I
    :cond_7
    move/from16 v19, v2

    move/from16 v16, v3

    .line 767
    .end local v2    # "margin":I
    .end local v3    # "left":I
    .end local v12    # "other":Landroid/view/View;
    .restart local v16    # "left":I
    .restart local v19    # "margin":I
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v16

    move/from16 v2, v19

    goto/16 :goto_1

    .line 796
    .end local v11    # "i":I
    .end local v16    # "left":I
    .end local v19    # "margin":I
    .restart local v2    # "margin":I
    .restart local v3    # "left":I
    :cond_8
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    return-object v1
.end method

.method private findSwipedView(Landroid/view/MotionEvent;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 9
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 900
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    .line 901
    .local v0, "lm":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 902
    return-object v2

    .line 904
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 905
    .local v1, "pointerIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    sub-float/2addr v3, v4

    .line 906
    .local v3, "dx":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    sub-float/2addr v4, v5

    .line 907
    .local v4, "dy":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 908
    .local v5, "absDx":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 910
    .local v6, "absDy":F
    iget v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSlop:I

    int-to-float v8, v7

    cmpg-float v8, v5, v8

    if-gez v8, :cond_1

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_1

    .line 911
    return-object v2

    .line 913
    :cond_1
    cmpl-float v7, v5, v6

    if-lez v7, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 914
    return-object v2

    .line 915
    :cond_2
    cmpl-float v7, v6, v5

    if-lez v7, :cond_3

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 916
    return-object v2

    .line 918
    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    .line 919
    .local v7, "child":Landroid/view/View;
    if-nez v7, :cond_4

    .line 920
    return-object v2

    .line 922
    :cond_4
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    return-object v2
.end method

.method private getSelectedDxDy([F)V
    .locals 3
    .param p1, "outPosition"    # [F

    .line 486
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 487
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartX:F

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v1

    .line 491
    :goto_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 492
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartY:F

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_1

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    aput v0, p1, v1

    .line 496
    :goto_1
    return-void
.end method

.method private hasRunningRecoverAnim()Z
    .locals 3

    .line 675
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 676
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 677
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->access$1900(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 678
    const/4 v2, 0x1

    return v2

    .line 676
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 681
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "left"    # F
    .param p4, "top"    # F

    .line 426
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpl-float v0, p2, p4

    if-ltz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 426
    :goto_0
    return v0
.end method

.method private initGestureDetector()V
    .locals 4

    .line 478
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 479
    return-void

    .line 481
    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    .line 483
    return-void
.end method

.method private moveIfNecessary(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 17
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 803
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 804
    return-void

    .line 806
    :cond_0
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 807
    return-void

    .line 810
    :cond_1
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    invoke-virtual {v1, v9}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getMoveThreshold(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)F

    move-result v10

    .line 811
    .local v10, "threshold":F
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartX:F

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    add-float/2addr v1, v2

    float-to-int v11, v1

    .line 812
    .local v11, "x":I
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartY:F

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    add-float/2addr v1, v2

    float-to-int v12, v1

    .line 813
    .local v12, "y":I
    iget-object v1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v10

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 814
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 815
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v10

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 816
    return-void

    .line 818
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->findSwapTargets(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v13

    .line 819
    .local v13, "swapTargets":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 820
    return-void

    .line 823
    :cond_3
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    invoke-virtual {v1, v9, v13, v11, v12}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->chooseDropTarget(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Ljava/util/List;II)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v14

    .line 824
    .local v14, "target":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-nez v14, :cond_4

    .line 825
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 826
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 827
    return-void

    .line 829
    :cond_4
    invoke-virtual {v14}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v15

    .line 830
    .local v15, "toPosition":I
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v16

    .line 831
    .local v16, "fromPosition":I
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, v2, v9, v14}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->onMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 833
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v3, p1

    move/from16 v4, v16

    move-object v5, v14

    move v6, v15

    move v7, v11

    move v8, v12

    invoke-virtual/range {v1 .. v8}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->onMoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ILcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;III)V

    .line 836
    :cond_5
    return-void
.end method

.method private obtainVelocityTracker()V
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 889
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 890
    return-void
.end method

.method private postDispatchSwipe(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;I)V
    .locals 2
    .param p1, "anim"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    .param p2, "swipeDir"    # I

    .line 653
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$4;-><init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;I)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 672
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 895
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 897
    :cond_0
    return-void
.end method

.method private removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1253
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 1256
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v1, :cond_0

    .line 1257
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setChildDrawingOrderCallback(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1260
    :cond_0
    return-void
.end method

.method private scrollIfNecessary()Z
    .locals 23

    .line 688
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    if-nez v1, :cond_0

    .line 689
    iput-wide v3, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 690
    return v2

    .line 692
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 694
    .local v5, "now":J
    iget-wide v7, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    cmp-long v1, v7, v3

    if-nez v1, :cond_1

    const-wide/16 v7, 0x0

    goto :goto_0

    :cond_1
    sub-long v7, v5, v7

    :goto_0
    move-wide v14, v7

    .line 695
    .local v14, "scrollDuration":J
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v1

    .line 696
    .local v1, "lm":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    if-nez v7, :cond_2

    .line 697
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 699
    :cond_2
    const/4 v7, 0x0

    .line 700
    .local v7, "scrollX":I
    const/4 v8, 0x0

    .line 701
    .local v8, "scrollY":I
    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v9, v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 702
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    .line 703
    iget v9, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartX:F

    iget v11, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    add-float/2addr v9, v11

    float-to-int v9, v9

    .line 704
    .local v9, "curX":I
    iget-object v11, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int v11, v9, v11

    iget-object v12, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    .line 705
    .local v11, "leftDiff":I
    iget v12, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    cmpg-float v12, v12, v10

    if-gez v12, :cond_3

    if-gez v11, :cond_3

    .line 706
    move v7, v11

    goto :goto_1

    .line 707
    :cond_3
    iget v12, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    cmpl-float v12, v12, v10

    if-lez v12, :cond_4

    .line 708
    iget-object v12, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v12, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 709
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 710
    invoke-virtual {v13}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v13

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v13, v2

    sub-int/2addr v12, v13

    .line 711
    .local v12, "rightDiff":I
    if-lez v12, :cond_4

    .line 712
    move v2, v12

    move v7, v2

    .line 716
    .end local v9    # "curX":I
    .end local v11    # "leftDiff":I
    .end local v12    # "rightDiff":I
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 717
    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartY:F

    iget v9, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    add-float/2addr v2, v9

    float-to-int v2, v2

    .line 718
    .local v2, "curY":I
    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int v9, v2, v9

    iget-object v11, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingTop()I

    move-result v11

    sub-int/2addr v9, v11

    .line 719
    .local v9, "topDiff":I
    iget v11, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    cmpg-float v11, v11, v10

    if-gez v11, :cond_5

    if-gez v9, :cond_5

    .line 720
    move v8, v9

    goto :goto_2

    .line 721
    :cond_5
    iget v11, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    cmpl-float v10, v11, v10

    if-lez v10, :cond_6

    .line 722
    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v10, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v2

    iget-object v11, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    iget-object v11, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 723
    invoke-virtual {v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v11

    iget-object v12, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 724
    .local v10, "bottomDiff":I
    if-lez v10, :cond_6

    .line 725
    move v8, v10

    .line 729
    .end local v2    # "curY":I
    .end local v9    # "topDiff":I
    .end local v10    # "bottomDiff":I
    :cond_6
    :goto_2
    if-eqz v7, :cond_7

    .line 730
    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 731
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v11

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 732
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v13

    .line 730
    move v12, v7

    invoke-virtual/range {v9 .. v15}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;IIIJ)I

    move-result v7

    .line 734
    :cond_7
    if-eqz v8, :cond_8

    .line 735
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v10, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 736
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v18

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 737
    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v20

    .line 735
    move-object/from16 v16, v2

    move-object/from16 v17, v9

    move/from16 v19, v8

    move-wide/from16 v21, v14

    invoke-virtual/range {v16 .. v22}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;IIIJ)I

    move-result v8

    .line 739
    :cond_8
    if-nez v7, :cond_a

    if-eqz v8, :cond_9

    goto :goto_3

    .line 746
    :cond_9
    iput-wide v3, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 747
    const/4 v2, 0x0

    return v2

    .line 740
    :cond_a
    :goto_3
    iget-wide v9, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    cmp-long v2, v9, v3

    if-nez v2, :cond_b

    .line 741
    iput-wide v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 743
    :cond_b
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2, v7, v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->scrollBy(II)V

    .line 744
    const/4 v2, 0x1

    return v2
.end method

.method private select(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 27
    .param p1, "selected"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .line 532
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    iget-object v0, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne v12, v0, :cond_0

    iget v0, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    if-ne v13, v0, :cond_0

    .line 533
    return-void

    .line 535
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 536
    iget v14, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    .line 538
    .local v14, "prevActionState":I
    const/4 v15, 0x1

    invoke-direct {v11, v12, v15}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->endRecoverAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)I

    .line 539
    iput v13, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    .line 540
    const/4 v10, 0x2

    if-ne v13, v10, :cond_1

    .line 544
    iget-object v0, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 545
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->addChildDrawingOrderCallback()V

    .line 547
    :cond_1
    mul-int/lit8 v0, v13, 0x8

    const/16 v9, 0x8

    add-int/2addr v0, v9

    shl-int v0, v15, v0

    add-int/lit8 v16, v0, -0x1

    .line 549
    .local v16, "actionStateMask":I
    const/16 v17, 0x0

    .line 551
    .local v17, "preventLayout":Z
    iget-object v0, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    const/4 v8, 0x0

    if-eqz v0, :cond_8

    .line 552
    iget-object v7, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 553
    .local v7, "prevSelected":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget-object v0, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 554
    if-ne v14, v10, :cond_2

    move v0, v8

    goto :goto_0

    .line 555
    :cond_2
    invoke-direct {v11, v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->swipeIfNecessary(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v0

    :goto_0
    move v6, v0

    .line 556
    .local v6, "swipeDir":I
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->releaseVelocityTracker()V

    .line 560
    if-eq v6, v15, :cond_4

    if-eq v6, v10, :cond_4

    const/4 v0, 0x4

    if-eq v6, v0, :cond_3

    if-eq v6, v9, :cond_3

    const/16 v0, 0x10

    if-eq v6, v0, :cond_3

    const/16 v0, 0x20

    if-eq v6, v0, :cond_3

    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, "targetTranslateX":F
    const/4 v1, 0x0

    move/from16 v18, v0

    move/from16 v19, v1

    .local v1, "targetTranslateY":F
    goto :goto_1

    .line 565
    .end local v0    # "targetTranslateX":F
    .end local v1    # "targetTranslateY":F
    :cond_3
    const/4 v0, 0x0

    .line 566
    .local v0, "targetTranslateY":F
    iget v1, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget-object v2, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 567
    .local v1, "targetTranslateX":F
    move/from16 v19, v0

    move/from16 v18, v1

    goto :goto_1

    .line 570
    .end local v0    # "targetTranslateY":F
    .end local v1    # "targetTranslateX":F
    :cond_4
    const/4 v0, 0x0

    .line 571
    .local v0, "targetTranslateX":F
    iget v1, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget-object v2, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 572
    .local v1, "targetTranslateY":F
    move/from16 v18, v0

    move/from16 v19, v1

    .line 577
    .end local v0    # "targetTranslateX":F
    .end local v1    # "targetTranslateY":F
    .local v18, "targetTranslateX":F
    .local v19, "targetTranslateY":F
    :goto_1
    if-ne v14, v10, :cond_5

    .line 578
    const/16 v0, 0x8

    move v5, v0

    .local v0, "animationType":I
    goto :goto_2

    .line 579
    .end local v0    # "animationType":I
    :cond_5
    if-lez v6, :cond_6

    .line 580
    const/4 v0, 0x2

    move v5, v0

    .restart local v0    # "animationType":I
    goto :goto_2

    .line 582
    .end local v0    # "animationType":I
    :cond_6
    const/4 v0, 0x4

    move v5, v0

    .line 584
    .local v5, "animationType":I
    :goto_2
    iget-object v0, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {v11, v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 585
    iget-object v0, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpPosition:[F

    aget v20, v0, v8

    .line 586
    .local v20, "currentTranslateX":F
    aget v21, v0, v15

    .line 587
    .local v21, "currentTranslateY":F
    new-instance v22, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v7

    move v3, v5

    move v4, v14

    move v15, v5

    .end local v5    # "animationType":I
    .local v15, "animationType":I
    move/from16 v5, v20

    move/from16 v23, v6

    .end local v6    # "swipeDir":I
    .local v23, "swipeDir":I
    move/from16 v6, v21

    move-object/from16 v24, v7

    .end local v7    # "prevSelected":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .local v24, "prevSelected":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    move/from16 v7, v18

    move/from16 v25, v14

    move v14, v8

    .end local v14    # "prevActionState":I
    .local v25, "prevActionState":I
    move/from16 v8, v19

    move/from16 v26, v9

    move/from16 v9, v23

    move v14, v10

    move-object/from16 v10, v24

    invoke-direct/range {v0 .. v10}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;-><init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIFFFFILcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 616
    .local v0, "rv":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    iget-object v1, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v2, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    sub-float v3, v18, v20

    sub-float v4, v19, v21

    invoke-virtual {v1, v2, v15, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getAnimationDuration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;IFF)J

    move-result-wide v1

    .line 618
    .local v1, "duration":J
    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->setDuration(J)V

    .line 619
    iget-object v3, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->start()V

    .line 621
    const/4 v0, 0x1

    .line 622
    .end local v1    # "duration":J
    .end local v15    # "animationType":I
    .end local v17    # "preventLayout":Z
    .end local v18    # "targetTranslateX":F
    .end local v19    # "targetTranslateY":F
    .end local v20    # "currentTranslateX":F
    .end local v21    # "currentTranslateY":F
    .end local v23    # "swipeDir":I
    .local v0, "preventLayout":Z
    move/from16 v17, v0

    move-object/from16 v0, v24

    goto :goto_3

    .line 623
    .end local v0    # "preventLayout":Z
    .end local v24    # "prevSelected":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v25    # "prevActionState":I
    .restart local v7    # "prevSelected":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .restart local v14    # "prevActionState":I
    .restart local v17    # "preventLayout":Z
    :cond_7
    move-object/from16 v24, v7

    move/from16 v26, v9

    move/from16 v25, v14

    move v14, v10

    .end local v7    # "prevSelected":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v14    # "prevActionState":I
    .restart local v24    # "prevSelected":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .restart local v25    # "prevActionState":I
    move-object/from16 v0, v24

    .end local v24    # "prevSelected":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .local v0, "prevSelected":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v11, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 624
    iget-object v1, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v2, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->clearView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 626
    :goto_3
    const/4 v1, 0x0

    iput-object v1, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    goto :goto_4

    .line 551
    .end local v0    # "prevSelected":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v25    # "prevActionState":I
    .restart local v14    # "prevActionState":I
    :cond_8
    move/from16 v26, v9

    move/from16 v25, v14

    move v14, v10

    .line 628
    .end local v14    # "prevActionState":I
    .restart local v25    # "prevActionState":I
    :goto_4
    if-eqz v12, :cond_a

    .line 629
    iget-object v0, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v1, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 630
    invoke-virtual {v0, v1, v12}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v0

    and-int v0, v0, v16

    iget v1, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    mul-int/lit8 v1, v1, 0x8

    shr-int/2addr v0, v1

    iput v0, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedFlags:I

    .line 632
    iget-object v0, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartX:F

    .line 633
    iget-object v0, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartY:F

    .line 634
    iput-object v12, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 636
    if-ne v13, v14, :cond_9

    .line 637
    iget-object v0, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_5

    .line 636
    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    .line 628
    :cond_a
    const/4 v1, 0x0

    .line 640
    :goto_5
    iget-object v0, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 641
    .local v0, "rvParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_c

    .line 642
    iget-object v2, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v2, :cond_b

    const/4 v1, 0x1

    :cond_b
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 644
    :cond_c
    if-nez v17, :cond_d

    .line 645
    iget-object v1, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 647
    :cond_d
    iget-object v1, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v2, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget v3, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->onSelectedChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 648
    iget-object v1, v11, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->invalidate()V

    .line 649
    return-void
.end method

.method private setupCallbacks()V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 454
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSlop:I

    .line 455
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V

    .line 456
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addOnItemTouchListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;)V

    .line 457
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addOnChildAttachStateChangeListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 458
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->initGestureDetector()V

    .line 459
    return-void
.end method

.method private swipeIfNecessary(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 7
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 1138
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1139
    return v1

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, v2, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getMovementFlags(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1142
    .local v0, "originalMovementFlags":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 1144
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutDirection()I

    move-result v3

    .line 1142
    invoke-virtual {v2, v0, v3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v2

    .line 1145
    .local v2, "absoluteMovementFlags":I
    const v3, 0xff00

    and-int v4, v2, v3

    shr-int/lit8 v4, v4, 0x8

    .line 1147
    .local v4, "flags":I
    if-nez v4, :cond_1

    .line 1148
    return v1

    .line 1150
    :cond_1
    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x8

    .line 1153
    .local v3, "originalFlags":I
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 1154
    invoke-direct {p0, p1, v4}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->checkHorizontalSwipe(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    .local v6, "swipeDir":I
    if-lez v5, :cond_3

    .line 1156
    and-int v1, v3, v6

    if-nez v1, :cond_2

    .line 1158
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 1159
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutDirection()I

    move-result v1

    .line 1158
    invoke-static {v6, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v1

    return v1

    .line 1161
    :cond_2
    return v6

    .line 1163
    :cond_3
    invoke-direct {p0, p1, v4}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->checkVerticalSwipe(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    if-lez v5, :cond_7

    .line 1164
    return v6

    .line 1167
    .end local v6    # "swipeDir":I
    :cond_4
    invoke-direct {p0, p1, v4}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->checkVerticalSwipe(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    .restart local v6    # "swipeDir":I
    if-lez v5, :cond_5

    .line 1168
    return v6

    .line 1170
    :cond_5
    invoke-direct {p0, p1, v4}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->checkHorizontalSwipe(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    if-lez v5, :cond_7

    .line 1172
    and-int v1, v3, v6

    if-nez v1, :cond_6

    .line 1174
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 1175
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutDirection()I

    move-result v1

    .line 1174
    invoke-static {v6, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v1

    return v1

    .line 1177
    :cond_6
    return v6

    .line 1180
    :cond_7
    return v1
.end method

.method private updateDxDy(Landroid/view/MotionEvent;II)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "directionFlags"    # I
    .param p3, "pointerIndex"    # I

    .line 1117
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1118
    .local v0, "x":F
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1121
    .local v1, "y":F
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    sub-float v2, v0, v2

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    .line 1122
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    sub-float v2, v1, v2

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    .line 1123
    and-int/lit8 v2, p2, 0x4

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1124
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    .line 1126
    :cond_0
    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_1

    .line 1127
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    .line 1129
    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_2

    .line 1130
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    .line 1132
    :cond_2
    and-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_3

    .line 1133
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    .line 1135
    :cond_3
    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 440
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-ne v0, p1, :cond_0

    .line 441
    return-void

    .line 443
    :cond_0
    if-eqz v0, :cond_1

    .line 444
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->destroyCallbacks()V

    .line 446
    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 447
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_2

    .line 448
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->setupCallbacks()V

    .line 450
    :cond_2
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 0
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p4, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 882
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 883
    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 840
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 844
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 845
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 846
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-nez v0, :cond_0

    .line 847
    return-void

    .line 849
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-ne v0, v1, :cond_1

    .line 850
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->select(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 852
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->endRecoverAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)I

    .line 853
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 854
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->clearView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 857
    :cond_2
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 513
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 514
    const/4 v0, 0x0

    .local v0, "dx":F
    const/4 v1, 0x0

    .line 515
    .local v1, "dy":F
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    .line 516
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 517
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 518
    const/4 v3, 0x1

    aget v1, v2, v3

    .line 520
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    move-object v3, p1

    move-object v4, p2

    move v8, v0

    move v9, v1

    invoke-static/range {v2 .. v9}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->access$1400(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 522
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 500
    const/4 v0, 0x0

    .local v0, "dx":F
    const/4 v1, 0x0

    .line 501
    .local v1, "dy":F
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    .line 502
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 503
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 504
    const/4 v3, 0x1

    aget v1, v2, v3

    .line 506
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    move-object v3, p1

    move-object v4, p2

    move v8, v0

    move v9, v1

    invoke-static/range {v2 .. v9}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->access$1300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 508
    return-void
.end method

.method public startDrag(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 1041
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->access$2100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    const-string v1, "ItemTouchHelper"

    if-nez v0, :cond_0

    .line 1042
    const-string v0, "Start drag has been called but swiping is not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    return-void

    .line 1045
    :cond_0
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eq v0, v2, :cond_1

    .line 1046
    const-string v0, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    return-void

    .line 1050
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1051
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    .line 1052
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->select(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 1053
    return-void
.end method

.method public startSwipe(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 1088
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->access$2200(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    const-string v1, "ItemTouchHelper"

    if-nez v0, :cond_0

    .line 1089
    const-string v0, "Start swipe has been called but dragging is not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    return-void

    .line 1092
    :cond_0
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eq v0, v2, :cond_1

    .line 1093
    const-string v0, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void

    .line 1097
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1098
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    .line 1099
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->select(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 1100
    return-void
.end method
