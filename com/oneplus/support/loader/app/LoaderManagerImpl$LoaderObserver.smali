.class Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;
.super Ljava/lang/Object;
.source "LoaderManagerImpl.java"

# interfaces
.implements Lcom/oneplus/support/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/loader/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoaderObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/oneplus/support/lifecycle/Observer<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;"
        }
    .end annotation
.end field

.field private mDeliveredData:Z

.field private final mLoader:Lcom/oneplus/support/loader/content/Loader;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/support/loader/content/Loader;Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;)V
    .locals 1
    .param p1    # Lcom/oneplus/support/loader/content/Loader;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;",
            "Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)V"
        }
    .end annotation

    .line 239
    .local p0, "this":Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;, "Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    .local p1, "loader":Lcom/oneplus/support/loader/content/Loader;, "Lcom/oneplus/support/loader/content/Loader<TD;>;"
    .local p2, "callback":Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;, "Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks<TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    .line 240
    iput-object p1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    .line 241
    iput-object p2, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;

    .line 242
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 272
    .local p0, "this":Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;, "Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDeliveredData="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 274
    return-void
.end method

.method hasDeliveredData()Z
    .locals 1

    .line 255
    .local p0, "this":Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;, "Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    iget-boolean v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    return v0
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 246
    .local p0, "this":Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;, "Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    sget-boolean v0, Lcom/oneplus/support/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onLoadFinished in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    .line 248
    invoke-virtual {v1, p1}, Lcom/oneplus/support/loader/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;

    iget-object v1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    invoke-interface {v0, v1, p1}, Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Lcom/oneplus/support/loader/content/Loader;Ljava/lang/Object;)V

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    .line 252
    return-void
.end method

.method reset()V
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    .line 260
    .local p0, "this":Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;, "Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    iget-boolean v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    if-eqz v0, :cond_1

    .line 261
    sget-boolean v0, Lcom/oneplus/support/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Resetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;

    iget-object v1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    invoke-interface {v0, v1}, Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Lcom/oneplus/support/loader/content/Loader;)V

    .line 264
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 268
    .local p0, "this":Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;, "Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
