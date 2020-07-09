.class Lcom/oneplus/support/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source "ReflectiveGenericLifecycleObserver.java"

# interfaces
.implements Lcom/oneplus/support/lifecycle/GenericLifecycleObserver;


# instance fields
.field private final mInfo:Lcom/oneplus/support/lifecycle/ClassesInfoCache$CallbackInfo;

.field private final mWrapped:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "wrapped"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/oneplus/support/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/oneplus/support/lifecycle/ClassesInfoCache;->sInstance:Lcom/oneplus/support/lifecycle/ClassesInfoCache;

    iget-object v1, p0, Lcom/oneplus/support/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Lcom/oneplus/support/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/lifecycle/ReflectiveGenericLifecycleObserver;->mInfo:Lcom/oneplus/support/lifecycle/ClassesInfoCache$CallbackInfo;

    .line 32
    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/support/lifecycle/LifecycleOwner;
    .param p2, "event"    # Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    .line 36
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/ReflectiveGenericLifecycleObserver;->mInfo:Lcom/oneplus/support/lifecycle/ClassesInfoCache$CallbackInfo;

    iget-object v1, p0, Lcom/oneplus/support/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, v1}, Lcom/oneplus/support/lifecycle/ClassesInfoCache$CallbackInfo;->invokeCallbacks(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    .line 37
    return-void
.end method
