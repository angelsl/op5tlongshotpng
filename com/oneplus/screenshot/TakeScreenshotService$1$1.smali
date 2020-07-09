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
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/screenshot/TakeScreenshotService$1;

    .line 65
    iput-object p1, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1$1;->this$1:Lcom/oneplus/screenshot/TakeScreenshotService$1;

    iput-object p2, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1$1;->val$callback:Landroid/os/Messenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 69
    const/4 v0, 0x1

    .line 70
    .local v0, "what":I
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v1

    const-string v2, "Longshot.TakeScreenshotService"

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->isGuiderShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const/4 v0, 0x2

    .line 72
    const-string v1, "send 2 back"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1$1;->this$1:Lcom/oneplus/screenshot/TakeScreenshotService$1;

    iget-object v1, v1, Lcom/oneplus/screenshot/TakeScreenshotService$1;->this$0:Lcom/oneplus/screenshot/TakeScreenshotService;

    sget-object v3, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    const-string v4, "screenshot"

    const-string v5, "normal"

    invoke-static {v1, v4, v5, v3}, Lcom/oneplus/screenshot/longshot/util/Configs;->sendAppTrackerEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 82
    .local v1, "reply":Landroid/os/Message;
    :try_start_0
    const-string v3, "send finisher"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v3, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1$1;->val$callback:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_1

    .line 84
    :catch_0
    move-exception v3

    .line 85
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
