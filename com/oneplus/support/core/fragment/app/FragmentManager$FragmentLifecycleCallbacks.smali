.class public abstract Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FragmentLifecycleCallbacks"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentActivityCreated(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "f"    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 524
    return-void
.end method

.method public onFragmentAttached(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "fm"    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "f"    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 488
    return-void
.end method

.method public onFragmentCreated(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "f"    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 512
    return-void
.end method

.method public onFragmentDestroyed(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "f"    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 601
    return-void
.end method

.method public onFragmentDetached(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "f"    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 610
    return-void
.end method

.method public onFragmentPaused(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "f"    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 563
    return-void
.end method

.method public onFragmentPreAttached(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "fm"    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "f"    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 477
    return-void
.end method

.method public onFragmentPreCreated(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "f"    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 500
    return-void
.end method

.method public onFragmentResumed(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "f"    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 554
    return-void
.end method

.method public onFragmentSaveInstanceState(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "f"    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "outState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 583
    return-void
.end method

.method public onFragmentStarted(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "f"    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 545
    return-void
.end method

.method public onFragmentStopped(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "f"    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 572
    return-void
.end method

.method public onFragmentViewCreated(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "f"    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "v"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 536
    return-void
.end method

.method public onFragmentViewDestroyed(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "f"    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 592
    return-void
.end method
