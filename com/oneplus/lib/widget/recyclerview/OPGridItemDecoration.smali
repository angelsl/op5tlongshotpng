.class public Lcom/oneplus/lib/widget/recyclerview/OPGridItemDecoration;
.super Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;
.source "OPGridItemDecoration.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;-><init>(I)V

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->opgridview_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 15
    .local v0, "space":I
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/OPGridItemDecoration;->setSpace(I)V

    .line 16
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p4, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 21
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/OPGridItemDecoration;->mSpace:I

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/OPGridItemDecoration;->mSpace:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 22
    return-void
.end method
