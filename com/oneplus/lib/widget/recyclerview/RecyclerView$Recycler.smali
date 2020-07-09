.class public final Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0x2


# instance fields
.field accessibilityDelegateCheckFailed:Z

.field mAccessibilityDelegateField:Ljava/lang/reflect/Field;

.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerPool:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewCacheExtension;

.field private mViewCacheMax:I

.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 4288
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 4290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 4292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 4294
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 4295
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    .line 4297
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mViewCacheMax:I

    .line 4608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->accessibilityDelegateCheckFailed:Z

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 4288
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method private attachAccessibilityDelegate(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 4595
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4596
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4598
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 4601
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4602
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 4603
    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$4000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    .line 4602
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 4606
    :cond_1
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "invalidateThis"    # Z

    .line 4639
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4640
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4641
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 4642
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 4639
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4645
    .end local v0    # "i":I
    :cond_1
    if-nez p2, :cond_2

    .line 4646
    return-void

    .line 4649
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 4650
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4651
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 4653
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 4654
    .local v0, "visibility":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4655
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4657
    .end local v0    # "visibility":I
    :goto_1
    return-void
.end method

.method private invalidateDisplayListInt(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 4633
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4634
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 4636
    :cond_0
    return-void
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 4788
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 4789
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->dispatchViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 4790
    iput-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 4791
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getRecycledViewPool()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->putRecycledView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 4792
    return-void
.end method

.method public bindViewToPosition(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 4383
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4384
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v0, :cond_5

    .line 4389
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v1, p2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(I)I

    move-result v1

    .line 4390
    .local v1, "offsetPosition":I
    if-ltz v1, :cond_4

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 4395
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iput-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 4396
    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->bindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 4397
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 4398
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4399
    iput p2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 4402
    :cond_0
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 4404
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_1

    .line 4405
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 4406
    .local v3, "rvLayoutParams":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 4407
    .end local v3    # "rvLayoutParams":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4408
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 4409
    .restart local v3    # "rvLayoutParams":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 4411
    .end local v3    # "rvLayoutParams":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    :cond_2
    move-object v3, v2

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 4414
    .restart local v3    # "rvLayoutParams":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4415
    iput-object v0, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 4416
    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 4417
    return-void

    .line 4391
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "rvLayoutParams":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistency detected. Invalid item position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "(offset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ").state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 4393
    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4385
    .end local v1    # "offsetPosition":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clear()V
    .locals 1

    .line 4310
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4311
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 4312
    return-void
.end method

.method clearOldPositions()V
    .locals 5

    .line 5155
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5156
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5157
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 5158
    .local v2, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 5156
    .end local v2    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5160
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5161
    .local v1, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 5162
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 5161
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5164
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 5165
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5166
    .local v2, "changedScrapCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 5167
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 5166
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5170
    .end local v2    # "changedScrapCount":I
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method clearScrap()V
    .locals 1

    .line 4858
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4859
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .locals 3
    .param p1, "position"    # I

    .line 4438
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 4442
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4443
    return p1

    .line 4445
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(I)I

    move-result v0

    return v0

    .line 4439
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". State item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 4440
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dispatchViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 4999
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$4300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5000
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$4300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;->onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 5002
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5003
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 5005
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    if-eqz v0, :cond_2

    .line 5006
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 5009
    :cond_2
    return-void
.end method

.method getChangedScrapViewForPosition(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 10
    .param p1, "position"    # I

    .line 4864
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v0

    .local v2, "changedScrapSize":I
    if-nez v0, :cond_0

    goto :goto_2

    .line 4868
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x20

    if-ge v0, v2, :cond_2

    .line 4869
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 4870
    .local v4, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 4871
    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4872
    return-object v4

    .line 4868
    .end local v4    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4876
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4877
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(I)I

    move-result v0

    .line 4878
    .local v0, "offsetPosition":I
    if-lez v0, :cond_4

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 4879
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    .line 4880
    .local v4, "id":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_4

    .line 4881
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 4882
    .local v7, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-nez v8, :cond_3

    .line 4883
    invoke-virtual {v7, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4884
    return-object v7

    .line 4880
    .end local v7    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4889
    .end local v0    # "offsetPosition":I
    .end local v4    # "id":J
    .end local v6    # "i":I
    :cond_4
    return-object v1

    .line 4865
    .end local v2    # "changedScrapSize":I
    :cond_5
    :goto_2
    return-object v1
.end method

.method getRecycledViewPool()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;
    .locals 1

    .line 5103
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mRecyclerPool:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    .line 5104
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mRecyclerPool:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    .line 5106
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mRecyclerPool:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    return-object v0
.end method

.method getScrapCount()I
    .locals 1

    .line 4850
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScrapList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 4333
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object v0
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 4854
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method getScrapViewForId(JIZ)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 6
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "dryRun"    # Z

    .line 4950
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4951
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 4952
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 4953
    .local v2, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4954
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-ne p3, v3, :cond_1

    .line 4955
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4956
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4965
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4966
    const/4 v3, 0x2

    const/16 v4, 0xe

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setFlags(II)V

    .line 4970
    :cond_0
    return-object v2

    .line 4971
    :cond_1
    if-nez p4, :cond_2

    .line 4973
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4974
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v4, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4975
    iget-object v3, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 4951
    .end local v2    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4981
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4982
    .local v1, "cacheSize":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_7

    .line 4983
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 4984
    .local v3, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_6

    .line 4985
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne p3, v4, :cond_5

    .line 4986
    if-nez p4, :cond_4

    .line 4987
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4989
    :cond_4
    return-object v3

    .line 4990
    :cond_5
    if-nez p4, :cond_6

    .line 4991
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 4982
    .end local v3    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4995
    .end local v2    # "i":I
    :cond_7
    const/4 v2, 0x0

    return-object v2
.end method

.method getScrapViewForPosition(IIZ)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "position"    # I
    .param p2, "type"    # I
    .param p3, "dryRun"    # Z

    .line 4902
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4905
    .local v0, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 4906
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 4907
    .local v2, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 4908
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4909
    :cond_0
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v3, p2, :cond_1

    .line 4910
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrap view for position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isn\'t dirty but has wrong view type! (found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4911
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " but expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4910
    const-string v4, "RecyclerView"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4913
    goto :goto_1

    .line 4915
    :cond_1
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4916
    return-object v2

    .line 4905
    .end local v2    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4920
    .end local v1    # "i":I
    :cond_3
    :goto_1
    if-nez p3, :cond_4

    .line 4921
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->findHiddenNonRemovedView(II)Landroid/view/View;

    move-result-object v1

    .line 4922
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 4924
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 4929
    .end local v1    # "view":Landroid/view/View;
    :cond_4
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4930
    .local v1, "cacheSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_7

    .line 4931
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 4934
    .local v3, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_6

    .line 4935
    if-nez p3, :cond_5

    .line 4936
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4942
    :cond_5
    return-object v3

    .line 4930
    .end local v3    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4945
    .end local v2    # "i":I
    :cond_7
    const/4 v2, 0x0

    return-object v2
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .line 4463
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z

    .line 4467
    if-ltz p1, :cond_14

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_14

    .line 4471
    const/4 v0, 0x0

    .line 4472
    .local v0, "fromScrap":Z
    const/4 v1, 0x0

    .line 4474
    .local v1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 4475
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getChangedScrapViewForPosition(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 4476
    if-eqz v1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    move v0, v2

    .line 4479
    :cond_1
    if-nez v1, :cond_6

    .line 4480
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v2, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getScrapViewForPosition(IIZ)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 4481
    if-eqz v1, :cond_6

    .line 4482
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->validateViewHolderForOffsetPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 4484
    if-nez p2, :cond_4

    .line 4487
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4488
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4489
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v5, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v5, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4490
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_1

    .line 4491
    :cond_2
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4492
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 4494
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 4496
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 4498
    :cond_5
    const/4 v0, 0x1

    .line 4502
    :cond_6
    :goto_2
    if-nez v1, :cond_d

    .line 4503
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(I)I

    move-result v2

    .line 4504
    .local v2, "offsetPosition":I
    if-ltz v2, :cond_c

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-ge v2, v5, :cond_c

    .line 4510
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v5

    .line 4512
    .local v5, "type":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4513
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, v5, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getScrapViewForId(JIZ)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 4514
    if-eqz v1, :cond_7

    .line 4516
    iput v2, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    .line 4517
    const/4 v0, 0x1

    .line 4520
    :cond_7
    if-nez v1, :cond_a

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mViewCacheExtension:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewCacheExtension;

    if-eqz v6, :cond_a

    .line 4523
    nop

    .line 4524
    invoke-virtual {v6, p0, p1, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewCacheExtension;->getViewForPositionAndType(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v6

    .line 4525
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_a

    .line 4526
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v7, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 4527
    if-eqz v1, :cond_9

    .line 4530
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_3

    .line 4531
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4528
    :cond_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4537
    .end local v6    # "view":Landroid/view/View;
    :cond_a
    :goto_3
    if-nez v1, :cond_b

    .line 4544
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getRecycledViewPool()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->getRecycledView(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 4545
    if-eqz v1, :cond_b

    .line 4546
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->resetInternal()V

    .line 4547
    invoke-static {}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3900()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 4548
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->invalidateDisplayListInt(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 4552
    :cond_b
    if-nez v1, :cond_d

    .line 4553
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v6, v7, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_4

    .line 4505
    .end local v5    # "type":I
    :cond_c
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inconsistency detected. Invalid item position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "(offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ").state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v5, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 4507
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4559
    .end local v2    # "offsetPosition":I
    :cond_d
    :goto_4
    const/4 v2, 0x0

    .line 4560
    .local v2, "bound":Z
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v5, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isBound()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 4562
    iput p1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_5

    .line 4563
    :cond_e
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isBound()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 4568
    :cond_f
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v5, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v5, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(I)I

    move-result v5

    .line 4569
    .local v5, "offsetPosition":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iput-object v6, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 4570
    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->bindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 4571
    iget-object v6, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 4572
    const/4 v2, 0x1

    .line 4573
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v6, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 4574
    iput p1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 4578
    .end local v5    # "offsetPosition":I
    :cond_10
    :goto_5
    iget-object v5, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 4580
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v5, :cond_11

    .line 4581
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 4582
    .local v6, "rvLayoutParams":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    iget-object v7, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 4583
    .end local v6    # "rvLayoutParams":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    :cond_11
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 4584
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 4585
    .restart local v6    # "rvLayoutParams":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    iget-object v7, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 4587
    .end local v6    # "rvLayoutParams":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    :cond_12
    move-object v6, v5

    check-cast v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 4589
    .restart local v6    # "rvLayoutParams":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    :goto_6
    iput-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 4590
    if-eqz v0, :cond_13

    if-eqz v2, :cond_13

    goto :goto_7

    :cond_13
    move v3, v4

    :goto_7
    iput-boolean v3, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 4591
    iget-object v3, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v3

    .line 4468
    .end local v0    # "fromScrap":Z
    .end local v1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v2    # "bound":Z
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "rvLayoutParams":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    :cond_14
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 4469
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasAccessibilityDelegate(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 4611
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->accessibilityDelegateCheckFailed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4612
    return v1

    .line 4614
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 4616
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v3, "mAccessibilityDelegate"

    .line 4617
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    .line 4618
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4622
    goto :goto_0

    .line 4619
    :catchall_0
    move-exception v0

    .line 4620
    .local v0, "t":Ljava/lang/Throwable;
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->accessibilityDelegateCheckFailed:Z

    .line 4621
    return v1

    .line 4625
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 4626
    :catchall_1
    move-exception v0

    .line 4627
    .restart local v0    # "t":Ljava/lang/Throwable;
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->accessibilityDelegateCheckFailed:Z

    .line 4628
    return v1
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    .line 5173
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5174
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5175
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 5176
    .local v2, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget-object v3, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 5177
    .local v3, "layoutParams":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    if-eqz v3, :cond_0

    .line 5178
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 5174
    .end local v2    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v3    # "layoutParams":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5181
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .line 5139
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5140
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5141
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5142
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 5143
    .local v2, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    .line 5144
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5145
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 5141
    .end local v2    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5148
    .end local v0    # "cachedCount":I
    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    .line 5150
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 5152
    :goto_1
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 4
    .param p1, "insertedAt"    # I
    .param p2, "count"    # I

    .line 5047
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5048
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5049
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 5050
    .local v2, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-lt v3, p1, :cond_0

    .line 5055
    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 5048
    .end local v2    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5058
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 8
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 5019
    if-ge p1, p2, :cond_0

    .line 5020
    move v0, p1

    .line 5021
    .local v0, "start":I
    move v1, p2

    .line 5022
    .local v1, "end":I
    const/4 v2, -0x1

    .local v2, "inBetweenOffset":I
    goto :goto_0

    .line 5024
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v2    # "inBetweenOffset":I
    :cond_0
    move v0, p2

    .line 5025
    .restart local v0    # "start":I
    move v1, p1

    .line 5026
    .restart local v1    # "end":I
    const/4 v2, 0x1

    .line 5028
    .restart local v2    # "inBetweenOffset":I
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5029
    .local v3, "cachedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 5030
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 5031
    .local v5, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v5, :cond_3

    iget v6, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v0, :cond_3

    iget v6, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-le v6, v1, :cond_1

    .line 5032
    goto :goto_2

    .line 5034
    :cond_1
    iget v6, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    const/4 v7, 0x0

    if-ne v6, p1, :cond_2

    .line 5035
    sub-int v6, p2, p1

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 5037
    :cond_2
    invoke-virtual {v5, v2, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 5029
    .end local v5    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5044
    .end local v4    # "i":I
    :cond_4
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 5
    .param p1, "removedFrom"    # I
    .param p2, "count"    # I
    .param p3, "applyToPreLayout"    # Z

    .line 5067
    add-int v0, p1, p2

    .line 5068
    .local v0, "removedEnd":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5069
    .local v1, "cachedCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 5070
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 5071
    .local v3, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v3, :cond_1

    .line 5072
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-lt v4, v0, :cond_0

    .line 5078
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_1

    .line 5079
    :cond_0
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-lt v4, p1, :cond_1

    .line 5081
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5082
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5069
    .end local v3    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5086
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method onAdapterChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "oldAdapter"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .line 5013
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->clear()V

    .line 5014
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getRecycledViewPool()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->onAdapterChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Z)V

    .line 5015
    return-void
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 4800
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4801
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->access$4202(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 4802
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 4803
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 4804
    return-void
.end method

.method recycleAndClearCachedViews()V
    .locals 2

    .line 4694
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4695
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 4696
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 4695
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4698
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4699
    return-void
.end method

.method recycleCachedViewAt(I)V
    .locals 2
    .param p1, "cachedViewIndex"    # I

    .line 4716
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 4720
    .local v0, "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 4721
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4722
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 4672
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4673
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4674
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4676
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4677
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_0

    .line 4678
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4679
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 4681
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 4682
    return-void
.end method

.method recycleViewHolderInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 7
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 4730
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isScrap()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 4737
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4742
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4747
    nop

    .line 4748
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->access$4100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    .line 4749
    .local v0, "transientStatePreventsRecycling":Z
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 4751
    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onFailedToRecycleView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 4752
    .local v1, "forceRecycle":Z
    :goto_0
    const/4 v3, 0x0

    .line 4753
    .local v3, "cached":Z
    const/4 v4, 0x0

    .line 4758
    .local v4, "recycled":Z
    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4759
    :cond_2
    const/16 v5, 0x4e

    invoke-virtual {p1, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 4762
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4763
    .local v5, "cachedViewSize":I
    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mViewCacheMax:I

    if-ne v5, v6, :cond_3

    if-lez v5, :cond_3

    .line 4764
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 4766
    :cond_3
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mViewCacheMax:I

    if-ge v5, v2, :cond_4

    .line 4767
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4768
    const/4 v2, 0x1

    move v3, v2

    .line 4771
    .end local v5    # "cachedViewSize":I
    :cond_4
    if-nez v3, :cond_5

    .line 4772
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 4773
    const/4 v4, 0x1

    .line 4781
    :cond_5
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 4782
    if-nez v3, :cond_6

    if-nez v4, :cond_6

    if-eqz v0, :cond_6

    .line 4783
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 4785
    :cond_6
    return-void

    .line 4743
    .end local v0    # "transientStatePreventsRecycling":Z
    .end local v1    # "forceRecycle":Z
    .end local v3    # "cached":Z
    .end local v4    # "recycled":Z
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4738
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4731
    :cond_9
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4733
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isScrap()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4734
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_a

    goto :goto_2

    :cond_a
    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method recycleViewInternal(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 4690
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 4691
    return-void
.end method

.method scrapView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 4816
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4817
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setScrapContainer(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 4818
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4826
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 4827
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 4829
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4819
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 4820
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4824
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4831
    :goto_2
    return-void
.end method

.method setAdapterPositionsAsUnknown()V
    .locals 4

    .line 5129
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5130
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5131
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 5132
    .local v2, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    .line 5133
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5130
    .end local v2    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5136
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method setRecycledViewPool(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;)V
    .locals 2
    .param p1, "pool"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    .line 5093
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mRecyclerPool:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    if-eqz v0, :cond_0

    .line 5094
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->detach()V

    .line 5096
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mRecyclerPool:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    .line 5097
    if-eqz p1, :cond_1

    .line 5098
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mRecyclerPool:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->attach(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    .line 5100
    :cond_1
    return-void
.end method

.method setViewCacheExtension(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewCacheExtension;)V
    .locals 0
    .param p1, "extension"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewCacheExtension;

    .line 5089
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mViewCacheExtension:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewCacheExtension;

    .line 5090
    return-void
.end method

.method public setViewCacheSize(I)V
    .locals 2
    .param p1, "viewCount"    # I

    .line 4320
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mViewCacheMax:I

    .line 4322
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 4323
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 4322
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4325
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method unscrapView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 4840
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4843
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4841
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4845
    :goto_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->access$4202(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 4846
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 4847
    return-void
.end method

.method validateViewHolderForOffsetPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 7
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 4347
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4348
    return v1

    .line 4350
    :cond_0
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-ltz v0, :cond_4

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 4354
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 4356
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    iget v3, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 4357
    .local v0, "type":I
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 4358
    return v2

    .line 4361
    .end local v0    # "type":I
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4362
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    iget v5, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    .line 4364
    :cond_3
    return v1

    .line 4351
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method viewRangeUpdate(II)V
    .locals 6
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 5110
    add-int v0, p1, p2

    .line 5111
    .local v0, "positionEnd":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5112
    .local v1, "cachedCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 5113
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 5114
    .local v3, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-nez v3, :cond_0

    .line 5115
    goto :goto_1

    .line 5118
    :cond_0
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    .line 5119
    .local v4, "pos":I
    if-lt v4, p1, :cond_1

    if-ge v4, v0, :cond_1

    .line 5120
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5121
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5112
    .end local v3    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v4    # "pos":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5126
    .end local v2    # "i":I
    :cond_2
    return-void
.end method
