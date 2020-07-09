.class public Lcom/oneplus/support/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source "SingleGeneratedAdapterObserver.java"

# interfaces
.implements Lcom/oneplus/support/lifecycle/GenericLifecycleObserver;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mGeneratedAdapter:Lcom/oneplus/support/lifecycle/GeneratedAdapter;


# direct methods
.method constructor <init>(Lcom/oneplus/support/lifecycle/GeneratedAdapter;)V
    .locals 0
    .param p1, "generatedAdapter"    # Lcom/oneplus/support/lifecycle/GeneratedAdapter;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/oneplus/support/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Lcom/oneplus/support/lifecycle/GeneratedAdapter;

    .line 31
    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/support/lifecycle/LifecycleOwner;
    .param p2, "event"    # Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    .line 35
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Lcom/oneplus/support/lifecycle/GeneratedAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/oneplus/support/lifecycle/GeneratedAdapter;->callMethods(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;ZLcom/oneplus/support/lifecycle/MethodCallsLogger;)V

    .line 36
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Lcom/oneplus/support/lifecycle/GeneratedAdapter;

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/oneplus/support/lifecycle/GeneratedAdapter;->callMethods(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;ZLcom/oneplus/support/lifecycle/MethodCallsLogger;)V

    .line 37
    return-void
.end method
