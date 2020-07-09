.class public abstract Lcom/oneplus/support/loader/app/LoaderManager;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDebugLogging(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .line 235
    sput-boolean p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl;->DEBUG:Z

    .line 236
    return-void
.end method

.method public static getInstance(Lcom/oneplus/support/lifecycle/LifecycleOwner;)Lcom/oneplus/support/loader/app/LoaderManager;
    .locals 2
    .param p0    # Lcom/oneplus/support/lifecycle/LifecycleOwner;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/oneplus/support/lifecycle/LifecycleOwner;",
            ":",
            "Lcom/oneplus/support/lifecycle/ViewModelStoreOwner;",
            ">(TT;)",
            "Lcom/oneplus/support/loader/app/LoaderManager;"
        }
    .end annotation

    .line 128
    .local p0, "owner":Lcom/oneplus/support/lifecycle/LifecycleOwner;, "TT;"
    new-instance v0, Lcom/oneplus/support/loader/app/LoaderManagerImpl;

    move-object v1, p0

    check-cast v1, Lcom/oneplus/support/lifecycle/ViewModelStoreOwner;

    invoke-interface {v1}, Lcom/oneplus/support/lifecycle/ViewModelStoreOwner;->getViewModelStore()Lcom/oneplus/support/lifecycle/ViewModelStore;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/support/loader/app/LoaderManagerImpl;-><init>(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/ViewModelStore;)V

    return-object v0
.end method


# virtual methods
.method public abstract destroyLoader(I)V
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLoader(I)Lcom/oneplus/support/loader/content/Loader;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method

.method public hasRunningLoaders()Z
    .locals 1

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public abstract initLoader(ILandroid/os/Bundle;Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;)Lcom/oneplus/support/loader/content/Loader;
    .param p2    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract markForRedelivery()V
.end method

.method public abstract restartLoader(ILandroid/os/Bundle;Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;)Lcom/oneplus/support/loader/content/Loader;
    .param p2    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method
