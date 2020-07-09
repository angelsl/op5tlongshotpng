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
    .locals 0

    .line 1857
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1860
    const-string v0, "android:screenshot_uri_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1861
    return-void

    .line 1865
    :cond_0
    nop

    .line 1866
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1867
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1868
    .local v0, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1871
    new-instance v3, Lcom/oneplus/screenshot/DeleteImageInBackgroundTask;

    invoke-direct {v3, p1}, Lcom/oneplus/screenshot/DeleteImageInBackgroundTask;-><init>(Landroid/content/Context;)V

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-virtual {v3, v2}, Lcom/oneplus/screenshot/DeleteImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1872
    return-void
.end method
