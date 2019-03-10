.class Lcom/oneplus/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/TakeScreenshotService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/oneplus/screenshot/TakeScreenshotService;

    .line 40
    iput-object p1, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1;->this$0:Lcom/oneplus/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 44
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    .line 45
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 46
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "focusWindow"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    .line 47
    const-string v2, "longshot"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v1

    sput-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    .line 49
    const-string v2, "offset"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    .line 54
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_22
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 55
    .local v0, "callback":Landroid/os/Messenger;
    new-instance v2, Lcom/oneplus/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/oneplus/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    .line 81
    .local v2, "finisher":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1;->this$0:Lcom/oneplus/screenshot/TakeScreenshotService;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Lcom/oneplus/screenshot/TakeScreenshotService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v3

    if-nez v3, :cond_44

    .line 82
    const-string v1, "Longshot.TakeScreenshotService"

    const-string v3, "Skipping screenshot because storage is locked!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0, v2}, Lcom/oneplus/screenshot/TakeScreenshotService$1;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void-no-barrier

    .line 87
    :cond_44
    # getter for: Lcom/oneplus/screenshot/TakeScreenshotService;->mScreenshot:Lcom/oneplus/screenshot/GlobalScreenshot;
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v3

    if-nez v3, :cond_55

    .line 88
    new-instance v3, Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v4, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1;->this$0:Lcom/oneplus/screenshot/TakeScreenshotService;

    invoke-direct {v3, v4}, Lcom/oneplus/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/oneplus/screenshot/TakeScreenshotService;->mScreenshot:Lcom/oneplus/screenshot/GlobalScreenshot;
    invoke-static {v3}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$002(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/GlobalScreenshot;

    goto :goto_5c

    .line 91
    :cond_55
    # getter for: Lcom/oneplus/screenshot/TakeScreenshotService;->mScreenshot:Lcom/oneplus/screenshot/GlobalScreenshot;
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/screenshot/GlobalScreenshot;->updateLayout()V

    .line 96
    :goto_5c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 97
    .local v3, "time":J
    # getter for: Lcom/oneplus/screenshot/TakeScreenshotService;->mScreenshot:Lcom/oneplus/screenshot/GlobalScreenshot;
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    sget-wide v5, Lcom/oneplus/screenshot/GlobalScreenshot;->mLastImageTime:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_77

    .line 98
    const-string v1, "Longshot.TakeScreenshotService"

    const-string v5, "Skipping screenshot because screenshot at the same time"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0, v2}, Lcom/oneplus/screenshot/TakeScreenshotService$1;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void-no-barrier

    .line 105
    :cond_77
    const-string v5, "com.oneplus.camera"

    sget-object v6, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 106
    sput-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    .line 109
    :cond_83
    const-string v5, "Longshot.TakeScreenshotService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "takescreenshot for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", longshot: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    xor-int/2addr v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", offset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_e2

    goto :goto_e1

    .line 117
    :pswitch_b7
    # getter for: Lcom/oneplus/screenshot/TakeScreenshotService;->mScreenshot:Lcom/oneplus/screenshot/GlobalScreenshot;
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v5

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-lez v7, :cond_c1

    move v7, v1

    goto :goto_c2

    :cond_c1
    move v7, v6

    :goto_c2
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-lez v8, :cond_c7

    goto :goto_c8

    :cond_c7
    move v1, v6

    :goto_c8
    invoke-virtual {v5, v2, v7, v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V

    goto :goto_e1

    .line 114
    :pswitch_cc
    # getter for: Lcom/oneplus/screenshot/TakeScreenshotService;->mScreenshot:Lcom/oneplus/screenshot/GlobalScreenshot;
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v5

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-lez v7, :cond_d6

    move v7, v1

    goto :goto_d7

    :cond_d6
    move v7, v6

    :goto_d7
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-lez v8, :cond_dc

    goto :goto_dd

    :cond_dc
    move v1, v6

    :goto_dd
    invoke-virtual {v5, v2, v7, v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    .line 115
    nop

    .line 120
    :goto_e1
    return-void-no-barrier

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_cc
        :pswitch_b7
    .end packed-switch
.end method
