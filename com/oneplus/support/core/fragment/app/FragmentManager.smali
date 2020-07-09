.class public abstract Lcom/oneplus/support/core/fragment/app/FragmentManager;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;,
        Lcom/oneplus/support/core/fragment/app/FragmentManager$OnBackStackChangedListener;,
        Lcom/oneplus/support/core/fragment/app/FragmentManager$BackStackEntry;
    }
.end annotation


# static fields
.field public static final POP_BACK_STACK_INCLUSIVE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDebugLogging(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .line 446
    sput-boolean p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->DEBUG:Z

    .line 447
    return-void
.end method


# virtual methods
.method public abstract addOnBackStackChangedListener(Lcom/oneplus/support/core/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .param p1    # Lcom/oneplus/support/core/fragment/app/FragmentManager$OnBackStackChangedListener;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract beginTransaction()Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract executePendingTransactions()Z
.end method

.method public abstract findFragmentById(I)Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p1    # I
        .annotation build Lcom/oneplus/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract findFragmentByTag(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getBackStackEntryAt(I)Lcom/oneplus/support/core/fragment/app/FragmentManager$BackStackEntry;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getBackStackEntryCount()I
.end method

.method public abstract getFragment(Landroid/os/Bundle;Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p1    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getFragments()Ljava/util/List;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryNavigationFragment()Lcom/oneplus/support/core/fragment/app/Fragment;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract isStateSaved()Z
.end method

.method public openTransaction()Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->beginTransaction()Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public abstract popBackStack()V
.end method

.method public abstract popBackStack(II)V
.end method

.method public abstract popBackStack(Ljava/lang/String;I)V
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract popBackStackImmediate()Z
.end method

.method public abstract popBackStackImmediate(II)Z
.end method

.method public abstract popBackStackImmediate(Ljava/lang/String;I)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract putFragment(Landroid/os/Bundle;Ljava/lang/String;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract registerFragmentLifecycleCallbacks(Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .param p1    # Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract removeOnBackStackChangedListener(Lcom/oneplus/support/core/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .param p1    # Lcom/oneplus/support/core/fragment/app/FragmentManager$OnBackStackChangedListener;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract saveFragmentInstanceState(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/Fragment$SavedState;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract unregisterFragmentLifecycleCallbacks(Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .param p1    # Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
.end method
