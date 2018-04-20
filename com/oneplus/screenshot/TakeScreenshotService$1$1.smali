.class Lcom/oneplus/screenshot/TakeScreenshotService$1$1;
.super Ljava/lang/Object;
.source "TakeScreenshotService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/TakeScreenshotService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/screenshot/TakeScreenshotService$1;

.field final synthetic val$callback:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V
    .registers 3
    .param p1, "this$1"    # Lcom/oneplus/screenshot/TakeScreenshotService$1;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1$1;->this$1:Lcom/oneplus/screenshot/TakeScreenshotService$1;

    iput-object p2, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1$1;->val$callback:Landroid/os/Messenger;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 56
    const/4 v2, 0x1

    .line 57
    .local v2, "what":I
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->-get0()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v3

    if-eqz v3, :cond_26

    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->-get0()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/screenshot/GlobalScreenshot;->isGuiderShowing()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 58
    const/4 v2, 0x2

    .line 59
    const-string/jumbo v3, "Longshot.TakeScreenshotService"

    const-string/jumbo v4, "send 2 back"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_1c
    invoke-static {v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 69
    .local v1, "reply":Landroid/os/Message;
    :try_start_20
    iget-object v3, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1$1;->val$callback:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_36

    .line 72
    :goto_25
    return-void

    .line 62
    .end local v1    # "reply":Landroid/os/Message;
    :cond_26
    iget-object v3, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1$1;->this$1:Lcom/oneplus/screenshot/TakeScreenshotService$1;

    iget-object v3, v3, Lcom/oneplus/screenshot/TakeScreenshotService$1;->this$0:Lcom/oneplus/screenshot/TakeScreenshotService;

    const-string/jumbo v4, "screenshot"

    const-string/jumbo v5, "normal"

    sget-object v6, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/screenshot/longshot/util/Configs;->sendAppTrackerEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 70
    .restart local v1    # "reply":Landroid/os/Message;
    :catch_36
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_25
.end method
