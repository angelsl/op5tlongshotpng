.class Lcom/oneplus/lib/util/loading/LoadingAsyncTask$2;
.super Ljava/lang/Object;
.source "LoadingAsyncTask.java"

# interfaces
.implements Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->onFinish(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/util/loading/LoadingAsyncTask;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/util/loading/LoadingAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/util/loading/LoadingAsyncTask;

    .line 99
    .local p0, "this":Lcom/oneplus/lib/util/loading/LoadingAsyncTask$2;, "Lcom/oneplus/lib/util/loading/LoadingAsyncTask$2;"
    iput-object p1, p0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask$2;->this$0:Lcom/oneplus/lib/util/loading/LoadingAsyncTask;

    iput-object p2, p0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .line 102
    .local p0, "this":Lcom/oneplus/lib/util/loading/LoadingAsyncTask$2;, "Lcom/oneplus/lib/util/loading/LoadingAsyncTask$2;"
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask$2;->this$0:Lcom/oneplus/lib/util/loading/LoadingAsyncTask;

    invoke-virtual {v0}, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask$2;->this$0:Lcom/oneplus/lib/util/loading/LoadingAsyncTask;

    iget-object v1, p0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask$2;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->onPostExecuteExtend(Ljava/lang/Object;)V

    .line 105
    :cond_0
    return-void
.end method
