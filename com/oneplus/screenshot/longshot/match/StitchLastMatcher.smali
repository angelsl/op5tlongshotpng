.class public Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;
.super Lcom/oneplus/screenshot/longshot/match/BaseMatcher;
.source "StitchLastMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;
    }
.end annotation


# static fields
.field private static final FILE_PREFIX:Ljava/lang/String; = "tracing"

.field private static final TAG:Ljava/lang/String; = "Longshot.StitchLastMatcher"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    .line 42
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH_LAST:I

    packed-switch v0, :pswitch_data_88

    .line 60
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    .line 65
    :goto_10
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_LAST_LAST_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    .line 67
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_LAST_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetCurr:I

    .line 70
    const-string/jumbo v0, "Longshot.StitchLastMatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "StitchLastMatcher LEVEL_STITCH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH_LAST:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mOffsetCurr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetCurr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mOffsetLast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void

    .line 44
    :pswitch_64
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_5:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    goto :goto_10

    .line 48
    :pswitch_6d
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    goto :goto_10

    .line 52
    :pswitch_76
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    goto :goto_10

    .line 56
    :pswitch_7f
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    goto :goto_10

    .line 42
    :pswitch_data_88
    .packed-switch 0x2
        :pswitch_7f
        :pswitch_76
        :pswitch_6d
        :pswitch_64
    .end packed-switch
.end method

