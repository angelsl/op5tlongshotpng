.class public Lcom/oneplus/screenshot/ScreenshotServiceErrorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenshotServiceErrorReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 33
    nop

    .line 34
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 35
    .local v0, "nm":Landroid/app/NotificationManager;
    const v1, 0x7f0d0041

    invoke-static {p1, v0, v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    .line 37
    return-void
.end method
