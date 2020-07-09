.class Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureSharedElementsOrdered(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$finalSharedElementTransition:Ljava/lang/Object;

.field final synthetic val$fragments:Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;

.field final synthetic val$impl:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

.field final synthetic val$inEpicenter:Landroid/graphics/Rect;

.field final synthetic val$inFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$nameOverrides:Lcom/oneplus/support/collection/ArrayMap;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$outFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;

.field final synthetic val$sharedElementsOut:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$impl:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    iput-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$nameOverrides:Lcom/oneplus/support/collection/ArrayMap;

    iput-object p3, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    iput-object p4, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$fragments:Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;

    iput-object p5, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    iput-object p7, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$inFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    iput-object p8, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$outFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    iput-boolean p9, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$inIsPop:Z

    iput-object p10, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$sharedElementsOut:Ljava/util/ArrayList;

    iput-object p11, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iput-object p12, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 737
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$impl:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$nameOverrides:Lcom/oneplus/support/collection/ArrayMap;

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$fragments:Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->access$300(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;

    move-result-object v0

    .line 740
    .local v0, "inSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz v0, :cond_0

    .line 741
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/oneplus/support/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 742
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    :cond_0
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$inFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$outFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-boolean v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$inIsPop:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->access$200(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Z)V

    .line 747
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 748
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$impl:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$sharedElementsOut:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 752
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$fragments:Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$inIsPop:Z

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->access$400(Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    .line 754
    .local v1, "inEpicenterView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 755
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$impl:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 759
    .end local v1    # "inEpicenterView":Landroid/view/View;
    :cond_1
    return-void
.end method
