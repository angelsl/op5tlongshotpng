.class Lcom/oneplus/lib/util/loading/LoadingHelper$3;
.super Ljava/lang/Object;
.source "LoadingHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/util/loading/LoadingHelper;->doFinish(Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/util/loading/LoadingHelper;

.field final synthetic val$callback:Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;

.field final synthetic val$shown:Z


# direct methods
.method constructor <init>(Lcom/oneplus/lib/util/loading/LoadingHelper;ZLcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/util/loading/LoadingHelper;

    .line 112
    iput-object p1, p0, Lcom/oneplus/lib/util/loading/LoadingHelper$3;->this$0:Lcom/oneplus/lib/util/loading/LoadingHelper;

    iput-boolean p2, p0, Lcom/oneplus/lib/util/loading/LoadingHelper$3;->val$shown:Z

    iput-object p3, p0, Lcom/oneplus/lib/util/loading/LoadingHelper$3;->val$callback:Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 116
    iget-boolean v0, p0, Lcom/oneplus/lib/util/loading/LoadingHelper$3;->val$shown:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingHelper$3;->this$0:Lcom/oneplus/lib/util/loading/LoadingHelper;

    invoke-static {v0}, Lcom/oneplus/lib/util/loading/LoadingHelper;->access$100(Lcom/oneplus/lib/util/loading/LoadingHelper;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/util/loading/LoadingHelper;->hideProgree(Ljava/lang/Object;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingHelper$3;->val$callback:Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;

    if-eqz v0, :cond_1

    .line 121
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;->finish(Z)V

    .line 123
    :cond_1
    return-void
.end method
