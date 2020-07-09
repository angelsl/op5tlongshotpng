.class public Lcom/oneplus/screenshot/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DATE_FORMAT:Ljava/lang/String; = "yyyyMMdd-HHmmss"

.field public static final DEBUG:Z = true

.field private static final KEY_SECRET:Ljava/lang/String; = "pmgoIQQr0GsLGqQzCYbJUmh1GN7062+kvum7LPuMc9c="

.field private static final TAG:Ljava/lang/String; = "Longshot.Utils"

.field private static sWATERMARK:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 330
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/util/Utils;->sWATERMARK:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWatermark(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 489
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 490
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 491
    .local v1, "hight":I
    invoke-static {v0, v1}, Lcom/oneplus/screenshot/util/Utils;->genWaterMark(II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 492
    .local v2, "waterMark":Landroid/graphics/Bitmap;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 493
    .local v3, "result":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 494
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 496
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 497
    .local v6, "waterMarkW":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 498
    .local v7, "waterMarkH":I
    sub-int v8, v1, v7

    div-int/lit8 v8, v8, 0x2

    .line 499
    .local v8, "watermarkTop":I
    sub-int v9, v0, v6

    div-int/lit8 v9, v9, 0x2

    .line 500
    .local v9, "watermarkLeft":I
    int-to-float v10, v9

    int-to-float v11, v8

    invoke-virtual {v4, v2, v10, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 501
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 502
    const-string v5, "Longshot.Utils"

    const-string v10, "add water mark"

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    return-object v3

    .line 504
    .end local v0    # "width":I
    .end local v1    # "hight":I
    .end local v2    # "waterMark":Landroid/graphics/Bitmap;
    .end local v3    # "result":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "waterMarkW":I
    .end local v7    # "waterMarkH":I
    .end local v8    # "watermarkTop":I
    .end local v9    # "watermarkLeft":I
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 507
    .end local v0    # "e":Ljava/lang/Exception;
    return-object p0
.end method

.method public static addWatermarkForLongshot(Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;

    .line 512
    :try_start_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 513
    .local v0, "realDisplaySize":Landroid/graphics/Point;
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 514
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 515
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 517
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 518
    .local v3, "width":I
    iget v4, v0, Landroid/graphics/Point;->y:I

    .line 520
    .local v4, "hight":I
    invoke-static {v3, v4}, Lcom/oneplus/screenshot/util/Utils;->genWaterMark(II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 521
    .local v5, "waterMark":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 523
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 524
    .local v7, "waterMarkW":I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 525
    .local v8, "waterMarkH":I
    sub-int v9, v4, v8

    div-int/lit8 v9, v9, 0x2

    .line 526
    .local v9, "watermarkTop":I
    sub-int v10, v3, v7

    div-int/lit8 v10, v10, 0x2

    .line 527
    .local v10, "watermarkLeft":I
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-ge v9, v11, :cond_0

    .line 528
    int-to-float v11, v10

    int-to-float v12, v9

    const/4 v13, 0x0

    invoke-virtual {v6, v5, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 529
    add-int/2addr v9, v4

    goto :goto_0

    .line 531
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 532
    const-string v11, "Longshot.Utils"

    const-string v12, "add watermark for longshot"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    nop

    .end local v0    # "realDisplaySize":Landroid/graphics/Point;
    .end local v1    # "wm":Landroid/view/WindowManager;
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "width":I
    .end local v4    # "hight":I
    .end local v5    # "waterMark":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "waterMarkW":I
    .end local v8    # "waterMarkH":I
    .end local v9    # "watermarkTop":I
    .end local v10    # "watermarkLeft":I
    goto :goto_1

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 536
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static customizeMove()I
    .locals 3

    .line 548
    const-string v0, "persist.test.move"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "movedistance":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " customizeMove:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.Utils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static customizeMoveTaskMoveDuration()I
    .locals 3

    .line 554
    const-string v0, "persist.test.moveduration"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "moveduration":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setMoveDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.Utils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static customizeMoveTaskMovekeep()I
    .locals 3

    .line 573
    const-string v0, "persist.test.movekeep"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "movekeep":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " customizeMoveTaskMovekeep:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.Utils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static customizePixelMatchThreshHold()I
    .locals 3

    .line 602
    const-string v0, "persist.test.pixel.match.threshold"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " customizePixelMatchThreshHold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.Utils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static customizeStitchNextMatchThreshHold()I
    .locals 3

    .line 596
    const-string v0, "persist.test.stitch.next.match.threshold"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " customizeStitchNextMatchThreshHold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.Utils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static dip2px(FF)I
    .locals 2
    .param p0, "scale"    # F
    .param p1, "dip"    # F

    .line 60
    mul-float v0, p1, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static dumpView(Landroid/view/View;)Ljava/lang/String;
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .line 71
    .local v1, "id":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 73
    .local v2, "r":Landroid/content/res/Resources;
    invoke-static {v1}, Landroid/content/res/Resources;->resourceHasPackage(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 76
    const/high16 v3, -0x1000000

    and-int/2addr v3, v1

    const/high16 v4, 0x1000000

    if-eq v3, v4, :cond_1

    const/high16 v4, 0x7f000000

    if-eq v3, v4, :cond_0

    .line 84
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "pkgname":Ljava/lang/String;
    goto :goto_0

    .line 96
    .end local v3    # "pkgname":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 78
    :cond_0
    const-string v3, "app"

    .line 79
    .restart local v3    # "pkgname":Ljava/lang/String;
    goto :goto_0

    .line 81
    .end local v3    # "pkgname":Ljava/lang/String;
    :cond_1
    const-string v3, "android"

    .line 82
    .restart local v3    # "pkgname":Ljava/lang/String;
    nop

    .line 87
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "typename":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "entryname":Ljava/lang/String;
    const-string v6, "["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    nop

    .end local v3    # "pkgname":Ljava/lang/String;
    .end local v4    # "typename":Ljava/lang/String;
    .end local v5    # "entryname":Ljava/lang/String;
    goto :goto_2

    .line 97
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_1
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 101
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static enableMoveTrace()Z
    .locals 2

    .line 320
    const-string v0, "persist.tracing.move_e"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static genWaterMark(II)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 333
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move/from16 v1, p0

    move/from16 v2, p1

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 334
    .local v0, "result":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 336
    .local v3, "canvas":Landroid/graphics/Canvas;
    sget v4, Lcom/oneplus/screenshot/longshot/util/Configs;->sWaterMarkTimes:I

    .line 337
    .local v4, "times":I
    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "OnePlus"

    aput-object v8, v6, v7

    const/4 v8, 0x1

    const-string v9, "Confidential"

    aput-object v9, v6, v8

    sget-object v9, Lcom/oneplus/screenshot/longshot/util/Configs;->sImeiNumber:Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v9, v6, v10

    .line 339
    .local v6, "lines":[Ljava/lang/String;
    const-string v9, ""

    if-eq v4, v10, :cond_1

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    const-string v11, "NEVER"

    aput-object v11, v6, v7

    .line 347
    const-string v11, "SETTLE"

    aput-object v11, v6, v8

    .line 348
    aput-object v9, v6, v10

    .line 349
    goto :goto_0

    .line 341
    :cond_1
    const-string v11, "no more"

    aput-object v11, v6, v7

    .line 342
    const-string v11, "watermark"

    aput-object v11, v6, v8

    .line 343
    aput-object v9, v6, v10

    .line 344
    nop

    .line 354
    :goto_0
    const v9, -0x777778

    const/4 v11, -0x1

    const/high16 v12, 0x40400000    # 3.0f

    const/high16 v13, 0x40000000    # 2.0f

    if-ne v4, v8, :cond_2

    .line 355
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 356
    .local v14, "mypaint":Landroid/graphics/Paint;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v15

    div-int/2addr v15, v5

    .line 357
    .local v15, "textSize":I
    int-to-float v8, v15

    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 358
    invoke-virtual {v14, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    const/16 v8, 0x7f

    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 360
    invoke-virtual {v14}, Landroid/graphics/Paint;->isAntiAlias()Z

    .line 361
    invoke-virtual {v14, v13, v12, v12, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 362
    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 363
    const/high16 v8, 0x40200000    # 2.5f

    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 364
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 366
    .local v8, "text":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    div-int/2addr v9, v10

    .line 367
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

    .line 369
    .local v11, "yPos":I
    invoke-virtual {v14}, Landroid/graphics/Paint;->ascent()F

    move-result v12

    invoke-virtual {v14}, Landroid/graphics/Paint;->descent()F

    move-result v13

    add-float/2addr v12, v13

    float-to-int v12, v12

    .line 372
    .local v12, "textHeight":I
    aget-object v13, v6, v7

    .line 373
    .local v13, "fristLine":Ljava/lang/String;
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v17, v16

    .line 374
    .local v17, "r":Landroid/graphics/Rect;
    const/16 v15, 0x12c

    .line 375
    int-to-float v10, v15

    invoke-virtual {v14, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 376
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    div-int/2addr v10, v5

    div-int/lit8 v5, v12, 0x2

    sub-int/2addr v10, v5

    .line 377
    .local v10, "firstlineYPos":I
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v1, v17

    .end local v17    # "r":Landroid/graphics/Rect;
    .local v1, "r":Landroid/graphics/Rect;
    invoke-virtual {v14, v13, v7, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 378
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 379
    .local v5, "texthight":I
    int-to-float v7, v9

    int-to-float v2, v10

    invoke-virtual {v3, v13, v7, v2, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 382
    const/4 v2, 0x1

    aget-object v7, v6, v2

    .line 383
    .local v7, "secondLine":Ljava/lang/String;
    add-int v2, v10, v5

    add-int/lit8 v2, v2, 0x1d

    .line 384
    .local v2, "secondlineYPos":I
    const/16 v15, 0xc8

    .line 385
    move/from16 v18, v5

    .end local v5    # "texthight":I
    .local v18, "texthight":I
    int-to-float v5, v15

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 386
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v19, v8

    const/4 v8, 0x0

    .end local v8    # "text":Ljava/lang/StringBuffer;
    .local v19, "text":Ljava/lang/StringBuffer;
    invoke-virtual {v14, v7, v8, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 387
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 388
    .end local v18    # "texthight":I
    .restart local v5    # "texthight":I
    int-to-float v8, v9

    .end local v1    # "r":Landroid/graphics/Rect;
    .restart local v17    # "r":Landroid/graphics/Rect;
    int-to-float v1, v2

    invoke-virtual {v3, v7, v8, v1, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 390
    const/4 v1, 0x2

    aget-object v1, v6, v1

    .line 391
    .local v1, "thirdLine":Ljava/lang/String;
    const/16 v8, 0x78

    .line 392
    .end local v15    # "textSize":I
    .local v8, "textSize":I
    add-int v15, v2, v5

    add-int/lit8 v15, v15, 0x5c

    .line 393
    .local v15, "thirdlineYPos":I
    move/from16 v16, v2

    .end local v2    # "secondlineYPos":I
    .local v16, "secondlineYPos":I
    int-to-float v2, v8

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 394
    int-to-float v2, v9

    move/from16 v18, v5

    .end local v5    # "texthight":I
    .restart local v18    # "texthight":I
    int-to-float v5, v15

    invoke-virtual {v3, v1, v2, v5, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 395
    .end local v1    # "thirdLine":Ljava/lang/String;
    .end local v7    # "secondLine":Ljava/lang/String;
    .end local v8    # "textSize":I
    .end local v9    # "xPos":I
    .end local v10    # "firstlineYPos":I
    .end local v11    # "yPos":I
    .end local v12    # "textHeight":I
    .end local v13    # "fristLine":Ljava/lang/String;
    .end local v14    # "mypaint":Landroid/graphics/Paint;
    .end local v15    # "thirdlineYPos":I
    .end local v16    # "secondlineYPos":I
    .end local v17    # "r":Landroid/graphics/Rect;
    .end local v18    # "texthight":I
    .end local v19    # "text":Ljava/lang/StringBuffer;
    move/from16 v19, v4

    goto/16 :goto_2

    .line 396
    :cond_2
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 397
    .local v1, "mypaint":Landroid/graphics/Paint;
    const/16 v2, 0xc8

    .line 398
    .local v2, "textSize":I
    int-to-float v7, v2

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 399
    const/4 v7, 0x2

    if-ne v4, v7, :cond_3

    .line 400
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 401
    :cond_3
    if-ne v4, v5, :cond_4

    .line 402
    const/high16 v5, -0x10000

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 404
    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Paint;->isAntiAlias()Z

    .line 405
    invoke-virtual {v1, v13, v12, v12, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 406
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 407
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 409
    .local v5, "text":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    const/4 v8, 0x2

    div-int/2addr v7, v8

    .line 410
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

    .line 412
    .local v8, "yPos":I
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 415
    .local v9, "textHeight":I
    const/4 v10, 0x0

    aget-object v11, v6, v10

    .line 416
    .local v11, "fristLine":Ljava/lang/String;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 417
    .local v10, "r":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    const/4 v13, 0x2

    div-int/2addr v12, v13

    div-int/lit8 v13, v9, 0x2

    sub-int/2addr v12, v13

    .line 418
    .local v12, "firstlineYPos":I
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v1, v11, v14, v13, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 419
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 420
    .local v13, "texthight":I
    int-to-float v14, v7

    int-to-float v15, v12

    invoke-virtual {v3, v11, v14, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 423
    const/4 v14, 0x1

    aget-object v15, v6, v14

    .line 424
    .local v15, "secondLine":Ljava/lang/String;
    add-int v14, v12, v13

    add-int/lit8 v14, v14, 0x1d

    .line 425
    .local v14, "secondlineYPos":I
    move/from16 v18, v2

    .end local v2    # "textSize":I
    .local v18, "textSize":I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v19, v4

    const/4 v4, 0x0

    .end local v4    # "times":I
    .local v19, "times":I
    invoke-virtual {v1, v15, v4, v2, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 426
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 427
    .end local v13    # "texthight":I
    .local v2, "texthight":I
    int-to-float v4, v7

    int-to-float v13, v14

    invoke-virtual {v3, v15, v4, v13, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 429
    const/4 v4, 0x2

    aget-object v4, v6, v4

    .line 430
    .local v4, "thirdLine":Ljava/lang/String;
    add-int v13, v14, v2

    add-int/lit8 v13, v13, 0x5c

    .line 431
    .local v13, "thirdlineYPos":I
    move/from16 v16, v2

    .end local v2    # "texthight":I
    .local v16, "texthight":I
    const/16 v2, 0x33

    .line 432
    .end local v18    # "textSize":I
    .local v2, "textSize":I
    move-object/from16 v17, v5

    .end local v5    # "text":Ljava/lang/StringBuffer;
    .local v17, "text":Ljava/lang/StringBuffer;
    int-to-float v5, v2

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 435
    int-to-float v5, v7

    move/from16 v18, v2

    .end local v2    # "textSize":I
    .restart local v18    # "textSize":I
    int-to-float v2, v13

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 438
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
    .end local v16    # "texthight":I
    .end local v17    # "text":Ljava/lang/StringBuffer;
    .end local v18    # "textSize":I
    :goto_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/oneplus/screenshot/util/Utils;->sWATERMARK:Landroid/graphics/Bitmap;

    .line 439
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 441
    sget-object v1, Lcom/oneplus/screenshot/util/Utils;->sWATERMARK:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public static getEncryptedIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 459
    invoke-static {p0}, Lcom/oneplus/screenshot/util/Utils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/screenshot/util/Utils;->getEncryptedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "encryptedImei":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encrypted IMEI ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.Utils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-object v0
.end method

.method public static getEncryptedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "stringToEncrypt"    # Ljava/lang/String;

    .line 470
    const-string v0, "AES"

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 471
    .local v1, "IV":[B
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 472
    .local v2, "random":Ljava/security/SecureRandom;
    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 475
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 476
    .local v3, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "pmgoIQQr0GsLGqQzCYbJUmh1GN7062+kvum7LPuMc9c="

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v0, v4

    .line 477
    .local v0, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 478
    .local v4, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 479
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 480
    .local v5, "cipherText":[B
    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 481
    .end local v0    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "cipherText":[B
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 484
    .end local v0    # "e":Ljava/lang/Exception;
    return-object p0
.end method

.method public static getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 588
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 589
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 591
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 445
    const-string v0, ""

    .line 446
    .local v0, "imei":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 447
    return-object v0

    .line 450
    :cond_0
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 451
    .local v1, "manager":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 454
    .end local v1    # "manager":Landroid/telephony/TelephonyManager;
    goto :goto_0

    .line 452
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Longshot.Utils"

    const-string v3, "can\'t get IMEI"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getMoveTraceBitmap()Ljava/lang/String;
    .locals 1

    .line 324
    const-string v0, "persist.tracing.move"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "bitmapPath":Ljava/lang/String;
    return-object v0
.end method

.method public static getPartScreenshotBottom(I)I
    .locals 2
    .param p0, "displayHeight"    # I

    .line 628
    int-to-float v0, p0

    const v1, 0x3ec28f5c    # 0.38f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getPartScreenshotTop(I)I
    .locals 2
    .param p0, "displayHeight"    # I

    .line 623
    int-to-float v0, p0

    const v1, 0x3e75c28f    # 0.24f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getStitchLastTraceBitmap(Z)Ljava/lang/String;
    .locals 2
    .param p0, "islast"    # Z

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "bitmapPath":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 287
    const-string v1, "persist.tracing.stitchlast_l"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_0
    const-string v1, "persist.tracing.stitchlast_c"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0
.end method

.method public static final getStitchLastTraceBitmapFolder()Ljava/lang/String;
    .locals 1

    .line 281
    const-string v0, "persist.tracing.stitchlast_f"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStitchNextTraceBitmap(Z)Ljava/lang/String;
    .locals 2
    .param p0, "islast"    # Z

    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, "bitmapPath":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 305
    const-string v1, "persist.tracing.stitchnext_l"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 307
    :cond_0
    const-string v1, "persist.tracing.stitchnext_c"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0
.end method

.method public static final getStitchNextTraceBitmapFolder()Ljava/lang/String;
    .locals 1

    .line 299
    const-string v0, "persist.tracing.stitchnext_f"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUid(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 608
    const/4 v0, 0x0

    .line 610
    .local v0, "uid":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 611
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 612
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move v0, v3

    .line 613
    const-string v3, "Longshot.Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ai.uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    nop

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 614
    :catch_0
    move-exception v1

    .line 615
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 617
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return v0
.end method

.method public static isDebuggable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDumpPreview()Z
    .locals 3

    .line 566
    const-string v0, "persist.test.dumppreview"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isDumpPreview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.Utils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isEnableDebugPreview()Z
    .locals 3

    .line 560
    const-string v0, "persist.test.debugpreview"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "enable":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isEnableDebugPreview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.Utils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static final isEnableStitchLastTraceBitmap()Z
    .locals 2

    .line 277
    const-string v0, "persist.tracing.stitchlast_e"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final isEnableStitchNextTraceBitmap()Z
    .locals 2

    .line 295
    const-string v0, "persist.tracing.stitchnext_e"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isKeyguardOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 638
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 639
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keygaurd  on : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.Utils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    return v1
.end method

.method public static isTraceStitchForLongshot()Z
    .locals 3

    .line 541
    const-string v0, "persist.test.trace.stitch"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "traceStitch":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isTraceStitchForLongshot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.Utils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static launchGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p0, "ct"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;
    .param p5, "extraValue"    # Z

    .line 216
    const-string v0, "image/*"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchGallery, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.Utils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 219
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 223
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 224
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    if-eqz p4, :cond_0

    .line 226
    invoke-virtual {v3, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    :cond_0
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 230
    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-static {p0}, Lcom/oneplus/screenshot/util/Utils;->isKeyguardOn(Landroid/content/Context;)Z

    move-result v4

    .line 234
    .local v4, "isKeyguardOn":Z
    if-eqz v4, :cond_1

    .line 235
    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 237
    .local v6, "wm":Landroid/view/IWindowManager;
    :try_start_1
    invoke-interface {v6, v5, v5}, Landroid/view/IWindowManager;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    goto :goto_0

    .line 238
    :catch_0
    move-exception v5

    .line 239
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dismissKeyGuard fail , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "wm":Landroid/view/IWindowManager;
    :cond_1
    :goto_0
    sget-boolean v5, Lcom/oneplus/screenshot/longshot/util/Configs;->supportNewEditMode:Z

    if-eqz v5, :cond_2

    .line 244
    const v5, 0x7f010001

    const v6, 0x7f010002

    .line 245
    invoke-static {p0, v5, v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 244
    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    .line 247
    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 260
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "isKeyguardOn":Z
    :goto_1
    goto :goto_2

    .line 250
    :catch_1
    move-exception v3

    .line 252
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No OP_GALLERY_PACKAGE_NAME found, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :try_start_3
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 259
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 257
    :catch_2
    move-exception v0

    .line 258
    .local v0, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Gallery app is not found, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v0    # "e2":Ljava/lang/Exception;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileInfo"    # Lcom/oneplus/screenshot/util/FileInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 109
    move-object/from16 v1, p2

    const-string v2, ".png"

    const-string v3, "\\."

    const/4 v4, 0x0

    const-string v5, "Longshot.Utils"

    if-nez v1, :cond_0

    .line 110
    const-string v0, "null bitmap"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return v4

    .line 113
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 115
    .local v6, "begin":J
    const/4 v8, 0x0

    .line 116
    .local v8, "result":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 117
    .local v9, "contentResolver":Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 118
    .local v10, "outFile":Ljava/io/OutputStream;
    const/4 v11, 0x0

    .line 119
    .local v11, "inputStream":Ljava/io/InputStream;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v12, v0

    .line 121
    .local v12, "values":Landroid/content/ContentValues;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/util/FileInfo;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 122
    .local v13, "fileName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/util/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 123
    .local v14, "filePath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/util/FileInfo;->getTime()J

    move-result-wide v15

    .line 124
    .local v15, "fileTime":J
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v0

    .line 125
    .local v17, "file":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move-object/from16 v18, v0

    .line 126
    .local v18, "parent":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v0, :cond_1

    .line 127
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    .end local v13    # "fileName":Ljava/lang/String;
    .end local v14    # "filePath":Ljava/lang/String;
    .end local v15    # "fileTime":J
    .end local v17    # "file":Ljava/io/File;
    .end local v18    # "parent":Ljava/io/File;
    :catchall_0
    move-exception v0

    move-object/from16 v2, p1

    move-object v1, v0

    move/from16 v22, v8

    move-object/from16 v25, v11

    goto/16 :goto_f

    .line 194
    :catch_0
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v22, v8

    goto/16 :goto_9

    .line 129
    .restart local v13    # "fileName":Ljava/lang/String;
    .restart local v14    # "filePath":Ljava/lang/String;
    .restart local v15    # "fileTime":J
    .restart local v17    # "file":Ljava/io/File;
    .restart local v18    # "parent":Ljava/io/File;
    :cond_1
    :goto_0
    :try_start_2
    invoke-static {v14}, Lcom/oneplus/screenshot/util/Utils;->getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v10, v0

    .line 130
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v0, v4, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    move v4, v0

    .line 131
    .local v4, "complete":Z
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 133
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isEncryptImage:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move/from16 v20, v0

    .line 134
    .local v20, "shouldEncrypt":Z
    if-eqz v20, :cond_3

    .line 135
    :try_start_3
    invoke-virtual {v14, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 137
    .local v21, "imageFileHeader":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v19, 0x0

    aget-object v1, v21, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 138
    .local v1, "inputFilePath":Ljava/lang/StringBuffer;
    const-string v0, ".png"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    new-instance v0, Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v22, v8

    const/16 v19, 0x0

    .end local v8    # "result":Z
    .local v22, "result":Z
    :try_start_4
    aget-object v8, v21, v19

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 140
    .local v8, "outputFilePath":Ljava/lang/StringBuffer;
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sImeiNumber:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 142
    .local v23, "imei":Ljava/lang/String;
    const-string v0, " doencrypt s"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v1

    .end local v1    # "inputFilePath":Ljava/lang/StringBuffer;
    .local v24, "inputFilePath":Ljava/lang/StringBuffer;
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v25, v11

    move-object/from16 v11, v23

    .end local v23    # "imei":Ljava/lang/String;
    .local v11, "imei":Ljava/lang/String;
    .local v25, "inputStream":Ljava/io/InputStream;
    :try_start_5
    invoke-static {v0, v11, v1}, Lcom/oneplus/screenshot/Native;->doencrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v0, " doencrypt e"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v0, " delete file s"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Ljava/io/File;

    move-object/from16 v1, v18

    .end local v18    # "parent":Ljava/io/File;
    .local v1, "parent":Ljava/io/File;
    invoke-direct {v0, v1, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object/from16 v18, v0

    .line 151
    .local v18, "originalImage":Ljava/io/File;
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 156
    :cond_2
    goto :goto_1

    .line 154
    :catch_1
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v0, " delete file e"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/16 v19, 0x0

    aget-object v3, v3, v19

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "outFileName":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    .line 162
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto :goto_2

    .line 197
    .end local v0    # "outFileName":Ljava/lang/StringBuffer;
    .end local v1    # "parent":Ljava/io/File;
    .end local v4    # "complete":Z
    .end local v8    # "outputFilePath":Ljava/lang/StringBuffer;
    .end local v13    # "fileName":Ljava/lang/String;
    .end local v14    # "filePath":Ljava/lang/String;
    .end local v15    # "fileTime":J
    .end local v17    # "file":Ljava/io/File;
    .end local v18    # "originalImage":Ljava/io/File;
    .end local v20    # "shouldEncrypt":Z
    .end local v21    # "imageFileHeader":[Ljava/lang/String;
    .end local v24    # "inputFilePath":Ljava/lang/StringBuffer;
    .end local v25    # "inputStream":Ljava/io/InputStream;
    .local v11, "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v25, v11

    move-object/from16 v2, p1

    move-object v1, v0

    .end local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v25    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_f

    .line 194
    .end local v25    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v0

    move-object/from16 v25, v11

    move-object/from16 v2, p1

    .end local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v25    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_9

    .line 197
    .end local v22    # "result":Z
    .end local v25    # "inputStream":Ljava/io/InputStream;
    .local v8, "result":Z
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    :catchall_2
    move-exception v0

    move/from16 v22, v8

    move-object/from16 v25, v11

    move-object/from16 v2, p1

    goto/16 :goto_8

    .line 194
    :catch_3
    move-exception v0

    move/from16 v22, v8

    move-object/from16 v25, v11

    move-object/from16 v2, p1

    goto/16 :goto_9

    .line 134
    .restart local v4    # "complete":Z
    .restart local v13    # "fileName":Ljava/lang/String;
    .restart local v14    # "filePath":Ljava/lang/String;
    .restart local v15    # "fileTime":J
    .restart local v17    # "file":Ljava/io/File;
    .local v18, "parent":Ljava/io/File;
    .restart local v20    # "shouldEncrypt":Z
    :cond_3
    move/from16 v22, v8

    move-object/from16 v25, v11

    move-object/from16 v1, v18

    .line 165
    .end local v8    # "result":Z
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v18    # "parent":Ljava/io/File;
    .restart local v1    # "parent":Ljava/io/File;
    .restart local v22    # "result":Z
    .restart local v25    # "inputStream":Ljava/io/InputStream;
    :goto_2
    const-string v0, "_data"

    invoke-virtual {v12, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "title"

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "_display_name"

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "datetaken"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    const-string v0, "date_added"

    const-wide/16 v2, 0x3e8

    div-long v18, v15, v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v12, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    const-string v0, "date_modified"

    div-long v2, v15, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 172
    const-string v0, "mime_type"

    if-eqz v20, :cond_4

    .line 173
    :try_start_8
    const-string v2, "image/png"

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 175
    :cond_4
    const-string v2, "image/png"

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_3
    const-string v0, "width"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    const-string v0, "height"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v0, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 181
    .local v0, "uri":Landroid/net/Uri;
    move-object/from16 v2, p1

    :try_start_9
    invoke-virtual {v2, v0}, Lcom/oneplus/screenshot/util/FileInfo;->setUri(Landroid/net/Uri;)V

    .line 182
    invoke-virtual {v9, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v11, v3

    .line 183
    .end local v25    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    :try_start_a
    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 184
    .local v3, "size":I
    const-string v8, "_size"

    move-object/from16 v18, v1

    .end local v1    # "parent":Ljava/io/File;
    .restart local v18    # "parent":Ljava/io/File;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v8, "notifyMtp"

    move-object/from16 v19, v0

    .end local v0    # "uri":Landroid/net/Uri;
    .local v19, "uri":Landroid/net/Uri;
    const-string v0, "1"

    invoke-virtual {v1, v8, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 186
    .end local v19    # "uri":Landroid/net/Uri;
    .restart local v0    # "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    invoke-virtual {v9, v0, v12, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 187
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v23

    .line 188
    .local v23, "fileLength":J
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    const-wide/16 v25, 0x0

    cmp-long v8, v23, v25

    if-eqz v8, :cond_6

    :cond_5
    if-nez v4, :cond_7

    .line 189
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 190
    invoke-virtual {v9, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move/from16 v8, v22

    goto :goto_4

    .line 192
    :cond_7
    const/4 v1, 0x1

    move v8, v1

    .line 198
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v3    # "size":I
    .end local v4    # "complete":Z
    .end local v13    # "fileName":Ljava/lang/String;
    .end local v14    # "filePath":Ljava/lang/String;
    .end local v15    # "fileTime":J
    .end local v17    # "file":Ljava/io/File;
    .end local v18    # "parent":Ljava/io/File;
    .end local v20    # "shouldEncrypt":Z
    .end local v22    # "result":Z
    .end local v23    # "fileLength":J
    .restart local v8    # "result":Z
    :goto_4
    nop

    .line 199
    :try_start_b
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 201
    nop

    .line 202
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 206
    goto :goto_5

    .line 204
    :catch_4
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 208
    move/from16 v22, v8

    goto :goto_e

    .line 194
    .end local v8    # "result":Z
    .restart local v22    # "result":Z
    :catch_5
    move-exception v0

    goto :goto_9

    .line 197
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v25    # "inputStream":Ljava/io/InputStream;
    :catchall_3
    move-exception v0

    goto :goto_6

    .line 194
    :catch_6
    move-exception v0

    goto :goto_7

    .line 197
    :catchall_4
    move-exception v0

    move-object/from16 v2, p1

    :goto_6
    move-object v1, v0

    goto :goto_f

    .line 194
    :catch_7
    move-exception v0

    move-object/from16 v2, p1

    :goto_7
    move-object/from16 v11, v25

    goto :goto_9

    .line 197
    .end local v22    # "result":Z
    .end local v25    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "result":Z
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    :catchall_5
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v22, v8

    move-object/from16 v25, v11

    :goto_8
    move-object v1, v0

    .end local v8    # "result":Z
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v22    # "result":Z
    .restart local v25    # "inputStream":Ljava/io/InputStream;
    goto :goto_f

    .line 194
    .end local v22    # "result":Z
    .end local v25    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "result":Z
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    :catch_8
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v22, v8

    move-object/from16 v25, v11

    .line 195
    .end local v8    # "result":Z
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v22    # "result":Z
    :goto_9
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v10, :cond_8

    .line 199
    :try_start_d
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    goto :goto_a

    .line 204
    :catch_9
    move-exception v0

    goto :goto_b

    .line 201
    :cond_8
    :goto_a
    if-eqz v11, :cond_9

    .line 202
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_c

    .line 205
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_c
    nop

    .line 207
    :goto_d
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 208
    nop

    .line 210
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end saveToFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return v22

    .line 197
    :catchall_6
    move-exception v0

    move-object v1, v0

    move-object/from16 v25, v11

    .line 198
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v25    # "inputStream":Ljava/io/InputStream;
    :goto_f
    if-eqz v10, :cond_a

    .line 199
    :try_start_e
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    goto :goto_10

    .line 204
    :catch_a
    move-exception v0

    goto :goto_11

    .line 201
    :cond_a
    :goto_10
    if-eqz v25, :cond_b

    .line 202
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_12

    .line 205
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_12
    nop

    .line 207
    :goto_13
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    throw v1
.end method

.method public static scale(I)I
    .locals 0
    .param p0, "value"    # I

    .line 56
    return p0
.end method

.method public static setThreadPriority()V
    .locals 0

    .line 106
    return-void
.end method

.method public static shouldDumpForMove()Z
    .locals 2

    .line 315
    const-string v0, "persist.test.dumplongshotMove"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static shouldDumpForTrace()Z
    .locals 2

    .line 265
    const-string v0, "persist.test.dumplongshot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "shouldDumpForTrace":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static shouldDumpForTraceNext()Z
    .locals 2

    .line 270
    const-string v0, "persist.test.dumplongshotNext"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "shouldDumpForTrace":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
