.class public Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;
.super Lcom/oneplus/screenshot/longshot/match/BaseMatcher;
.source "StitchLastMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    }
.end annotation


# static fields
.field private static final FILE_PREFIX:Ljava/lang/String; = "tracing"

.field private static final TAG:Ljava/lang/String; = "Longshot.StitchLastMatcher"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    .line 41
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->levelStitchLast:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 59
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_5:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    .line 53
    goto :goto_0

    .line 55
    :cond_3
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    .line 57
    nop

    .line 64
    :goto_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_LAST_LAST_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    .line 66
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_LAST_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetCurr:I

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StitchLastMatcher LEVEL_STITCH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/screenshot/longshot/util/Configs;->levelStitchLast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mOffsetCurr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetCurr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mOffsetLast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.StitchLastMatcher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method private getTracingBitmapBottom(Ljava/lang/String;)I
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .line 441
    const-string v0, "Longshot.StitchLastMatcher"

    const/4 v1, 0x0

    .line 442
    .local v1, "bottom":I
    const-string v2, "_"

    .line 443
    .local v2, "divider":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "data":[Ljava/lang/String;
    :try_start_0
    array-length v4, v3

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    .line 446
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 450
    :cond_0
    goto :goto_0

    .line 448
    :catch_0
    move-exception v4

    .line 449
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "bottom value does exsit"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTracingBitmapBottom :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return v1
.end method

.method public static mergeBitmap_TB(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "topBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "bottomBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isBaseMax"    # Z

    .line 405
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p1, :cond_6

    .line 406
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 410
    :cond_0
    const/4 v1, 0x0

    .line 411
    .local v1, "width":I
    if-eqz p2, :cond_2

    .line 412
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    :goto_0
    move v1, v2

    goto :goto_2

    .line 414
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    :goto_1
    move v1, v2

    .line 416
    :goto_2
    move-object v2, p0

    .line 417
    .local v2, "tempBitmapT":Landroid/graphics/Bitmap;
    move-object v3, p1

    .line 419
    .local v3, "tempBitmapB":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eq v4, v1, :cond_4

    .line 420
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {p0, v1, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3

    .line 421
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eq v4, v1, :cond_5

    .line 422
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {p1, v1, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 425
    :cond_5
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 427
    .local v4, "height":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 428
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 430
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v6, v6, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 431
    .local v8, "topRect":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v9, v6, v6, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 433
    .local v9, "bottomRect":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v10, v6, v11, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v10

    .line 435
    .local v6, "bottomRectT":Landroid/graphics/Rect;
    invoke-virtual {v7, v2, v8, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 436
    invoke-virtual {v7, v3, v9, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 437
    return-object v5

    .line 407
    .end local v1    # "width":I
    .end local v2    # "tempBitmapT":Landroid/graphics/Bitmap;
    .end local v3    # "tempBitmapB":Landroid/graphics/Bitmap;
    .end local v4    # "height":I
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bottomRectT":Landroid/graphics/Rect;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "topRect":Landroid/graphics/Rect;
    .end local v9    # "bottomRect":Landroid/graphics/Rect;
    :cond_6
    :goto_4
    const-string v1, "Longshot.StitchLastMatcher"

    const-string v2, "incorrect bitmaps"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-object v0
.end method


# virtual methods
.method protected canDump()Z
    .locals 1

    .line 90
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->shouldDumpForTrace()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .locals 5

    .line 83
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 84
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 85
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/oneplus/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 86
    return-void
.end method

.method protected varargs getCurr(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;II[Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 22
    .param p1, "dumper"    # Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
    .param p2, "offset"    # I
    .param p3, "cut"    # I
    .param p4, "bitmaps"    # [Landroid/graphics/Bitmap;

    .line 348
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static/range {p4 .. p4}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth([Landroid/graphics/Bitmap;)I

    move-result v3

    .line 349
    .local v3, "w":I
    invoke-static/range {p4 .. p4}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight([Landroid/graphics/Bitmap;)I

    move-result v4

    sub-int v4, v4, p3

    .line 350
    .local v4, "h":I
    const/4 v5, 0x0

    .line 352
    .local v5, "i":I
    move v6, v4

    .line 353
    .local v6, "size":I
    new-array v7, v6, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 354
    .local v7, "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    array-length v8, v2

    const/4 v9, 0x0

    move v10, v5

    move v5, v9

    .end local v5    # "i":I
    .local v10, "i":I
    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v17, v2, v5

    .line 355
    .local v17, "bitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    move v15, v10

    move v10, v11

    .local v10, "y":I
    .local v15, "i":I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-ge v10, v11, :cond_0

    if-ge v15, v6, :cond_0

    .line 356
    add-int/lit8 v18, v15, 0x1

    .end local v15    # "i":I
    .local v18, "i":I
    new-instance v19, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    iget v11, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLeftSideOffset:I

    add-int/lit8 v13, v11, 0x0

    iget v11, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mRightSideOffset:I

    sub-int v11, v3, v11

    iget v12, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLeftSideOffset:I

    sub-int v16, v11, v12

    const/16 v20, 0x1

    move-object/from16 v11, v19

    move-object/from16 v12, v17

    move v14, v10

    move/from16 v21, v15

    .local v21, "i":I
    move/from16 v15, v16

    move/from16 v16, v20

    invoke-direct/range {v11 .. v16}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v19, v7, v21

    .line 355
    .end local v21    # "i":I
    add-int/lit8 v10, v10, 0x1

    move/from16 v15, v18

    goto :goto_1

    .end local v18    # "i":I
    .restart local v15    # "i":I
    :cond_0
    move/from16 v21, v15

    .line 354
    .end local v10    # "y":I
    .end local v15    # "i":I
    .end local v17    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v21    # "i":I
    add-int/lit8 v5, v5, 0x1

    move/from16 v10, v21

    goto :goto_0

    .line 360
    .end local v21    # "i":I
    .local v10, "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 361
    array-length v5, v7

    invoke-virtual {v1, v7, v9, v5}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    .line 363
    aget-object v5, v2, v9

    const/4 v8, 0x1

    aget-object v9, v2, v8

    invoke-static {v5, v9, v8}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mergeBitmap_TB(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 364
    .local v5, "currentBitmapFull":Landroid/graphics/Bitmap;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tracing_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_current"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 367
    .end local v5    # "currentBitmapFull":Landroid/graphics/Bitmap;
    :cond_2
    return-object v7
.end method

.method protected getCurrOffset(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)I
    .locals 1
    .param p1, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 379
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getCurrPixels(ILcom/oneplus/screenshot/longshot/cache/BitmapCache;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 5
    .param p1, "offset"    # I
    .param p2, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 375
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
    .locals 18
    .param p1, "dumper"    # Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
    .param p2, "offset"    # I
    .param p3, "max"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .line 323
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 324
    .local v2, "w":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 325
    .local v3, "h":I
    move/from16 v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 326
    .local v5, "size":I
    sub-int v6, v3, v5

    move/from16 v7, p2

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v7, v6

    .end local p2    # "offset":I
    .local v7, "offset":I
    iput v6, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    .line 327
    new-array v6, v5, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 328
    .local v6, "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    sub-int v8, v3, v5

    sub-int/2addr v8, v7

    .line 329
    .local v8, "pos":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/4 v10, 0x0

    if-ge v9, v5, :cond_0

    .line 330
    new-instance v17, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    iget v11, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLeftSideOffset:I

    add-int/lit8 v13, v11, 0x0

    add-int v14, v9, v8

    iget v10, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLeftSideOffset:I

    sub-int v10, v2, v10

    iget v11, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mRightSideOffset:I

    sub-int v15, v10, v11

    const/16 v16, 0x1

    move-object/from16 v11, v17

    move-object/from16 v12, p4

    invoke-direct/range {v11 .. v16}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v17, v6, v9

    .line 329
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 334
    .end local v9    # "i":I
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " getLast pos start:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " pos end:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v11, v8, v5

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " bitmap h:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "Longshot.StitchLastMatcher"

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    if-eqz v1, :cond_1

    .line 339
    const-string v9, "tracing_0_last"

    move-object/from16 v11, p4

    invoke-virtual {v1, v11, v9}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 341
    array-length v9, v6

    invoke-virtual {v1, v6, v10, v9}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    goto :goto_1

    .line 337
    :cond_1
    move-object/from16 v11, p4

    .line 343
    :goto_1
    return-object v6
.end method

.method protected getLastPixels(ILcom/oneplus/screenshot/longshot/cache/BitmapCache;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 371
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getLast(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;IILandroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v0

    return-object v0
.end method

.method protected getStep()I
    .locals 2

    .line 95
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->levelStitchLast:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 103
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 97
    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 99
    :cond_1
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 101
    :cond_2
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 78
    const-string v0, "StitchLast"

    return-object v0
.end method

.method getTraingBitmap(Z)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "islast"    # Z

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->getStitchLastTraceBitmapFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oneplus/screenshot/util/Utils;->getStitchLastTraceBitmap(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "filepath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " trace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "last"

    goto :goto_0

    :cond_0
    const-string v2, "currnet"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.StitchLastMatcher"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v1, 0x0

    .line 388
    .local v1, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    .local v2, "imagefile":Ljava/io/File;
    const/4 v3, 0x0

    .line 390
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 391
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v1, v4

    .line 392
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "imagefile":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 395
    :catch_0
    move-exception v2

    .line 396
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 393
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 394
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 397
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    nop

    .line 399
    :goto_2
    return-object v1
.end method

.method public run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;
    .locals 32
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 109
    move-object/from16 v0, p0

    const-string v1, "StitchLastMatcher.match"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->isEnableStitchLastTraceBitmap()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 112
    invoke-virtual {v0, v3}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTraingBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 113
    .local v1, "specialTracingBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    new-instance v4, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v4, v1, v2, v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    .line 114
    .end local p1    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .local v4, "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :goto_0
    invoke-virtual {v0, v2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTraingBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 115
    invoke-static {v2}, Lcom/oneplus/screenshot/util/Utils;->getStitchLastTraceBitmap(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTracingBitmapBottom(Ljava/lang/String;)I

    move-result v5

    .line 116
    .local v5, "tracingBitmapBottom":I
    if-eqz v1, :cond_1

    new-instance v6, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v6, v1, v2, v5}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    goto :goto_1

    :cond_1
    move-object/from16 v6, p2

    .end local p2    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .local v6, "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :goto_1
    goto :goto_2

    .line 111
    .end local v1    # "specialTracingBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .end local v5    # "tracingBitmapBottom":I
    .end local v6    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local p1    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local p2    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_2
    move-object/from16 v4, p1

    move-object/from16 v6, p2

    .line 121
    .end local p1    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .end local p2    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local v4    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local v6    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 122
    .local v7, "startTime":J
    iget v1, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    .line 123
    .local v1, "offsetLast":I
    invoke-virtual {v0, v4}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getCurrOffset(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)I

    move-result v5

    .line 124
    .local v5, "offsetCurr":I
    invoke-virtual {v0, v1, v4}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getLastPixels(ILcom/oneplus/screenshot/longshot/cache/BitmapCache;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v15

    .line 125
    .local v15, "lineLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    invoke-virtual {v0, v5, v6}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getCurrPixels(ILcom/oneplus/screenshot/longshot/cache/BitmapCache;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v14

    .line 126
    .local v14, "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 127
    .local v9, "endTime":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " get mapping Pixels cost:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v12, v9, v7

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "Longshot.StitchLastMatcher"

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v11, 0x0

    .line 130
    .local v11, "pos":I
    const/4 v12, 0x0

    .line 131
    .local v12, "matched":I
    const/16 v16, 0x0

    .line 133
    .local v16, "same":Z
    const/16 v17, 0x0

    .line 134
    .local v17, "count":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 139
    const/16 v18, 0x0

    .line 140
    .local v18, "checkpoint":I
    const/16 v19, 0x0

    .line 141
    .local v19, "maxRepeat":I
    array-length v3, v15

    new-array v3, v3, [Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;

    .line 142
    .local v3, "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    const/16 v21, 0x0

    move/from16 v2, v21

    .local v2, "i":I
    :goto_3
    move/from16 v21, v1

    .end local v1    # "offsetLast":I
    .local v21, "offsetLast":I
    array-length v1, v3

    if-ge v2, v1, :cond_3

    .line 143
    new-instance v1, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;

    move-object/from16 p1, v4

    .end local v4    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local p1    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    aget-object v4, v15, v2

    invoke-direct {v1, v0, v2, v4}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;-><init>(Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;ILcom/oneplus/screenshot/longshot/bitmap/Pixels;)V

    aput-object v1, v3, v2

    .line 142
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, p1

    move/from16 v1, v21

    goto :goto_3

    .end local p1    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local v4    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_3
    move-object/from16 p1, v4

    .end local v4    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local p1    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    move/from16 v1, v18

    .line 145
    .end local v2    # "i":I
    .end local v18    # "checkpoint":I
    .local v1, "checkpoint":I
    :goto_4
    array-length v2, v3

    if-ge v1, v2, :cond_7

    .line 146
    const/4 v2, 0x0

    aget-object v4, v3, v2

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v2

    aget-object v4, v3, v1

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->diff(Ljava/lang/Object;)I

    move-result v2

    .line 147
    .local v2, "currentSimilarity":I
    aget-object v4, v3, v1

    invoke-virtual {v4, v2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->setSimilarity(I)V

    .line 148
    const/4 v4, 0x0

    .line 149
    .local v4, "repeatCount":I
    add-int/lit8 v18, v1, 0x1

    move/from16 v31, v18

    move/from16 v18, v4

    move/from16 v4, v31

    .line 150
    .local v4, "nextPoint":I
    .local v18, "repeatCount":I
    :goto_5
    move/from16 p2, v5

    .end local v5    # "offsetCurr":I
    .local p2, "offsetCurr":I
    array-length v5, v3

    if-ge v4, v5, :cond_6

    .line 151
    add-int/lit8 v5, v18, 0x1

    .line 152
    .end local v18    # "repeatCount":I
    .local v5, "repeatCount":I
    aget-object v18, v3, v1

    move-object/from16 v23, v6

    .end local v6    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .local v23, "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v6

    aget-object v18, v3, v4

    move-wide/from16 v24, v9

    .end local v9    # "endTime":J
    .local v24, "endTime":J
    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 153
    aget-object v6, v3, v4

    invoke-virtual {v6, v2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->setSimilarity(I)V

    .line 159
    add-int/lit8 v4, v4, 0x1

    .line 160
    array-length v6, v3

    if-ne v4, v6, :cond_4

    .line 161
    aget-object v6, v3, v1

    invoke-virtual {v6, v5}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->setRepeatCount(I)V

    .line 150
    :cond_4
    move/from16 v18, v5

    move-object/from16 v6, v23

    move-wide/from16 v9, v24

    move/from16 v5, p2

    goto :goto_5

    .line 155
    :cond_5
    aget-object v6, v3, v1

    invoke-virtual {v6, v5}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->setRepeatCount(I)V

    .line 156
    move/from16 v18, v5

    goto :goto_6

    .line 150
    .end local v5    # "repeatCount":I
    .end local v23    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .end local v24    # "endTime":J
    .restart local v6    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local v9    # "endTime":J
    .restart local v18    # "repeatCount":I
    :cond_6
    move-object/from16 v23, v6

    move-wide/from16 v24, v9

    .line 164
    .end local v6    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .end local v9    # "endTime":J
    .restart local v23    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local v24    # "endTime":J
    :goto_6
    move v1, v4

    .line 165
    .end local v2    # "currentSimilarity":I
    .end local v4    # "nextPoint":I
    .end local v18    # "repeatCount":I
    move/from16 v5, p2

    move-object/from16 v6, v23

    move-wide/from16 v9, v24

    goto :goto_4

    .line 167
    .end local v23    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .end local v24    # "endTime":J
    .end local p2    # "offsetCurr":I
    .local v5, "offsetCurr":I
    .restart local v6    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local v9    # "endTime":J
    :cond_7
    move/from16 p2, v5

    move-object/from16 v23, v6

    move-wide/from16 v24, v9

    .end local v5    # "offsetCurr":I
    .end local v6    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .end local v9    # "endTime":J
    .restart local v23    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local v24    # "endTime":J
    .restart local p2    # "offsetCurr":I
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 168
    .local v2, "similaritymap":Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    move/from16 v5, v19

    .end local v19    # "maxRepeat":I
    .local v4, "i":I
    .local v5, "maxRepeat":I
    :goto_7
    array-length v6, v3

    if-ge v4, v6, :cond_c

    .line 169
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 170
    .local v6, "similarity":Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_8
    aget-object v10, v3, v4

    invoke-virtual {v10}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->getSimilarity()I

    move-result v10

    if-ge v9, v10, :cond_8

    .line 171
    const-string v10, "-"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    add-int/lit8 v9, v9, 0xa

    goto :goto_8

    .line 174
    .end local v9    # "j":I
    :cond_8
    aget-object v9, v3, v4

    invoke-virtual {v9}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->getSimilarity()I

    move-result v9

    .line 175
    .local v9, "key":I
    aget-object v10, v3, v4

    invoke-virtual {v10}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->getRepeatCount()I

    move-result v10

    if-lez v10, :cond_a

    .line 176
    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_9

    .line 177
    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    aget-object v18, v3, v4

    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->getRepeatCount()I

    move-result v18

    add-int v10, v10, v18

    invoke-virtual {v2, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_9

    .line 179
    :cond_9
    aget-object v10, v3, v4

    invoke-virtual {v10}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->getRepeatCount()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 183
    :cond_a
    :goto_9
    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_b

    .line 184
    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-le v10, v5, :cond_b

    .line 185
    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 168
    .end local v6    # "similarity":Ljava/lang/StringBuffer;
    .end local v9    # "key":I
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 190
    .end local v4    # "i":I
    :cond_c
    mul-int/lit8 v4, v5, 0x64

    array-length v6, v3

    div-int/2addr v4, v6

    .line 191
    .local v4, "repeatrate":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "repeat rate "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PERF] Stitch last check "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v15

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v14

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_a
    array-length v9, v15

    if-ge v6, v9, :cond_21

    .line 196
    sget-boolean v9, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    if-eqz v9, :cond_d

    .line 197
    const/4 v9, 0x0

    .line 198
    .end local v12    # "matched":I
    .local v9, "matched":I
    move/from16 v18, v1

    move-object/from16 v27, v2

    move-object/from16 v26, v3

    move/from16 v19, v4

    move/from16 v30, v5

    move v1, v9

    move v2, v11

    move/from16 v4, v16

    move/from16 v3, v17

    goto/16 :goto_17

    .line 203
    .end local v9    # "matched":I
    .restart local v12    # "matched":I
    :cond_d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v9, "fristCheckList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;>;"
    const/4 v10, 0x0

    .line 205
    .local v10, "minRepeatCount":I
    move/from16 v18, v1

    .end local v1    # "checkpoint":I
    .local v18, "checkpoint":I
    const/16 v1, 0x3c

    if-le v4, v1, :cond_13

    .line 206
    move v1, v6

    .local v1, "j":I
    :goto_b
    move/from16 v19, v4

    .end local v4    # "repeatrate":I
    .local v19, "repeatrate":I
    array-length v4, v3

    if-ge v1, v4, :cond_12

    .line 207
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->getSimilarity()I

    move-result v4

    .line 208
    .local v4, "similarity":I
    const/16 v26, 0x0

    .line 209
    .local v26, "repeatCount":I
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v27

    if-ltz v27, :cond_e

    .line 210
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v26

    move-object/from16 v27, v2

    move/from16 v28, v4

    move/from16 v2, v26

    goto :goto_c

    .line 212
    :cond_e
    move-object/from16 v27, v2

    .end local v2    # "similaritymap":Landroid/util/SparseIntArray;
    .local v27, "similaritymap":Landroid/util/SparseIntArray;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v4

    .end local v4    # "similarity":I
    .local v28, "similarity":I
    const-string v4, "get repeatCount fail at:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v2, v26

    .line 215
    .end local v26    # "repeatCount":I
    .local v2, "repeatCount":I
    :goto_c
    if-lez v10, :cond_10

    .line 216
    if-ge v2, v10, :cond_f

    .line 217
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 218
    aget-object v4, v3, v1

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    move v4, v2

    move v10, v4

    .end local v10    # "minRepeatCount":I
    .local v4, "minRepeatCount":I
    goto :goto_d

    .line 220
    .end local v4    # "minRepeatCount":I
    .restart local v10    # "minRepeatCount":I
    :cond_f
    if-ne v2, v10, :cond_11

    .line 221
    aget-object v4, v3, v1

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 224
    :cond_10
    move v4, v2

    move v10, v4

    .line 206
    .end local v2    # "repeatCount":I
    .end local v28    # "similarity":I
    :cond_11
    :goto_d
    iget v2, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mStep:I

    add-int/2addr v1, v2

    move/from16 v4, v19

    move-object/from16 v2, v27

    goto :goto_b

    .end local v27    # "similaritymap":Landroid/util/SparseIntArray;
    .local v2, "similaritymap":Landroid/util/SparseIntArray;
    :cond_12
    move-object/from16 v27, v2

    .end local v2    # "similaritymap":Landroid/util/SparseIntArray;
    .restart local v27    # "similaritymap":Landroid/util/SparseIntArray;
    goto :goto_e

    .line 205
    .end local v1    # "j":I
    .end local v19    # "repeatrate":I
    .end local v27    # "similaritymap":Landroid/util/SparseIntArray;
    .restart local v2    # "similaritymap":Landroid/util/SparseIntArray;
    .local v4, "repeatrate":I
    :cond_13
    move-object/from16 v27, v2

    move/from16 v19, v4

    .line 235
    .end local v2    # "similaritymap":Landroid/util/SparseIntArray;
    .end local v4    # "repeatrate":I
    .restart local v19    # "repeatrate":I
    .restart local v27    # "similaritymap":Landroid/util/SparseIntArray;
    :goto_e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, v14

    array-length v4, v15

    sub-int/2addr v4, v6

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_1f

    .line 237
    sget-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    if-eqz v2, :cond_14

    .line 238
    const/4 v2, 0x0

    .line 239
    .end local v12    # "matched":I
    .local v2, "matched":I
    move v12, v2

    move-object/from16 v26, v3

    move/from16 v30, v5

    const/4 v4, 0x0

    goto/16 :goto_16

    .line 242
    .end local v2    # "matched":I
    .restart local v12    # "matched":I
    :cond_14
    if-eqz v16, :cond_15

    .line 243
    array-length v2, v15

    sub-int/2addr v2, v6

    .line 244
    .end local v12    # "matched":I
    .restart local v2    # "matched":I
    add-int v4, v1, v2

    const/4 v12, 0x1

    sub-int/2addr v4, v12

    .line 245
    .end local v11    # "pos":I
    .local v4, "pos":I
    move v12, v2

    move-object/from16 v26, v3

    move v11, v4

    move/from16 v30, v5

    const/4 v4, 0x0

    goto/16 :goto_16

    .line 247
    .end local v2    # "matched":I
    .end local v4    # "pos":I
    .restart local v11    # "pos":I
    .restart local v12    # "matched":I
    :cond_15
    const/4 v2, 0x1

    .line 251
    .end local v16    # "same":Z
    .local v2, "same":Z
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move/from16 v26, v2

    .end local v2    # "same":Z
    .local v26, "same":Z
    move-object/from16 v2, v16

    check-cast v2, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;

    .line 252
    .local v2, "checkItem":Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->getIndex()I

    move-result v16

    .line 253
    .local v16, "checkIndex":I
    move-object/from16 v28, v4

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v4

    add-int v29, v16, v1

    sub-int v29, v29, v6

    move/from16 v30, v5

    .end local v5    # "maxRepeat":I
    .local v30, "maxRepeat":I
    aget-object v5, v14, v29

    invoke-virtual {v4, v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 254
    const/4 v4, 0x0

    .line 256
    .end local v26    # "same":Z
    .local v4, "same":Z
    add-int/lit8 v17, v17, 0x1

    .line 258
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->setChecked(Z)V

    .line 259
    goto :goto_11

    .line 261
    .end local v2    # "checkItem":Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    .end local v4    # "same":Z
    .end local v16    # "checkIndex":I
    .restart local v26    # "same":Z
    :cond_16
    move/from16 v2, v26

    move-object/from16 v4, v28

    move/from16 v5, v30

    goto :goto_10

    .line 251
    .end local v26    # "same":Z
    .end local v30    # "maxRepeat":I
    .local v2, "same":Z
    .restart local v5    # "maxRepeat":I
    :cond_17
    move/from16 v26, v2

    move/from16 v30, v5

    .end local v2    # "same":Z
    .end local v5    # "maxRepeat":I
    .restart local v26    # "same":Z
    .restart local v30    # "maxRepeat":I
    move/from16 v4, v26

    .line 265
    .end local v26    # "same":Z
    .restart local v4    # "same":Z
    :goto_11
    if-eqz v4, :cond_1b

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Step Size : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mStep:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    move v2, v6

    .local v2, "j":I
    :goto_12
    array-length v5, v15

    if-ge v2, v5, :cond_1a

    .line 269
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->getChecked()Z

    move-result v5

    if-nez v5, :cond_18

    .line 270
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v5

    add-int v16, v2, v1

    sub-int v16, v16, v6

    move-object/from16 v26, v3

    .end local v3    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    .local v26, "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    aget-object v3, v14, v16

    invoke-virtual {v5, v3}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 271
    const/4 v4, 0x0

    .line 272
    goto :goto_13

    .line 269
    .end local v26    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    .restart local v3    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    :cond_18
    move-object/from16 v26, v3

    .line 276
    .end local v3    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    .restart local v26    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    :cond_19
    add-int/lit8 v17, v17, 0x1

    .line 267
    iget v3, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mStep:I

    add-int/2addr v2, v3

    move-object/from16 v3, v26

    goto :goto_12

    .end local v26    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    .restart local v3    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    :cond_1a
    move-object/from16 v26, v3

    .end local v3    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    .restart local v26    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    goto :goto_13

    .line 265
    .end local v2    # "j":I
    .end local v26    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    .restart local v3    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    :cond_1b
    move-object/from16 v26, v3

    .line 280
    .end local v3    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    .restart local v26    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    :goto_13
    if-eqz v4, :cond_1d

    .line 281
    array-length v2, v15

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 282
    .restart local v2    # "j":I
    aget-object v5, v15, v2

    add-int v16, v1, v2

    sub-int v16, v16, v6

    aget-object v3, v14, v16

    invoke-virtual {v5, v3}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 283
    const/4 v4, 0x0

    .line 286
    :cond_1c
    add-int/lit8 v17, v17, 0x1

    move/from16 v16, v4

    goto :goto_14

    .line 280
    .end local v2    # "j":I
    :cond_1d
    move/from16 v16, v4

    .line 290
    .end local v4    # "same":Z
    .local v16, "same":Z
    :goto_14
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;

    .line 291
    .local v3, "checkItem":Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->setChecked(Z)V

    .line 292
    .end local v3    # "checkItem":Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    goto :goto_15

    .line 235
    :cond_1e
    const/4 v4, 0x0

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v26

    move/from16 v5, v30

    goto/16 :goto_f

    .end local v26    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    .end local v30    # "maxRepeat":I
    .local v3, "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    .restart local v5    # "maxRepeat":I
    :cond_1f
    move-object/from16 v26, v3

    move/from16 v30, v5

    const/4 v4, 0x0

    .line 295
    .end local v1    # "i":I
    .end local v3    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    .end local v5    # "maxRepeat":I
    .restart local v26    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    .restart local v30    # "maxRepeat":I
    :goto_16
    if-eqz v16, :cond_20

    .line 296
    move v2, v11

    move v1, v12

    move/from16 v4, v16

    move/from16 v3, v17

    goto :goto_17

    .line 194
    .end local v9    # "fristCheckList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;>;"
    .end local v10    # "minRepeatCount":I
    :cond_20
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v18

    move/from16 v4, v19

    move-object/from16 v3, v26

    move-object/from16 v2, v27

    move/from16 v5, v30

    goto/16 :goto_a

    .end local v18    # "checkpoint":I
    .end local v19    # "repeatrate":I
    .end local v26    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    .end local v27    # "similaritymap":Landroid/util/SparseIntArray;
    .end local v30    # "maxRepeat":I
    .local v1, "checkpoint":I
    .local v2, "similaritymap":Landroid/util/SparseIntArray;
    .restart local v3    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    .local v4, "repeatrate":I
    .restart local v5    # "maxRepeat":I
    :cond_21
    move/from16 v18, v1

    move-object/from16 v27, v2

    move-object/from16 v26, v3

    move/from16 v19, v4

    move/from16 v30, v5

    .end local v1    # "checkpoint":I
    .end local v2    # "similaritymap":Landroid/util/SparseIntArray;
    .end local v3    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    .end local v4    # "repeatrate":I
    .end local v5    # "maxRepeat":I
    .restart local v18    # "checkpoint":I
    .restart local v19    # "repeatrate":I
    .restart local v26    # "mLastPattern":[Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
    .restart local v27    # "similaritymap":Landroid/util/SparseIntArray;
    .restart local v30    # "maxRepeat":I
    move v2, v11

    move v1, v12

    move/from16 v4, v16

    move/from16 v3, v17

    .line 300
    .end local v6    # "k":I
    .end local v11    # "pos":I
    .end local v12    # "matched":I
    .end local v16    # "same":Z
    .end local v17    # "count":I
    .local v1, "matched":I
    .local v2, "pos":I
    .local v3, "count":I
    .local v4, "same":Z
    :goto_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 301
    .end local v24    # "endTime":J
    .local v5, "endTime":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[PERF]matched cost:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v5, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 303
    const-string v9, "StitchLastMatcher.data.init"

    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 305
    new-instance v9, Lcom/oneplus/screenshot/longshot/match/MatchData;

    iget-object v10, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    iget v11, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-direct {v9, v10, v11}, Lcom/oneplus/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    move-object/from16 v17, v9

    .line 306
    .local v17, "data":Lcom/oneplus/screenshot/longshot/match/MatchData;
    add-int/lit8 v11, v1, -0x1

    const/16 v16, 0x1

    iget-object v12, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    move v10, v1

    move-object/from16 v20, v12

    move v12, v2

    move-object v0, v13

    move-object v13, v15

    move-object/from16 v22, v14

    .end local v14    # "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .local v22, "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    move-object/from16 v24, v15

    .end local v15    # "lineLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .local v24, "lineLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    move/from16 v15, v16

    move-object/from16 v16, v20

    invoke-virtual/range {v9 .. v16}, Lcom/oneplus/screenshot/longshot/match/MatchData;->init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZLcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 308
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " data.init cost:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v5, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 311
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "matched pos:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " matched:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " count:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-object v17
.end method
