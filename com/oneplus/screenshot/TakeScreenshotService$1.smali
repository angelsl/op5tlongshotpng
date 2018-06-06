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

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1;->this$0:Lcom/oneplus/screenshot/TakeScreenshotService;

    .line 40
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 44
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_27

    .line 45
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 46
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "focusWindow"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    .line 47
    const-string/jumbo v3, "longshot"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    sput-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    .line 49
    const-string/jumbo v3, "offset"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    .line 54
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_27
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 55
    .local v1, "callback":Landroid/os/Messenger;
    new-instance v2, Lcom/oneplus/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/oneplus/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    .line 81
    .local v2, "finisher":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1;->this$0:Lcom/oneplus/screenshot/TakeScreenshotService;

    const-class v8, Landroid/os/UserManager;

    invoke-virtual {v3, v8}, Lcom/oneplus/screenshot/TakeScreenshotService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 82
    const-string/jumbo v3, "Longshot.TakeScreenshotService"

    const-string/jumbo v6, "Skipping screenshot because storage is locked!"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0, v2}, Lcom/oneplus/screenshot/TakeScreenshotService$1;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void

    .line 87
    :cond_4b
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->-get0()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v3

    if-nez v3, :cond_79

    .line 88
    new-instance v3, Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v8, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1;->this$0:Lcom/oneplus/screenshot/TakeScreenshotService;

    invoke-direct {v3, v8}, Lcom/oneplus/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/oneplus/screenshot/TakeScreenshotService;->-set0(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 96
    :goto_5b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v4, v8, v10

    .line 97
    .local v4, "time":J
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->-get0()Lcom/oneplus/screenshot/GlobalScreenshot;

    sget-wide v8, Lcom/oneplus/screenshot/GlobalScreenshot;->mLastImageTime:J

    cmp-long v3, v8, v4

    if-nez v3, :cond_81

    .line 98
    const-string/jumbo v3, "Longshot.TakeScreenshotService"

    const-string/jumbo v6, "Skipping screenshot because screenshot at the same time"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0, v2}, Lcom/oneplus/screenshot/TakeScreenshotService$1;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void

    .line 91
    .end local v4    # "time":J
    :cond_79
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->-get0()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/screenshot/GlobalScreenshot;->updateLayout()V

    goto :goto_5b

    .line 105
    .restart local v4    # "time":J
    :cond_81
    const-string/jumbo v3, "com.oneplus.camera"

    sget-object v8, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 106
    sput-boolean v6, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    .line 109
    :cond_8e
    const-string/jumbo v3, "Longshot.TakeScreenshotService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "takescreenshot for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", longshot: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    xor-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", offset:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_f6

    .line 120
    :goto_cb
    return-void

    .line 114
    :pswitch_cc
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->-get0()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v8

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_dd

    move v3, v6

    :goto_d5
    iget v9, p1, Landroid/os/Message;->arg2:I

    if-lez v9, :cond_df

    :goto_d9
    invoke-virtual {v8, v2, v3, v6}, Lcom/oneplus/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    goto :goto_cb

    :cond_dd
    move v3, v7

    goto :goto_d5

    :cond_df
    move v6, v7

    goto :goto_d9

    .line 117
    :pswitch_e1
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->-get0()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v8

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_f2

    move v3, v6

    :goto_ea
    iget v9, p1, Landroid/os/Message;->arg2:I

    if-lez v9, :cond_f4

    :goto_ee
    invoke-virtual {v8, v2, v3, v6}, Lcom/oneplus/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V

    goto :goto_cb

    :cond_f2
    move v3, v7

    goto :goto_ea

    :cond_f4
    move v6, v7

    goto :goto_ee

    .line 112
    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_cc
        :pswitch_e1
    .end packed-switch
.end method
