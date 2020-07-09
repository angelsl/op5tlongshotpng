.class Lcom/oneplus/lib/util/loading/LoadingHelper$1;
.super Ljava/lang/Object;
.source "LoadingHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/util/loading/LoadingHelper;->beginShowProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/util/loading/LoadingHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/util/loading/LoadingHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/util/loading/LoadingHelper;

    .line 69
    iput-object p1, p0, Lcom/oneplus/lib/util/loading/LoadingHelper$1;->this$0:Lcom/oneplus/lib/util/loading/LoadingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingHelper$1;->this$0:Lcom/oneplus/lib/util/loading/LoadingHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/lib/util/loading/LoadingHelper;->access$002(Lcom/oneplus/lib/util/loading/LoadingHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 74
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingHelper$1;->this$0:Lcom/oneplus/lib/util/loading/LoadingHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/util/loading/LoadingHelper;->showProgree()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/lib/util/loading/LoadingHelper;->access$102(Lcom/oneplus/lib/util/loading/LoadingHelper;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingHelper$1;->this$0:Lcom/oneplus/lib/util/loading/LoadingHelper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/util/loading/LoadingHelper;->access$202(Lcom/oneplus/lib/util/loading/LoadingHelper;J)J

    .line 76
    return-void
.end method
