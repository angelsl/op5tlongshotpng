.class public Lcom/oneplus/screenshot/service/GlobalService;
.super Landroid/app/Service;
.source "GlobalService.java"


# static fields
.field public static final ACTION_SAVE:Ljava/lang/String; = "com.oneplus.screenshot.GlobalService.save"

.field public static final EXTRA_PATH:Ljava/lang/String; = "path"

.field public static final EXTRA_URI:Ljava/lang/String; = "uri"

.field private static final TAG:Ljava/lang/String; = "Longshot.GlobalService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    const-string/jumbo v0, "Longshot.GlobalService"

    const-string/jumbo v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 24
    const-string/jumbo v0, "Longshot.GlobalService"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 30
    const-string/jumbo v0, "Longshot.GlobalService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 35
    const-string/jumbo v1, "Longshot.GlobalService"

    const-string/jumbo v2, "onStartCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    if-eqz p1, :cond_24

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.oneplus.screenshot.GlobalService.save"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 39
    new-instance v1, Lcom/oneplus/screenshot/service/GlobalSave;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/service/GlobalSave;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/oneplus/screenshot/service/GlobalSave;->start()V

    .line 42
    .end local v0    # "action":Ljava/lang/String;
    :cond_24
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1
.end method
