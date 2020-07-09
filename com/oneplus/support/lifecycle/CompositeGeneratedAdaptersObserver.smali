.class public Lcom/oneplus/support/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "CompositeGeneratedAdaptersObserver.java"

# interfaces
.implements Lcom/oneplus/support/lifecycle/GenericLifecycleObserver;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mGeneratedAdapters:[Lcom/oneplus/support/lifecycle/GeneratedAdapter;


# direct methods
.method constructor <init>([Lcom/oneplus/support/lifecycle/GeneratedAdapter;)V
    .locals 0
    .param p1, "generatedAdapters"    # [Lcom/oneplus/support/lifecycle/GeneratedAdapter;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/oneplus/support/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Lcom/oneplus/support/lifecycle/GeneratedAdapter;

    .line 32
    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V
    .locals 6
    .param p1, "source"    # Lcom/oneplus/support/lifecycle/LifecycleOwner;
    .param p2, "event"    # Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    .line 36
    new-instance v0, Lcom/oneplus/support/lifecycle/MethodCallsLogger;

    invoke-direct {v0}, Lcom/oneplus/support/lifecycle/MethodCallsLogger;-><init>()V

    .line 37
    .local v0, "logger":Lcom/oneplus/support/lifecycle/MethodCallsLogger;
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Lcom/oneplus/support/lifecycle/GeneratedAdapter;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 38
    .local v5, "mGenerated":Lcom/oneplus/support/lifecycle/GeneratedAdapter;
    invoke-interface {v5, p1, p2, v3, v0}, Lcom/oneplus/support/lifecycle/GeneratedAdapter;->callMethods(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;ZLcom/oneplus/support/lifecycle/MethodCallsLogger;)V

    .line 37
    .end local v5    # "mGenerated":Lcom/oneplus/support/lifecycle/GeneratedAdapter;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Lcom/oneplus/support/lifecycle/GeneratedAdapter;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 41
    .local v4, "mGenerated":Lcom/oneplus/support/lifecycle/GeneratedAdapter;
    const/4 v5, 0x1

    invoke-interface {v4, p1, p2, v5, v0}, Lcom/oneplus/support/lifecycle/GeneratedAdapter;->callMethods(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;ZLcom/oneplus/support/lifecycle/MethodCallsLogger;)V

    .line 40
    .end local v4    # "mGenerated":Lcom/oneplus/support/lifecycle/GeneratedAdapter;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 43
    :cond_1
    return-void
.end method
