.class Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback$ItemTouchUIUtilImplHoneycomb;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/ItemTouchUIUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemTouchUIUtilImplHoneycomb"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1414
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1415
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1416
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 1426
    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 1427
    invoke-virtual {p3, p5}, Landroid/view/View;->setTranslationY(F)V

    .line 1428
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 1434
    return-void
.end method

.method public onSelected(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 1421
    return-void
.end method
