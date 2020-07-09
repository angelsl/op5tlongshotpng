.class Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;
.super Lcom/oneplus/support/lifecycle/ViewModel;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/loader/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoaderViewModel"
.end annotation


# static fields
.field private static final FACTORY:Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;


# instance fields
.field private mCreatingLoader:Z

.field private mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/SparseArrayCompat<",
            "Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 281
    new-instance v0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel$1;

    invoke-direct {v0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel$1;-><init>()V

    sput-object v0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->FACTORY:Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 280
    invoke-direct {p0}, Lcom/oneplus/support/lifecycle/ViewModel;-><init>()V

    .line 295
    new-instance v0, Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-direct {v0}, Lcom/oneplus/support/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    return-void
.end method

.method static getInstance(Lcom/oneplus/support/lifecycle/ViewModelStore;)Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;
    .locals 2
    .param p0, "viewModelStore"    # Lcom/oneplus/support/lifecycle/ViewModelStore;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 292
    new-instance v0, Lcom/oneplus/support/lifecycle/ViewModelProvider;

    sget-object v1, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->FACTORY:Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/support/lifecycle/ViewModelProvider;-><init>(Lcom/oneplus/support/lifecycle/ViewModelStore;Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Lcom/oneplus/support/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v0}, Lcom/oneplus/support/collection/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 355
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "innerPrefix":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v2}, Lcom/oneplus/support/collection/SparseArrayCompat;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 358
    iget-object v2, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v2, v1}, Lcom/oneplus/support/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 359
    .local v2, "info":Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v3, v1}, Lcom/oneplus/support/collection/SparseArrayCompat;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 360
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v2, v0, p2, p3, p4}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 357
    .end local v2    # "info":Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v0    # "innerPrefix":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method finishCreatingLoader()V
    .locals 1

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    .line 308
    return-void
.end method

.method getLoader(I)Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo<",
            "TD;>;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;

    return-object v0
.end method

.method hasRunningLoaders()Z
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v0}, Lcom/oneplus/support/collection/SparseArrayCompat;->size()I

    move-result v0

    .line 325
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 326
    iget-object v2, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v2, v1}, Lcom/oneplus/support/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 327
    .local v2, "info":Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {v2}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->isCallbackWaitingForData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    const/4 v3, 0x1

    return v3

    .line 325
    .end local v2    # "info":Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    .end local v1    # "index":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method isCreatingLoader()Z
    .locals 1

    .line 303
    iget-boolean v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    return v0
.end method

.method markForRedelivery()V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v0}, Lcom/oneplus/support/collection/SparseArrayCompat;->size()I

    move-result v0

    .line 336
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 337
    iget-object v2, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v2, v1}, Lcom/oneplus/support/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 338
    .local v2, "info":Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {v2}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->markForRedelivery()V

    .line 336
    .end local v2    # "info":Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method protected onCleared()V
    .locals 4

    .line 344
    invoke-super {p0}, Lcom/oneplus/support/lifecycle/ViewModel;->onCleared()V

    .line 345
    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v0}, Lcom/oneplus/support/collection/SparseArrayCompat;->size()I

    move-result v0

    .line 346
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 347
    iget-object v2, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v2, v1}, Lcom/oneplus/support/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 348
    .local v2, "info":Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->destroy(Z)Lcom/oneplus/support/loader/content/Loader;

    .line 346
    .end local v2    # "info":Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v1    # "index":I
    :cond_0
    iget-object v1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v1}, Lcom/oneplus/support/collection/SparseArrayCompat;->clear()V

    .line 351
    return-void
.end method

.method putLoader(ILcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "info"    # Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 311
    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/support/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 312
    return-void
.end method

.method removeLoader(I)V
    .locals 1
    .param p1, "id"    # I

    .line 320
    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/collection/SparseArrayCompat;->remove(I)V

    .line 321
    return-void
.end method

.method startCreatingLoader()V
    .locals 1

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    .line 300
    return-void
.end method
