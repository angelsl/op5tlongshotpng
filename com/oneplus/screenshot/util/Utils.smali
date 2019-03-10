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

    .line 277
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/util/Utils;->WATER_MARK:Landroid/graphics/Bitmap;

    return-void-no-barrier
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWatermark(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 407
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 408
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 409
    .local v1, "hight":I
    invoke-static {v0, v1}, Lcom/oneplus/screenshot/util/Utils;->genWaterMark(II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 410
    .local v2, "waterMark":Landroid/graphics/Bitmap;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 411
    .local v3, "result":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 412
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 414
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 415
    .local v6, "waterMarkW":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 416
    .local v7, "waterMarkH":I
    sub-int v8, v1, v7

    div-int/lit8 v8, v8, 0x2

    .line 417
    .local v8, "watermark_top":I
    sub-int v9, v0, v6

    div-int/lit8 v9, v9, 0x2

    .line 418
    .local v9, "watermark_left":I
    int-to-float v10, v9

    int-to-float v11, v8

    invoke-virtual {v4, v2, v10, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 419
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 420
    const-string v5, "Longshot.Utils"

    const-string v10, "add water mark"

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    .line 421
    return-object v3

    .line 422
    .end local v0    # "width":I
    .end local v1    # "hight":I
    .end local v2    # "waterMark":Landroid/graphics/Bitmap;
    .end local v3    # "result":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "waterMarkW":I
    .end local v7    # "waterMarkH":I
    .end local v8    # "watermark_top":I
    .end local v9    # "watermark_left":I
    :catch_3c
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 425
    .end local v0    # "e":Ljava/lang/Exception;
    return-object p0
.end method

.method public static addWatermarkForLongshot(Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .registers 16
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;

    .line 430
    :try_start_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 431
    .local v0, "realDisplaySize":Landroid/graphics/Point;
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 432
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 433
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 435
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 436
    .local v3, "width":I
    iget v4, v0, Landroid/graphics/Point;->y:I

    .line 438
    .local v4, "hight":I
    invoke-static {v3, v4}, Lcom/oneplus/screenshot/util/Utils;->genWaterMark(II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 439
    .local v5, "waterMark":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 441
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 442
    .local v7, "waterMarkW":I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 443
    .local v8, "waterMarkH":I
    sub-int v9, v4, v8

    div-int/lit8 v9, v9, 0x2

    .line 444
    .local v9, "watermark_top":I
    sub-int v10, v3, v7

    div-int/lit8 v10, v10, 0x2

    .line 445
    .local v10, "watermark_left":I
    :goto_31
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-ge v9, v11, :cond_3f

    .line 446
    int-to-float v11, v10

    int-to-float v12, v9

    const/4 v13, 0x0

    invoke-virtual {v6, v5, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 447
    add-int/2addr v9, v4

    goto :goto_31

    .line 449
    :cond_3f
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 450
    const-string v11, "Longshot.Utils"

    const-string v12, "add watermark for longshot"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    .line 453
    .end local v0    # "realDisplaySize":Landroid/graphics/Point;
    .end local v1    # "wm":Landroid/view/WindowManager;
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "width":I
    .end local v4    # "hight":I
    .end local v5    # "waterMark":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "waterMarkW":I
    .end local v8    # "waterMarkH":I
    .end local v9    # "watermark_top":I
    .end local v10    # "watermark_left":I
    goto :goto_4e

    .line 451
    :catch_4a
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 454
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4e
    return-void-no-barrier
.end method

.method public static dip2px(FF)I
    .registers 4
    .param p0, "scale"    # F
    .param p1, "dip"    # F

    .line 50
    mul-float v0, p1, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static dumpView(Landroid/view/View;)Ljava/lang/String;
    .registers 8
    .param p0, "view"    # Landroid/view/View;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .line 61
    .local v1, "id":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_66

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 63
    .local v2, "r":Landroid/content/res/Resources;
    invoke-static {v1}, Landroid/content/res/Resources;->resourceHasPackage(I)Z

    move-result v3

    if-eqz v3, :cond_66

    if-eqz v2, :cond_66

    .line 66
    const/high16 v3, -0x1000000

    and-int/2addr v3, v1

    const/high16 v4, 0x1000000

    if-eq v3, v4, :cond_38

    const/high16 v4, 0x7f000000

    if-eq v3, v4, :cond_35

    .line 74
    :try_start_2e
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3b

    .line 86
    :catch_33
    move-exception v3

    goto :goto_62

    .line 68
    :cond_35
    const-string v3, "app"

    .line 69
    .local v3, "pkgname":Ljava/lang/String;
    goto :goto_3b

    .line 71
    .end local v3    # "pkgname":Ljava/lang/String;
    :cond_38
    const-string v3, "android"

    .line 72
    .restart local v3    # "pkgname":Ljava/lang/String;
    nop

    .line 74
    :goto_3b
    nop

    .line 77
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "typename":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "entryname":Ljava/lang/String;
    const-string v6, "["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_61
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2e .. :try_end_61} :catch_33

    .line 88
    .end local v3    # "pkgname":Ljava/lang/String;
    .end local v4    # "typename":Ljava/lang/String;
    .end local v5    # "entryname":Ljava/lang/String;
    goto :goto_66

    .line 86
    :goto_62
    nop

    .line 87
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 91
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_66
    :goto_66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static enableMoveTrace()Z
    .registers 2

    .line 267
    const-string v0, "true"

    const-string v1, "persist.tracing.move_e"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static genWaterMark(II)Landroid/graphics/Bitmap;
    .registers 29
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 280
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move/from16 v1, p0

    move/from16 v2, p1

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
    .local v0, "result":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 283
    .local v3, "canvas":Landroid/graphics/Canvas;
    sget v4, Lcom/oneplus/screenshot/longshot/util/Configs;->WATERMARK_TIMES:I

    .line 284
    .local v4, "times":I
    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "OnePlus"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "Confidential"

    const/4 v9, 0x1

    aput-object v7, v6, v9

    sget-object v7, Lcom/oneplus/screenshot/longshot/util/Configs;->IMEI_NUMBER:Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v7, v6, v10

    .line 286
    .local v6, "lines":[Ljava/lang/String;
    packed-switch v4, :pswitch_data_1b6

    goto :goto_41

    .line 293
    :pswitch_27
    const-string v7, "NEVER"

    aput-object v7, v6, v8

    .line 294
    const-string v7, "SETTLE"

    aput-object v7, v6, v9

    .line 295
    const-string v7, ""

    aput-object v7, v6, v10

    .line 296
    goto :goto_41

    .line 288
    :pswitch_34
    const-string v7, "no more"

    aput-object v7, v6, v8

    .line 289
    const-string v7, "watermark"

    aput-object v7, v6, v9

    .line 290
    const-string v7, ""

    aput-object v7, v6, v10

    .line 291
    nop

    .line 301
    :goto_41
    const v7, -0x777778

    const/4 v11, -0x1

    const/high16 v12, 0x40400000    # 3.0f

    const/high16 v13, 0x40000000    # 2.0f

    if-ne v4, v9, :cond_101

    .line 302
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 303
    .local v14, "mypaint":Landroid/graphics/Paint;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v15

    div-int/2addr v15, v5

    .line 304
    .local v15, "textSize":I
    int-to-float v9, v15

    invoke-virtual {v14, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 305
    invoke-virtual {v14, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    const/16 v9, 0x7f

    invoke-virtual {v14, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 307
    invoke-virtual {v14}, Landroid/graphics/Paint;->isAntiAlias()Z

    .line 308
    invoke-virtual {v14, v13, v12, v12, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 309
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 310
    const/high16 v7, 0x40200000    # 2.5f

    invoke-virtual {v14, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 311
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 313
    .local v7, "text":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    div-int/2addr v9, v10

    .line 314
    .local v9, "xPos":I
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    div-int/2addr v11, v5

    int-to-float v11, v11

    invoke-virtual {v14}, Landroid/graphics/Paint;->ascent()F

    move-result v12

    invoke-virtual {v14}, Landroid/graphics/Paint;->descent()F

    move-result v16

    add-float v12, v12, v16

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    float-to-int v11, v11

    .line 316
    .local v11, "yPos":I
    invoke-virtual {v14}, Landroid/graphics/Paint;->ascent()F

    move-result v12

    invoke-virtual {v14}, Landroid/graphics/Paint;->descent()F

    move-result v13

    add-float/2addr v12, v13

    float-to-int v12, v12

    .line 319
    .local v12, "textHeight":I
    aget-object v13, v6, v8

    .line 320
    .local v13, "fristLine":Ljava/lang/String;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 321
    .local v10, "r":Landroid/graphics/Rect;
    const/16 v15, 0x12c

    .line 322
    int-to-float v8, v15

    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 323
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    div-int/2addr v8, v5

    div-int/lit8 v5, v12, 0x2

    sub-int/2addr v8, v5

    .line 324
    .local v8, "firstlineYPos":I
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x0

    invoke-virtual {v14, v13, v1, v5, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 325
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 326
    .local v1, "texthight":I
    int-to-float v5, v9

    int-to-float v2, v8

    invoke-virtual {v3, v13, v5, v2, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 329
    const/4 v2, 0x1

    aget-object v5, v6, v2

    .line 330
    .local v5, "secondLine":Ljava/lang/String;
    add-int v2, v8, v1

    add-int/lit8 v2, v2, 0x1d

    .line 331
    .local v2, "secondlineYPos":I
    const/16 v15, 0xc8

    .line 332
    move/from16 v17, v1

    int-to-float v1, v15

    .end local v1    # "texthight":I
    .local v17, "texthight":I
    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 333
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v18, v7

    const/4 v7, 0x0

    invoke-virtual {v14, v5, v7, v1, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 334
    .end local v7    # "text":Ljava/lang/StringBuffer;
    .local v18, "text":Ljava/lang/StringBuffer;
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 335
    .end local v17    # "texthight":I
    .restart local v1    # "texthight":I
    int-to-float v7, v9

    move/from16 v19, v8

    int-to-float v8, v2

    .end local v8    # "firstlineYPos":I
    .local v19, "firstlineYPos":I
    invoke-virtual {v3, v5, v7, v8, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 337
    const/4 v7, 0x2

    aget-object v7, v6, v7

    .line 338
    .local v7, "thirdLine":Ljava/lang/String;
    const/16 v8, 0x78

    .line 339
    .end local v15    # "textSize":I
    .local v8, "textSize":I
    add-int v15, v2, v1

    add-int/lit8 v15, v15, 0x5c

    .line 340
    .local v15, "thirdlineYPos":I
    move/from16 v20, v1

    int-to-float v1, v8

    .end local v1    # "texthight":I
    .local v20, "texthight":I
    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 341
    int-to-float v1, v9

    move/from16 v21, v2

    int-to-float v2, v15

    .end local v2    # "secondlineYPos":I
    .local v21, "secondlineYPos":I
    invoke-virtual {v3, v7, v1, v2, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 342
    .end local v5    # "secondLine":Ljava/lang/String;
    .end local v7    # "thirdLine":Ljava/lang/String;
    .end local v8    # "textSize":I
    .end local v9    # "xPos":I
    .end local v10    # "r":Landroid/graphics/Rect;
    .end local v11    # "yPos":I
    .end local v12    # "textHeight":I
    .end local v13    # "fristLine":Ljava/lang/String;
    .end local v14    # "mypaint":Landroid/graphics/Paint;
    .end local v15    # "thirdlineYPos":I
    .end local v18    # "text":Ljava/lang/StringBuffer;
    .end local v19    # "firstlineYPos":I
    .end local v20    # "texthight":I
    .end local v21    # "secondlineYPos":I
    nop

    .line 385
    move/from16 v23, v4

    goto/16 :goto_1a6

    .line 343
    :cond_101
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 344
    .local v1, "mypaint":Landroid/graphics/Paint;
    const/16 v2, 0xc8

    .line 345
    .local v2, "textSize":I
    int-to-float v8, v2

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 346
    const/4 v8, 0x2

    if-ne v4, v8, :cond_113

    .line 347
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_11a

    .line 348
    :cond_113
    if-ne v4, v5, :cond_11a

    .line 349
    const/high16 v5, -0x10000

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    :cond_11a
    :goto_11a
    invoke-virtual {v1}, Landroid/graphics/Paint;->isAntiAlias()Z

    .line 352
    invoke-virtual {v1, v13, v12, v12, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 353
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 354
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 356
    .local v5, "text":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    const/4 v8, 0x2

    div-int/2addr v7, v8

    .line 357
    .local v7, "xPos":I
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    div-int/2addr v9, v8

    int-to-float v8, v9

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v10

    add-float/2addr v9, v10

    div-float/2addr v9, v13

    sub-float/2addr v8, v9

    float-to-int v8, v8

    .line 359
    .local v8, "yPos":I
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 362
    .local v9, "textHeight":I
    const/4 v10, 0x0

    aget-object v11, v6, v10

    .line 363
    .local v11, "fristLine":Ljava/lang/String;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 364
    .restart local v10    # "r":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    const/4 v13, 0x2

    div-int/2addr v12, v13

    div-int/lit8 v13, v9, 0x2

    sub-int/2addr v12, v13

    .line 365
    .local v12, "firstlineYPos":I
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v1, v11, v14, v13, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 366
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 367
    .local v13, "texthight":I
    int-to-float v14, v7

    int-to-float v15, v12

    invoke-virtual {v3, v11, v14, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 370
    const/4 v14, 0x1

    aget-object v15, v6, v14

    .line 371
    .local v15, "secondLine":Ljava/lang/String;
    add-int v14, v12, v13

    add-int/lit8 v14, v14, 0x1d

    .line 372
    .local v14, "secondlineYPos":I
    move/from16 v22, v2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    .end local v2    # "textSize":I
    .local v22, "textSize":I
    move/from16 v23, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v15, v4, v2, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 373
    .end local v4    # "times":I
    .local v23, "times":I
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 374
    .end local v13    # "texthight":I
    .local v2, "texthight":I
    int-to-float v4, v7

    int-to-float v13, v14

    invoke-virtual {v3, v15, v4, v13, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 376
    const/4 v4, 0x2

    aget-object v4, v6, v4

    .line 377
    .local v4, "thirdLine":Ljava/lang/String;
    add-int v13, v14, v2

    add-int/lit8 v13, v13, 0x5c

    .line 378
    .local v13, "thirdlineYPos":I
    move/from16 v24, v2

    const/16 v2, 0x33

    .line 379
    .end local v22    # "textSize":I
    .local v2, "textSize":I
    .local v24, "texthight":I
    move-object/from16 v25, v5

    int-to-float v5, v2

    .end local v5    # "text":Ljava/lang/StringBuffer;
    .local v25, "text":Ljava/lang/StringBuffer;
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 382
    int-to-float v5, v7

    move/from16 v26, v2

    int-to-float v2, v13

    .end local v2    # "textSize":I
    .local v26, "textSize":I
    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 385
    .end local v1    # "mypaint":Landroid/graphics/Paint;
    .end local v4    # "thirdLine":Ljava/lang/String;
    .end local v7    # "xPos":I
    .end local v8    # "yPos":I
    .end local v9    # "textHeight":I
    .end local v10    # "r":Landroid/graphics/Rect;
    .end local v11    # "fristLine":Ljava/lang/String;
    .end local v12    # "firstlineYPos":I
    .end local v13    # "thirdlineYPos":I
    .end local v14    # "secondlineYPos":I
    .end local v15    # "secondLine":Ljava/lang/String;
    .end local v24    # "texthight":I
    .end local v25    # "text":Ljava/lang/StringBuffer;
    .end local v26    # "textSize":I
    :goto_1a6
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/oneplus/screenshot/util/Utils;->WATER_MARK:Landroid/graphics/Bitmap;

    .line 386
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 388
    sget-object v1, Lcom/oneplus/screenshot/util/Utils;->WATER_MARK:Landroid/graphics/Bitmap;

    return-object v1

    nop

    :pswitch_data_1b6
    .packed-switch 0x2
        :pswitch_34
        :pswitch_27
    .end packed-switch
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 392
    const-string v0, ""

    .line 393
    .local v0, "imei":Ljava/lang/String;
    if-nez p0, :cond_5

    .line 394
    return-object v0

    .line 397
    :cond_5
    :try_start_5
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 398
    .local v1, "manager":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_14

    move-object v0, v2

    .line 401
    .end local v1    # "manager":Landroid/telephony/TelephonyManager;
    goto :goto_1c

    .line 399
    :catch_14
    move-exception v1

    .line 400
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Longshot.Utils"

    const-string v3, "can\'t get IMEI"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1c
    return-object v0
.end method

.method public static getMoveTraceBitmap()Ljava/lang/String;
    .registers 1

    .line 271
    const-string v0, "persist.tracing.move"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "bitmapPath":Ljava/lang/String;
    return-object v0
.end method

.method public static getStitchLastTraceBitmap(Z)Ljava/lang/String;
    .registers 3
    .param p0, "islast"    # Z

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "bitmapPath":Ljava/lang/String;
    if-eqz p0, :cond_a

    .line 252
    const-string v1, "persist.tracing.stitchlast_l"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 254
    :cond_a
    const-string v1, "persist.tracing.stitchlast_c"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_10
    return-object v0
.end method

.method public static final getStitchLastTraceBitmapFolder()Ljava/lang/String;
    .registers 1

    .line 246
    const-string v0, "persist.tracing.stitchlast_f"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDebuggable(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static final isEnableStitchLastTraceBitmap()Z
    .registers 2

    .line 242
    const-string v0, "true"

    const-string v1, "persist.tracing.stitchlast_e"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static launchGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .param p0, "ct"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;
    .param p5, "extraValue"    # Z

    .line 206
    const-string v0, "Longshot.Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchGallery, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :try_start_26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    if-eqz p4, :cond_36

    invoke-virtual {v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    :cond_36
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_43} :catch_44

    .line 225
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_82

    .line 215
    :catch_44
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Longshot.Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No OP_GALLERY_PACKAGE_NAME found, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :try_start_5b
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6a} :catch_6b

    .line 224
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_82

    .line 222
    :catch_6b
    move-exception v1

    .line 223
    .local v1, "e2":Ljava/lang/Exception;
    const-string v2, "Longshot.Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gallery app is not found, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :goto_82
    return-void-no-barrier
.end method

.method public static saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z
    .registers 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileInfo"    # Lcom/oneplus/screenshot/util/FileInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 99
    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 100
    const-string v0, "Longshot.Utils"

    const-string v3, "null bitmap"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v2

    .line 103
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 105
    .local v3, "begin":J
    const/4 v5, 0x0

    .line 106
    .local v5, "result":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 107
    .local v6, "contentResolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 108
    .local v7, "outFile":Ljava/io/OutputStream;
    const/4 v8, 0x0

    .line 109
    .local v8, "inputStream":Ljava/io/InputStream;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v9, v0

    .line 111
    .local v9, "values":Landroid/content/ContentValues;
    :try_start_1e
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/util/FileInfo;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 112
    .local v10, "fileName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/util/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 113
    .local v11, "filePath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/util/FileInfo;->getTime()J

    move-result-wide v12

    .line 114
    .local v12, "fileTime":J
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 115
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move-object v15, v0

    .line 116
    .local v15, "parent":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3b} :catch_1e2
    .catchall {:try_start_1e .. :try_end_3b} :catchall_1d9

    if-nez v0, :cond_50

    .line 117
    :try_start_3d
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_49
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_50

    .line 187
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "filePath":Ljava/lang/String;
    .end local v12    # "fileTime":J
    .end local v14    # "file":Ljava/io/File;
    .end local v15    # "parent":Ljava/io/File;
    :catchall_41
    move-exception v0

    move-object v1, v0

    move/from16 v19, v5

    move-object/from16 v5, p1

    goto/16 :goto_222

    .line 184
    :catch_49
    move-exception v0

    move/from16 v19, v5

    move-object/from16 v5, p1

    goto/16 :goto_1e9

    .line 119
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v11    # "filePath":Ljava/lang/String;
    .restart local v12    # "fileTime":J
    .restart local v14    # "file":Ljava/io/File;
    .restart local v15    # "parent":Ljava/io/File;
    :cond_50
    :goto_50
    :try_start_50
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 120
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    move v2, v0

    .line 121
    .local v2, "complete":Z
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 123
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_ENCRYPT_IMAGE:Z

    move/from16 v17, v0

    .line 124
    .local v17, "shouldEncrypt":Z
    if-eqz v17, :cond_107

    .line 125
    const-string v0, "\\."

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    .line 127
    .local v18, "imageFileHeader":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_72} :catch_1e2
    .catchall {:try_start_50 .. :try_end_72} :catchall_1d9

    move/from16 v19, v5

    const/16 v16, 0x0

    :try_start_76
    aget-object v5, v18, v16

    .end local v5    # "result":Z
    .local v19, "result":Z
    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 128
    .local v5, "inputFilePath":Ljava/lang/StringBuffer;
    const-string v0, ".jpg"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    new-instance v0, Ljava/lang/StringBuffer;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_83} :catch_100
    .catchall {:try_start_76 .. :try_end_83} :catchall_f8

    move-object/from16 v20, v8

    const/16 v16, 0x0

    :try_start_87
    aget-object v8, v18, v16

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .local v20, "inputStream":Ljava/io/InputStream;
    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 130
    .local v8, "outputFilePath":Ljava/lang/StringBuffer;
    const-string v0, ".png"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IMEI_NUMBER:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 132
    .local v21, "imei":Ljava/lang/String;
    const-string v0, "Longshot.Utils"

    move-object/from16 v22, v11

    const-string v11, " doencrypt s"

    .end local v11    # "filePath":Ljava/lang/String;
    .local v22, "filePath":Ljava/lang/String;
    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v23, v5

    move-object/from16 v5, v21

    invoke-static {v0, v5, v11}, Lcom/oneplus/screenshot/Native;->doencrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v21    # "imei":Ljava/lang/String;
    .local v5, "imei":Ljava/lang/String;
    .local v23, "inputFilePath":Ljava/lang/StringBuffer;
    const-string v0, "Longshot.Utils"

    const-string v11, " doencrypt e"

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v0, "Longshot.Utils"

    const-string v11, " delete file s"

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v15, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_c1} :catch_1d3
    .catchall {:try_start_87 .. :try_end_c1} :catchall_1cc

    move-object v11, v0

    .line 141
    .local v11, "originalImage":Ljava/io/File;
    :try_start_c2
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 142
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_cb} :catch_cc
    .catchall {:try_start_c2 .. :try_end_cb} :catchall_1cc

    .line 146
    :cond_cb
    goto :goto_d0

    .line 144
    :catch_cc
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    :try_start_cd
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d0
    const-string v0, "Longshot.Utils"

    move-object/from16 v24, v5

    const-string v5, " delete file e"

    .end local v5    # "imei":Ljava/lang/String;
    .local v24, "imei":Ljava/lang/String;
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v5, "\\."

    invoke-virtual {v10, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x0

    aget-object v5, v5, v16

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "outFileName":Ljava/lang/StringBuffer;
    const-string v5, ".png"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    .line 152
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    .end local v0    # "outFileName":Ljava/lang/StringBuffer;
    .end local v8    # "outputFilePath":Ljava/lang/StringBuffer;
    .end local v18    # "imageFileHeader":[Ljava/lang/String;
    .end local v22    # "filePath":Ljava/lang/String;
    .end local v23    # "inputFilePath":Ljava/lang/StringBuffer;
    .end local v24    # "imei":Ljava/lang/String;
    .local v11, "filePath":Ljava/lang/String;
    goto :goto_10d

    .line 187
    .end local v2    # "complete":Z
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "filePath":Ljava/lang/String;
    .end local v12    # "fileTime":J
    .end local v14    # "file":Ljava/io/File;
    .end local v15    # "parent":Ljava/io/File;
    .end local v17    # "shouldEncrypt":Z
    .end local v20    # "inputStream":Ljava/io/InputStream;
    .local v8, "inputStream":Ljava/io/InputStream;
    :catchall_f8
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v5, p1

    move-object v1, v0

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v20    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_222

    .line 184
    .end local v20    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :catch_100
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v5, p1

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v20    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_1e9

    .line 155
    .end local v19    # "result":Z
    .end local v20    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "complete":Z
    .local v5, "result":Z
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v11    # "filePath":Ljava/lang/String;
    .restart local v12    # "fileTime":J
    .restart local v14    # "file":Ljava/io/File;
    .restart local v15    # "parent":Ljava/io/File;
    .restart local v17    # "shouldEncrypt":Z
    :cond_107
    move/from16 v19, v5

    move-object/from16 v20, v8

    move-object/from16 v22, v11

    .end local v5    # "result":Z
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v19    # "result":Z
    .restart local v20    # "inputStream":Ljava/io/InputStream;
    :goto_10d
    const-string v0, "_data"

    invoke-virtual {v9, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "title"

    invoke-virtual {v9, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "_display_name"

    invoke-virtual {v9, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "datetaken"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    const-string v0, "date_added"

    const-wide/16 v21, 0x3e8

    move-object/from16 v26, v10

    move-object/from16 v25, v11

    div-long v10, v12, v21

    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "filePath":Ljava/lang/String;
    .local v25, "filePath":Ljava/lang/String;
    .local v26, "fileName":Ljava/lang/String;
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 160
    const-string v0, "date_modified"

    div-long v10, v12, v21

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    if-eqz v17, :cond_14b

    .line 163
    const-string v0, "mime_type"

    const-string v5, "image/png"

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_152

    .line 165
    :cond_14b
    const-string v0, "mime_type"

    const-string v5, "image/jpeg"

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_152
    const-string v0, "width"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string v0, "height"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v0, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_172} :catch_1d3
    .catchall {:try_start_cd .. :try_end_172} :catchall_1cc

    .line 171
    .local v0, "uri":Landroid/net/Uri;
    move-object/from16 v5, p1

    :try_start_174
    invoke-virtual {v5, v0}, Lcom/oneplus/screenshot/util/FileInfo;->setUri(Landroid/net/Uri;)V

    .line 172
    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_17b} :catch_1ca
    .catchall {:try_start_174 .. :try_end_17b} :catchall_1c8

    .line 173
    .end local v20    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :try_start_17b
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v10

    .line 174
    .local v10, "size":I
    const-string v11, "_size"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v11, "notifyMtp"

    move-object/from16 v27, v0

    const-string v0, "1"

    .end local v0    # "uri":Landroid/net/Uri;
    .local v27, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v11, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 176
    .end local v27    # "uri":Landroid/net/Uri;
    .restart local v0    # "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    invoke-virtual {v6, v0, v9, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 177
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v20

    .line 178
    .local v20, "fileLength":J
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1ae

    const-wide/16 v22, 0x0

    cmp-long v11, v20, v22

    if-eqz v11, :cond_1b0

    :cond_1ae
    if-nez v2, :cond_1b7

    .line 179
    :cond_1b0
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 180
    invoke-virtual {v6, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_1b6} :catch_1c6
    .catchall {:try_start_17b .. :try_end_1b6} :catchall_220

    goto :goto_1ba

    .line 182
    :cond_1b7
    const/4 v0, 0x1

    .line 188
    .end local v2    # "complete":Z
    .end local v10    # "size":I
    .end local v12    # "fileTime":J
    .end local v14    # "file":Ljava/io/File;
    .end local v15    # "parent":Ljava/io/File;
    .end local v17    # "shouldEncrypt":Z
    .end local v19    # "result":Z
    .end local v20    # "fileLength":J
    .end local v25    # "filePath":Ljava/lang/String;
    .end local v26    # "fileName":Ljava/lang/String;
    .local v0, "result":Z
    move/from16 v19, v0

    .line 189
    .end local v0    # "result":Z
    .restart local v19    # "result":Z
    :goto_1ba
    :try_start_1ba
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_1c0

    .line 194
    :catch_1be
    move-exception v0

    goto :goto_1fa

    .line 191
    :goto_1c0
    if-eqz v8, :cond_1ff

    .line 192
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_1c5} :catch_1be

    goto :goto_1ff

    .line 184
    :catch_1c6
    move-exception v0

    goto :goto_1e9

    .line 187
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .local v20, "inputStream":Ljava/io/InputStream;
    :catchall_1c8
    move-exception v0

    goto :goto_1cf

    .line 184
    :catch_1ca
    move-exception v0

    goto :goto_1d6

    .line 187
    :catchall_1cc
    move-exception v0

    move-object/from16 v5, p1

    .end local v20    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :goto_1cf
    move-object v1, v0

    move-object/from16 v8, v20

    goto :goto_222

    .line 184
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v20    # "inputStream":Ljava/io/InputStream;
    :catch_1d3
    move-exception v0

    move-object/from16 v5, p1

    .end local v20    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :goto_1d6
    move-object/from16 v8, v20

    goto :goto_1e9

    .line 187
    .end local v19    # "result":Z
    .restart local v5    # "result":Z
    :catchall_1d9
    move-exception v0

    move/from16 v19, v5

    move-object/from16 v20, v8

    move-object/from16 v5, p1

    move-object v1, v0

    .end local v5    # "result":Z
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v19    # "result":Z
    .restart local v20    # "inputStream":Ljava/io/InputStream;
    goto :goto_222

    .line 184
    .end local v19    # "result":Z
    .end local v20    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "result":Z
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :catch_1e2
    move-exception v0

    move/from16 v19, v5

    move-object/from16 v20, v8

    move-object/from16 v5, p1

    .line 185
    .end local v5    # "result":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "result":Z
    :goto_1e9
    :try_start_1e9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1ec
    .catchall {:try_start_1e9 .. :try_end_1ec} :catchall_220

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v7, :cond_1f4

    .line 189
    :try_start_1ee
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_1f4

    .line 194
    :catch_1f2
    move-exception v0

    goto :goto_1fa

    .line 191
    :cond_1f4
    :goto_1f4
    if-eqz v8, :cond_1ff

    .line 192
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1ee .. :try_end_1f9} :catch_1f2

    goto :goto_1ff

    .line 194
    :goto_1fa
    nop

    .line 195
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_200

    .line 196
    :cond_1ff
    :goto_1ff
    nop

    .line 197
    :goto_200
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 198
    nop

    .line 200
    const-string v0, "Longshot.Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end saveToFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return v19

    .line 187
    :catchall_220
    move-exception v0

    move-object v1, v0

    .line 188
    :goto_222
    if-eqz v7, :cond_22a

    .line 189
    :try_start_224
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_22a

    .line 194
    :catch_228
    move-exception v0

    goto :goto_230

    .line 191
    :cond_22a
    :goto_22a
    if-eqz v8, :cond_235

    .line 192
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_22f
    .catch Ljava/lang/Exception; {:try_start_224 .. :try_end_22f} :catch_228

    goto :goto_235

    .line 194
    :goto_230
    nop

    .line 195
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_236

    .line 196
    :cond_235
    :goto_235
    nop

    .line 197
    :goto_236
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    throw v1
.end method

.method public static scale(I)I
    .registers 1
    .param p0, "value"    # I

    .line 46
    return p0
.end method

.method public static setThreadPriority()V
    .registers 0

    .line 96
    return-void-no-barrier
.end method

.method public static shouldDumpForMove()Z
    .registers 2

    .line 262
    const-string v0, "true"

    const-string v1, "persist.test.dumplongshotMove"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static shouldDumpForTrace()Z
    .registers 2

    .line 230
    const-string v0, "persist.test.dumplongshot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "shouldDumpForTrace":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static shouldDumpForTraceNext()Z
    .registers 2

    .line 235
    const-string v0, "persist.test.dumplongshotNext"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "shouldDumpForTrace":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
