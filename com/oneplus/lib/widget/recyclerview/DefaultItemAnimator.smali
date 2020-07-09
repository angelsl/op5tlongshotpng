.class public Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ViewPropertyAnimatorListener;,
        Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$VpaListenerAdapter;,
        Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;,
        Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;
    .param p1, "x1"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->animateMoveImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    .line 41
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    .line 41
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    .line 41
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;
    .param p1, "x1"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->animateChangeImpl(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    .line 41
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;
    .param p1, "x1"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->animateAddImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    .line 41
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    .line 41
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    .line 41
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    .line 41
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method private animateAddImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 5
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 229
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 230
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 231
    .local v1, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getAddDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$5;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$5;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 233
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 249
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 250
    return-void
.end method

.method private animateChangeImpl(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V
    .locals 8
    .param p1, "changeInfo"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    .line 339
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 340
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 341
    .local v2, "view":Landroid/view/View;
    :goto_0
    iget-object v3, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 342
    .local v3, "newHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v3, :cond_1

    iget-object v1, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 343
    .local v1, "newView":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 344
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 345
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v6

    .line 344
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 346
    .local v5, "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget v6, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->toX:I

    iget v7, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 348
    iget v6, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->toY:I

    iget v7, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 349
    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;

    invoke-direct {v7, p0, p1, v5, v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 365
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 367
    .end local v5    # "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    :cond_2
    if-eqz v1, :cond_3

    .line 368
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 369
    .local v5, "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    .line 371
    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v6, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;

    invoke-direct {v6, p0, p1, v5, v1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 386
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 388
    .end local v5    # "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    :cond_3
    return-void
.end method

.method private animateMoveImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V
    .locals 14
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 276
    move-object v6, p1

    iget-object v7, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 277
    .local v7, "view":Landroid/view/View;
    sub-int v8, p4, p2

    .line 278
    .local v8, "deltaX":I
    sub-int v9, p5, p3

    .line 279
    .local v9, "deltaY":I
    const/4 v0, 0x0

    if-eqz v8, :cond_0

    .line 280
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 282
    :cond_0
    if-eqz v9, :cond_1

    .line 283
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 288
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 289
    .local v10, "animation":Landroid/view/ViewPropertyAnimator;
    move-object v11, p0

    iget-object v0, v11, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    new-instance v13, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move v3, v8

    move-object v4, v7

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ILandroid/view/View;I)V

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 312
    return-void
.end method

.method private animateRemoveImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 200
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 201
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 202
    .local v1, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 204
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;

    invoke-direct {v3, p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 218
    return-void
.end method

.method private dispatchFinishedWhenDone()V
    .locals 1

    .line 539
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 542
    :cond_0
    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;",
            ">;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .line 391
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 392
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    .line 393
    .local v1, "changeInfo":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;
    invoke-direct {p0, v1, p2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    iget-object v2, v1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    .line 395
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 391
    .end local v1    # "changeInfo":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 399
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V
    .locals 1
    .param p1, "changeInfo"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    .line 402
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    .line 405
    :cond_0
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    .line 408
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "changeInfo"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "oldItem":Z
    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    if-ne v1, p2, :cond_0

    .line 412
    iput-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    goto :goto_0

    .line 413
    :cond_0
    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne v1, p2, :cond_1

    .line 414
    iput-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 415
    const/4 v0, 0x1

    .line 419
    :goto_0
    iget-object v1, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 420
    iget-object v1, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 421
    iget-object v1, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 422
    invoke-virtual {p0, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchChangeFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V

    .line 423
    const/4 v1, 0x1

    return v1

    .line 417
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private resetAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 511
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mDefaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 514
    :cond_0
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 515
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 516
    return-void
.end method


# virtual methods
.method public animateAdd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 222
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->resetAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 223
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 224
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public animateChange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z
    .locals 17
    .param p1, "oldHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .line 317
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v11

    .line 318
    .local v11, "prevTranslationX":F
    iget-object v1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v12

    .line 319
    .local v12, "prevTranslationY":F
    iget-object v1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v13

    .line 320
    .local v13, "prevAlpha":F
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->resetAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 321
    sub-int v1, p5, p3

    int-to-float v1, v1

    sub-float/2addr v1, v11

    float-to-int v14, v1

    .line 322
    .local v14, "deltaX":I
    sub-int v1, p6, p4

    int-to-float v1, v1

    sub-float/2addr v1, v12

    float-to-int v15, v1

    .line 324
    .local v15, "deltaY":I
    iget-object v1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 325
    iget-object v1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 326
    iget-object v1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setAlpha(F)V

    .line 327
    if-eqz v10, :cond_0

    iget-object v1, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 329
    invoke-direct {v0, v10}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->resetAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 330
    iget-object v1, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v14

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 331
    iget-object v1, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v15

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 332
    iget-object v1, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 334
    :cond_0
    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    const/16 v16, 0x0

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v0, v7

    move/from16 v7, p6

    move-object v9, v8

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIIILcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$1;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public animateMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z
    .locals 16
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 255
    move-object/from16 v7, p1

    iget-object v8, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 256
    .local v8, "view":Landroid/view/View;
    move/from16 v0, p2

    int-to-float v1, v0

    iget-object v2, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v9, v1

    .line 257
    .end local p2    # "fromX":I
    .local v9, "fromX":I
    move/from16 v0, p3

    int-to-float v1, v0

    iget-object v2, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v10, v1

    .line 258
    .end local p3    # "fromY":I
    .local v10, "fromY":I
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->resetAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 259
    sub-int v11, p4, v9

    .line 260
    .local v11, "deltaX":I
    sub-int v12, p5, v10

    .line 261
    .local v12, "deltaY":I
    if-nez v11, :cond_0

    if-nez v12, :cond_0

    .line 262
    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 263
    const/4 v0, 0x0

    return v0

    .line 265
    :cond_0
    if-eqz v11, :cond_1

    .line 266
    neg-int v0, v11

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 268
    :cond_1
    if-eqz v12, :cond_2

    .line 269
    neg-int v0, v12

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 271
    :cond_2
    move-object/from16 v13, p0

    iget-object v14, v13, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v15, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;

    const/4 v6, 0x0

    move-object v0, v15

    move-object/from16 v1, p1

    move v2, v9

    move v3, v10

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIIILcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$1;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public animateRemove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 194
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->resetAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 195
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method cancelAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 631
    .local p1, "viewHolders":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 632
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 631
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 634
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 8
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 428
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 430
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 432
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 433
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;

    .line 434
    .local v3, "moveInfo":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    iget-object v4, v3, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne v4, p1, :cond_0

    .line 435
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 436
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 437
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 438
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 432
    .end local v3    # "moveInfo":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 441
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 442
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    .line 443
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 444
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 446
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 447
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 448
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 451
    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_5

    .line 452
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 453
    .local v4, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;>;"
    invoke-direct {p0, v4, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 454
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 455
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 451
    .end local v4    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;>;"
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 458
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_8

    .line 459
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 460
    .local v4, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_3
    if-ltz v5, :cond_7

    .line 461
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;

    .line 462
    .local v6, "moveInfo":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    iget-object v7, v6, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne v7, p1, :cond_6

    .line 463
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 464
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 465
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 466
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 467
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 468
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 460
    .end local v6    # "moveInfo":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 458
    .end local v4    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;>;"
    .end local v5    # "j":I
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 474
    .end local v1    # "i":I
    :cond_8
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_5
    if-ltz v1, :cond_a

    .line 475
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 476
    .local v2, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 477
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 478
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 479
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 480
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 474
    .end local v2    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 486
    .end local v1    # "i":I
    :cond_a
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 491
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 496
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 501
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 505
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 506
    return-void

    .line 502
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "after animation is cancelled, item should not be in mMoveAnimations list"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "after animation is cancelled, item should not be in mChangeAnimations list"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "after animation is cancelled, item should not be in mAddAnimations list"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "after animation is cancelled, item should not be in mRemoveAnimations list"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endAnimations()V
    .locals 11

    .line 546
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 547
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_0

    .line 548
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;

    .line 549
    .local v3, "item":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    iget-object v4, v3, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 550
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 551
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 552
    iget-object v2, v3, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 553
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 547
    .end local v3    # "item":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 555
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 556
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 557
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 558
    .local v3, "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 559
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 556
    .end local v3    # "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 561
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 562
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v1, :cond_2

    .line 563
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 564
    .local v4, "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget-object v5, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 565
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 566
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 567
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 562
    .end local v4    # "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v5    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 569
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 570
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_3

    .line 571
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V

    .line 570
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 573
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 574
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    .line 575
    return-void

    .line 578
    :cond_4
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 579
    .local v1, "listCount":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_4
    if-ltz v4, :cond_7

    .line 580
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 581
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 582
    add-int/lit8 v6, v0, -0x1

    .local v6, "j":I
    :goto_5
    if-ltz v6, :cond_6

    .line 583
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;

    .line 584
    .local v7, "moveInfo":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    iget-object v8, v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 585
    .local v8, "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget-object v9, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 586
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 587
    invoke-virtual {v9, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 588
    iget-object v10, v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, v10}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 589
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 590
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 591
    iget-object v10, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 582
    .end local v7    # "moveInfo":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    .end local v8    # "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v9    # "view":Landroid/view/View;
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 579
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;>;"
    .end local v6    # "j":I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 595
    .end local v4    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 596
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_6
    if-ltz v2, :cond_a

    .line 597
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 598
    .local v4, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 599
    add-int/lit8 v5, v0, -0x1

    .local v5, "j":I
    :goto_7
    if-ltz v5, :cond_9

    .line 600
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 601
    .local v6, "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget-object v7, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 602
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7, v3}, Landroid/view/View;->setAlpha(F)V

    .line 603
    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 604
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 605
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 606
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 599
    .end local v6    # "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v7    # "view":Landroid/view/View;
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    .line 596
    .end local v4    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    .end local v5    # "j":I
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 610
    .end local v2    # "i":I
    :cond_a
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 611
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_8
    if-ltz v2, :cond_d

    .line 612
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 613
    .local v3, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 614
    add-int/lit8 v4, v0, -0x1

    .local v4, "j":I
    :goto_9
    if-ltz v4, :cond_c

    .line 615
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V

    .line 616
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 617
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 614
    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 611
    .end local v3    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;>;"
    .end local v4    # "j":I
    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 622
    .end local v2    # "i":I
    :cond_d
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 623
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 624
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 625
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 627
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 628
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 521
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 522
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 523
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 524
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 525
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 526
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 527
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 528
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 529
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 530
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 520
    :goto_1
    return v0
.end method

.method public runPendingAnimations()V
    .locals 15

    .line 104
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 105
    .local v0, "removalsPending":Z
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 106
    .local v1, "movesPending":Z
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 107
    .local v2, "changesPending":Z
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 108
    .local v3, "additionsPending":Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 110
    return-void

    .line 113
    :cond_0
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 114
    .local v5, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->animateRemoveImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 115
    .end local v5    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    goto :goto_0

    .line 116
    :cond_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 118
    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 119
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;>;"
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 121
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 123
    new-instance v6, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$1;

    invoke-direct {v6, p0, v5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 134
    .local v6, "mover":Ljava/lang/Runnable;
    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 136
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v8

    invoke-virtual {v7, v6, v8, v9}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 137
    .end local v7    # "view":Landroid/view/View;
    goto :goto_1

    .line 138
    :cond_2
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 142
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;>;"
    .end local v6    # "mover":Ljava/lang/Runnable;
    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    .line 143
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v5, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;>;"
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 147
    new-instance v6, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$2;

    invoke-direct {v6, p0, v5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$2;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 157
    .local v6, "changer":Ljava/lang/Runnable;
    if-eqz v0, :cond_4

    .line 158
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 159
    .local v7, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget-object v8, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v9

    invoke-virtual {v8, v6, v9, v10}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 160
    .end local v7    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    goto :goto_2

    .line 161
    :cond_4
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 165
    .end local v5    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;>;"
    .end local v6    # "changer":Ljava/lang/Runnable;
    :cond_5
    :goto_2
    if-eqz v3, :cond_b

    .line 166
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v5, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 170
    new-instance v6, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$3;

    invoke-direct {v6, p0, v5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$3;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 179
    .local v6, "adder":Ljava/lang/Runnable;
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v2, :cond_6

    goto :goto_3

    .line 187
    :cond_6
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    .line 180
    :cond_7
    :goto_3
    const-wide/16 v7, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v9

    goto :goto_4

    :cond_8
    move-wide v9, v7

    .line 181
    .local v9, "removeDuration":J
    :goto_4
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v11

    goto :goto_5

    :cond_9
    move-wide v11, v7

    .line 182
    .local v11, "moveDuration":J
    :goto_5
    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v7

    .line 183
    .local v7, "changeDuration":J
    :cond_a
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    add-long/2addr v13, v9

    .line 184
    .local v13, "totalDelay":J
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 185
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v6, v13, v14}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 190
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    .end local v6    # "adder":Ljava/lang/Runnable;
    .end local v7    # "changeDuration":J
    .end local v9    # "removeDuration":J
    .end local v11    # "moveDuration":J
    .end local v13    # "totalDelay":J
    :cond_b
    :goto_6
    return-void
.end method
