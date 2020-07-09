.class public Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;
.super Lcom/oneplus/screenshot/longshot/match/BaseMatcher;
.source "StitchNextMatcher.java"


# static fields
.field private static final FILE_PREFIX:Ljava/lang/String; = "tracing"

.field private static final TAG:Ljava/lang/String; = "Longshot.StitchNextMatcher"


# instance fields
.field protected mExtendCurr:I

.field protected mExtendLast:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    .line 35
    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    .line 42
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->levelStitchNext:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 58
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    goto :goto_0

    .line 45
    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_5:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    .line 52
    goto :goto_0

    .line 55
    :cond_3
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    .line 56
    nop

    .line 61
    :goto_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->EXTEND_STITCH_NEXT_LAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    .line 62
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->EXTEND_STITCH_NEXT_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    .line 63
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_NEXT_LAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mOffsetLast:I

    .line 64
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_NEXT_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mOffsetCurr:I

    .line 65
    return-void
.end method

.method private getLines(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 16
    .param p1, "step"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "dumper"    # Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
    .param p6, "isCurr"    # Z

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 201
    .local v9, "w":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 202
    .local v10, "h":I
    move/from16 v1, p3

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 203
    .end local p3    # "size":I
    .local v11, "size":I
    new-array v12, v11, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 204
    .local v12, "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v1, 0x0

    move v13, v1

    .local v13, "i":I
    :goto_0
    if-ge v13, v11, :cond_1

    .line 205
    iget v1, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    mul-int/2addr v1, v13

    add-int v1, v1, p1

    .line 206
    .local v1, "y":I
    if-eqz p6, :cond_0

    .line 207
    add-int v1, v1, p2

    move v14, v1

    goto :goto_1

    .line 209
    :cond_0
    iget v2, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    mul-int/2addr v2, v11

    sub-int v2, v10, v2

    sub-int v2, v2, p2

    add-int/2addr v1, v2

    move v14, v1

    .line 212
    .end local v1    # "y":I
    .local v14, "y":I
    :goto_1
    new-instance v15, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    iget v1, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLeftSideOffset:I

    add-int/lit8 v3, v1, 0x0

    iget v1, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLeftSideOffset:I

    sub-int v1, v9, v1

    iget v2, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mRightSideOffset:I

    sub-int v5, v1, v2

    const/4 v6, 0x1

    move-object v1, v15

    move-object/from16 v2, p4

    move v4, v14

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v15, v12, v13

    .line 204
    .end local v14    # "y":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 216
    .end local v13    # "i":I
    :cond_1
    if-eqz v8, :cond_3

    .line 219
    if-nez p6, :cond_2

    .line 220
    const-string v1, "tracing_0_last"

    invoke-virtual {v8, v7, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_2

    .line 222
    :cond_2
    const-string v1, "tracing_0_current"

    invoke-virtual {v8, v7, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 226
    :cond_3
    :goto_2
    return-object v12
.end method

.method private getTracingBitmapBottom(Ljava/lang/String;)I
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .line 268
    const-string v0, "Longshot.StitchNextMatcher"

    const/4 v1, 0x0

    .line 269
    .local v1, "bottom":I
    const-string v2, "_"

    .line 270
    .local v2, "divider":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "data":[Ljava/lang/String;
    :try_start_0
    array-length v4, v3

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    .line 273
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 277
    :cond_0
    goto :goto_0

    .line 275
    :catch_0
    move-exception v4

    .line 276
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "bottom value does exsit"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
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

    .line 279
    return v1
.end method

.method public static mergeBitmap_TB(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "topBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "bottomBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isBaseMax"    # Z

    .line 232
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p1, :cond_6

    .line 233
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 237
    :cond_0
    const/4 v1, 0x0

    .line 238
    .local v1, "width":I
    if-eqz p2, :cond_2

    .line 239
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

    .line 241
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

    .line 243
    :goto_2
    move-object v2, p0

    .line 244
    .local v2, "tempBitmapT":Landroid/graphics/Bitmap;
    move-object v3, p1

    .line 246
    .local v3, "tempBitmapB":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eq v4, v1, :cond_4

    .line 247
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

    .line 248
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eq v4, v1, :cond_5

    .line 249
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

    .line 252
    :cond_5
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 254
    .local v4, "height":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 255
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 257
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v6, v6, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 258
    .local v8, "topRect":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v9, v6, v6, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 260
    .local v9, "bottomRect":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v10, v6, v11, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v10

    .line 262
    .local v6, "bottomRectT":Landroid/graphics/Rect;
    invoke-virtual {v7, v2, v8, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 263
    invoke-virtual {v7, v3, v9, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 264
    return-object v5

    .line 234
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
    const-string v1, "Longshot.StitchNextMatcher"

    const-string v2, "incorrect bitmaps"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-object v0
.end method


# virtual methods
.method protected canDump()Z
    .locals 1

    .line 84
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->shouldDumpForTraceNext()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .locals 5

    .line 77
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 78
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 79
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/oneplus/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 80
    return-void
.end method

.method protected getStep()I
    .locals 2

    .line 89
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->levelStitchNext:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 95
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_NEXT_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 93
    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_NEXT_LEVEL_0:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 91
    :cond_1
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_NEXT_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "StitchNext"

    return-object v0
.end method

.method getTraingBitmap(Z)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "islast"    # Z

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->getStitchNextTraceBitmapFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oneplus/screenshot/util/Utils;->getStitchNextTraceBitmap(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
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

    const-string v2, "Longshot.StitchNextMatcher"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v1, 0x0

    .line 290
    .local v1, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v2, "imagefile":Ljava/io/File;
    const/4 v3, 0x0

    .line 292
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 293
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v1, v4

    .line 294
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "imagefile":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 297
    :catch_0
    move-exception v2

    .line 298
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 295
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 296
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 299
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    nop

    .line 301
    :goto_2
    return-object v1
.end method

.method public run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;
    .locals 33
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 102
    move-object/from16 v7, p0

    const-string v0, "StitchNextMatcher.match"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->isEnableStitchNextTraceBitmap()Z

    move-result v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v7, v9}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTraingBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    .local v0, "specialTracingBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    new-instance v1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v1, v0, v8, v8}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    .line 107
    .end local p1    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .local v1, "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :goto_0
    invoke-virtual {v7, v8}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTraingBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    new-instance v2, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v2, v0, v8, v8}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    move-object v10, v1

    move-object v11, v2

    .end local p2    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .local v2, "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    goto :goto_2

    .line 104
    .end local v0    # "specialTracingBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .end local v2    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local p1    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local p2    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_2
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 112
    .end local p1    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .end local p2    # "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .local v10, "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .local v11, "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :goto_2
    invoke-virtual {v10}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    div-int v12, v0, v1

    .line 113
    .local v12, "sizeLast":I
    invoke-virtual {v11}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    div-int v13, v0, v1

    .line 114
    .local v13, "sizeCurr":I
    const/4 v14, 0x0

    .line 115
    .local v14, "offset":I
    const/4 v15, 0x0

    .line 116
    .local v15, "matched":I
    const/16 v16, 0x0

    .line 117
    .local v16, "posLast":I
    const/16 v17, 0x0

    .line 118
    .local v17, "posCurr":I
    const/16 v18, 0x0

    .line 119
    .local v18, "lineLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v1, 0x0

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mOffsetCurr:I

    invoke-virtual {v11}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v3, v13

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getLines(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v6

    .line 120
    .local v6, "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual {v11}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "getNext_current"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 123
    :cond_3
    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    if-eqz v0, :cond_4

    .line 124
    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual {v10}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "getNext_last"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 127
    :cond_4
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isTopActivityDisplayCompatible:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->topActivityDisplayCompatibleStitchMatchThreshold:I

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getOverrideMatchThresholdValue()I

    move-result v0

    :goto_3
    move v5, v0

    .line 129
    .local v5, "matchThreshold":I
    const/4 v0, 0x0

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v15, v17

    move v14, v0

    .end local v16    # "posLast":I
    .end local v17    # "posCurr":I
    .local v2, "offset":I
    .local v3, "matched":I
    .local v4, "posLast":I
    .local v14, "k":I
    .local v15, "posCurr":I
    :goto_4
    iget v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    if-ge v14, v0, :cond_10

    .line 130
    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mOffsetLast:I

    invoke-virtual {v10}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/16 v17, 0x0

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move v1, v14

    move/from16 v29, v2

    .end local v2    # "offset":I
    .local v29, "offset":I
    move/from16 v2, v20

    move/from16 v30, v3

    .end local v3    # "matched":I
    .local v30, "matched":I
    move v3, v12

    move/from16 v31, v4

    .end local v4    # "posLast":I
    .local v31, "posLast":I
    move-object/from16 v4, v16

    move v9, v5

    .end local v5    # "matchThreshold":I
    .local v9, "matchThreshold":I
    move-object/from16 v5, v19

    move-object v8, v6

    .end local v6    # "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .local v8, "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getLines(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v0

    .line 131
    .local v0, "pLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v1, 0x0

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    .end local v29    # "offset":I
    .end local v30    # "matched":I
    .end local v31    # "posLast":I
    .local v1, "j":I
    .restart local v2    # "offset":I
    .restart local v3    # "matched":I
    .restart local v4    # "posLast":I
    :goto_5
    array-length v5, v0

    if-ge v1, v5, :cond_f

    .line 132
    aget-object v5, v0, v1

    move/from16 p1, v2

    const/4 v6, 0x0

    .end local v2    # "offset":I
    .local p1, "offset":I
    aget-object v2, v8, v6

    invoke-virtual {v5, v2}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, "match":I
    const/4 v5, 0x0

    .line 135
    .local v5, "total":I
    const/16 v17, 0x0

    move v6, v2

    move/from16 v2, v17

    .local v2, "l":I
    .local v6, "match":I
    :goto_6
    move/from16 p2, v4

    .end local v4    # "posLast":I
    .local p2, "posLast":I
    add-int v4, v1, v2

    move-object/from16 v17, v10

    .end local v10    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .local v17, "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    array-length v10, v0

    if-ge v4, v10, :cond_6

    array-length v4, v8

    if-ge v2, v4, :cond_6

    .line 136
    add-int/lit8 v5, v5, 0x1

    .line 137
    add-int v4, v1, v2

    aget-object v4, v0, v4

    aget-object v10, v8, v2

    invoke-virtual {v4, v10}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 138
    add-int/lit8 v6, v6, 0x1

    .line 135
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, p2

    move-object/from16 v10, v17

    goto :goto_6

    .line 144
    .end local v2    # "l":I
    :cond_6
    if-nez v5, :cond_7

    .line 145
    move/from16 v22, v3

    const/4 v5, 0x1

    goto/16 :goto_a

    .line 147
    :cond_7
    mul-int/lit8 v2, v6, 0x64

    div-int/2addr v2, v5

    .line 153
    .local v2, "matchRatio":I
    if-ge v2, v9, :cond_8

    .line 154
    move/from16 v22, v3

    const/4 v5, 0x1

    goto/16 :goto_a

    .line 158
    :cond_8
    if-ge v3, v6, :cond_d

    .line 160
    const/4 v4, 0x1

    .line 161
    .local v4, "same":Z
    sget-boolean v10, Lcom/oneplus/screenshot/longshot/util/Configs;->isIgnoreFullMatchList:Z

    if-nez v10, :cond_b

    .line 162
    const/4 v10, 0x0

    .line 163
    .local v10, "compC":I
    move/from16 v20, v2

    .end local v2    # "matchRatio":I
    .local v20, "matchRatio":I
    array-length v2, v0

    sub-int/2addr v2, v6

    .line 164
    .local v2, "compL":I
    const/16 v21, 0x0

    move/from16 v22, v3

    move/from16 v3, v21

    .local v3, "i":I
    .local v22, "matched":I
    :goto_7
    move/from16 v21, v4

    .end local v4    # "same":Z
    .local v21, "same":Z
    add-int v4, v10, v3

    move/from16 v23, v5

    .end local v5    # "total":I
    .local v23, "total":I
    array-length v5, v8

    if-ge v4, v5, :cond_a

    add-int v4, v2, v3

    array-length v5, v0

    if-ge v4, v5, :cond_a

    if-ge v3, v6, :cond_a

    .line 165
    add-int v4, v2, v3

    aget-object v4, v0, v4

    aget-object v5, v8, v3

    move/from16 v24, v2

    const/4 v2, 0x1

    .end local v2    # "compL":I
    .local v24, "compL":I
    invoke-virtual {v4, v5, v2}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_9

    .line 166
    const/4 v4, 0x0

    .line 167
    .end local v21    # "same":Z
    .restart local v4    # "same":Z
    goto :goto_9

    .line 164
    .end local v4    # "same":Z
    .restart local v21    # "same":Z
    :cond_9
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v21

    move/from16 v5, v23

    move/from16 v2, v24

    goto :goto_7

    .end local v24    # "compL":I
    .restart local v2    # "compL":I
    :cond_a
    move/from16 v24, v2

    .end local v2    # "compL":I
    .restart local v24    # "compL":I
    goto :goto_8

    .line 161
    .end local v10    # "compC":I
    .end local v20    # "matchRatio":I
    .end local v21    # "same":Z
    .end local v22    # "matched":I
    .end local v23    # "total":I
    .end local v24    # "compL":I
    .local v2, "matchRatio":I
    .local v3, "matched":I
    .restart local v4    # "same":Z
    .restart local v5    # "total":I
    :cond_b
    move/from16 v20, v2

    move/from16 v22, v3

    move/from16 v21, v4

    move/from16 v23, v5

    .line 172
    .end local v2    # "matchRatio":I
    .end local v3    # "matched":I
    .end local v4    # "same":Z
    .end local v5    # "total":I
    .restart local v20    # "matchRatio":I
    .restart local v21    # "same":Z
    .restart local v22    # "matched":I
    .restart local v23    # "total":I
    :goto_8
    move/from16 v4, v21

    .end local v21    # "same":Z
    .restart local v4    # "same":Z
    :goto_9
    if-eqz v4, :cond_c

    .line 173
    move v3, v6

    .line 174
    .end local v22    # "matched":I
    .restart local v3    # "matched":I
    array-length v2, v0

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    .line 175
    .end local p2    # "posLast":I
    .local v2, "posLast":I
    add-int/lit8 v15, v3, -0x1

    .line 176
    move-object/from16 v18, v0

    .line 177
    move v10, v14

    move v4, v2

    move v2, v10

    .end local p1    # "offset":I
    .local v10, "offset":I
    goto :goto_b

    .line 172
    .end local v2    # "posLast":I
    .end local v3    # "matched":I
    .end local v10    # "offset":I
    .restart local v22    # "matched":I
    .restart local p1    # "offset":I
    .restart local p2    # "posLast":I
    :cond_c
    const/4 v5, 0x1

    goto :goto_a

    .line 158
    .end local v4    # "same":Z
    .end local v20    # "matchRatio":I
    .end local v22    # "matched":I
    .end local v23    # "total":I
    .local v2, "matchRatio":I
    .restart local v3    # "matched":I
    .restart local v5    # "total":I
    :cond_d
    move/from16 v20, v2

    move/from16 v22, v3

    move/from16 v23, v5

    const/4 v5, 0x1

    .end local v2    # "matchRatio":I
    .end local v3    # "matched":I
    .end local v5    # "total":I
    .restart local v20    # "matchRatio":I
    .restart local v22    # "matched":I
    .restart local v23    # "total":I
    goto :goto_a

    .line 132
    .end local v6    # "match":I
    .end local v17    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .end local v20    # "matchRatio":I
    .end local v22    # "matched":I
    .end local v23    # "total":I
    .end local p2    # "posLast":I
    .restart local v3    # "matched":I
    .local v4, "posLast":I
    .local v10, "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_e
    move/from16 v22, v3

    move/from16 p2, v4

    move-object/from16 v17, v10

    const/4 v5, 0x1

    .line 131
    .end local v3    # "matched":I
    .end local v4    # "posLast":I
    .end local v10    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local v17    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local v22    # "matched":I
    .restart local p2    # "posLast":I
    :goto_a
    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v3, v22

    .end local v22    # "matched":I
    .end local p1    # "offset":I
    .end local p2    # "posLast":I
    .local v2, "offset":I
    .restart local v3    # "matched":I
    .restart local v4    # "posLast":I
    :goto_b
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v10, v17

    goto/16 :goto_5

    .end local v17    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local v10    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_f
    move/from16 p1, v2

    move/from16 v22, v3

    move/from16 p2, v4

    move-object/from16 v17, v10

    const/4 v5, 0x1

    .line 129
    .end local v0    # "pLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .end local v1    # "j":I
    .end local v2    # "offset":I
    .end local v3    # "matched":I
    .end local v4    # "posLast":I
    .end local v10    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local v17    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local v22    # "matched":I
    .restart local p1    # "offset":I
    .restart local p2    # "posLast":I
    add-int/lit8 v14, v14, 0x1

    move-object v6, v8

    const/4 v8, 0x0

    move/from16 v32, v9

    move v9, v5

    move/from16 v5, v32

    goto/16 :goto_4

    .end local v8    # "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .end local v9    # "matchThreshold":I
    .end local v17    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .end local v22    # "matched":I
    .end local p1    # "offset":I
    .end local p2    # "posLast":I
    .restart local v2    # "offset":I
    .restart local v3    # "matched":I
    .restart local v4    # "posLast":I
    .local v5, "matchThreshold":I
    .local v6, "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .restart local v10    # "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_10
    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v31, v4

    move v9, v5

    move-object v8, v6

    .line 184
    .end local v2    # "offset":I
    .end local v3    # "matched":I
    .end local v4    # "posLast":I
    .end local v5    # "matchThreshold":I
    .end local v6    # "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .end local v14    # "k":I
    .restart local v8    # "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .restart local v9    # "matchThreshold":I
    .restart local v29    # "offset":I
    .restart local v30    # "matched":I
    .restart local v31    # "posLast":I
    new-instance v0, Lcom/oneplus/screenshot/longshot/match/MatchData;

    iget-object v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mContext:Landroid/content/Context;

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mIndex:I

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    .line 186
    .local v0, "data":Lcom/oneplus/screenshot/longshot/match/MatchData;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StitchNextMatcher run posCurr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " posLast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v31

    .end local v31    # "posLast":I
    .local v2, "posLast":I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " matched:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v30

    .end local v30    # "matched":I
    .restart local v3    # "matched":I
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " offset:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v29

    .end local v29    # "offset":I
    .local v14, "offset":I
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mSize: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sizeLast:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sizeCurr:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mStep:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mExtendLast:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mExtendCurr:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " matchThreshold:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Longshot.StitchNextMatcher"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 190
    const-string v1, "StitchNextMatcher.data.init"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 191
    const/16 v25, 0x1

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    iget-object v4, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    move-object/from16 v19, v0

    move/from16 v20, v3

    move/from16 v21, v2

    move/from16 v22, v15

    move-object/from16 v23, v18

    move-object/from16 v24, v8

    move/from16 v26, v1

    move/from16 v27, v14

    move-object/from16 v28, v4

    invoke-virtual/range {v19 .. v28}, Lcom/oneplus/screenshot/longshot/match/MatchData;->init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZIILcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V

    .line 192
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 193
    return-object v0
.end method
