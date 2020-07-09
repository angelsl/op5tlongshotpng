.class public Lcom/oneplus/screenshot/LongshotService;
.super Landroid/app/Service;
.source "LongshotService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/LongshotService$Finisher;,
        Lcom/oneplus/screenshot/LongshotService$ServiceBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

.field private mTargetViewTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/oneplus/screenshot/LongshotService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/LongshotService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/LongshotService;->mTargetViewTop:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/oneplus/screenshot/LongshotService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/LongshotService;

    .line 18
    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/screenshot/LongshotService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/LongshotService;
    .param p1, "x1"    # I

    .line 18
    iput p1, p0, Lcom/oneplus/screenshot/LongshotService;->mTargetViewTop:I

    return p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 61
    sget-object v0, Lcom/oneplus/screenshot/LongshotService;->TAG:Ljava/lang/String;

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x0

    const-string v1, "statusbar_visible"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 65
    .local v1, "statusBarVisible":Z
    const-string v2, "navigationbar_visible"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 67
    .local v0, "navBarVisible":Z
    new-instance v2, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;

    invoke-direct {v2, p0, p0, v1, v0}, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;-><init>(Lcom/oneplus/screenshot/LongshotService;Landroid/content/Context;ZZ)V

    return-object v2
.end method

.method public onCreate()V
    .locals 2

    .line 29
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 32
    sget-object v0, Lcom/oneplus/screenshot/LongshotService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    .line 35
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 39
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 41
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->recycle()V

    .line 42
    invoke-static {}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->recycle()V

    .line 43
    invoke-static {}, Lcom/oneplus/screenshot/service/GlobalNotification;->recycle()V

    .line 46
    sget-object v0, Lcom/oneplus/screenshot/LongshotService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 53
    sget-object v0, Lcom/oneplus/screenshot/LongshotService;->TAG:Ljava/lang/String;

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 73
    sget-object v0, Lcom/oneplus/screenshot/LongshotService;->TAG:Ljava/lang/String;

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
