.class public interface abstract Lcom/oneplus/screenshot/util/Cachable;
.super Ljava/lang/Object;
.source "Cachable.java"


# virtual methods
.method public abstract clearCache()V
.end method

.method public abstract clearNaviBar()V
.end method

.method public abstract getCache()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNaviBar()Landroid/graphics/Bitmap;
.end method

.method public abstract setCache(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setNaviBar(Landroid/graphics/Bitmap;)V
.end method
