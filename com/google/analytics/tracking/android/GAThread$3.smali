.class Lcom/google/analytics/tracking/android/GAThread$3;
.super Ljava/lang/Object;
.source "GAThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/GAThread;->clearHits()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAThread;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/GAThread;)V
    .registers 2

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAThread$3;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$3;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAThread;->access$700(Lcom/google/analytics/tracking/android/GAThread;)Lcom/google/analytics/tracking/android/ServiceProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/ServiceProxy;->clearHits()V

    .line 263
    return-void
.end method
