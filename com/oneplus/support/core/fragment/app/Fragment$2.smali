.class Lcom/oneplus/support/core/fragment/app/Fragment$2;
.super Lcom/oneplus/support/core/fragment/app/FragmentContainer;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/fragment/app/Fragment;->instantiateChildFragmentManager()V
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

    .line 2372
    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment$2;->this$0:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oneplus/support/core/fragment/app/Fragment;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 2389
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$2;->this$0:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 2376
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$2;->this$0:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2379
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$2;->this$0:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2377
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment does not have a view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onHasView()Z
    .locals 1

    .line 2384
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$2;->this$0:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
