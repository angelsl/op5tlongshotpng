.class Lcom/oneplus/screenshot/LongshotService$ServiceBinder;
.super Lcom/oneplus/longshot/LongScreenshotService;
.source "LongshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/LongshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceBinder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/oneplus/screenshot/LongshotService;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/LongshotService;Landroid/content/Context;ZZ)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "statusBarVisible"    # Z
    .param p4, "navBarVisible"    # Z

    .line 77
    iput-object p1, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    .line 78
    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/longshot/LongScreenshotService;-><init>(Landroid/content/Context;ZZ)V

    .line 79
    iput-object p2, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method


# virtual methods
.method public isHandleState()Z
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    # getter for: Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isHandleState()Z

    move-result v0

    return v0
.end method

.method public isMoveState()Z
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    # getter for: Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isMoveState()Z

    move-result v0

    return v0
.end method

.method public notifyScroll(Z)V
    .registers 4
    .param p1, "isOverScroll"    # Z

    .line 96
    const/4 v0, 0x1

    if-eqz p1, :cond_d

    .line 97
    iget-object v1, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    # getter for: Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    invoke-static {v1}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->setOverScroll(Z)V

    goto :goto_16

    .line 99
    :cond_d
    iget-object v1, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    # getter for: Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    invoke-static {v1}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->setScroll(Z)V

    .line 101
    :goto_16
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public notifyScrollViewTop(I)V
    .registers 3
    .param p1, "viewTop"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    # setter for: Lcom/oneplus/screenshot/LongshotService;->mTargetViewTop:I
    invoke-static {v0, p1}, Lcom/oneplus/screenshot/LongshotService;->access$202(Lcom/oneplus/screenshot/LongshotService;I)I

    .line 121
    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    # getter for: Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 122
    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    # getter for: Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->setScrollViewTop(I)V

    .line 124
    :cond_16
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onUnscrollableView()V
    .registers 3

    .line 128
    # getter for: Lcom/oneplus/screenshot/LongshotService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/screenshot/LongshotService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUnscrollableView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    # getter for: Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 130
    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    # getter for: Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onUnscrollableView()V

    .line 132
    :cond_1a
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public start(Lcom/oneplus/longshot/ILongScreenshotCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/oneplus/longshot/ILongScreenshotCallback;

    .line 84
    # getter for: Lcom/oneplus/screenshot/LongshotService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/screenshot/LongshotService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Lcom/oneplus/screenshot/LongshotService$Finisher;

    iget-object v1, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-direct {v0, v1, p1}, Lcom/oneplus/screenshot/LongshotService$Finisher;-><init>(Lcom/oneplus/screenshot/LongshotService;Lcom/oneplus/longshot/ILongScreenshotCallback;)V

    .line 87
    .local v0, "finisher":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    # getter for: Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    invoke-static {v1}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->mStatusBarVisible:Z

    iget-boolean v3, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->mNavBarVisible:Z

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->start(Ljava/lang/Runnable;Lcom/oneplus/longshot/ILongScreenshotCallback;ZZ)V

    .line 88
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public stopLongshot()V
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    # getter for: Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->stop()V

    .line 116
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
