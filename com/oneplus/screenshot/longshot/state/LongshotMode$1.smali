.class Lcom/oneplus/screenshot/longshot/state/LongshotMode$1;
.super Ljava/lang/Object;
.source "LongshotMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/state/LongshotMode;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    .line 362
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$1;->this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 364
    const-string v0, "Longshot.LongshotMode"

    const-string v1, "disablekeys() at LongshotState.SHOT_FIRST"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$1;->this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->access$100(Lcom/oneplus/screenshot/longshot/state/LongshotMode;Z)V

    .line 366
    return-void
.end method
