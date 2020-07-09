.class Lcom/oneplus/support/lifecycle/LiveData$1;
.super Ljava/lang/Object;
.source "LiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/lifecycle/LiveData;


# direct methods
.method constructor <init>(Lcom/oneplus/support/lifecycle/LiveData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/support/lifecycle/LiveData;

    .line 78
    .local p0, "this":Lcom/oneplus/support/lifecycle/LiveData$1;, "Lcom/oneplus/support/lifecycle/LiveData$1;"
    iput-object p1, p0, Lcom/oneplus/support/lifecycle/LiveData$1;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 82
    .local p0, "this":Lcom/oneplus/support/lifecycle/LiveData$1;, "Lcom/oneplus/support/lifecycle/LiveData$1;"
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData$1;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    invoke-static {v0}, Lcom/oneplus/support/lifecycle/LiveData;->access$000(Lcom/oneplus/support/lifecycle/LiveData;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LiveData$1;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    invoke-static {v1}, Lcom/oneplus/support/lifecycle/LiveData;->access$100(Lcom/oneplus/support/lifecycle/LiveData;)Ljava/lang/Object;

    move-result-object v1

    .line 84
    .local v1, "newValue":Ljava/lang/Object;
    iget-object v2, p0, Lcom/oneplus/support/lifecycle/LiveData$1;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    invoke-static {}, Lcom/oneplus/support/lifecycle/LiveData;->access$200()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/support/lifecycle/LiveData;->access$102(Lcom/oneplus/support/lifecycle/LiveData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData$1;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 88
    return-void

    .line 85
    .end local v1    # "newValue":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
