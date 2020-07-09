.class public Lcom/oneplus/support/lifecycle/ReportFragment;
.super Landroid/app/Fragment;
.source "ReportFragment.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;
    }
.end annotation


# static fields
.field private static final REPORT_FRAGMENT_TAG:Ljava/lang/String; = "com.oneplus.support.lifecycle.LifecycleDispatcher.report_fragment_tag"


# instance fields
.field private mProcessListener:Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private dispatch(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V
    .locals 3
    .param p1, "event"    # Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    .line 113
    invoke-virtual {p0}, Lcom/oneplus/support/lifecycle/ReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 114
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/oneplus/support/lifecycle/LifecycleRegistryOwner;

    if-eqz v1, :cond_0

    .line 115
    move-object v1, v0

    check-cast v1, Lcom/oneplus/support/lifecycle/LifecycleRegistryOwner;

    invoke-interface {v1}, Lcom/oneplus/support/lifecycle/LifecycleRegistryOwner;->getLifecycle()Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 116
    return-void

    .line 119
    :cond_0
    instance-of v1, v0, Lcom/oneplus/support/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_1

    .line 120
    move-object v1, v0

    check-cast v1, Lcom/oneplus/support/lifecycle/LifecycleOwner;

    invoke-interface {v1}, Lcom/oneplus/support/lifecycle/LifecycleOwner;->getLifecycle()Lcom/oneplus/support/lifecycle/Lifecycle;

    move-result-object v1

    .line 121
    .local v1, "lifecycle":Lcom/oneplus/support/lifecycle/Lifecycle;
    instance-of v2, v1, Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    if-eqz v2, :cond_1

    .line 122
    move-object v2, v1

    check-cast v2, Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    invoke-virtual {v2, p1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 125
    .end local v1    # "lifecycle":Lcom/oneplus/support/lifecycle/Lifecycle;
    :cond_1
    return-void
.end method

.method private dispatchCreate(Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-interface {p1}, Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;->onCreate()V

    .line 57
    :cond_0
    return-void
.end method

.method private dispatchResume(Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 66
    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p1}, Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;->onResume()V

    .line 69
    :cond_0
    return-void
.end method

.method private dispatchStart(Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 60
    if-eqz p1, :cond_0

    .line 61
    invoke-interface {p1}, Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;->onStart()V

    .line 63
    :cond_0
    return-void
.end method

.method static get(Landroid/app/Activity;)Lcom/oneplus/support/lifecycle/ReportFragment;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "com.oneplus.support.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/lifecycle/ReportFragment;

    return-object v0
.end method

.method public static injectIfNeededIn(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 39
    .local v0, "manager":Landroid/app/FragmentManager;
    const-string v1, "com.oneplus.support.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    new-instance v3, Lcom/oneplus/support/lifecycle/ReportFragment;

    invoke-direct {v3}, Lcom/oneplus/support/lifecycle/ReportFragment;-><init>()V

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 42
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 73
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/ReportFragment;->mProcessListener:Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Lcom/oneplus/support/lifecycle/ReportFragment;->dispatchCreate(Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 75
    sget-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_CREATE:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lcom/oneplus/support/lifecycle/ReportFragment;->dispatch(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 76
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 107
    sget-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_DESTROY:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lcom/oneplus/support/lifecycle/ReportFragment;->dispatch(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/lifecycle/ReportFragment;->mProcessListener:Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 110
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 94
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 95
    sget-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_PAUSE:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lcom/oneplus/support/lifecycle/ReportFragment;->dispatch(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 96
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/ReportFragment;->mProcessListener:Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Lcom/oneplus/support/lifecycle/ReportFragment;->dispatchResume(Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 89
    sget-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_RESUME:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lcom/oneplus/support/lifecycle/ReportFragment;->dispatch(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 90
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 80
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 81
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/ReportFragment;->mProcessListener:Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Lcom/oneplus/support/lifecycle/ReportFragment;->dispatchStart(Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 82
    sget-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_START:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lcom/oneplus/support/lifecycle/ReportFragment;->dispatch(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 83
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 101
    sget-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_STOP:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lcom/oneplus/support/lifecycle/ReportFragment;->dispatch(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 102
    return-void
.end method

.method setProcessListener(Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0
    .param p1, "processListener"    # Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 128
    iput-object p1, p0, Lcom/oneplus/support/lifecycle/ReportFragment;->mProcessListener:Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 129
    return-void
.end method
