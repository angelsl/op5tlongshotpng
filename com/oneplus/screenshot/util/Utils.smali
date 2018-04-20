.class public Lcom/oneplus/screenshot/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DATE_FORMAT:Ljava/lang/String; = "yyyyMMdd-HHmmss"

.field public static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "Longshot.Utils"

.field private static WATER_MARK:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 237
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/util/Utils;->WATER_MARK:Landroid/graphics/Bitmap;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWatermark(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 302
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 303
    .local v9, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 304
    .local v2, "hight":I
    invoke-static {v9, v2}, Lcom/oneplus/screenshot/util/Utils;->genWaterMark(II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 305
    .local v4, "waterMark":Landroid/graphics/Bitmap;
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v2, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 306
    .local v3, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 307
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, p0, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 309
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 310
    .local v6, "waterMarkW":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 311
    .local v5, "waterMarkH":I
    sub-int v10, v2, v5

    div-int/lit8 v8, v10, 0x2

    .line 312
    .local v8, "watermark_top":I
    sub-int v10, v9, v6

    div-int/lit8 v7, v10, 0x2

    .line 313
    .local v7, "watermark_left":I
    int-to-float v10, v7

    int-to-float v11, v8

    const/4 v12, 0x0

    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 314
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 315
    const-string/jumbo v10, "Longshot.Utils"

    const-string/jumbo v11, "add water mark"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    .line 316
    return-object v3

    .line 317
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "hight":I
    .end local v3    # "result":Landroid/graphics/Bitmap;
    .end local v4    # "waterMark":Landroid/graphics/Bitmap;
    .end local v5    # "waterMarkH":I
    .end local v6    # "waterMarkW":I
    .end local v7    # "watermark_left":I
    .end local v8    # "watermark_top":I
    .end local v9    # "width":I
    :catch_40
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    return-object p0
.end method

.method public static addWatermarkForLongshot(Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .registers 18
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 325
    :try_start_0
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 326
    .local v5, "realDisplaySize":Landroid/graphics/Point;
    const-string/jumbo v13, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 327
    .local v12, "wm":Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 328
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 330
    iget v11, v5, Landroid/graphics/Point;->x:I

    .line 331
    .local v11, "width":I
    iget v4, v5, Landroid/graphics/Point;->y:I

    .line 333
    .local v4, "hight":I
    invoke-static {v11, v4}, Lcom/oneplus/screenshot/util/Utils;->genWaterMark(II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 334
    .local v6, "waterMark":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 336
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 337
    .local v8, "waterMarkW":I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 338
    .local v7, "waterMarkH":I
    sub-int v13, v4, v7

    div-int/lit8 v10, v13, 0x2

    .line 339
    .local v10, "watermark_top":I
    sub-int v13, v11, v8

    div-int/lit8 v9, v13, 0x2

    .line 340
    .local v9, "watermark_left":I
    :goto_36
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-ge v10, v13, :cond_44

    .line 341
    int-to-float v13, v9

    int-to-float v14, v10

    const/4 v15, 0x0

    invoke-virtual {v1, v6, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 342
    add-int/2addr v10, v4

    goto :goto_36

    .line 344
    :cond_44
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 345
    const-string/jumbo v13, "Longshot.Utils"

    const-string/jumbo v14, "add watermark for longshot"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_51

    .line 349
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "display":Landroid/view/Display;
    .end local v4    # "hight":I
    .end local v5    # "realDisplaySize":Landroid/graphics/Point;
    .end local v6    # "waterMark":Landroid/graphics/Bitmap;
    .end local v7    # "waterMarkH":I
    .end local v8    # "waterMarkW":I
    .end local v9    # "watermark_left":I
    .end local v10    # "watermark_top":I
    .end local v11    # "width":I
    .end local v12    # "wm":Landroid/view/WindowManager;
    :goto_50
    return-void

    .line 346
    :catch_51
    move-exception v3

    .line 347
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_50
.end method

.method public static dip2px(FF)I
    .registers 4
    .param p0, "scale"    # F
    .param p1, "dip"    # F

    .prologue
    .line 49
    mul-float v0, p1, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static dumpView(Landroid/view/View;)Ljava/lang/String;
    .registers 9
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v3, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    .line 60
    .local v2, "id":I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_56

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 62
    .local v5, "r":Landroid/content/res/Resources;
    invoke-static {v2}, Landroid/content/res/Resources;->resourceHasPackage(I)Z

    move-result v7

    if-eqz v7, :cond_56

    if-eqz v5, :cond_56

    .line 65
    const/high16 v7, -0x1000000

    and-int/2addr v7, v2

    sparse-switch v7, :sswitch_data_68

    .line 73
    :try_start_29
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "pkgname":Ljava/lang/String;
    :goto_2d
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "typename":Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "entryname":Ljava/lang/String;
    const-string/jumbo v7, "["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string/jumbo v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v7, "]"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_56
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_56} :catch_63

    .line 90
    .end local v1    # "entryname":Ljava/lang/String;
    .end local v4    # "pkgname":Ljava/lang/String;
    .end local v5    # "r":Landroid/content/res/Resources;
    .end local v6    # "typename":Ljava/lang/String;
    :cond_56
    :goto_56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 67
    .restart local v5    # "r":Landroid/content/res/Resources;
    :sswitch_5b
    :try_start_5b
    const-string/jumbo v4, "app"

    .restart local v4    # "pkgname":Ljava/lang/String;
    goto :goto_2d

    .line 70
    .end local v4    # "pkgname":Ljava/lang/String;
    :sswitch_5f
    const-string/jumbo v4, "android"
    :try_end_62
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5b .. :try_end_62} :catch_63

    .restart local v4    # "pkgname":Ljava/lang/String;
    goto :goto_2d

    .line 85
    .end local v4    # "pkgname":Ljava/lang/String;
    :catch_63
    move-exception v0

    .line 86
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_56

    .line 65
    :sswitch_data_68
    .sparse-switch
        0x1000000 -> :sswitch_5f
        0x7f000000 -> :sswitch_5b
    .end sparse-switch
.end method

.method public static enableMoveTrace()Z
    .registers 2

    .prologue
    .line 227
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.tracing.move_e"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static genWaterMark(II)Landroid/graphics/Bitmap;
    .registers 26
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 240
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 241
    .local v9, "result":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 243
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 244
    .local v7, "mypaint":Landroid/graphics/Paint;
    const/16 v14, 0x57

    .line 245
    .local v14, "textSize":I
    const/high16 v20, 0x42ae0000    # 87.0f

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 246
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    const/16 v20, 0x7f

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 248
    invoke-virtual {v7}, Landroid/graphics/Paint;->isAntiAlias()Z

    .line 249
    const/high16 v20, 0x40000000    # 2.0f

    const/high16 v21, 0x40400000    # 3.0f

    const/high16 v22, 0x40400000    # 3.0f

    const v23, -0x777778

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 250
    sget-object v20, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 251
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 253
    .local v12, "text":Ljava/lang/StringBuffer;
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v20

    div-int/lit8 v18, v20, 0x2

    .line 254
    .local v18, "xPos":I
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v21

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v22

    add-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 256
    .local v19, "yPos":I
    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v20

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v13, v0

    .line 259
    .local v13, "textHeight":I
    const-string/jumbo v6, "OnePlus"

    .line 260
    .local v6, "fristLine":Ljava/lang/String;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 261
    .local v8, "r":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    div-int/lit8 v21, v13, 0x2

    sub-int v5, v20, v21

    .line 262
    .local v5, "firstlineYPos":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v7, v6, v0, v1, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 263
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 264
    .local v15, "texthight":I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v5

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v6, v0, v1, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 267
    const-string/jumbo v10, "Confidential"

    .line 268
    .local v10, "secondLine":Ljava/lang/String;
    add-int v20, v5, v15

    add-int/lit8 v11, v20, 0x1d

    .line 269
    .local v11, "secondlineYPos":I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v7, v10, v0, v1, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 270
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 271
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v11

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v10, v0, v1, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 273
    sget-object v16, Lcom/oneplus/screenshot/longshot/util/Configs;->IMEI_NUMBER:Ljava/lang/String;

    .line 274
    .local v16, "thirdLine":Ljava/lang/String;
    add-int v20, v11, v15

    add-int/lit8 v17, v20, 0x5c

    .line 275
    .local v17, "thirdlineYPos":I
    const/16 v14, 0x33

    .line 276
    const/high16 v20, 0x424c0000    # 51.0f

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 279
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v4, v0, v1, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 280
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    sput-object v20, Lcom/oneplus/screenshot/util/Utils;->WATER_MARK:Landroid/graphics/Bitmap;

    .line 281
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 283
    sget-object v20, Lcom/oneplus/screenshot/util/Utils;->WATER_MARK:Landroid/graphics/Bitmap;

    return-object v20
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 287
    const-string/jumbo v1, ""

    .line 288
    .local v1, "imei":Ljava/lang/String;
    if-nez p0, :cond_6

    .line 289
    return-object v1

    .line 292
    :cond_6
    :try_start_6
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 293
    .local v2, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_14

    move-result-object v1

    .line 297
    .end local v2    # "manager":Landroid/telephony/TelephonyManager;
    :goto_13
    return-object v1

    .line 294
    :catch_14
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Longshot.Utils"

    const-string/jumbo v4, "can\'t get IMEI"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public static getMoveTraceBitmap()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    const-string/jumbo v1, "persist.tracing.move"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "bitmapPath":Ljava/lang/String;
    return-object v0
.end method

.method public static getStitchLastTraceBitmap(Z)Ljava/lang/String;
    .registers 3
    .param p0, "islast"    # Z

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "bitmapPath":Ljava/lang/String;
    if-eqz p0, :cond_b

    .line 212
    const-string/jumbo v1, "persist.tracing.stitchlast_l"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "bitmapPath":Ljava/lang/String;
    :goto_a
    return-object v0

    .line 214
    .local v0, "bitmapPath":Ljava/lang/String;
    :cond_b
    const-string/jumbo v1, "persist.tracing.stitchlast_c"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "bitmapPath":Ljava/lang/String;
    goto :goto_a
.end method

.method public static final getStitchLastTraceBitmapFolder()Ljava/lang/String;
    .registers 1

    .prologue
    .line 206
    const-string/jumbo v0, "persist.tracing.stitchlast_f"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDebuggable(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public static final isEnableStitchLastTraceBitmap()Z
    .registers 2

    .prologue
    .line 202
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.tracing.stitchlast_e"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static launchGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .param p0, "ct"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;
    .param p5, "extraValue"    # Z

    .prologue
    .line 166
    const-string/jumbo v3, "Longshot.Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "launchGallery, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :try_start_30
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.PICK"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 170
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    if-eqz p4, :cond_41

    invoke-virtual {v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    :cond_41
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    const-string/jumbo v3, "image/*"

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4f} :catch_50

    .line 186
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_4f
    return-void

    .line 175
    :catch_50
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Longshot.Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No OP_GALLERY_PACKAGE_NAME found, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :try_start_6b
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "image/*"

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7c} :catch_7d

    goto :goto_4f

    .line 182
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_7d
    move-exception v1

    .line 183
    .local v1, "e2":Ljava/lang/Exception;
    const-string/jumbo v3, "Longshot.Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Gallery app is not found, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f
.end method

.method public static saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z
    .registers 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileInfo"    # Lcom/oneplus/screenshot/util/FileInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 98
    if-nez p2, :cond_e

    .line 99
    const-string/jumbo v24, "Longshot.Utils"

    const-string/jumbo v25, "null bitmap"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/16 v24, 0x0

    return v24

    .line 102
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 104
    .local v4, "begin":J
    const/16 v20, 0x0

    .line 105
    .local v20, "result":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 106
    .local v7, "contentResolver":Landroid/content/ContentResolver;
    const/16 v17, 0x0

    .line 107
    .local v17, "outFile":Ljava/io/OutputStream;
    const/16 v16, 0x0

    .line 108
    .local v16, "inputStream":Ljava/io/InputStream;
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 110
    .local v23, "values":Landroid/content/ContentValues;
    :try_start_21
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/util/FileInfo;->getName()Ljava/lang/String;

    move-result-object v12

    .line 111
    .local v12, "fileName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/util/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 112
    .local v13, "filePath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/util/FileInfo;->getTime()J

    move-result-wide v14

    .line 113
    .local v14, "fileTime":J
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    .line 115
    .local v19, "parent":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_3f

    .line 116
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    .line 118
    :cond_3f
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_46} :catch_164
    .catchall {:try_start_21 .. :try_end_46} :catchall_17b

    .line 119
    .local v18, "outFile":Ljava/io/OutputStream;
    :try_start_46
    sget-object v24, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .end local v17    # "outFile":Ljava/io/OutputStream;
    const/16 v25, 0x64

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v6

    .line 120
    .local v6, "complete":Z
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->flush()V

    .line 121
    const-string/jumbo v24, "_data"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v24, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v24, "_display_name"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v24, "datetaken"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 125
    const-string/jumbo v24, "date_added"

    const-wide/16 v26, 0x3e8

    div-long v26, v14, v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 126
    const-string/jumbo v24, "date_modified"

    const-wide/16 v26, 0x3e8

    div-long v26, v14, v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    const-string/jumbo v24, "mime_type"

    const-string/jumbo v25, "image/png"

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v24, "width"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string/jumbo v24, "height"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    sget-object v24, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .line 131
    .local v22, "uri":Landroid/net/Uri;
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/util/FileInfo;->setUri(Landroid/net/Uri;)V

    .line 132
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v16

    .line 133
    .local v16, "inputStream":Ljava/io/InputStream;
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v21

    .line 134
    .local v21, "size":I
    const-string/jumbo v24, "_size"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v24

    const-string/jumbo v25, "notifyMtp"

    const-string/jumbo v26, "1"

    invoke-virtual/range {v24 .. v26}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v22

    .line 136
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 137
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 138
    .local v10, "fileLength":J
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_158

    const-wide/16 v24, 0x0

    cmp-long v24, v10, v24

    if-nez v24, :cond_158

    .line 139
    :cond_118
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 140
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_128} :catch_193
    .catchall {:try_start_46 .. :try_end_128} :catchall_18f

    .line 148
    :goto_128
    if-eqz v18, :cond_12d

    .line 149
    :try_start_12a
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V

    .line 151
    :cond_12d
    if-eqz v16, :cond_132

    .line 152
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_132} :catch_15f

    .line 157
    :cond_132
    :goto_132
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v17, v18

    .line 160
    .end local v6    # "complete":Z
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fileLength":J
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v13    # "filePath":Ljava/lang/String;
    .end local v14    # "fileTime":J
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v18    # "outFile":Ljava/io/OutputStream;
    .end local v19    # "parent":Ljava/io/File;
    .end local v21    # "size":I
    .end local v22    # "uri":Landroid/net/Uri;
    :goto_137
    const-string/jumbo v24, "Longshot.Utils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "end saveToFile: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v4

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v20

    .line 138
    .restart local v6    # "complete":Z
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "fileLength":J
    .restart local v12    # "fileName":Ljava/lang/String;
    .restart local v13    # "filePath":Ljava/lang/String;
    .restart local v14    # "fileTime":J
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v18    # "outFile":Ljava/io/OutputStream;
    .restart local v19    # "parent":Ljava/io/File;
    .restart local v21    # "size":I
    .restart local v22    # "uri":Landroid/net/Uri;
    :cond_158
    xor-int/lit8 v24, v6, 0x1

    if-nez v24, :cond_118

    .line 142
    const/16 v20, 0x1

    goto :goto_128

    .line 154
    :catch_15f
    move-exception v8

    .line 155
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_132

    .line 144
    .end local v6    # "complete":Z
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fileLength":J
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v13    # "filePath":Ljava/lang/String;
    .end local v14    # "fileTime":J
    .end local v18    # "outFile":Ljava/io/OutputStream;
    .end local v19    # "parent":Ljava/io/File;
    .end local v21    # "size":I
    .end local v22    # "uri":Landroid/net/Uri;
    .local v16, "inputStream":Ljava/io/InputStream;
    .restart local v17    # "outFile":Ljava/io/OutputStream;
    :catch_164
    move-exception v8

    .line 145
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v17    # "outFile":Ljava/io/OutputStream;
    .restart local v8    # "e":Ljava/lang/Exception;
    :goto_165
    :try_start_165
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_168
    .catchall {:try_start_165 .. :try_end_168} :catchall_17b

    .line 148
    if-eqz v17, :cond_16d

    .line 149
    :try_start_16a
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 151
    :cond_16d
    if-eqz v16, :cond_172

    .line 152
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_172} :catch_176

    .line 157
    :cond_172
    :goto_172
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    goto :goto_137

    .line 154
    :catch_176
    move-exception v8

    .line 155
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_172

    .line 146
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_17b
    move-exception v24

    .line 148
    :goto_17c
    if-eqz v17, :cond_181

    .line 149
    :try_start_17e
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 151
    :cond_181
    if-eqz v16, :cond_186

    .line 152
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_17e .. :try_end_186} :catch_18a

    .line 157
    :cond_186
    :goto_186
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    .line 146
    throw v24

    .line 154
    :catch_18a
    move-exception v8

    .line 155
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_186

    .line 146
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v12    # "fileName":Ljava/lang/String;
    .restart local v13    # "filePath":Ljava/lang/String;
    .restart local v14    # "fileTime":J
    .restart local v18    # "outFile":Ljava/io/OutputStream;
    .restart local v19    # "parent":Ljava/io/File;
    :catchall_18f
    move-exception v24

    move-object/from16 v17, v18

    .end local v18    # "outFile":Ljava/io/OutputStream;
    .local v17, "outFile":Ljava/io/OutputStream;
    goto :goto_17c

    .line 144
    .end local v17    # "outFile":Ljava/io/OutputStream;
    .restart local v18    # "outFile":Ljava/io/OutputStream;
    :catch_193
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object/from16 v17, v18

    .end local v18    # "outFile":Ljava/io/OutputStream;
    .restart local v17    # "outFile":Ljava/io/OutputStream;
    goto :goto_165
.end method

.method public static scale(I)I
    .registers 1
    .param p0, "value"    # I

    .prologue
    .line 45
    return p0
.end method

.method public static setThreadPriority()V
    .registers 0

    .prologue
    .line 95
    return-void
.end method

.method public static shouldDumpForMove()Z
    .registers 2

    .prologue
    .line 222
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.test.dumplongshotMove"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static shouldDumpForTrace()Z
    .registers 2

    .prologue
    .line 190
    const-string/jumbo v1, "persist.test.dumplongshot"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "shouldDumpForTrace":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static shouldDumpForTraceNext()Z
    .registers 2

    .prologue
    .line 195
    const-string/jumbo v1, "persist.test.dumplongshotNext"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "shouldDumpForTrace":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
