.class Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;
.super Ljava/lang/Object;
.source "AnalyticsGmsCoreClient.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/AnalyticsClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;,
        Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;,
        Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;
    }
.end annotation


# static fields
.field private static final BIND_ADJUST_WITH_ACTIVITY:I = 0x80

.field public static final BIND_FAILED:I = 0x1

.field public static final KEY_APP_PACKAGE_NAME:Ljava/lang/String; = "app_package_name"

.field public static final REMOTE_EXECUTION_FAILED:I = 0x2

.field static final SERVICE_ACTION:Ljava/lang/String; = "com.google.android.gms.analytics.service.START"

.field private static final SERVICE_DESCRIPTOR:Ljava/lang/String; = "com.google.android.gms.analytics.internal.IAnalyticsService"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mOnConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

.field private mOnConnectionFailedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;

.field private mService:Lcom/google/android/gms/analytics/internal/IAnalyticsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onConnectedListener"    # Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;
    .param p3, "onConnectionFailedListener"    # Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mContext:Landroid/content/Context;

    .line 59
    if-eqz p2, :cond_e

    .line 62
    iput-object p2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

    .line 63
    if-eqz p3, :cond_17

    .line 66
    iput-object p3, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectionFailedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;

    .line 67
    return-void

    .line 60
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onConnectedListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onConnectionFailedListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$002(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;Lcom/google/android/gms/analytics/internal/IAnalyticsService;)Lcom/google/android/gms/analytics/internal/IAnalyticsService;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;
    .param p1, "x1"    # Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mService:Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->onServiceBound()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;
    .param p1, "x1"    # Landroid/content/ServiceConnection;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectionFailedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

    return-object v0
.end method

.method private getService()Lcom/google/android/gms/analytics/internal/IAnalyticsService;
    .registers 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->checkConnected()V

    .line 147
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mService:Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    return-object v0
.end method

.method private onConnectionSuccess()V
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;->onConnected()V

    .line 216
    return-void
.end method

.method private onServiceBound()V
    .registers 1

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->onConnectionSuccess()V

    .line 208
    return-void
.end method


# virtual methods
.method protected checkConnected()V
    .registers 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    return-void

    .line 156
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearHits()V
    .registers 4

    .prologue
    .line 140
    :try_start_0
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->getService()Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/analytics/internal/IAnalyticsService;->clearHits()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 144
    :goto_7
    return-void

    .line 141
    :catch_8
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clear hits failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public connect()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.gms.analytics.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.google.android.gms"

    const-string/jumbo v4, "com.google.android.gms.analytics.service.AnalyticsService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 79
    iget-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "app_package_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    if-nez v2, :cond_5d

    .line 84
    new-instance v2, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;-><init>(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)V

    iput-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    .line 85
    iget-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    const/16 v4, 0x81

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 87
    .local v1, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connect: bindService returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 88
    if-eqz v1, :cond_64

    .line 92
    :goto_5c
    return-void

    .line 81
    .end local v1    # "result":Z
    :cond_5d
    const-string/jumbo v2, "Calling connect() while still connected, missing disconnect()."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 82
    return-void

    .line 89
    .restart local v1    # "result":Z
    :cond_64
    iput-object v5, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    .line 90
    iget-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectionFailedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v5}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;->onConnectionFailed(ILandroid/content/Intent;)V

    goto :goto_5c
.end method

.method public disconnect()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 103
    iput-object v3, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mService:Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    .line 104
    iget-object v1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_8

    .line 125
    :goto_7
    return-void

    .line 113
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_f} :catch_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_f} :catch_19

    .line 122
    :goto_f
    iput-object v3, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    .line 123
    iget-object v1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;->onDisconnected()V

    goto :goto_7

    .line 114
    :catch_17
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    goto :goto_f

    .line 117
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_19
    move-exception v1

    goto :goto_f
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mService:Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public sendHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .registers 14
    .param p2, "hitTimeInMilliseconds"    # J
    .param p4, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "wireParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/analytics/internal/Command;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->getService()Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/IAnalyticsService;->sendHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 135
    :goto_b
    return-void

    .line 132
    :catch_c
    move-exception v6

    .line 133
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendHit failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    goto :goto_b
.end method
