.class public Lcom/oneplus/screenshot/GlobalScreenshot$DeleteScreenshotReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteScreenshotReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1647
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1650
    const-string v0, "android:screenshot_uri_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1651
    return-void

    .line 1655
    :cond_9
    const-string v0, "notification"

    .line 1656
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1657
    .local v0, "nm":Landroid/app/NotificationManager;
    const-string v1, "android:screenshot_uri_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1658
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1661
    new-instance v3, Lcom/oneplus/screenshot/DeleteImageInBackgroundTask;

    invoke-direct {v3, p1}, Lcom/oneplus/screenshot/DeleteImageInBackgroundTask;-><init>(Landroid/content/Context;)V

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    invoke-virtual {v3, v2}, Lcom/oneplus/screenshot/DeleteImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1662
    return-void
.end method
