.class public abstract Lcom/oneplus/lib/util/loading/ViewLoadingAsyncTask;
.super Lcom/oneplus/lib/util/loading/LoadingAsyncTask;
.source "ViewLoadingAsyncTask.java"


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
.field private mProgressView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "progressView"    # Landroid/view/View;

    .line 27
    .local p0, "this":Lcom/oneplus/lib/util/loading/ViewLoadingAsyncTask;, "Lcom/oneplus/lib/util/loading/ViewLoadingAsyncTask<TParam;TProgress;TResult;>;"
    invoke-direct {p0}, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/oneplus/lib/util/loading/ViewLoadingAsyncTask;->mProgressView:Landroid/view/View;

    .line 29
    return-void
.end method


# virtual methods
.method protected hideProgree(Ljava/lang/Object;)V
    .locals 2
    .param p1, "progreeView"    # Ljava/lang/Object;

    .line 41
    .local p0, "this":Lcom/oneplus/lib/util/loading/ViewLoadingAsyncTask;, "Lcom/oneplus/lib/util/loading/ViewLoadingAsyncTask<TParam;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/ViewLoadingAsyncTask;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 42
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :cond_0
    return-void
.end method

.method protected showProgree()Ljava/lang/Object;
    .locals 2

    .line 33
    .local p0, "this":Lcom/oneplus/lib/util/loading/ViewLoadingAsyncTask;, "Lcom/oneplus/lib/util/loading/ViewLoadingAsyncTask<TParam;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/ViewLoadingAsyncTask;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 34
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/ViewLoadingAsyncTask;->mProgressView:Landroid/view/View;

    return-object v0
.end method
