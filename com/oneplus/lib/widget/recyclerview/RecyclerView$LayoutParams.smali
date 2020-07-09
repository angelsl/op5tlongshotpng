.class public Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field final mDecorInsets:Landroid/graphics/Rect;

.field mInsetsDirty:Z

.field mPendingInvalidate:Z

.field mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 8806
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 8794
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 8807
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 8802
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8794
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 8803
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 8814
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8794
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 8815
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8810
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 8794
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 8811
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 8818
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8794
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 8819
    return-void
.end method


# virtual methods
.method public getViewAdapterPosition()I
    .locals 1

    .line 8889
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    return v0
.end method

.method public getViewLayoutPosition()I
    .locals 1

    .line 8877
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    return v0
.end method

.method public getViewPosition()I
    .locals 1

    .line 8867
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getPosition()I

    move-result v0

    return v0
.end method

.method public isItemChanged()Z
    .locals 1

    .line 8860
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isChanged()Z

    move-result v0

    return v0
.end method

.method public isItemRemoved()Z
    .locals 1

    .line 8849
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    return v0
.end method

.method public isViewInvalid()Z
    .locals 1

    .line 8838
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    return v0
.end method

.method public viewNeedsUpdate()Z
    .locals 1

    .line 8828
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v0

    return v0
.end method
