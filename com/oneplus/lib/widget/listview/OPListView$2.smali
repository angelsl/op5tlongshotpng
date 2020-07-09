.class Lcom/oneplus/lib/widget/listview/OPListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OPListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/listview/OPListView;->startDelGoneAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/listview/OPListView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/listview/OPListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/listview/OPListView;

    .line 516
    iput-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 519
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/listview/OPListView;->access$000(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 520
    .local v0, "size":I
    const/4 v1, 0x0

    .line 521
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 522
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/listview/OPListView;->access$000(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/view/View;

    .line 523
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 521
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 526
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    .line 527
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/listview/OPListView;->getEmptyView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 528
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/oneplus/lib/widget/listview/OPListView;->access$102(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z

    .line 529
    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v2, v3}, Lcom/oneplus/lib/widget/listview/OPListView;->access$202(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z

    .line 530
    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v2, v3}, Lcom/oneplus/lib/widget/listview/OPListView;->access$302(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z

    .line 531
    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/listview/OPListView;->access$400(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 532
    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/listview/OPListView;->access$500(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 533
    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/listview/OPListView;->access$000(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 534
    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/listview/OPListView;->access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 535
    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/listview/OPListView;->access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    .line 536
    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/listview/OPListView;->access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationEnd()V

    goto :goto_1

    .line 539
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/oneplus/lib/widget/listview/OPListView;->access$702(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z

    .line 540
    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/listview/OPListView;->access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 541
    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/listview/OPListView;->access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    .line 544
    :cond_3
    :goto_1
    return-void
.end method
