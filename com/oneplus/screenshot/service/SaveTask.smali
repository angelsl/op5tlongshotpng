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
        "Landroid/os/AsyncTask",
        "<",
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
            "Ljava/util/List",
            "<",
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

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Longshot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/oneplus/screenshot/service/SaveTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    .line 20
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
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
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

    const-string/jumbo v1, "Screenshots"

    const-string/jumbo v2, "Screenshot"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/util/ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    .line 56
    sget-object v0, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SaveTask"

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

    .prologue
    .line 116
    iget-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNotification:Lcom/oneplus/screenshot/service/GlobalNotification;

    iget v1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNotificationId:I

    iget-object v2, p0, Lcom/oneplus/screenshot/service/SaveTask;->mPreview:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oneplus/screenshot/service/SaveTask;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/oneplus/screenshot/service/GlobalNotification;->notify(IILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)V

    .line 117
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 65
    sget-object v3, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doInBackground , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/screenshot/service/SaveTask;->mBitmaps:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v2, 0x0

    .line 68
    .local v2, "result":Z
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->setThreadPriority()V

    .line 69
    const/4 v1, 0x0

    .line 71
    .local v1, "image":Landroid/graphics/Bitmap;
    :try_start_20
    sget v3, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->DIV_HEIGHT:I

    iget-object v4, p0, Lcom/oneplus/screenshot/service/SaveTask;->mBitmaps:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->joinBitmaps(ILjava/util/List;)Landroid/graphics/Bitmap;
    :try_end_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_27} :catch_40

    move-result-object v1

    .line 75
    .end local v1    # "image":Landroid/graphics/Bitmap;
    :goto_28
    if-eqz v1, :cond_4c

    .line 77
    sget-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_CLOSE_BETA:Z

    if-eqz v3, :cond_33

    .line 78
    iget-object v3, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/oneplus/screenshot/util/Utils;->addWatermarkForLongshot(Landroid/graphics/Bitmap;Landroid/content/Context;)V

    .line 81
    :cond_33
    iget-object v3, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/screenshot/service/SaveTask;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-static {v3, v4, v1}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    move-result v2

    .line 86
    .end local v2    # "result":Z
    :goto_3b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 72
    .restart local v1    # "image":Landroid/graphics/Bitmap;
    .restart local v2    # "result":Z
    :catch_40
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    iget-object v3, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->MEMORY:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    const-string/jumbo v5, "Save"

    invoke-static {v3, v4, v5}, Lcom/oneplus/screenshot/statistics/EventStatistics;->addError(Landroid/content/Context;Lcom/oneplus/screenshot/statistics/EventStatistics$Error;Ljava/lang/String;)V

    goto :goto_28

    .line 83
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local v1    # "image":Landroid/graphics/Bitmap;
    :cond_4c
    sget-object v3, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "image is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 60
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/service/SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    if-eqz v0, :cond_9

    .line 109
    iget-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    invoke-interface {v0}, Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;->onSaveCancelled()V

    .line 111
    :cond_9
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 9
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v5, 0x0

    .line 91
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v6, 0x1

    .line 92
    .local v6, "type":I
    :goto_8
    sget-object v0, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPostExecute, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    const-string/jumbo v1, ""

    invoke-static {v0, v5, v1, v5}, Lcom/oneplus/screenshot/longshot/util/Configs;->notifyToast(Landroid/content/Context;ZLjava/lang/String;I)V

    .line 95
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 96
    invoke-direct {p0, v6}, Lcom/oneplus/screenshot/service/SaveTask;->notify(I)V

    .line 101
    :goto_32
    iget-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    if-eqz v0, :cond_3b

    .line 102
    iget-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    invoke-interface {v0}, Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;->onSaveFinished()V

    .line 104
    :cond_3b
    return-void

    .line 91
    .end local v6    # "type":I
    :cond_3c
    const/4 v6, 0x2

    .restart local v6    # "type":I
    goto :goto_8

    .line 98
    :cond_3e
    iget-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/util/ImageInfo;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "com.oneplus.gallery"

    const-string/jumbo v3, "com.oneplus.gallery.PhotoViewerActivity"

    const-string/jumbo v4, "isReadOnly"

    invoke-static/range {v0 .. v5}, Lcom/oneplus/screenshot/util/Utils;->launchGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_32
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 89
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/service/SaveTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