.method private getTracingBitmapBottom(Ljava/lang/String;)I
    .registers 9
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "bottom":I
    const-string/jumbo v2, "_"

    .line 468
    .local v2, "divider":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "data":[Ljava/lang/String;
    :try_start_8
    array-length v4, v1

    const/4 v5, 0x2

    if-le v4, v5, :cond_13

    .line 471
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_2e

    move-result v0

    .line 476
    :cond_13
    :goto_13
    const-string/jumbo v4, "Longshot.StitchLastMatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTracingBitmapBottom :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return v0

    .line 473
    :catch_2e
    move-exception v3

    .line 474
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Longshot.StitchLastMatcher"

    const-string/jumbo v5, "bottom value does exsit"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public static mergeBitmap_TB(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .registers 16
    .param p0, "topBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "bottomBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isBaseMax"    # Z

    .prologue
    .line 430
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_a

    .line 431
    if-nez p1, :cond_15

    .line 432
    :cond_a
    const-string/jumbo v9, "Longshot.StitchLastMatcher"

    const-string/jumbo v10, "incorrect bitmaps"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v9, 0x0

    return-object v9

    .line 431
    :cond_15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    .line 430
    if-nez v9, :cond_a

    .line 435
    const/4 v8, 0x0

    .line 436
    .local v8, "width":I
    if-eqz p2, :cond_95

    .line 437
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-le v9, v10, :cond_90

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 441
    :goto_2c
    move-object v6, p0

    .line 442
    .local v6, "tempBitmapT":Landroid/graphics/Bitmap;
    move-object v5, p1

    .line 444
    .local v5, "tempBitmapB":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-eq v9, v8, :cond_a9

    .line 445
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v8

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-static {p0, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 450
    :cond_4a
    :goto_4a
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int v4, v9, v10

    .line 452
    .local v4, "height":I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 453
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 455
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v7, v11, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 456
    .local v7, "topRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v1, v11, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 458
    .local v1, "bottomRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct {v2, v10, v9, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 460
    .local v2, "bottomRectT":Landroid/graphics/Rect;
    const/4 v9, 0x0

    invoke-virtual {v3, v6, v7, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 461
    const/4 v9, 0x0

    invoke-virtual {v3, v5, v1, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 462
    return-object v0

    .line 437
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bottomRect":Landroid/graphics/Rect;
    .end local v2    # "bottomRectT":Landroid/graphics/Rect;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "height":I
    .end local v5    # "tempBitmapB":Landroid/graphics/Bitmap;
    .end local v6    # "tempBitmapT":Landroid/graphics/Bitmap;
    .end local v7    # "topRect":Landroid/graphics/Rect;
    :cond_90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    goto :goto_2c

    .line 439
    :cond_95
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_a4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    goto :goto_2c

    :cond_a4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    goto :goto_2c

    .line 446
    .restart local v5    # "tempBitmapB":Landroid/graphics/Bitmap;
    .restart local v6    # "tempBitmapT":Landroid/graphics/Bitmap;
    :cond_a9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-eq v9, v8, :cond_4a

    .line 447
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v8

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-static {p1, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_4a
.end method


# virtual methods
.method protected canDump()Z
    .registers 2

    .prologue
    .line 91
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->shouldDumpForTrace()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 84
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 85
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 86
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/oneplus/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 87
    return-void
.end method

.method protected varargs getCurr(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;II[Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .registers 21
    .param p1, "dumper"    # Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
    .param p2, "offset"    # I
    .param p3, "cut"    # I
    .param p4, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 373
    invoke-static/range {p4 .. p4}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth([Landroid/graphics/Bitmap;)I

    move-result v13

    .line 374
    .local v13, "w":I
    invoke-static/range {p4 .. p4}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight([Landroid/graphics/Bitmap;)I

    move-result v1

    sub-int v8, v1, p3

    .line 375
    .local v8, "h":I
    const/4 v9, 0x0

    .line 377
    .local v9, "i":I
    move v12, v8

    .line 378
    .local v12, "size":I
    new-array v11, v8, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 379
    .local v11, "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v1, 0x0

    move-object/from16 v0, p4

    array-length v15, v0

    move v14, v1

    :goto_13
    if-ge v14, v15, :cond_43

    aget-object v2, p4, v14

    .line 380
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_18
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v4, v1, :cond_3f

    if-ge v9, v8, :cond_3f

    .line 381
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    new-instance v1, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLeftSideOffset:I

    add-int/lit8 v3, v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mRightSideOffset:I

    sub-int v5, v13, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLeftSideOffset:I

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v1, v11, v9

    .line 380
    add-int/lit8 v4, v4, 0x1

    move v9, v10

    .end local v10    # "i":I
    .restart local v9    # "i":I
    goto :goto_18

    .line 379
    :cond_3f
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto :goto_13

    .line 385
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "y":I
    :cond_43
    if-eqz p1, :cond_85

    .line 386
    array-length v1, v11

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v3, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    .line 388
    const/4 v1, 0x0

    aget-object v1, p4, v1

    const/4 v3, 0x1

    aget-object v3, p4, v3

    const/4 v5, 0x1

    invoke-static {v1, v3, v5}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mergeBitmap_TB(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 389
    .local v7, "currentBitmapFull":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tracing_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v3, p4, v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "current"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 392
    .end local v7    # "currentBitmapFull":Landroid/graphics/Bitmap;
    :cond_85
    return-object v11
.end method

.method protected getCurrOffset(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)I
    .registers 3
    .param p1, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .prologue
    .line 404
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected getCurrPixels(ILcom/oneplus/screenshot/longshot/cache/BitmapCache;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .registers 8
    .param p1, "offset"    # I
    .param p2, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetCurr:I

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getCurr(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;II[Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v0

    return-object v0
.end method

.method protected getLast(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;IILandroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .registers 18
    .param p1, "dumper"    # Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
    .param p2, "offset"    # I
    .param p3, "max"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 348
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 349
    .local v12, "w":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 350
    .local v7, "h":I
    move/from16 v0, p3

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 351
    .local v11, "size":I
    sub-int v1, v7, v11

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    .line 352
    new-array v9, v11, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 353
    .local v9, "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    sub-int v1, v7, v11

    sub-int v10, v1, p2

    .line 354
    .local v10, "pos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1d
    if-ge v8, v11, :cond_3a

    .line 355
    new-instance v1, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLeftSideOffset:I

    add-int/lit8 v3, v2, 0x0

    add-int v4, v8, v10

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLeftSideOffset:I

    sub-int v2, v12, v2

    iget v5, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mRightSideOffset:I

    sub-int v5, v2, v5

    const/4 v6, 0x1

    move-object/from16 v2, p4

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v1, v9, v8

    .line 354
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 359
    :cond_3a
    const-string/jumbo v1, "Longshot.StitchLastMatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " getLast pos start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pos end:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, v10, v11

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bitmap h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-eqz p1, :cond_81

    .line 364
    const-string/jumbo v1, "tracing_0_last"

    move-object/from16 v0, p4

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 366
    array-length v1, v9

    const/4 v2, 0x0

    invoke-virtual {p1, v9, v2, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    .line 368
    :cond_81
    return-object v9
.end method

.method protected getLastPixels(ILcom/oneplus/screenshot/longshot/cache/BitmapCache;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .registers 6
    .param p1, "offset"    # I
    .param p2, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getLast(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;IILandroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v0

    return-object v0
.end method

.method protected getStep()I
    .registers 2

    .prologue
    .line 96
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH_LAST:I

    packed-switch v0, :pswitch_data_22

    .line 104
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 98
    :pswitch_c
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 100
    :pswitch_13
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 102
    :pswitch_1a
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 96
    nop

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_1a
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

.method protected getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    const-string/jumbo v0, "StitchLast"

    return-object v0
.end method

.method getTraingBitmap(Z)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "islast"    # Z

    .prologue
    .line 409
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->getStitchLastTraceBitmapFolder()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/oneplus/screenshot/util/Utils;->getStitchLastTraceBitmap(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, "filepath":Ljava/lang/String;
    const-string/jumbo v7, "Longshot.StitchLastMatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " trace "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_57

    const-string/jumbo v6, "last"

    :goto_2d
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " path:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v0, 0x0

    .line 413
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_44
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    .local v5, "imagefile":Ljava/io/File;
    const/4 v4, 0x0

    .line 415
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileInputStream;

    .end local v4    # "fis":Ljava/io/FileInputStream;
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 416
    .local v4, "fis":Ljava/io/FileInputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 417
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_56} :catch_60
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_56} :catch_5b

    .line 424
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "imagefile":Ljava/io/File;
    :goto_56
    return-object v0

    .line 410
    :cond_57
    const-string/jumbo v6, "currnet"

    goto :goto_2d

    .line 420
    :catch_5b
    move-exception v2

    .line 421
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    .line 418
    .end local v2    # "e":Ljava/io/IOException;
    :catch_60
    move-exception v1

    .line 419
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_56
.end method

.method public run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;
    .registers 47
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .prologue
    .line 110
    const-string/jumbo v6, "StitchLastMatcher.match"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->isEnableStitchLastTraceBitmap()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 113
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTraingBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v37

    .line 114
    .local v37, "specialTracingBitmap":Landroid/graphics/Bitmap;
    if-eqz v37, :cond_20

    new-instance p1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .end local p1    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v6, v10}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    .line 115
    .restart local p1    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_20
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTraingBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v37

    .line 116
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/oneplus/screenshot/util/Utils;->getStitchLastTraceBitmap(Z)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTracingBitmapBottom(Ljava/lang/String;)I

    move-result v40

    .line 117
    .local v40, "tracingBitmapBottom":I
    if-eqz v37, :cond_40

    new-instance p2, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .end local p2    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move/from16 v2, v40

    invoke-direct {v0, v1, v6, v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    .line 122
    .end local v37    # "specialTracingBitmap":Landroid/graphics/Bitmap;
    .end local v40    # "tracingBitmapBottom":I
    .restart local p2    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    .line 123
    .local v38, "startTime":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    move/from16 v30, v0

    .line 124
    .local v30, "offsetLast":I
    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getCurrOffset(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)I

    move-result v29

    .line 125
    .local v29, "offsetCurr":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getLastPixels(ILcom/oneplus/screenshot/longshot/cache/BitmapCache;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v8

    .line 126
    .local v8, "lineLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getCurrPixels(ILcom/oneplus/screenshot/longshot/cache/BitmapCache;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v9

    .line 127
    .local v9, "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 128
    .local v18, "endTime":J
    const-string/jumbo v6, "Longshot.StitchLastMatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " get mapping Pixels cost:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v42, v18, v38

    move-wide/from16 v0, v42

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v7, 0x0

    .line 131
    .local v7, "pos":I
    const/4 v5, 0x0

    .line 132
    .local v5, "matched":I
    const/16 v33, 0x0

    .line 134
    .local v33, "same":Z
    const/16 v16, 0x0

    .line 135
    .local v16, "count":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    .line 140
    const/4 v15, 0x0

    .line 141
    .local v15, "checkpoint":I
    const/16 v26, 0x0

    .line 142
    .local v26, "maxRepeat":I
    array-length v6, v8

    new-array v0, v6, [Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;

    move-object/from16 v25, v0

    .line 143
    .local v25, "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_98
    move-object/from16 v0, v25

    array-length v6, v0

    move/from16 v0, v21

    if-ge v0, v6, :cond_b8

    .line 144
    new-instance v6, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;

    aget-object v10, v8, v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v6, v0, v1, v10}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;-><init>(Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;ILcom/oneplus/screenshot/longshot/bitmap/Pixels;)V

    aput-object v6, v25, v21

    .line 143
    add-int/lit8 v21, v21, 0x1

    goto :goto_98

    .line 156
    .local v17, "currentSimilarity":I
    .local v28, "nextPoint":I
    .local v31, "repeatCount":I
    :cond_af
    aget-object v6, v25, v15

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->setRepeatCount(I)V

    .line 165
    :cond_b6
    move/from16 v15, v28

    .line 146
    .end local v17    # "currentSimilarity":I
    .end local v28    # "nextPoint":I
    .end local v31    # "repeatCount":I
    :cond_b8
    move-object/from16 v0, v25

    array-length v6, v0

    if-ge v15, v6, :cond_10c

    .line 147
    const/4 v6, 0x0

    aget-object v6, v25, v6

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v6

    aget-object v10, v25, v15

    invoke-virtual {v10}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->diff(Ljava/lang/Object;)I

    move-result v17

    .line 148
    .restart local v17    # "currentSimilarity":I
    aget-object v6, v25, v15

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->setSimilarity(I)V

    .line 149
    const/16 v31, 0x0

    .line 150
    .restart local v31    # "repeatCount":I
    add-int/lit8 v28, v15, 0x1

    .line 151
    .restart local v28    # "nextPoint":I
    :cond_d9
    :goto_d9
    move-object/from16 v0, v25

    array-length v6, v0

    move/from16 v0, v28

    if-ge v0, v6, :cond_b6

    .line 152
    add-int/lit8 v31, v31, 0x1

    .line 153
    aget-object v6, v25, v15

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v6

    aget-object v10, v25, v28

    invoke-virtual {v10}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_af

    .line 154
    aget-object v6, v25, v28

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->setSimilarity(I)V

    .line 160
    add-int/lit8 v28, v28, 0x1

    .line 161
    move-object/from16 v0, v25

    array-length v6, v0

    move/from16 v0, v28

    if-ne v0, v6, :cond_d9

    .line 162
    aget-object v6, v25, v15

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->setRepeatCount(I)V

    goto :goto_d9

    .line 168
    .end local v17    # "currentSimilarity":I
    .end local v28    # "nextPoint":I
    .end local v31    # "repeatCount":I
    :cond_10c
    new-instance v36, Ljava/util/HashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v36, "similaritymap":Ljava/util/HashMap;
    const/16 v21, 0x0

    :goto_113
    move-object/from16 v0, v25

    array-length v6, v0

    move/from16 v0, v21

    if-ge v0, v6, :cond_1cc

    .line 170
    new-instance v35, Ljava/lang/StringBuffer;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v35, "similarity":Ljava/lang/StringBuffer;
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_121
    aget-object v6, v25, v21

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getSimilarity()I

    move-result v6

    move/from16 v0, v22

    if-ge v0, v6, :cond_136

    .line 172
    const-string/jumbo v6, "-"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    add-int/lit8 v22, v22, 0xa

    goto :goto_121

    .line 175
    :cond_136
    aget-object v6, v25, v21

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getSimilarity()I

    move-result v24

    .line 176
    .local v24, "key":I
    aget-object v6, v25, v21

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_174

    .line 177
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b8

    .line 178
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v11, v25, v21

    invoke-virtual {v11}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getRepeatCount()I

    move-result v11

    add-int/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_174
    :goto_174
    if-eqz v36, :cond_1b4

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b4

    .line 185
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1b4

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move/from16 v0, v26

    if-le v6, v0, :cond_1b4

    .line 186
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 169
    :cond_1b4
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_113

    .line 180
    :cond_1b8
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-object v10, v25, v21

    invoke-virtual {v10}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getRepeatCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_174

    .line 191
    .end local v22    # "j":I
    .end local v24    # "key":I
    .end local v35    # "similarity":Ljava/lang/StringBuffer;
    :cond_1cc
    mul-int/lit8 v6, v26, 0x64

    move-object/from16 v0, v25

    array-length v10, v0

    div-int v32, v6, v10

    .line 192
    .local v32, "repeatrate":I
    const-string/jumbo v6, "Longshot.StitchLastMatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "repeat rate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v32

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/16 v23, 0x0

    .local v23, "k":I
    :goto_1f1
    array-length v6, v8

    move/from16 v0, v23

    if-ge v0, v6, :cond_28f

    .line 235
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v20, "fristCheckList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;>;"
    const/16 v27, 0x0

    .line 237
    .local v27, "minRepeatCount":I
    const/16 v6, 0x3c

    move/from16 v0, v32

    if-le v0, v6, :cond_279

    .line 238
    move/from16 v22, v23

    .restart local v22    # "j":I
    :goto_205
    move-object/from16 v0, v25

    array-length v6, v0

    move/from16 v0, v22

    if-ge v0, v6, :cond_279

    .line 239
    aget-object v6, v25, v22

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getSimilarity()I

    move-result v34

    .line 240
    .local v34, "similarity":I
    const/16 v31, 0x0

    .line 241
    .restart local v31    # "repeatCount":I
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24b

    .line 242
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v31

    .line 247
    :goto_230
    if-lez v27, :cond_276

    .line 248
    move/from16 v0, v31

    move/from16 v1, v27

    if-ge v0, v1, :cond_268

    .line 249
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 250
    aget-object v6, v25, v22

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    move/from16 v27, v31

    .line 238
    :cond_244
    :goto_244
    move-object/from16 v0, p0

    iget v6, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mStep:I

    add-int v22, v22, v6

    goto :goto_205

    .line 244
    :cond_24b
    const-string/jumbo v6, "Longshot.StitchLastMatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "get repeatCount fail at:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_230

    .line 252
    :cond_268
    move/from16 v0, v31

    move/from16 v1, v27

    if-ne v0, v1, :cond_244

    .line 253
    aget-object v6, v25, v22

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_244

    .line 256
    :cond_276
    move/from16 v27, v31

    goto :goto_244

    .line 267
    .end local v22    # "j":I
    .end local v31    # "repeatCount":I
    .end local v34    # "similarity":I
    :cond_279
    const/16 v21, 0x0

    :goto_27b
    array-length v6, v9

    array-length v10, v8

    sub-int v10, v10, v23

    sub-int/2addr v6, v10

    move/from16 v0, v21

    if-ge v0, v6, :cond_28d

    .line 268
    if-eqz v33, :cond_32d

    .line 269
    array-length v6, v8

    sub-int v5, v6, v23

    .line 270
    add-int v6, v21, v5

    add-int/lit8 v7, v6, -0x1

    .line 320
    :cond_28d
    if-eqz v33, :cond_3b9

    .line 325
    .end local v20    # "fristCheckList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;>;"
    .end local v27    # "minRepeatCount":I
    :cond_28f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 326
    const-string/jumbo v6, "Longshot.StitchLastMatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " matched cost:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v42, v18, v38

    move-wide/from16 v0, v42

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 328
    const-string/jumbo v6, "StitchLastMatcher.data.init"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    .line 330
    new-instance v4, Lcom/oneplus/screenshot/longshot/match/MatchData;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-direct {v4, v6, v10}, Lcom/oneplus/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    .line 331
    .local v4, "data":Lcom/oneplus/screenshot/longshot/match/MatchData;
    add-int/lit8 v6, v5, -0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v11}, Lcom/oneplus/screenshot/longshot/match/MatchData;->init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZLcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V

    .line 332
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 333
    const-string/jumbo v6, "Longshot.StitchLastMatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " data.init cost:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v42, v18, v38

    move-wide/from16 v0, v42

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 336
    const-string/jumbo v6, "Longshot.StitchLastMatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "matched pos:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " matched:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " count:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-object v4

    .line 273
    .end local v4    # "data":Lcom/oneplus/screenshot/longshot/match/MatchData;
    .restart local v20    # "fristCheckList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;>;"
    .restart local v27    # "minRepeatCount":I
    :cond_32d
    const/16 v33, 0x1

    .line 277
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "checkItem$iterator":Ljava/util/Iterator;
    :cond_333
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;

    .line 278
    .local v13, "checkItem":Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;
    invoke-virtual {v13}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getIndex()I

    move-result v12

    .line 279
    .local v12, "checkIndex":I
    invoke-virtual {v13}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v6

    add-int v10, v12, v21

    sub-int v10, v10, v23

    aget-object v10, v9, v10

    invoke-virtual {v6, v10}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_333

    .line 280
    const/16 v33, 0x0

    .line 282
    add-int/lit8 v16, v16, 0x1

    .line 284
    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->setChecked(Z)V

    .line 291
    .end local v12    # "checkIndex":I
    .end local v13    # "checkItem":Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;
    :cond_35b
    if-eqz v33, :cond_380

    .line 292
    move/from16 v22, v23

    .restart local v22    # "j":I
    :goto_35f
    array-length v6, v8

    move/from16 v0, v22

    if-ge v0, v6, :cond_380

    .line 294
    aget-object v6, v25, v22

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getChecked()Z

    move-result v6

    if-nez v6, :cond_3ac

    .line 295
    aget-object v6, v25, v22

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v6

    add-int v10, v22, v21

    sub-int v10, v10, v23

    aget-object v10, v9, v10

    invoke-virtual {v6, v10}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3ac

    .line 296
    const/16 v33, 0x0

    .line 305
    .end local v22    # "j":I
    :cond_380
    if-eqz v33, :cond_397

    .line 306
    array-length v6, v8

    add-int/lit8 v22, v6, -0x1

    .line 307
    .restart local v22    # "j":I
    aget-object v6, v8, v22

    add-int v10, v21, v22

    sub-int v10, v10, v23

    aget-object v10, v9, v10

    invoke-virtual {v6, v10}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_395

    .line 308
    const/16 v33, 0x0

    .line 311
    :cond_395
    add-int/lit8 v16, v16, 0x1

    .line 315
    .end local v22    # "j":I
    :cond_397
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_39b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;

    .line 316
    .restart local v13    # "checkItem":Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;
    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->setChecked(Z)V

    goto :goto_39b

    .line 301
    .end local v13    # "checkItem":Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;
    .restart local v22    # "j":I
    :cond_3ac
    add-int/lit8 v16, v16, 0x1

    .line 292
    move-object/from16 v0, p0

    iget v6, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mStep:I

    add-int v22, v22, v6

    goto :goto_35f

    .line 267
    .end local v22    # "j":I
    :cond_3b5
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_27b

    .line 231
    .end local v14    # "checkItem$iterator":Ljava/util/Iterator;
    :cond_3b9
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1f1
.end method
