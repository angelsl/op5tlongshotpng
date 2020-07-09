.class public interface abstract Lcom/oneplus/support/lifecycle/GenericLifecycleObserver;
.super Ljava/lang/Object;
.source "GenericLifecycleObserver.java"

# interfaces
.implements Lcom/oneplus/support/lifecycle/LifecycleObserver;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract onStateChanged(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V
.end method
