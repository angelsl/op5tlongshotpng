.class Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel$1;
.super Ljava/lang/Object;
.source "LoaderManagerImpl.java"

# interfaces
.implements Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Lcom/oneplus/support/lifecycle/ViewModel;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
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

    .line 286
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-direct {v0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;-><init>()V

    return-object v0
.end method
