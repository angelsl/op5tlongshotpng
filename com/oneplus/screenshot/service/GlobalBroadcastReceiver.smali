.class public Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GlobalBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;
    }
.end annotation


# static fields
.field private static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field private static final TAG:Ljava/lang/String; = "Longshot.GlobalBroadcastReceiver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mListener:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;

    .line 26
    iput-object v1, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 32
    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mListener:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    iget-object v3, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mListener:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;

    if-eqz v3, :cond_1d

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 49
    const-string/jumbo v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "reason":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mListener:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;

    invoke-interface {v3}, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;->onCloseSystemDialogs()V

    .line 64
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "reason":Ljava/lang/String;
    :cond_1d
    :goto_1d
    return-void

    .line 51
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 52
    const-string/jumbo v3, "Longshot.GlobalBroadcastReceiver"

    const-string/jumbo v4, "dimiss due to screenoff"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v3, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mListener:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;

    invoke-interface {v3}, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;->onCloseSystemDialogs()V

    goto :goto_1d

    .line 54
    :cond_36
    const-string/jumbo v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 55
    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "state":Ljava/lang/String;
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 57
    const-string/jumbo v3, "Longshot.GlobalBroadcastReceiver"

    const-string/jumbo v4, "dimiss due to ringing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v3, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mListener:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;

    invoke-interface {v3}, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;->onRinging()V

    goto :goto_1d
.end method

.method public unregister()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 71
    return-void
.end method
