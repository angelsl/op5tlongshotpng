.class Lcom/oneplus/screenshot/longshot/state/AbsShotState$1;
.super Ljava/lang/Object;
.source "AbsShotState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/AbsShotState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/AbsShotState;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/state/AbsShotState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/state/AbsShotState;

    .line 41
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/AbsShotState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 44
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/AbsShotState;

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getStatusbarBarHeight()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v9, v1

    goto :goto_0

    :cond_0
    move v9, v2

    .line 45
    .local v9, "statusbarshow":Z
    :goto_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/AbsShotState;

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getNavBarHeight()I

    move-result v0

    if-lez v0, :cond_1

    move v10, v1

    goto :goto_1

    :cond_1
    move v10, v2

    .line 48
    .local v10, "navigationbarshow":Z
    :goto_1
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/AbsShotState;

    new-instance v11, Lcom/oneplus/screenshot/longshot/task/CaptureTask;

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v3}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/AbsShotState;

    iget-object v3, v3, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 49
    invoke-interface {v3}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/AbsShotState;

    iget-object v3, v3, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v3}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/AbsShotState;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->isFirstShot()Z

    move-result v8

    move-object v3, v11

    move-object v4, v0

    invoke-direct/range {v3 .. v10}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;-><init>(Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;Landroid/content/Context;Landroid/util/DisplayMetrics;Landroid/os/IBinder;ZZZ)V

    iput-object v11, v0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

    .line 52
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/AbsShotState;

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

    new-array v1, v1, [Ljava/lang/Integer;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/AbsShotState;

    iget v3, v3, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureDelay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 53
    return-void
.end method
