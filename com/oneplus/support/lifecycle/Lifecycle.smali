.class public abstract Lcom/oneplus/support/lifecycle/Lifecycle;
.super Ljava/lang/Object;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/lifecycle/Lifecycle$State;,
        Lcom/oneplus/support/lifecycle/Lifecycle$Event;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addObserver(Lcom/oneplus/support/lifecycle/LifecycleObserver;)V
    .param p1    # Lcom/oneplus/support/lifecycle/LifecycleObserver;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract getCurrentState()Lcom/oneplus/support/lifecycle/Lifecycle$State;
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract removeObserver(Lcom/oneplus/support/lifecycle/LifecycleObserver;)V
    .param p1    # Lcom/oneplus/support/lifecycle/LifecycleObserver;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation
.end method
