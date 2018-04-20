.class Lcom/google/tagmanager/NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkReceiver.java"


# static fields
.field static final SELF_IDENTIFYING_EXTRA:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mManager:Lcom/google/tagmanager/ServiceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/google/tagmanager/NetworkReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/NetworkReceiver;->SELF_IDENTIFYING_EXTRA:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/tagmanager/ServiceManager;)V
    .registers 2
    .param p1, "manager"    # Lcom/google/tagmanager/ServiceManager;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/tagmanager/NetworkReceiver;->mManager:Lcom/google/tagmanager/ServiceManager;

    .line 31
    return-void
.end method

.method public static sendRadioPoweredBroadcast(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.analytics.RADIO_POWERED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    sget-object v1, Lcom/google/tagmanager/NetworkReceiver;->SELF_IDENTIFYING_EXTRA:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 74
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 43
    const-string/jumbo v3, "com.google.analytics.RADIO_POWERED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 47
    :cond_17
    :goto_17
    return-void

    .line 37
    :cond_18
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 38
    .local v1, "b":Landroid/os/Bundle;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 39
    .local v2, "notConnected":Ljava/lang/Boolean;
    if-nez v1, :cond_2c

    .line 42
    :goto_20
    iget-object v4, p0, Lcom/google/tagmanager/NetworkReceiver;->mManager:Lcom/google/tagmanager/ServiceManager;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3c

    :goto_28
    invoke-virtual {v4, v3}, Lcom/google/tagmanager/ServiceManager;->updateConnectivityStatus(Z)V

    goto :goto_17

    .line 40
    :cond_2c
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "noConnectivity"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_20

    .line 42
    :cond_3c
    const/4 v3, 0x1

    goto :goto_28

    .line 43
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v2    # "notConnected":Ljava/lang/Boolean;
    :cond_3e
    sget-object v3, Lcom/google/tagmanager/NetworkReceiver;->SELF_IDENTIFYING_EXTRA:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 45
    iget-object v3, p0, Lcom/google/tagmanager/NetworkReceiver;->mManager:Lcom/google/tagmanager/ServiceManager;

    invoke-virtual {v3}, Lcom/google/tagmanager/ServiceManager;->onRadioPowered()V

    goto :goto_17
.end method

.method public register(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, "connectivityFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v1, "radioPoweredFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.google.analytics.RADIO_POWERED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    return-void
.end method
