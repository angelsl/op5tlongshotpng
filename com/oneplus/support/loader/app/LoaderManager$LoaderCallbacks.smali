.class public interface abstract Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/loader/app/LoaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onCreateLoader(ILandroid/os/Bundle;)Lcom/oneplus/support/loader/content/Loader;
    .param p2    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract onLoadFinished(Lcom/oneplus/support/loader/content/Loader;Ljava/lang/Object;)V
    .param p1    # Lcom/oneplus/support/loader/content/Loader;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;TD;)V"
        }
    .end annotation
.end method

.method public abstract onLoaderReset(Lcom/oneplus/support/loader/content/Loader;)V
    .param p1    # Lcom/oneplus/support/loader/content/Loader;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;)V"
        }
    .end annotation
.end method
