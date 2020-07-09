.class public abstract Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field static final FLAG_ADAPTER_FULLUPDATE:I = 0x400

.field static final FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field static final FLAG_BOUND:I = 0x1

.field static final FLAG_CHANGED:I = 0x40

.field static final FLAG_IGNORE:I = 0x80

.field static final FLAG_INVALID:I = 0x4

.field static final FLAG_NOT_RECYCLABLE:I = 0x10

.field static final FLAG_REMOVED:I = 0x8

.field static final FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field static final FLAG_TMP_DETACHED:I = 0x100

.field static final FLAG_UPDATE:I = 0x2

.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final itemView:Landroid/view/View;

.field private mFlags:I

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mOldPosition:I

.field mOwnerRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPosition:I

.field mPreLayoutPosition:I

.field private mScrapContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

.field mShadowedHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8345
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;

    .line 8367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8260
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    .line 8261
    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOldPosition:I

    .line 8262
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemId:J

    .line 8263
    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemViewType:I

    .line 8264
    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 8269
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 8347
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 8348
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 8350
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 8354
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mScrapContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 8358
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 8368
    if-eqz p1, :cond_0

    .line 8371
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8372
    return-void

    .line 8369
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 8258
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->onEnteredHiddenState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 8258
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->onLeftHiddenState()V

    return-void
.end method

.method static synthetic access$4100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 8258
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4202(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p1, "x1"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 8258
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mScrapContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 8258
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 8258
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    return v0
.end method

.method private createPayloadsIfNeeded()V
    .locals 1

    .line 8589
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_0

    .line 8590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 8591
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 8593
    :cond_0
    return-void
.end method

.method private doesTransientStatePreventRecycling()Z
    .locals 1

    .line 8724
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onEnteredHiddenState()V
    .locals 2

    .line 8634
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8635
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 8636
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 8638
    return-void
.end method

.method private onLeftHiddenState()V
    .locals 2

    .line 8644
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 8646
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 8647
    return-void
.end method

.method private shouldBeKeptAsChild()Z
    .locals 1

    .line 8716
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .locals 2
    .param p1, "payload"    # Ljava/lang/Object;

    .line 8580
    const/16 v0, 0x400

    if-nez p1, :cond_0

    .line 8581
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    .line 8582
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 8583
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->createPayloadsIfNeeded()V

    .line 8584
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8586
    :cond_1
    :goto_0
    return-void
.end method

.method addFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 8576
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    .line 8577
    return-void
.end method

.method clearOldPosition()V
    .locals 1

    .line 8397
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOldPosition:I

    .line 8398
    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8399
    return-void
.end method

.method clearPayload()V
    .locals 1

    .line 8596
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 8597
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8599
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    .line 8600
    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 1

    .line 8524
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    .line 8525
    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 1

    .line 8528
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    .line 8529
    return-void
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 1
    .param p1, "mNewPosition"    # I
    .param p2, "offset"    # I
    .param p3, "applyToPreLayout"    # Z

    .line 8375
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    .line 8376
    invoke-virtual {p0, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 8377
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    .line 8378
    return-void
.end method

.method public final getAdapterPosition()I
    .locals 1

    .line 8473
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-nez v0, :cond_0

    .line 8474
    const/4 v0, -0x1

    return v0

    .line 8476
    :cond_0
    invoke-static {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$4700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method public final getItemId()J
    .locals 2

    .line 8501
    iget-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 1

    .line 8508
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemViewType:I

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .line 8447
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    :cond_0
    return v0
.end method

.method public final getOldPosition()I
    .locals 1

    .line 8491
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOldPosition:I

    return v0
.end method

.method public final getPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8421
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    :cond_0
    return v0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 8603
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 8604
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8609
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    return-object v0

    .line 8606
    :cond_1
    :goto_0
    sget-object v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0

    .line 8612
    :cond_2
    sget-object v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 8560
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isAdapterPositionUnknown()Z
    .locals 1

    .line 8568
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

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

.method isBound()Z
    .locals 2

    .line 8552
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isChanged()Z
    .locals 1

    .line 8548
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isInvalid()Z
    .locals 1

    .line 8540
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRecyclable()Z
    .locals 1

    .line 8707
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8708
    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8707
    :goto_0
    return v0
.end method

.method isRemoved()Z
    .locals 1

    .line 8556
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isScrap()Z
    .locals 1

    .line 8512
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mScrapContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTmpDetached()Z
    .locals 1

    .line 8564
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method needsUpdate()Z
    .locals 1

    .line 8544
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method offsetPosition(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "applyToPreLayout"    # Z

    .line 8381
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 8382
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOldPosition:I

    .line 8384
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    .line 8385
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8387
    :cond_1
    if-eqz p2, :cond_2

    .line 8388
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8390
    :cond_2
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    .line 8391
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8392
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8394
    :cond_3
    return-void
.end method

.method resetInternal()V
    .locals 4

    .line 8617
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    .line 8618
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    .line 8619
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOldPosition:I

    .line 8620
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemId:J

    .line 8621
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8622
    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 8623
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 8624
    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 8625
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearPayload()V

    .line 8626
    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 8627
    return-void
.end method

.method saveOldPosition()V
    .locals 2

    .line 8402
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 8403
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOldPosition:I

    .line 8405
    :cond_0
    return-void
.end method

.method setFlags(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 8572
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    .line 8573
    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 2
    .param p1, "recyclable"    # Z

    .line 8682
    const/4 v0, 0x1

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-eqz p1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 8683
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-gez v1, :cond_1

    .line 8684
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 8689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8691
    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    .line 8692
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1

    .line 8693
    :cond_2
    if-eqz p1, :cond_3

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-nez v0, :cond_3

    .line 8694
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    .line 8699
    :cond_3
    :goto_1
    return-void
.end method

.method setScrapContainer(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V
    .locals 0
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 8536
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mScrapContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 8537
    return-void
.end method

.method shouldIgnore()Z
    .locals 1

    .line 8408
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method stopIgnoring()V
    .locals 1

    .line 8532
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    .line 8533
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 8651
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewHolder{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8652
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8654
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " scrap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8655
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8656
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isBound()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8657
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8658
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8659
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8660
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isChanged()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " changed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8661
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8662
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8663
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8665
    :cond_9
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v1, " no parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8666
    :cond_a
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8667
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method unScrap()V
    .locals 1

    .line 8516
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mScrapContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->unscrapView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 8517
    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 1

    .line 8520
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
