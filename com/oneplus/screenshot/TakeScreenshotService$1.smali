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
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/TakeScreenshotService;

    .line 43
    iput-object p1, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1;->this$0:Lcom/oneplus/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "Longshot.TakeScreenshotService"

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 48
    const-string v0, "longshotStart"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void

    .line 53
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "focusWindow"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    .line 56
    const-string v4, "longshot"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v4, v3

    sput-boolean v4, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    .line 58
    const-string v4, "offset"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    .line 60
    const-string v4, "voiceLongshot"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsVoiceLongshot:Z

    .line 64
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 65
    .local v0, "callback":Landroid/os/Messenger;
    new-instance v4, Lcom/oneplus/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v4, p0, v0}, Lcom/oneplus/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/oneplus/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    .line 89
    .local v4, "finisher":Ljava/lang/Runnable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "voiceLongshot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsVoiceLongshot:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v5, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1;->this$0:Lcom/oneplus/screenshot/TakeScreenshotService;

    const-class v6, Landroid/os/UserManager;

    invoke-virtual {v5, v6}, Lcom/oneplus/screenshot/TakeScreenshotService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 94
    const-string v2, "Skipping screenshot because storage is locked!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0, v4}, Lcom/oneplus/screenshot/TakeScreenshotService$1;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void

    .line 99
    :cond_2
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v5

    if-nez v5, :cond_3

    .line 100
    new-instance v5, Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v6, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1;->this$0:Lcom/oneplus/screenshot/TakeScreenshotService;

    invoke-direct {v5, v6}, Lcom/oneplus/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    invoke-static {v5}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$002(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/GlobalScreenshot;

    goto :goto_0

    .line 103
    :cond_3
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/screenshot/GlobalScreenshot;->updateLayout()V

    .line 108
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 109
    .local v5, "time":J
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    sget-wide v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mLastImageTime:J

    cmp-long v7, v7, v5

    if-nez v7, :cond_4

    .line 110
    const-string v2, "Skipping screenshot because screenshot at the same time"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0, v4}, Lcom/oneplus/screenshot/TakeScreenshotService$1;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void

    .line 116
    :cond_4
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sput-wide v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotBeginTime:J

    .line 119
    sget-object v7, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    const-string v8, "com.oneplus.camera"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 120
    sput-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    .line 124
    :cond_5
    sget-boolean v7, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1;->this$0:Lcom/oneplus/screenshot/TakeScreenshotService;

    invoke-static {v7}, Lcom/oneplus/screenshot/util/Utils;->isKeyguardOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 125
    sput-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    .line 128
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "takescreenshot for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", longshot: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    xor-int/2addr v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", offset:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    sget-wide v8, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotBeginTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v3, :cond_a

    const/4 v7, 0x2

    if-eq v1, v7, :cond_7

    goto :goto_3

    .line 136
    :cond_7
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v1

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-lez v7, :cond_8

    move v7, v3

    goto :goto_1

    :cond_8
    move v7, v2

    :goto_1
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-lez v8, :cond_9

    move v2, v3

    :cond_9
    invoke-virtual {v1, v4, v7, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V

    .line 137
    goto :goto_3

    .line 133
    :cond_a
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v1

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-lez v7, :cond_b

    move v7, v3

    goto :goto_2

    :cond_b
    move v7, v2

    :goto_2
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-lez v8, :cond_c

    move v2, v3

    :cond_c
    invoke-virtual {v1, v4, v7, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    .line 134
    nop

    .line 141
    :goto_3
    return-void
.end method
