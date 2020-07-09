.class Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/lifecycle/LifecycleRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObserverWithState"
.end annotation


# instance fields
.field mLifecycleObserver:Lcom/oneplus/support/lifecycle/GenericLifecycleObserver;

.field mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;


# direct methods
.method constructor <init>(Lcom/oneplus/support/lifecycle/LifecycleObserver;Lcom/oneplus/support/lifecycle/Lifecycle$State;)V
    .locals 1
    .param p1, "observer"    # Lcom/oneplus/support/lifecycle/LifecycleObserver;
    .param p2, "initialState"    # Lcom/oneplus/support/lifecycle/Lifecycle$State;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    invoke-static {p1}, Lcom/oneplus/support/lifecycle/Lifecycling;->getCallback(Ljava/lang/Object;)Lcom/oneplus/support/lifecycle/GenericLifecycleObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mLifecycleObserver:Lcom/oneplus/support/lifecycle/GenericLifecycleObserver;

    .line 349
    iput-object p2, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    .line 350
    return-void
.end method


# virtual methods
.method dispatchEvent(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "owner"    # Lcom/oneplus/support/lifecycle/LifecycleOwner;
    .param p2, "event"    # Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    .line 353
    invoke-static {p2}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->getStateAfter(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)Lcom/oneplus/support/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 354
    .local v0, "newState":Lcom/oneplus/support/lifecycle/Lifecycle$State;
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-static {v1, v0}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->min(Lcom/oneplus/support/lifecycle/Lifecycle$State;Lcom/oneplus/support/lifecycle/Lifecycle$State;)Lcom/oneplus/support/lifecycle/Lifecycle$State;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    .line 355
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mLifecycleObserver:Lcom/oneplus/support/lifecycle/GenericLifecycleObserver;

    invoke-interface {v1, p1, p2}, Lcom/oneplus/support/lifecycle/GenericLifecycleObserver;->onStateChanged(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 356
    iput-object v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    .line 357
    return-void
.end method
