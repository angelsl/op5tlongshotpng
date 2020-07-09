.class public interface abstract Lcom/oneplus/support/lifecycle/LifecycleRegistryOwner;
.super Ljava/lang/Object;
.source "LifecycleRegistryOwner.java"

# interfaces
.implements Lcom/oneplus/support/lifecycle/LifecycleOwner;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public bridge synthetic getLifecycle()Lcom/oneplus/support/lifecycle/Lifecycle;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 25
    invoke-interface {p0}, Lcom/oneplus/support/lifecycle/LifecycleRegistryOwner;->getLifecycle()Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLifecycle()Lcom/oneplus/support/lifecycle/LifecycleRegistry;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method
