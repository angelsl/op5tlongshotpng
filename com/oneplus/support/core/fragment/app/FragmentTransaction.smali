.class public abstract Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/fragment/app/FragmentTransaction$Transit;
    }
.end annotation


# static fields
.field public static final TRANSIT_ENTER_MASK:I = 0x1000

.field public static final TRANSIT_EXIT_MASK:I = 0x2000

.field public static final TRANSIT_FRAGMENT_CLOSE:I = 0x2002

.field public static final TRANSIT_FRAGMENT_FADE:I = 0x1003

.field public static final TRANSIT_FRAGMENT_OPEN:I = 0x1001

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_UNSET:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(ILcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # I
        .annotation build Lcom/oneplus/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract add(ILcom/oneplus/support/core/fragment/app/Fragment;Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # I
        .annotation build Lcom/oneplus/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract add(Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract addSharedElement(Landroid/view/View;Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract addToBackStack(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract attach(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract commit()I
.end method

.method public abstract commitAllowingStateLoss()I
.end method

.method public abstract commitNow()V
.end method

.method public abstract commitNowAllowingStateLoss()V
.end method

.method public abstract detach(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract disallowAddToBackStack()Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract hide(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract isAddToBackStackAllowed()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract remove(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract replace(ILcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # I
        .annotation build Lcom/oneplus/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract replace(ILcom/oneplus/support/core/fragment/app/Fragment;Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # I
        .annotation build Lcom/oneplus/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract runOnCommit(Ljava/lang/Runnable;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract setAllowOptimization(Z)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setBreadCrumbShortTitle(I)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # I
        .annotation build Lcom/oneplus/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract setBreadCrumbTitle(I)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # I
        .annotation build Lcom/oneplus/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract setBreadCrumbTitle(Ljava/lang/CharSequence;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract setCustomAnimations(II)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # I
        .annotation build Lcom/oneplus/support/annotation/AnimRes;
        .end annotation

        .annotation build Lcom/oneplus/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/oneplus/support/annotation/AnimRes;
        .end annotation

        .annotation build Lcom/oneplus/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract setCustomAnimations(IIII)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # I
        .annotation build Lcom/oneplus/support/annotation/AnimRes;
        .end annotation

        .annotation build Lcom/oneplus/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/oneplus/support/annotation/AnimRes;
        .end annotation

        .annotation build Lcom/oneplus/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/oneplus/support/annotation/AnimRes;
        .end annotation

        .annotation build Lcom/oneplus/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Lcom/oneplus/support/annotation/AnimRes;
        .end annotation

        .annotation build Lcom/oneplus/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract setPrimaryNavigationFragment(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract setReorderingAllowed(Z)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract setTransition(I)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract setTransitionStyle(I)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract show(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .param p1    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method
