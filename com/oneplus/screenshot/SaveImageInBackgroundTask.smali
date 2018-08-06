.class Lcom/oneplus/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
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

.field private final mImageFileName:Ljava/lang/String;

.field private final mImageFilePath:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

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
    .registers 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/oneplus/screenshot/SaveImageInBackgroundData;
    .param p3, "nManager"    # Landroid/app/NotificationManager;

    .prologue
    .line 161
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 149
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->viewIntent:Landroid/content/Intent;

    .line 150
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->deleteIntent:Landroid/app/PendingIntent;

    .line 151
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->uri:Landroid/net/Uri;

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 166
    .local v17, "r":Landroid/content/res/Resources;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 169
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    sput-wide v20, Lcom/oneplus/screenshot/GlobalScreenshot;->mLastImageTime:J

    .line 171
    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string/jumbo v20, "yyyyMMdd-HHmmss"

    invoke-direct/range {v19 .. v20}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 172
    .local v8, "imageDate":Ljava/lang/String;
    const-string/jumbo v19, "Screenshot_%s.jpg"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v8, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 174
    new-instance v19, Ljava/io/File;

    .line 175
    sget-object v20, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 174
    invoke-static/range {v20 .. v20}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    .line 175
    const-string/jumbo v21, "Screenshots"

    .line 174
    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    .line 176
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 179
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 180
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    .line 181
    move-object/from16 v0, p2

    iget v7, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 182
    .local v7, "iconSize":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->previewWidth:I

    move/from16 v16, v0

    .line 183
    .local v16, "previewWidth":I
    move-object/from16 v0, p2

    iget v15, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->previewheight:I

    .line 185
    .local v15, "previewHeight":I
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .line 186
    .local v4, "c":Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 187
    .local v13, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 188
    .local v5, "desat":Landroid/graphics/ColorMatrix;
    const/high16 v19, 0x3e800000    # 0.25f

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 189
    new-instance v19, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 190
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 191
    .local v9, "matrix":Landroid/graphics/Matrix;
    const v12, 0x40ffffff    # 7.9999995f

    .line 193
    .local v12, "overlayColor":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v19

    move/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v15, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 194
    .local v14, "picture":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v19, v0

    sub-int v19, v16, v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v20, v0

    sub-int v20, v15, v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 195
    invoke-virtual {v4, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 196
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v9, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 197
    invoke-virtual {v4, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 198
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 201
    int-to-float v0, v7

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v18, v19, v20

    .line 202
    .local v18, "scale":F
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v7, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 203
    .local v6, "icon":Landroid/graphics/Bitmap;
    move/from16 v0, v18

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 204
    int-to-float v0, v7

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v18

    sub-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    .line 205
    int-to-float v0, v7

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v18

    sub-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    .line 204
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 206
    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 207
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v9, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 208
    invoke-virtual {v4, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 209
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 212
    sget-boolean v19, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    xor-int/lit8 v19, v19, 0x1

    sput-boolean v19, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    .line 213
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 217
    .local v10, "now":J
    new-instance v19, Landroid/app/Notification$BigPictureStyle;

    invoke-direct/range {v19 .. v19}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 218
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v20

    .line 217
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 223
    new-instance v19, Landroid/app/Notification$Builder;

    sget-object v20, Lcom/oneplus/screenshot/GlobalScreenshot;->SCREENSHOTS:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    const v20, 0x7f0c0015

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 223
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 226
    const v20, 0x7f0c0016

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 223
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 229
    const v20, 0x7f020032

    .line 223
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 231
    const-string/jumbo v20, "progress"

    .line 223
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 233
    const/16 v20, 0x1

    .line 223
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 235
    const v20, 0x106014c

    .line 234
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    .line 223
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 221
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 239
    new-instance v20, Landroid/app/Notification$Builder;

    sget-object v19, Lcom/oneplus/screenshot/GlobalScreenshot;->SCREENSHOTS:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v21, 0x7f0c0014

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 242
    sget-boolean v19, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v19, :cond_323

    const-string/jumbo v19, " "

    .line 241
    :goto_26a
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 239
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 243
    const v20, 0x7f0c0015

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 239
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 244
    const v20, 0x7f0c0016

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 239
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 247
    const v20, 0x7f020032

    .line 239
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 250
    const/16 v20, 0x1

    .line 239
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 251
    const v20, 0x106014c

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    .line 239
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v20, v0

    .line 239
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v20

    .line 239
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v19, v0

    const/16 v20, 0x20

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v19, v0

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v20

    .line 257
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v19, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    check-cast v19, Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 271
    return-void

    .line 242
    :cond_323
    const-string/jumbo v19, ""

    goto/16 :goto_26a
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 273
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 30
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 276
    const-string/jumbo v23, "Longshot.SaveImageInBackgroundTask"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "saving image, "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v23

    if-eqz v23, :cond_37

    .line 280
    const/16 v23, 0x0

    return-object v23

    .line 285
    :cond_37
    const/16 v23, -0x2

    invoke-static/range {v23 .. v23}, Landroid/os/Process;->setThreadPriority(I)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 288
    .local v6, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v12, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 289
    .local v12, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 292
    .local v14, "r":Landroid/content/res/Resources;
    if-nez v12, :cond_62

    .line 293
    const-string/jumbo v23, "Longshot.SaveImageInBackgroundTask"

    const-string/jumbo v24, "image is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/16 v23, 0x0

    return-object v23

    .line 295
    :cond_62
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v23

    if-eqz v23, :cond_74

    .line 296
    const-string/jumbo v23, "Longshot.SaveImageInBackgroundTask"

    const-string/jumbo v24, "image is recycled"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/16 v23, 0x0

    return-object v23

    .line 303
    :cond_74
    :try_start_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->mkdirs()Z

    .line 307
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3e8

    div-long v8, v24, v26

    .line 310
    .local v8, "dateSeconds":J
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 311
    .local v13, "out":Ljava/io/OutputStream;
    sget-object v23, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v24, 0x64

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 312
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 313
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 316
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 317
    .local v22, "values":Landroid/content/ContentValues;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 318
    .local v15, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v23, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string/jumbo v23, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string/jumbo v23, "_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string/jumbo v23, "datetaken"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 322
    const-string/jumbo v23, "date_added"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 323
    const-string/jumbo v23, "date_modified"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 324
    const-string/jumbo v23, "mime_type"

    const-string/jumbo v24, "image/jpeg"

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string/jumbo v23, "width"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    const-string/jumbo v23, "height"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    const-string/jumbo v23, "_size"

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 328
    sget-object v23, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v21

    .line 331
    .local v21, "uri":Landroid/net/Uri;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v23

    new-instance v24, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v23 .. v24}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    .line 332
    .local v20, "subjectDate":Ljava/lang/String;
    const-string/jumbo v23, "Screenshot (%s)"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v20, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 333
    .local v19, "subject":Ljava/lang/String;
    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v23, "android.intent.action.SEND"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v18, "sharingIntent":Landroid/content/Intent;
    const-string/jumbo v23, "image/jpeg"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string/jumbo v23, "android.intent.extra.STREAM"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 336
    const-string/jumbo v23, "android.intent.extra.SUBJECT"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const v23, -0x7fffff3d

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 347
    new-instance v23, Landroid/content/Intent;

    const-class v24, Lcom/oneplus/screenshot/GlobalScreenshot$TargetChosenReceiver;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    const/16 v24, 0x0

    .line 348
    const/high16 v25, 0x50000000

    .line 346
    move/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-static {v6, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 350
    .local v4, "chooseAction":Landroid/app/PendingIntent;
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v23

    .line 349
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v23

    .line 351
    const v24, 0x10008000

    .line 349
    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 352
    .local v5, "chooserIntent":Landroid/content/Intent;
    const/16 v23, 0x0

    .line 353
    const/high16 v24, 0x10000000

    .line 352
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v6, v0, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 354
    .local v16, "shareAction":Landroid/app/PendingIntent;
    new-instance v17, Landroid/app/Notification$Action$Builder;

    .line 356
    const v23, 0x10405b3

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 355
    const v24, 0x7f020022

    .line 354
    move-object/from16 v0, v17

    move/from16 v1, v24

    move-object/from16 v2, v23

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 357
    .local v17, "shareActionBuilder":Landroid/app/Notification$Action$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v23, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 361
    new-instance v23, Landroid/content/Intent;

    const-class v24, Lcom/oneplus/screenshot/GlobalScreenshot$DeleteScreenshotReceiver;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    const-string/jumbo v24, "android:screenshot_uri_id"

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    .line 361
    invoke-virtual/range {v23 .. v25}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v23

    .line 360
    const/16 v24, 0x0

    .line 363
    const/high16 v25, 0x50000000

    .line 360
    move/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-static {v6, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 364
    .local v7, "deleteAction":Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification$Action$Builder;

    .line 366
    const v23, 0x10401ad

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 365
    const v24, 0x7f020021

    .line 364
    move/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v10, v0, v1, v7}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 367
    .local v10, "deleteActionBuilder":Landroid/app/Notification$Action$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v23, v0

    invoke-virtual {v10}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    .line 374
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->viewIntent:Landroid/content/Intent;

    .line 375
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->deleteIntent:Landroid/app/PendingIntent;

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->handler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_28d
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_28d} :catch_290

    .line 395
    .end local v4    # "chooseAction":Landroid/app/PendingIntent;
    .end local v5    # "chooserIntent":Landroid/content/Intent;
    .end local v7    # "deleteAction":Landroid/app/PendingIntent;
    .end local v8    # "dateSeconds":J
    .end local v10    # "deleteActionBuilder":Landroid/app/Notification$Action$Builder;
    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v15    # "resolver":Landroid/content/ContentResolver;
    .end local v16    # "shareAction":Landroid/app/PendingIntent;
    .end local v17    # "shareActionBuilder":Landroid/app/Notification$Action$Builder;
    .end local v18    # "sharingIntent":Landroid/content/Intent;
    .end local v19    # "subject":Ljava/lang/String;
    .end local v20    # "subjectDate":Ljava/lang/String;
    .end local v21    # "uri":Landroid/net/Uri;
    .end local v22    # "values":Landroid/content/ContentValues;
    :goto_28d
    const/16 v23, 0x0

    return-object v23

    .line 379
    :catch_290
    move-exception v11

    .line 382
    .local v11, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    move-object/from16 v23, v0

    const v24, 0x7f0c001b

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    .line 384
    const-string/jumbo v23, "Longshot.SaveImageInBackgroundTask"

    const-string/jumbo v24, "save img error"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28d
.end method

.method public getDeleteIntent()Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->deleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getViewIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->viewIntent:Landroid/content/Intent;

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 452
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .registers 4
    .param p1, "params"    # Ljava/lang/Void;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 458
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 459
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 462
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 463
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 398
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 15
    .param p1, "params"    # Ljava/lang/Void;

    .prologue
    const v12, 0x7f0c0018

    const v11, 0x7f0c0017

    const v10, 0x106014c

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 400
    const-string/jumbo v5, "Longshot.SaveImageInBackgroundTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "save img done, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget v7, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v5, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget v5, v5, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    if-eqz v5, :cond_42

    .line 404
    iget-object v5, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v5, v5, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 405
    iget-object v7, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget v7, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    .line 404
    invoke-static {v5, v6, v7}, Lcom/oneplus/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    .line 449
    :goto_3c
    iget-object v5, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v5}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 450
    return-void

    .line 408
    :cond_42
    iget-object v5, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v0, v5, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 409
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 412
    .local v4, "r":Landroid/content/res/Resources;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v1, "launchIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v5, v5, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string/jumbo v6, "image/jpeg"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const v5, 0x10000001

    .line 414
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 418
    const-string/jumbo v5, "load_media_set"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 424
    .local v2, "now":J
    iget-object v5, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 425
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 424
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 426
    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 424
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 427
    iget-object v6, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v6, v6, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v6, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 424
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 430
    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 424
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 432
    iget-object v5, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 433
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 432
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 434
    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 432
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 435
    iget-object v6, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v6, v6, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v6, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 432
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 438
    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 432
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 440
    iget-object v6, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 432
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 441
    const/16 v6, 0x20

    .line 432
    invoke-virtual {v5, v6, v8}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 443
    iget-object v5, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 444
    iget-object v6, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 443
    invoke-virtual {v5, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_3c
.end method
