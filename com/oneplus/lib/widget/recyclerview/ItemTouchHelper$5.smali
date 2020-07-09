.class Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$5;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->addChildDrawingOrderCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .line 1231
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChildDrawingOrder(II)I
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 1234
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1600(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1235
    return p2

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$2300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)I

    move-result v0

    .line 1238
    .local v0, "childPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1239
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1600(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1240
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$2302(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;I)I

    .line 1242
    :cond_1
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_2

    .line 1243
    return v0

    .line 1245
    :cond_2
    if-ge p2, v0, :cond_3

    move v1, p2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, p2, 0x1

    :goto_0
    return v1
.end method
