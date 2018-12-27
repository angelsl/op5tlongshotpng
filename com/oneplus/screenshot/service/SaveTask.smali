.class public Lcom/oneplus/screenshot/service/SaveTask;
.super Landroid/os/AsyncTask;
.source "SaveTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTENT_EXTRAS_LOAD_MEDIA_SET:Ljava/lang/String; = "load_media_set"

.field private static final INTENT_EXTRAS_NOT_READ_ONLY:Ljava/lang/String; = "isReadOnly"

.field private static final LONGSHOT_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final LONGSHOT_FILE_NAME:Ljava/lang/String; = "Screenshot"

.field private static final OP_GALLERY_EDITOR_ACTIVITY:Ljava/lang/String; = "com.oneplus.gallery.PhotoEditorActivity"

.field private static final OP_GALLERY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.gallery"

.field private static final OP_GALLERY_VIEWER_ACTIVITY:Ljava/lang/String; = "com.oneplus.gallery.PhotoViewerActivity"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

.field private mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

.field private mNotification:Lcom/oneplus/screenshot/service/GlobalNotification;

.field private mNotificationId:I

.field private mPreview:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Longshot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/oneplus/screenshot/service/SaveTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;Landroid/content/Context;Ljava/util/List;I)V
    .registers 8
    .param p1, "listener"    # Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "notificationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    .line 50
    .local p3, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    .line 40
    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    .line 41
    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNotification:Lcom/oneplus/screenshot/service/GlobalNotification;

    .line 42
    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mPreview:Landroid/graphics/Bitmap;

    .line 43
    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    .line 44
    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mBitmaps:Ljava/util/List;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNotificationId:I

    .line 51
    iput-object p1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    .line 52
    iput-object p2, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Lcom/oneplus/screenshot/service/SaveTask;->mBitmaps:Ljava/util/List;

    .line 54
    iput p4, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNotificationId:I

    .line 55
    new-instance v0, Lcom/oneplus/screenshot/util/ImageInfo;

    const-string v1, "Screenshots"

    const-string v2, "Screenshot"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/util/ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    .line 56
    sget-object v0, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    const-string v1, "SaveTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/screenshot/service/GlobalNotification;->getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/service/GlobalNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNotification:Lcom/oneplus/screenshot/service/GlobalNotification;

    .line 58
    return-void
.end method

.method private notify(I)V
    .registers 6
    .param p1, "type"    # I

    .line 111
    iget-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNotification:Lcom/oneplus/screenshot/service/GlobalNotification;

    iget v1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNotificationId:I

    iget-object v2, p0, Lcom/oneplus/screenshot/service/SaveTask;->mPreview:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oneplus/screenshot/service/SaveTask;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/oneplus/screenshot/service/GlobalNotification;->notify(IILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)V

    .line 112
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 8
    .param p1, "params"    # [Ljava/lang/Void;

    .line 65
    sget-object v0, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/screenshot/service/SaveTask;->mBitmaps:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "result":Z
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->setThreadPriority()V

    .line 69
    const/4 v1, 0x0

    .line 71
    .local v1, "image":Landroid/graphics/Bitmap;
    :try_start_1d
    sget v2, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->DIV_HEIGHT:I

    iget-object v3, p0, Lcom/oneplus/screenshot/service/SaveTask;->mBitmaps:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->joinBitmaps(ILjava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_25
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_25} :catch_27

    move-object v1, v2

    .line 74
    goto :goto_31

    .line 72
    :catch_27
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    iget-object v3, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->MEMORY:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    const-string v5, "Save"

    invoke-static {v3, v4, v5}, Lcom/oneplus/screenshot/statistics/EventStatistics;->addError(Landroid/content/Context;Lcom/oneplus/screenshot/statistics/EventStatistics$Error;Ljava/lang/String;)V

    .line 75
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :goto_31
    if-eqz v1, :cond_3c

    .line 76
    iget-object v2, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/screenshot/service/SaveTask;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-static {v2, v3, v1}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_43

    .line 78
    :cond_3c
    sget-object v2, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    const-string v3, "image is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 20
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/service/SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    if-eqz v0, :cond_9

    .line 104
    iget-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    invoke-interface {v0}, Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;->onSaveCancelled()V

    .line 106
    :cond_9
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 10
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 86
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x2

    .line 87
    .local v0, "type":I
    :goto_9
    sget-object v1, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPostExecute, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lcom/oneplus/screenshot/longshot/util/Configs;->notifyToast(Landroid/content/Context;ZLjava/lang/String;I)V

    .line 90
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_31

    .line 91
    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/service/SaveTask;->notify(I)V

    goto :goto_43

    .line 93
    :cond_31
    iget-object v2, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/util/ImageInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "com.oneplus.gallery"

    const-string v5, "com.oneplus.gallery.PhotoViewerActivity"

    const-string v6, "isReadOnly"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/oneplus/screenshot/util/Utils;->launchGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    :goto_43
    iget-object v1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    if-eqz v1, :cond_4c

    .line 97
    iget-object v1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    invoke-interface {v1}, Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;->onSaveFinished()V

    .line 99
    :cond_4c
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/service/SaveTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
