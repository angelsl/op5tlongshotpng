.class public Lcom/oneplus/screenshot/longshot/cache/ImageCache;
.super Ljava/util/ArrayList;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageCache"


# instance fields
.field private mCanClear:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->mCanClear:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->mCanClear:Z

    if-eqz v0, :cond_0

    .line 24
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 26
    :cond_0
    return-void
.end method

.method public setCanClear(Z)V
    .locals 0
    .param p1, "canClear"    # Z

    .line 32
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->mCanClear:Z

    .line 33
    return-void
.end method
