.class public Lcom/oneplus/support/core/app/ComponentActivity;
.super Landroid/app/Activity;
.source "ComponentActivity.java"

# interfaces
.implements Lcom/oneplus/support/lifecycle/LifecycleOwner;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/app/ComponentActivity$ExtraData;
    }
.end annotation


# instance fields
.field private mExtraDataMap:Lcom/oneplus/support/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/SimpleArrayMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/oneplus/support/core/app/ComponentActivity$ExtraData;",
            ">;",
            "Lcom/oneplus/support/core/app/ComponentActivity$ExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Lcom/oneplus/support/collection/SimpleArrayMap;

    invoke-direct {v0}, Lcom/oneplus/support/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/app/ComponentActivity;->mExtraDataMap:Lcom/oneplus/support/collection/SimpleArrayMap;

    .line 52
    new-instance v0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;-><init>(Lcom/oneplus/support/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/oneplus/support/core/app/ComponentActivity;->mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    return-void
.end method


# virtual methods
.method public getExtraData(Ljava/lang/Class;)Lcom/oneplus/support/core/app/ComponentActivity$ExtraData;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oneplus/support/core/app/ComponentActivity$ExtraData;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 90
    .local p1, "extraDataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/oneplus/support/core/app/ComponentActivity;->mExtraDataMap:Lcom/oneplus/support/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/core/app/ComponentActivity$ExtraData;

    return-object v0
.end method

.method public getLifecycle()Lcom/oneplus/support/lifecycle/Lifecycle;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/oneplus/support/core/app/ComponentActivity;->mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-static {p0}, Lcom/oneplus/support/lifecycle/ReportFragment;->injectIfNeededIn(Landroid/app/Activity;)V

    .line 73
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/oneplus/support/core/app/ComponentActivity;->mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$State;->CREATED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->markState(Lcom/oneplus/support/lifecycle/Lifecycle$State;)V

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method public putExtraData(Lcom/oneplus/support/core/app/ComponentActivity$ExtraData;)V
    .locals 2
    .param p1, "extraData"    # Lcom/oneplus/support/core/app/ComponentActivity$ExtraData;
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/oneplus/support/core/app/ComponentActivity;->mExtraDataMap:Lcom/oneplus/support/collection/SimpleArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/support/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method
