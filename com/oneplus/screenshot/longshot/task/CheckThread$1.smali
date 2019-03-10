.class Lcom/oneplus/screenshot/longshot/task/CheckThread$1;
.super Ljava/lang/Object;
.source "CheckThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/task/CheckThread;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/task/CheckThread;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/task/CheckThread;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/task/CheckThread;

    .line 47
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread$1;->this$0:Lcom/oneplus/screenshot/longshot/task/CheckThread;

    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 51
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread$1;->val$context:Landroid/content/Context;

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->notifyToast(Landroid/content/Context;ZLjava/lang/String;I)V

    .line 52
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread$1;->this$0:Lcom/oneplus/screenshot/longshot/task/CheckThread;

    # getter for: Lcom/oneplus/screenshot/longshot/task/CheckThread;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/task/CheckThread;->access$000(Lcom/oneplus/screenshot/longshot/task/CheckThread;)Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->stop()V

    .line 53
    return-void
.end method
