.class public abstract Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemDecoration"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8033
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;ILcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8063
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 8064
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p4, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 8087
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;ILcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 8089
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 8024
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;->doDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 8025
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8054
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 8045
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 8046
    return-void
.end method
