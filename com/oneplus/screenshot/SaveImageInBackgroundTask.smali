.class Lcom/oneplus/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.jpg"

.field private static final SCREENSHOT_SHARE_SUBJECT_TEMPLATE:Ljava/lang/String; = "Screenshot (%s)"

.field private static final TAG:Ljava/lang/String; = "Longshot.SaveImageInBackgroundTask"

.field private static mTickerAddSpace:Z


# instance fields
.field private deleteIntent:Landroid/app/PendingIntent;

.field private mImageFileName:Ljava/lang/String;

.field private mImageFilePath:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

.field private mNeedRecycle:Z

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

.field private final mPublicNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mScreenshotDir:Ljava/io/File;

.field private uri:Landroid/net/Uri;

.field private viewIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/oneplus/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/oneplus/screenshot/SaveImageInBackgroundData;
    .param p3, "nManager"    # Landroid/app/NotificationManager;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 181
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 166
    const/4 v10, 0x0

    iput-object v10, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->viewIntent:Landroid/content/Intent;

    .line 167
    iput-object v10, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->deleteIntent:Landroid/app/PendingIntent;

    .line 168
    iput-object v10, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->uri:Landroid/net/Uri;

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNeedRecycle:Z

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 185
    .local v11, "r":Landroid/content/res/Resources;
    iput-object v9, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 188
    iget-wide v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    sput-wide v1, Lcom/oneplus/screenshot/GlobalScreenshot;->mLastImageTime:J

    .line 190
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd-HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 191
    .local v12, "imageDate":Ljava/lang/String;
    const-string v1, "Screenshot_%s.jpg"

    const/4 v13, 0x1

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v12, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 193
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "Screenshots"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    .line 195
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    iget-object v2, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 198
    iget-object v0, v9, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 199
    iget-object v0, v9, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    .line 200
    iget v14, v9, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 201
    .local v14, "iconSize":I
    iget v15, v9, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->previewWidth:I

    .line 202
    .local v15, "previewWidth":I
    iget v6, v9, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->previewheight:I

    .line 204
    .local v6, "previewHeight":I
    iget-boolean v0, v9, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->needRecycle:Z

    iput-boolean v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNeedRecycle:Z

    .line 206
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    move-object v5, v0

    .line 207
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    move-object v4, v0

    .line 208
    .local v4, "desat":Landroid/graphics/ColorMatrix;
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {v4, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 209
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 210
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v3, v0

    .line 211
    .local v3, "matrix":Landroid/graphics/Matrix;
    const v16, 0x40ffffff    # 7.9999995f

    .line 215
    .local v16, "overlayColor":I
    iget v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    sub-int v0, v15, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    sub-int v1, v6, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 222
    iget-object v1, v9, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object v0, v7

    move v2, v15

    move-object/from16 v17, v3

    move v3, v6

    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .local v17, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v18, v4

    move-object/from16 v4, v17

    .end local v4    # "desat":Landroid/graphics/ColorMatrix;
    .local v18, "desat":Landroid/graphics/ColorMatrix;
    move-object/from16 v19, v5

    .end local v5    # "paint":Landroid/graphics/Paint;
    .local v19, "paint":Landroid/graphics/Paint;
    move/from16 v20, v6

    move/from16 v6, v16

    .end local v6    # "previewHeight":I
    .local v20, "previewHeight":I
    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 228
    .local v6, "picture":Landroid/graphics/Bitmap;
    int-to-float v0, v14

    iget v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    iget v2, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float v5, v0, v1

    .line 230
    .local v5, "scale":F
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 231
    .end local v17    # "matrix":Landroid/graphics/Matrix;
    .local v4, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, v14

    iget v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v2, v14

    iget v3, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 239
    iget-object v1, v9, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object v0, v7

    move v2, v14

    move v3, v14

    .end local v4    # "matrix":Landroid/graphics/Matrix;
    .restart local v17    # "matrix":Landroid/graphics/Matrix;
    move/from16 v21, v5

    move-object/from16 v5, v19

    .end local v5    # "scale":F
    .local v21, "scale":F
    move-object v10, v6

    move/from16 v6, v16

    .end local v6    # "picture":Landroid/graphics/Bitmap;
    .local v10, "picture":Landroid/graphics/Bitmap;
    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 244
    .local v0, "icon":Landroid/graphics/Bitmap;
    sget-boolean v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    xor-int/2addr v1, v13

    sput-boolean v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    .line 245
    move-object/from16 v1, p3

    iput-object v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 249
    .local v2, "now":J
    new-instance v4, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 250
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v4

    iput-object v4, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 253
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/oneplus/screenshot/GlobalScreenshot;->SCREENSHOTS:Ljava/lang/String;

    invoke-direct {v4, v8, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    const v5, 0x7f0c0015

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 258
    const v6, 0x7f0c0016

    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 261
    const v5, 0x7f020032

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "progress"

    .line 263
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 264
    invoke-virtual {v4, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 265
    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 266
    const v5, 0x1060157

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iput-object v4, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 271
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v13, Lcom/oneplus/screenshot/GlobalScreenshot;->SCREENSHOTS:Ljava/lang/String;

    invoke-direct {v4, v8, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c0014

    .line 273
    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    sget-boolean v5, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v5, :cond_16f

    const-string v5, " "

    goto :goto_171

    :cond_16f
    const-string v5, ""

    :goto_171
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 273
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 275
    const v5, 0x7f0c0015

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 276
    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 279
    const v5, 0x7f020032

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 281
    invoke-virtual {v4, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 282
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 283
    const v5, 0x1060157

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 284
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 285
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v4

    iput-object v4, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 286
    iget-object v4, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/16 v5, 0x20

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 289
    iget-object v4, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v5, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 290
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 289
    invoke-virtual {v4, v6, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 300
    iget-object v4, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 302
    iget-object v4, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    const/4 v5, 0x0

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 303
    return-void
.end method

.method private generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "matrix"    # Landroid/graphics/Matrix;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "color"    # I

    .line 312
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 313
    .local v0, "picture":Landroid/graphics/Picture;
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    .line 314
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, p6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 315
    invoke-virtual {v1, p1, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 316
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 317
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 147
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 27
    .param p1, "params"    # [Ljava/lang/Void;

    move-object/from16 v1, p0

    .line 324
    const-string v0, "Longshot.SaveImageInBackgroundTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saving image, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    array-length v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    .line 328
    return-object v2

    .line 333
    :cond_2f
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 335
    iget-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v4, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 336
    .local v4, "context":Landroid/content/Context;
    iget-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v5, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 337
    .local v5, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 340
    .local v6, "r":Landroid/content/res/Resources;
    if-nez v5, :cond_49

    .line 341
    const-string v0, "Longshot.SaveImageInBackgroundTask"

    const-string v7, "image is null"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-object v2

    .line 343
    :cond_49
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 344
    const-string v0, "Longshot.SaveImageInBackgroundTask"

    const-string v7, "image is recycled"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-object v2

    .line 351
    :cond_57
    const/4 v8, 0x0

    :try_start_58
    iget-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 355
    iget-wide v9, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    .line 358
    .local v9, "dateSeconds":J
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v11, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 359
    .local v11, "out":Ljava/io/OutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v5, v0, v12, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 360
    const-string v0, "Longshot.SaveImageInBackgroundTask"

    const-string v12, "compress end"

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 363
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 365
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_ENCRYPT_IMAGE:Z

    move v12, v0

    .line 366
    .local v12, "shouldEncrypt":Z
    if-eqz v12, :cond_10e

    .line 367
    iget-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    const-string v13, "\\."

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 369
    .local v13, "imageFileHeader":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    aget-object v14, v13, v8

    invoke-direct {v0, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 370
    .local v14, "inputFilePath":Ljava/lang/StringBuffer;
    const-string v0, ".jpg"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    new-instance v0, Ljava/lang/StringBuffer;

    aget-object v15, v13, v8

    invoke-direct {v0, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v15, v0

    .line 372
    .local v15, "outputFile":Ljava/lang/StringBuffer;
    const-string v0, ".png"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IMEI_NUMBER:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 375
    .local v16, "imei":Ljava/lang/String;
    const-string v0, "Longshot.SaveImageInBackgroundTask"

    const-string v2, "doencrypt s"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, v16

    invoke-static {v0, v7, v2}, Lcom/oneplus/screenshot/Native;->doencrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v16    # "imei":Ljava/lang/String;
    .local v7, "imei":Ljava/lang/String;
    const-string v0, "Longshot.SaveImageInBackgroundTask"

    const-string v2, "doencrypt e"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v0, "Longshot.SaveImageInBackgroundTask"

    const-string v2, " delete file s"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    iget-object v8, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-direct {v0, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_d5} :catch_267

    move-object v2, v0

    .line 384
    .local v2, "outputImage":Ljava/io/File;
    :try_start_d6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 385
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_df} :catch_e0

    .line 389
    :cond_df
    goto :goto_e4

    .line 387
    :catch_e0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    :try_start_e1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 390
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e4
    const-string v0, "Longshot.SaveImageInBackgroundTask"

    const-string v8, " delete file e"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v8, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v17, v2

    const-string v2, "\\."

    .end local v2    # "outputImage":Ljava/io/File;
    .local v17, "outputImage":Ljava/io/File;
    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aget-object v2, v2, v8

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, "outFileName":Ljava/lang/StringBuffer;
    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 395
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 399
    .end local v0    # "outFileName":Ljava/lang/StringBuffer;
    .end local v7    # "imei":Ljava/lang/String;
    .end local v13    # "imageFileHeader":[Ljava/lang/String;
    .end local v14    # "inputFilePath":Ljava/lang/StringBuffer;
    .end local v15    # "outputFile":Ljava/lang/StringBuffer;
    .end local v17    # "outputImage":Ljava/io/File;
    :cond_10e
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 400
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 401
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v7, "_data"

    iget-object v8, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v7, "title"

    iget-object v8, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v7, "_display_name"

    iget-object v8, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v7, "datetaken"

    iget-wide v13, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 405
    const-string v7, "date_added"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 406
    const-string v7, "date_modified"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 408
    if-eqz v12, :cond_153

    .line 409
    const-string v7, "mime_type"

    const-string v8, "image/png"

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15a

    .line 411
    :cond_153
    const-string v7, "mime_type"

    const-string v8, "image/jpeg"

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :goto_15a
    const-string v7, "width"

    iget v8, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    const-string v7, "height"

    iget v8, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    const-string v7, "_size"

    new-instance v8, Ljava/io/File;

    iget-object v13, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 417
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 420
    .local v7, "uri":Landroid/net/Uri;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v8

    new-instance v13, Ljava/util/Date;

    iget-wide v14, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 421
    .local v8, "subjectDate":Ljava/lang/String;
    const-string v13, "Screenshot (%s)"
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_19b} :catch_267

    const/4 v14, 0x1

    :try_start_19c
    new-array v15, v14, [Ljava/lang/Object;
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_19e} :catch_264

    const/4 v14, 0x0

    :try_start_19f
    aput-object v8, v15, v14

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 422
    .local v13, "subject":Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.SEND"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .local v14, "sharingIntent":Landroid/content/Intent;
    if-eqz v12, :cond_1b4

    .line 425
    const-string v15, "image/png"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1b9

    .line 427
    :cond_1b4
    const-string v15, "image/jpeg"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    :goto_1b9
    const-string v15, "android.intent.extra.STREAM"

    invoke-virtual {v14, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 431
    const-string v15, "android.intent.extra.SUBJECT"

    invoke-virtual {v14, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const v15, -0x7fffff3d

    invoke-virtual {v14, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 441
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v18, v0

    const-class v0, Lcom/oneplus/screenshot/GlobalScreenshot$TargetChosenReceiver;

    .end local v0    # "values":Landroid/content/ContentValues;
    .local v18, "values":Landroid/content/ContentValues;
    invoke-direct {v15, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x50000000

    move-object/from16 v19, v2

    const/4 v2, 0x0

    invoke-static {v4, v2, v15, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .local v19, "resolver":Landroid/content/ContentResolver;
    move-object v2, v15

    .line 444
    .local v2, "chooseAction":Landroid/app/PendingIntent;
    nop

    .line 445
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v15

    .line 444
    move-object/from16 v20, v2

    const/4 v2, 0x0

    invoke-static {v14, v2, v15}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v15

    .end local v2    # "chooseAction":Landroid/app/PendingIntent;
    .local v20, "chooseAction":Landroid/app/PendingIntent;
    const v2, 0x10008000

    .line 446
    invoke-virtual {v15, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 447
    .local v2, "chooserIntent":Landroid/content/Intent;
    const/high16 v15, 0x10000000

    const/4 v3, 0x0

    invoke-static {v4, v3, v2, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    move-object v3, v15

    .line 449
    .local v3, "shareAction":Landroid/app/PendingIntent;
    new-instance v15, Landroid/app/Notification$Action$Builder;

    const v0, 0x1040602

    .line 451
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v8

    const v8, 0x7f020022

    invoke-direct {v15, v8, v0, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .end local v8    # "subjectDate":Ljava/lang/String;
    .local v21, "subjectDate":Ljava/lang/String;
    move-object v0, v15

    .line 452
    .local v0, "shareActionBuilder":Landroid/app/Notification$Action$Builder;
    iget-object v8, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 455
    new-instance v8, Landroid/content/Intent;

    const-class v15, Lcom/oneplus/screenshot/GlobalScreenshot$DeleteScreenshotReceiver;

    invoke-direct {v8, v4, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v15, "android:screenshot_uri_id"

    .line 457
    move-object/from16 v22, v0

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "shareActionBuilder":Landroid/app/Notification$Action$Builder;
    .local v22, "shareActionBuilder":Landroid/app/Notification$Action$Builder;
    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 455
    const/4 v8, 0x0

    const/high16 v15, 0x50000000

    invoke-static {v4, v8, v0, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 459
    .local v0, "deleteAction":Landroid/app/PendingIntent;
    new-instance v8, Landroid/app/Notification$Action$Builder;

    const v15, 0x10401c1

    .line 461
    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v23, v3

    const v3, 0x7f020021

    invoke-direct {v8, v3, v15, v0}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .end local v3    # "shareAction":Landroid/app/PendingIntent;
    .local v23, "shareAction":Landroid/app/PendingIntent;
    move-object v3, v8

    .line 462
    .local v3, "deleteActionBuilder":Landroid/app/Notification$Action$Builder;
    iget-object v8, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 464
    iget-object v8, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iput-object v7, v8, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 465
    iget-object v8, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    const/4 v15, 0x0

    iput-object v15, v8, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 466
    iget-object v8, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    const/4 v15, 0x0

    iput v15, v8, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    .line 469
    iput-object v2, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->viewIntent:Landroid/content/Intent;

    .line 470
    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->deleteIntent:Landroid/app/PendingIntent;

    .line 472
    iget-object v8, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v8, v8, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->handler:Landroid/os/Handler;
    :try_end_25d
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_25d} :catch_267

    const/4 v15, 0x1

    :try_start_25e
    invoke-virtual {v8, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_261
    .catch Ljava/lang/Exception; {:try_start_25e .. :try_end_261} :catch_262

    .line 480
    .end local v0    # "deleteAction":Landroid/app/PendingIntent;
    .end local v2    # "chooserIntent":Landroid/content/Intent;
    .end local v3    # "deleteActionBuilder":Landroid/app/Notification$Action$Builder;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v9    # "dateSeconds":J
    .end local v11    # "out":Ljava/io/OutputStream;
    .end local v12    # "shouldEncrypt":Z
    .end local v13    # "subject":Ljava/lang/String;
    .end local v14    # "sharingIntent":Landroid/content/Intent;
    .end local v18    # "values":Landroid/content/ContentValues;
    .end local v19    # "resolver":Landroid/content/ContentResolver;
    .end local v20    # "chooseAction":Landroid/app/PendingIntent;
    .end local v21    # "subjectDate":Ljava/lang/String;
    .end local v22    # "shareActionBuilder":Landroid/app/Notification$Action$Builder;
    .end local v23    # "shareAction":Landroid/app/PendingIntent;
    goto :goto_27c

    .line 474
    :catch_262
    move-exception v0

    goto :goto_269

    :catch_264
    move-exception v0

    move v15, v14

    goto :goto_269

    :catch_267
    move-exception v0

    const/4 v15, 0x1

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    :goto_269
    iget-object v2, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 478
    iget-object v2, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    const v3, 0x7f0c001b

    iput v3, v2, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    .line 479
    const-string v2, "Longshot.SaveImageInBackgroundTask"

    const-string v3, "save img error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_27c
    const-string v0, "Longshot.SaveImageInBackgroundTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saving image end, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_28b

    goto :goto_28c

    :cond_28b
    const/4 v15, 0x0

    :goto_28c
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", needRecycle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNeedRecycle:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",  busy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    if-eqz v5, :cond_2bf

    iget-boolean v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNeedRecycle:Z

    if-eqz v0, :cond_2bf

    sget-boolean v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    if-nez v0, :cond_2bf

    .line 487
    const-string v0, "Longshot.SaveImageInBackgroundTask"

    const-string v2, "recycle after saving"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 489
    const/4 v5, 0x0

    .line 494
    :cond_2bf
    iget-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->doDelayAction()V

    .line 497
    const/4 v2, 0x0

    return-object v2
.end method

.method public getDeleteIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 573
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->deleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .registers 2

    .line 577
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getViewIntent()Landroid/content/Intent;
    .registers 2

    .line 569
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->viewIntent:Landroid/content/Intent;

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2

    .line 147
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->onCancelled(Ljava/lang/Void;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .registers 4
    .param p1, "params"    # Ljava/lang/Void;

    .line 559
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 560
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 561
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 564
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 565
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 147
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->onPostExecute(Ljava/lang/Void;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 14
    .param p1, "params"    # Ljava/lang/Void;

    .line 502
    const-string v0, "Longshot.SaveImageInBackgroundTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save img done, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget v2, v2, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    if-eqz v0, :cond_2f

    .line 506
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget v2, v2, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    invoke-static {v0, v1, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    goto/16 :goto_d6

    .line 510
    :cond_2f
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 511
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 514
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .local v2, "launchIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v3, v3, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const v3, 0x10000001

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 520
    const-string v3, "load_media_set"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 526
    .local v5, "now":J
    iget-object v3, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 527
    const v7, 0x7f0c0017

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 528
    const v8, 0x7f0c0018

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v9, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v9, v9, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 529
    const/4 v10, 0x0

    invoke-static {v9, v10, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 530
    invoke-virtual {v3, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 531
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 532
    const v9, 0x1060157

    invoke-virtual {v0, v9}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 534
    iget-object v3, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 535
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 536
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v7, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v7, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 537
    invoke-static {v7, v10, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 538
    invoke-virtual {v3, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 539
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 540
    invoke-virtual {v0, v9}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v7, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 542
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/16 v7, 0x20

    .line 543
    invoke-virtual {v3, v7, v10}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 545
    iget-object v3, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v7, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 546
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 545
    invoke-virtual {v3, v4, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 551
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "r":Landroid/content/res/Resources;
    .end local v2    # "launchIntent":Landroid/content/Intent;
    .end local v5    # "now":J
    :goto_d6
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 552
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
