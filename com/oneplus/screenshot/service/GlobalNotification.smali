.class public Lcom/oneplus/screenshot/service/GlobalNotification;
.super Ljava/lang/Object;
.source "GlobalNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/service/GlobalNotification$Builder;,
        Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;
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
.method static synthetic -get0(Lcom/oneplus/screenshot/service/GlobalNotification;)Landroid/content/Context;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/service/GlobalNotification;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/service/GlobalNotification;->sInstance:Lcom/oneplus/screenshot/service/GlobalNotification;

    .line 17
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification;->mContext:Landroid/content/Context;

    .line 38
    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 44
    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalNotification;->mContext:Landroid/content/Context;

    .line 45
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 46
    return-void
.end method

.method private createNotification(ILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)Landroid/app/Notification;
    .registers 6
    .param p1, "type"    # I
    .param p2, "preview"    # Landroid/graphics/Bitmap;
    .param p3, "imageInfo"    # Lcom/oneplus/screenshot/util/ImageInfo;

    .prologue
    const/4 v1, 0x0

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "builder":Lcom/oneplus/screenshot/service/GlobalNotification$Builder;
    packed-switch p1, :pswitch_data_12

    .line 88
    .end local v0    # "builder":Lcom/oneplus/screenshot/service/GlobalNotification$Builder;
    :goto_5
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    :cond_b
    return-object v1

    .line 83
    .restart local v0    # "builder":Lcom/oneplus/screenshot/service/GlobalNotification$Builder;
    :pswitch_c
    new-instance v0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;

    .end local v0    # "builder":Lcom/oneplus/screenshot/service/GlobalNotification$Builder;
    invoke-direct {v0, p0, p2}, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;-><init>(Lcom/oneplus/screenshot/service/GlobalNotification;Landroid/graphics/Bitmap;)V

    .line 84
    .local v0, "builder":Lcom/oneplus/screenshot/service/GlobalNotification$Builder;
    goto :goto_5

    .line 81
    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/service/GlobalNotification;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v0, Lcom/oneplus/screenshot/service/GlobalNotification;->sInstance:Lcom/oneplus/screenshot/service/GlobalNotification;

    if-nez v0, :cond_b

    .line 53
    new-instance v0, Lcom/oneplus/screenshot/service/GlobalNotification;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/service/GlobalNotification;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/screenshot/service/GlobalNotification;->sInstance:Lcom/oneplus/screenshot/service/GlobalNotification;

    .line 55
    :cond_b
    sget-object v0, Lcom/oneplus/screenshot/service/GlobalNotification;->sInstance:Lcom/oneplus/screenshot/service/GlobalNotification;

    return-object v0
.end method

.method public static recycle()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 59
    sget-object v0, Lcom/oneplus/screenshot/service/GlobalNotification;->sInstance:Lcom/oneplus/screenshot/service/GlobalNotification;

    if-eqz v0, :cond_7

    .line 60
    sput-object v1, Lcom/oneplus/screenshot/service/GlobalNotification;->sInstance:Lcom/oneplus/screenshot/service/GlobalNotification;

    .line 62
    :cond_7
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 74
    return-void
.end method

.method public notify(IILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "preview"    # Landroid/graphics/Bitmap;
    .param p4, "imageInfo"    # Lcom/oneplus/screenshot/util/ImageInfo;

    .prologue
    .line 68
    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/screenshot/service/GlobalNotification;->createNotification(ILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)Landroid/app/Notification;

    move-result-object v0

    .line 69
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v2, "Longshot"

    invoke-virtual {v1, v2, p1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 70
    return-void
.end method
