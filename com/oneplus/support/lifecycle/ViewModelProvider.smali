.class public Lcom/oneplus/support/lifecycle/ViewModelProvider;
.super Ljava/lang/Object;
.source "ViewModelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/lifecycle/ViewModelProvider$AndroidViewModelFactory;,
        Lcom/oneplus/support/lifecycle/ViewModelProvider$NewInstanceFactory;,
        Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;
    }
.end annotation


# static fields
.field private static final DEFAULT_KEY:Ljava/lang/String; = "com.oneplus.support.lifecycle.ViewModelProvider.DefaultKey"


# instance fields
.field private final mFactory:Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;

.field private final mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;


# direct methods
.method public constructor <init>(Lcom/oneplus/support/lifecycle/ViewModelStore;Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;)V
    .locals 0
    .param p1, "store"    # Lcom/oneplus/support/lifecycle/ViewModelStore;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "factory"    # Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lcom/oneplus/support/lifecycle/ViewModelProvider;->mFactory:Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;

    .line 80
    iput-object p1, p0, Lcom/oneplus/support/lifecycle/ViewModelProvider;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/support/lifecycle/ViewModelStoreOwner;Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;)V
    .locals 1
    .param p1, "owner"    # Lcom/oneplus/support/lifecycle/ViewModelStoreOwner;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "factory"    # Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    invoke-interface {p1}, Lcom/oneplus/support/lifecycle/ViewModelStoreOwner;->getViewModelStore()Lcom/oneplus/support/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/oneplus/support/lifecycle/ViewModelProvider;-><init>(Lcom/oneplus/support/lifecycle/ViewModelStore;Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;)V

    .line 68
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Lcom/oneplus/support/lifecycle/ViewModel;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oneplus/support/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 99
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "canonicalName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.oneplus.support.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/oneplus/support/lifecycle/ViewModelProvider;->get(Ljava/lang/String;Ljava/lang/Class;)Lcom/oneplus/support/lifecycle/ViewModel;

    move-result-object v1

    return-object v1

    .line 101
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;)Lcom/oneplus/support/lifecycle/ViewModel;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oneplus/support/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 123
    .local p2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/ViewModelProvider;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/lifecycle/ViewModelStore;->get(Ljava/lang/String;)Lcom/oneplus/support/lifecycle/ViewModel;

    move-result-object v0

    .line 125
    .local v0, "viewModel":Lcom/oneplus/support/lifecycle/ViewModel;
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    return-object v0

    .line 130
    :cond_0
    nop

    .line 135
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/ViewModelProvider;->mFactory:Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;

    invoke-interface {v1, p2}, Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;)Lcom/oneplus/support/lifecycle/ViewModel;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/ViewModelProvider;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    invoke-virtual {v1, p1, v0}, Lcom/oneplus/support/lifecycle/ViewModelStore;->put(Ljava/lang/String;Lcom/oneplus/support/lifecycle/ViewModel;)V

    .line 138
    return-object v0
.end method
