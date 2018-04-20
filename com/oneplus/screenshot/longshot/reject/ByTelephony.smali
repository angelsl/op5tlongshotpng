.class public Lcom/oneplus/screenshot/longshot/reject/ByTelephony;
.super Lcom/oneplus/screenshot/longshot/reject/Reject;
.source "ByTelephony.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/reject/Reject;-><init>(Landroid/content/Context;)V

    .line 12
    const-string/jumbo v0, "ByTelephony"

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/reject/ByTelephony;->TAG:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/reject/ByTelephony;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .prologue
    .line 37
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private isIdle()Z
    .registers 4

    .prologue
    .line 29
    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/reject/ByTelephony;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/reject/ByTelephony;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isIdle(Ljava/lang/String;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 30
    :catch_f
    move-exception v0

    .line 31
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ByTelephony"

    const-string/jumbo v2, "Error calling ITelephony#isIdle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public isReject()Z
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/reject/ByTelephony;->isIdle()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
