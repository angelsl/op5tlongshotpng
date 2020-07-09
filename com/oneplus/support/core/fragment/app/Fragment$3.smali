.class Lcom/oneplus/support/core/fragment/app/Fragment$3;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Lcom/oneplus/support/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/core/fragment/app/Fragment;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 2415
    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment$3;->this$0:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLifecycle()Lcom/oneplus/support/lifecycle/Lifecycle;
    .locals 3

    .line 2418
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$3;->this$0:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->access$900(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$3;->this$0:Lcom/oneplus/support/core/fragment/app/Fragment;

    new-instance v1, Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    iget-object v2, v0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    invoke-direct {v1, v2}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;-><init>(Lcom/oneplus/support/lifecycle/LifecycleOwner;)V

    invoke-static {v0, v1}, Lcom/oneplus/support/core/fragment/app/Fragment;->access$902(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/lifecycle/LifecycleRegistry;)Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    .line 2421
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$3;->this$0:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->access$900(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    move-result-object v0

    return-object v0
.end method
