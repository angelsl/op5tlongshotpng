.class public abstract Lcom/oneplus/lib/util/loading/DialogLoadingAsyncTask;
.super Lcom/oneplus/lib/util/loading/LoadingAsyncTask;
.source "DialogLoadingAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/lib/util/loading/LoadingAsyncTask<",
        "TParam;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 28
    .local p0, "this":Lcom/oneplus/lib/util/loading/DialogLoadingAsyncTask;, "Lcom/oneplus/lib/util/loading/DialogLoadingAsyncTask<TParam;TProgress;TResult;>;"
    invoke-direct {p0}, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/oneplus/lib/util/loading/DialogLoadingAsyncTask;->mDialog:Landroid/app/Dialog;

    .line 30
    return-void
.end method


# virtual methods
.method protected hideProgree(Ljava/lang/Object;)V
    .locals 1
    .param p1, "progreeView"    # Ljava/lang/Object;

    .line 44
    .local p0, "this":Lcom/oneplus/lib/util/loading/DialogLoadingAsyncTask;, "Lcom/oneplus/lib/util/loading/DialogLoadingAsyncTask<TParam;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/DialogLoadingAsyncTask;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 49
    :cond_0
    :goto_0
    return-void
.end method

.method protected showProgree()Ljava/lang/Object;
    .locals 1

    .line 34
    .local p0, "this":Lcom/oneplus/lib/util/loading/DialogLoadingAsyncTask;, "Lcom/oneplus/lib/util/loading/DialogLoadingAsyncTask<TParam;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/DialogLoadingAsyncTask;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 36
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 39
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/DialogLoadingAsyncTask;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method
