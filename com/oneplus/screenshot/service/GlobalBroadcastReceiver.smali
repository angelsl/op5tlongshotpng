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

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mListener:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;

    .line 26
    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 32
    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mListener:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    return-void-no-barrier
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 46
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mListener:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;

    if-eqz v0, :cond_69

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 49
    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "reason":Ljava/lang/String;
    const-string v2, "Longshot.GlobalBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close sysdialog:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mListener:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;

    invoke-interface {v2}, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;->onCloseSystemDialogs()V

    .line 52
    .end local v1    # "reason":Ljava/lang/String;
    goto :goto_69

    :cond_32
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 53
    const-string v1, "Longshot.GlobalBroadcastReceiver"

    const-string v2, "dimiss due to screenoff"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mListener:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;

    invoke-interface {v1}, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;->onCloseSystemDialogs()V

    goto :goto_69

    .line 55
    :cond_47
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 56
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "state":Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 58
    const-string v2, "Longshot.GlobalBroadcastReceiver"

    const-string v3, "dimiss due to ringing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mListener:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;

    invoke-interface {v2}, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;->onRinging()V

    .line 65
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "state":Ljava/lang/String;
    :cond_69
    :goto_69
    return-void-no-barrier
.end method

.method public unregister()V
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    return-void-no-barrier
.end method
