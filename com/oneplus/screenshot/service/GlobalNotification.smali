.class public Lcom/oneplus/screenshot/service/GlobalNotification;
.super Ljava/lang/Object;
.source "GlobalNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;,
        Lcom/oneplus/screenshot/service/GlobalNotification$Builder;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "Longshot"

.field public static final SAVE_DONE:I = 0x1

.field public static final SAVE_ERROR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Longshot.GlobalNotification"

.field private static sInstance:Lcom/oneplus/screenshot/service/GlobalNotification;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/service/GlobalNotification;->sInstance:Lcom/oneplus/screenshot/service/GlobalNotification;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification;->mContext:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 40
    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalNotification;->mContext:Landroid/content/Context;

    .line 41
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/service/GlobalNotification;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/service/GlobalNotification;

    .line 13
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createNotification(ILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)Landroid/app/Notification;
    .locals 2
    .param p1, "type"    # I
    .param p2, "preview"    # Landroid/graphics/Bitmap;
    .param p3, "imageInfo"    # Lcom/oneplus/screenshot/util/ImageInfo;

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "builder":Lcom/oneplus/screenshot/service/GlobalNotification$Builder;
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    new-instance v1, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;-><init>(Lcom/oneplus/screenshot/service/GlobalNotification;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 80
    nop

    .line 84
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/service/GlobalNotification;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    sget-object v0, Lcom/oneplus/screenshot/service/GlobalNotification;->sInstance:Lcom/oneplus/screenshot/service/GlobalNotification;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/oneplus/screenshot/service/GlobalNotification;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/service/GlobalNotification;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/screenshot/service/GlobalNotification;->sInstance:Lcom/oneplus/screenshot/service/GlobalNotification;

    .line 51
    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/service/GlobalNotification;->sInstance:Lcom/oneplus/screenshot/service/GlobalNotification;

    return-object v0
.end method

.method public static recycle()V
    .locals 1

    .line 55
    sget-object v0, Lcom/oneplus/screenshot/service/GlobalNotification;->sInstance:Lcom/oneplus/screenshot/service/GlobalNotification;

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/service/GlobalNotification;->sInstance:Lcom/oneplus/screenshot/service/GlobalNotification;

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 70
    return-void
.end method

.method public notify(IILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "preview"    # Landroid/graphics/Bitmap;
    .param p4, "imageInfo"    # Lcom/oneplus/screenshot/util/ImageInfo;

    .line 64
    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/screenshot/service/GlobalNotification;->createNotification(ILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)Landroid/app/Notification;

    move-result-object v0

    .line 65
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v2, "Longshot"

    invoke-virtual {v1, v2, p1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 66
    return-void
.end method
