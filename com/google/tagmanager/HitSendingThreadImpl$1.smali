.class Lcom/google/tagmanager/HitSendingThreadImpl$1;
.super Ljava/lang/Object;
.source "HitSendingThreadImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/HitSendingThreadImpl;->sendHit(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/HitSendingThreadImpl;

.field final synthetic val$hitTime:J

.field final synthetic val$thread:Lcom/google/tagmanager/HitSendingThread;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/HitSendingThreadImpl;Lcom/google/tagmanager/HitSendingThread;JLjava/lang/String;)V
    .registers 7

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/tagmanager/HitSendingThreadImpl$1;->this$0:Lcom/google/tagmanager/HitSendingThreadImpl;

    iput-object p2, p0, Lcom/google/tagmanager/HitSendingThreadImpl$1;->val$thread:Lcom/google/tagmanager/HitSendingThread;

    iput-wide p3, p0, Lcom/google/tagmanager/HitSendingThreadImpl$1;->val$hitTime:J

    iput-object p5, p0, Lcom/google/tagmanager/HitSendingThreadImpl$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 74
    iget-object v1, p0, Lcom/google/tagmanager/HitSendingThreadImpl$1;->this$0:Lcom/google/tagmanager/HitSendingThreadImpl;

    # getter for: Lcom/google/tagmanager/HitSendingThreadImpl;->mUrlStore:Lcom/google/tagmanager/HitStore;
    invoke-static {v1}, Lcom/google/tagmanager/HitSendingThreadImpl;->access$000(Lcom/google/tagmanager/HitSendingThreadImpl;)Lcom/google/tagmanager/HitStore;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 79
    :goto_8
    iget-object v1, p0, Lcom/google/tagmanager/HitSendingThreadImpl$1;->this$0:Lcom/google/tagmanager/HitSendingThreadImpl;

    # getter for: Lcom/google/tagmanager/HitSendingThreadImpl;->mUrlStore:Lcom/google/tagmanager/HitStore;
    invoke-static {v1}, Lcom/google/tagmanager/HitSendingThreadImpl;->access$000(Lcom/google/tagmanager/HitSendingThreadImpl;)Lcom/google/tagmanager/HitStore;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/tagmanager/HitSendingThreadImpl$1;->val$hitTime:J

    iget-object v4, p0, Lcom/google/tagmanager/HitSendingThreadImpl$1;->val$url:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/tagmanager/HitStore;->putHit(JLjava/lang/String;)V

    .line 80
    return-void

    .line 75
    :cond_16
    invoke-static {}, Lcom/google/tagmanager/ServiceManagerImpl;->getInstance()Lcom/google/tagmanager/ServiceManagerImpl;

    move-result-object v0

    .line 76
    .local v0, "instance":Lcom/google/tagmanager/ServiceManagerImpl;
    iget-object v1, p0, Lcom/google/tagmanager/HitSendingThreadImpl$1;->this$0:Lcom/google/tagmanager/HitSendingThreadImpl;

    # getter for: Lcom/google/tagmanager/HitSendingThreadImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/tagmanager/HitSendingThreadImpl;->access$100(Lcom/google/tagmanager/HitSendingThreadImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/tagmanager/HitSendingThreadImpl$1;->val$thread:Lcom/google/tagmanager/HitSendingThread;

    invoke-virtual {v0, v1, v2}, Lcom/google/tagmanager/ServiceManagerImpl;->initialize(Landroid/content/Context;Lcom/google/tagmanager/HitSendingThread;)V

    .line 77
    iget-object v1, p0, Lcom/google/tagmanager/HitSendingThreadImpl$1;->this$0:Lcom/google/tagmanager/HitSendingThreadImpl;

    invoke-virtual {v0}, Lcom/google/tagmanager/ServiceManagerImpl;->getStore()Lcom/google/tagmanager/HitStore;

    move-result-object v2

    # setter for: Lcom/google/tagmanager/HitSendingThreadImpl;->mUrlStore:Lcom/google/tagmanager/HitStore;
    invoke-static {v1, v2}, Lcom/google/tagmanager/HitSendingThreadImpl;->access$002(Lcom/google/tagmanager/HitSendingThreadImpl;Lcom/google/tagmanager/HitStore;)Lcom/google/tagmanager/HitStore;

    goto :goto_8
.end method
