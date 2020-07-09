.class Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$2;
.super Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->smoothScrollToPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 1862
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 4
    .param p1, "targetPosition"    # I

    .line 1865
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->access$400(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;I)I

    move-result v0

    .line 1866
    .local v0, "direction":I
    if-nez v0, :cond_0

    .line 1867
    const/4 v1, 0x0

    return-object v1

    .line 1869
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->access$500(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1870
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1

    .line 1872
    :cond_1
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method
