.class Lcom/google/analytics/tracking/android/GANetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GANetworkReceiver.java"


# static fields
.field static final SELF_IDENTIFYING_EXTRA:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mManager:Lcom/google/analytics/tracking/android/ServiceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/google/analytics/tracking/android/GANetworkReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/tracking/android/GANetworkReceiver;->SELF_IDENTIFYING_EXTRA:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/analytics/tracking/android/ServiceManager;)V
    .registers 2
    .param p1, "manager"    # Lcom/google/analytics/tracking/android/ServiceManager;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GANetworkReceiver;->mManager:Lcom/google/analytics/tracking/android/ServiceManager;

    .line 32
    return-void
.end method

.method public static sendRadioPoweredBroadcast(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.analytics.RADIO_POWERED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    sget-object v1, Lcom/google/analytics/tracking/android/GANetworkReceiver;->SELF_IDENTIFYING_EXTRA:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 40
    const-string/jumbo v2, "com.google.analytics.RADIO_POWERED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 44
    :cond_17
    :goto_17
    return-void

    .line 38
    :cond_18
    const-string/jumbo v3, "noConnectivity"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 39
    .local v1, "notConnected":Z
    iget-object v3, p0, Lcom/google/analytics/tracking/android/GANetworkReceiver;->mManager:Lcom/google/analytics/tracking/android/ServiceManager;

    if-eqz v1, :cond_27

    :goto_23
    invoke-virtual {v3, v2}, Lcom/google/analytics/tracking/android/ServiceManager;->updateConnectivityStatus(Z)V

    goto :goto_17

    :cond_27
    const/4 v2, 0x1

    goto :goto_23

    .line 40
    .end local v1    # "notConnected":Z
    :cond_29
    sget-object v2, Lcom/google/analytics/tracking/android/GANetworkReceiver;->SELF_IDENTIFYING_EXTRA:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 42
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GANetworkReceiver;->mManager:Lcom/google/analytics/tracking/android/ServiceManager;

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/ServiceManager;->onRadioPowered()V

    goto :goto_17
.end method

.method public register(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v0, "connectivityFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v1, "radioPoweredFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.google.analytics.RADIO_POWERED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    return-void
.end method
