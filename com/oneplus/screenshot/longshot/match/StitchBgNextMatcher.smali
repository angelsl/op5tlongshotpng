.class public Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;
.super Lcom/oneplus/screenshot/longshot/match/BaseMatcher;
.source "StitchBgNextMatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchBgNextMatcher"


# instance fields
.field private mDensity:F

.field private mExtend:I

.field private mPeak:D

.field private mPos:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPeak:D

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    .line 28
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    .line 35
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    .line 36
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_BGNEXT:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mSize:I

    .line 37
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_BGNEXT_LAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mOffsetLast:I

    .line 38
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_BGNEXT_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mOffsetCurr:I

    .line 39
    return-void
.end method

.method private findMisregistration([Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;II)V
    .locals 7
    .param p1, "norPoc"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;
    .param p2, "fftPoc"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 186
    const/4 v0, 0x0

    .local v0, "y":I
    :goto_0
    if-ge v0, p4, :cond_2

    .line 187
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    if-ge v1, p3, :cond_1

    .line 188
    mul-int v2, v0, p3

    add-int/2addr v2, v1

    .line 189
    .local v2, "idx":I
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v3

    aget-object v5, p2, v2

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 190
    .local v3, "spectrum":D
    iget-wide v5, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPeak:D

    cmpl-double v5, v3, v5

    if-lez v5, :cond_0

    .line 191
    iput-wide v3, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPeak:D

    .line 192
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iput v1, v5, Landroid/graphics/Point;->x:I

    .line 193
    iput v0, v5, Landroid/graphics/Point;->y:I

    .line 187
    .end local v2    # "idx":I
    .end local v3    # "spectrum":D
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 186
    .end local v1    # "x":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "y":I
    :cond_2
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int v0, p3, v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ge v0, v1, :cond_3

    .line 198
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    sub-int v1, p3, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, p4, v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_4

    .line 201
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    sub-int v1, p4, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 203
    :cond_4
    return-void
.end method

.method private getLines(II[ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 5
    .param p1, "wSize"    # I
    .param p2, "hSize"    # I
    .param p3, "buffer"    # [I
    .param p4, "dumper"    # Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
    .param p5, "isCurr"    # Z

    .line 106
    new-array v0, p2, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 107
    .local v0, "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, p2, :cond_0

    .line 108
    new-array v3, p1, [I

    .line 109
    .local v3, "p":[I
    mul-int v4, p1, v1

    invoke-static {p3, v4, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    new-instance v2, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    invoke-direct {v2, v3}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>([I)V

    aput-object v2, v0, v1

    .line 107
    .end local v3    # "p":[I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "i":I
    :cond_0
    if-eqz p4, :cond_1

    .line 113
    array-length v1, v0

    invoke-virtual {p4, v0, v2, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    .line 115
    :cond_1
    return-object v0
.end method

.method private getPixels(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[D
    .locals 18
    .param p1, "wSize"    # I
    .param p2, "hSize"    # I
    .param p3, "offset"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "dumper"    # Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
    .param p6, "isCurr"    # Z

    .line 119
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 120
    .local v2, "w":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 121
    .local v3, "h":I
    sget-object v4, Lcom/oneplus/screenshot/longshot/util/Configs;->bglineSamples:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 122
    .local v4, "nLength":I
    iget v5, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    sub-int v6, p1, v5

    div-int/2addr v6, v4

    .line 123
    .local v6, "wLength":I
    int-to-float v7, v2

    iget v8, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    div-float/2addr v7, v8

    int-to-float v5, v5

    sub-float/2addr v7, v5

    float-to-int v5, v7

    .line 124
    .local v5, "pExtend":I
    move/from16 v7, p2

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 125
    .end local p2    # "hSize":I
    .local v7, "hSize":I
    mul-int v8, p1, v7

    new-array v8, v8, [D

    .line 126
    .local v8, "pixels":[D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_4

    .line 127
    if-eqz p6, :cond_0

    add-int v10, v9, p3

    goto :goto_1

    :cond_0
    sub-int v10, v9, p3

    add-int/2addr v10, v3

    sub-int/2addr v10, v7

    .line 128
    .local v10, "y":I
    :goto_1
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    if-ge v11, v4, :cond_2

    .line 129
    sget-object v12, Lcom/oneplus/screenshot/longshot/util/Configs;->bglineSamples:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 130
    .local v12, "pos":I
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_3
    if-ge v13, v6, :cond_1

    .line 131
    int-to-float v14, v12

    int-to-float v15, v13

    move/from16 v16, v2

    .end local v2    # "w":I
    .local v16, "w":I
    iget v2, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    mul-float/2addr v15, v2

    add-float/2addr v14, v15

    float-to-int v2, v14

    .line 132
    .local v2, "x":I
    mul-int v14, v9, p1

    mul-int v15, v11, v6

    add-int/2addr v14, v15

    add-int/2addr v14, v13

    .line 133
    .local v14, "n":I
    invoke-virtual {v1, v2, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    invoke-direct {v0, v15}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->grayScale(I)I

    move-result v15

    move/from16 p2, v2

    move/from16 v17, v3

    .end local v2    # "x":I
    .end local v3    # "h":I
    .local v17, "h":I
    .local p2, "x":I
    int-to-double v2, v15

    aput-wide v2, v8, v14

    .line 130
    .end local v14    # "n":I
    .end local p2    # "x":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    goto :goto_3

    .end local v16    # "w":I
    .end local v17    # "h":I
    .local v2, "w":I
    .restart local v3    # "h":I
    :cond_1
    move/from16 v16, v2

    move/from16 v17, v3

    .line 128
    .end local v2    # "w":I
    .end local v3    # "h":I
    .end local v12    # "pos":I
    .end local v13    # "k":I
    .restart local v16    # "w":I
    .restart local v17    # "h":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .end local v16    # "w":I
    .end local v17    # "h":I
    .restart local v2    # "w":I
    .restart local v3    # "h":I
    :cond_2
    move/from16 v16, v2

    move/from16 v17, v3

    .line 136
    .end local v2    # "w":I
    .end local v3    # "h":I
    .end local v11    # "j":I
    .restart local v16    # "w":I
    .restart local v17    # "h":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4
    iget v3, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    if-ge v2, v3, :cond_3

    .line 137
    int-to-float v11, v5

    int-to-float v12, v2

    iget v13, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    .line 138
    .local v11, "x":I
    mul-int v12, v9, p1

    add-int v12, v12, p1

    sub-int/2addr v12, v3

    add-int/2addr v12, v2

    .line 139
    .local v12, "n":I
    invoke-virtual {v1, v11, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->grayScale(I)I

    move-result v3

    int-to-double v13, v3

    aput-wide v13, v8, v12

    .line 136
    .end local v11    # "x":I
    .end local v12    # "n":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 126
    .end local v2    # "j":I
    .end local v10    # "y":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    goto :goto_0

    .line 142
    .end local v9    # "i":I
    .end local v16    # "w":I
    .end local v17    # "h":I
    .local v2, "w":I
    .restart local v3    # "h":I
    :cond_4
    return-object v8
.end method

.method private grayScale(I)I
    .locals 0
    .param p1, "pixel"    # I

    .line 157
    return p1
.end method

.method private spectrum([Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;)V
    .locals 9
    .param p1, "dstNor"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;
    .param p2, "dstFft"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;
    .param p3, "norLast"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;
    .param p4, "fftLast"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;
    .param p5, "norCurr"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;
    .param p6, "fftCurr"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;

    .line 168
    const-wide/16 v0, 0x0

    .line 170
    .local v0, "spectrum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_0

    .line 171
    aget-object v3, p3, v2

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v3

    aget-object v5, p3, v2

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v5

    mul-double/2addr v3, v5

    aget-object v5, p4, v2

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v5

    aget-object v7, p4, v2

    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 172
    aget-object v3, p3, v2

    invoke-virtual {v3, v0, v1}, Lcom/oneplus/screenshot/longshot/transform/Complex;->divide(D)Lcom/oneplus/screenshot/longshot/transform/Complex;

    .line 173
    aget-object v3, p4, v2

    invoke-virtual {v3, v0, v1}, Lcom/oneplus/screenshot/longshot/transform/Complex;->divide(D)Lcom/oneplus/screenshot/longshot/transform/Complex;

    .line 175
    aget-object v3, p5, v2

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v3

    aget-object v5, p5, v2

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v5

    mul-double/2addr v3, v5

    aget-object v5, p6, v2

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v5

    aget-object v7, p6, v2

    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 176
    aget-object v3, p5, v2

    invoke-virtual {v3, v0, v1}, Lcom/oneplus/screenshot/longshot/transform/Complex;->divide(D)Lcom/oneplus/screenshot/longshot/transform/Complex;

    .line 177
    aget-object v3, p6, v2

    invoke-virtual {v3, v0, v1}, Lcom/oneplus/screenshot/longshot/transform/Complex;->divide(D)Lcom/oneplus/screenshot/longshot/transform/Complex;

    .line 180
    new-instance v3, Lcom/oneplus/screenshot/longshot/transform/Complex;

    aget-object v4, p3, v2

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v4

    aget-object v6, p5, v2

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;-><init>(D)V

    aput-object v3, p1, v2

    .line 181
    new-instance v3, Lcom/oneplus/screenshot/longshot/transform/Complex;

    aget-object v4, p4, v2

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v4

    aget-object v6, p6, v2

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v6

    neg-double v6, v6

    mul-double/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;-><init>(D)V

    aput-object v3, p2, v2

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 183
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private toInt([D)[I
    .locals 4
    .param p1, "pixels"    # [D

    .line 98
    array-length v0, p1

    new-array v0, v0, [I

    .line 99
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 100
    aget-wide v2, p1, v1

    double-to-int v2, v2

    aput v2, v0, v1

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private transComplex([Lcom/oneplus/screenshot/longshot/transform/Complex;[D)V
    .locals 4
    .param p1, "complexs"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;
    .param p2, "data"    # [D

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 163
    new-instance v1, Lcom/oneplus/screenshot/longshot/transform/Complex;

    aget-wide v2, p2, v0

    invoke-direct {v1, v2, v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;-><init>(D)V

    aput-object v1, p1, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected canDump()Z
    .locals 1

    .line 58
    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->NEXT:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .locals 5

    .line 51
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 52
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 53
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/oneplus/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 54
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "StitchBgNext"

    return-object v0
.end method

.method public run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;
    .locals 34
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 63
    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mStep:I

    div-int v8, v0, v1

    .line 64
    .local v8, "sizeLast":I
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mStep:I

    div-int v9, v0, v1

    .line 65
    .local v9, "sizeCurr":I
    const/16 v20, 0x0

    .line 66
    .local v20, "offset":I
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->bglineSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v21

    .line 67
    .local v21, "length":I
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->WIDTH_SAMPLE_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    div-int v0, v0, v21

    mul-int v0, v0, v21

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    add-int v15, v0, v1

    .line 68
    .local v15, "wSize":I
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 69
    .local v14, "hSize":I
    mul-int v0, v15, v14

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/transform/Factory;->createTransform(I)Lcom/oneplus/screenshot/longshot/transform/FFT;

    move-result-object v13

    .line 70
    .local v13, "fft":Lcom/oneplus/screenshot/longshot/transform/FFT;
    iget v3, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mOffsetLast:I

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move v2, v14

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getPixels(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[D

    move-result-object v12

    .line 71
    .local v12, "pLast":[D
    iget v3, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mOffsetCurr:I

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getPixels(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[D

    move-result-object v11

    .line 72
    .local v11, "pCurr":[D
    mul-int v0, v15, v14

    new-array v10, v0, [Lcom/oneplus/screenshot/longshot/transform/Complex;

    .line 73
    .local v10, "norLast":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    invoke-direct {v7, v10, v12}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->transComplex([Lcom/oneplus/screenshot/longshot/transform/Complex;[D)V

    .line 74
    invoke-interface {v13, v10}, Lcom/oneplus/screenshot/longshot/transform/FFT;->transform([Lcom/oneplus/screenshot/longshot/transform/Complex;)[Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-result-object v22

    .line 75
    .local v22, "fftLast":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    mul-int v0, v15, v14

    new-array v6, v0, [Lcom/oneplus/screenshot/longshot/transform/Complex;

    .line 76
    .local v6, "norCurr":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    invoke-direct {v7, v6, v11}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->transComplex([Lcom/oneplus/screenshot/longshot/transform/Complex;[D)V

    .line 77
    invoke-interface {v13, v6}, Lcom/oneplus/screenshot/longshot/transform/FFT;->transform([Lcom/oneplus/screenshot/longshot/transform/Complex;)[Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-result-object v23

    .line 78
    .local v23, "fftCurr":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    mul-int v0, v15, v14

    new-array v5, v0, [Lcom/oneplus/screenshot/longshot/transform/Complex;

    .line 79
    .local v5, "dstNor":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    mul-int v0, v15, v14

    new-array v4, v0, [Lcom/oneplus/screenshot/longshot/transform/Complex;

    .line 80
    .local v4, "dstFft":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v4

    move-object v3, v10

    move/from16 v24, v8

    move-object v8, v4

    .end local v4    # "dstFft":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    .local v8, "dstFft":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    .local v24, "sizeLast":I
    move-object/from16 v4, v22

    move/from16 v25, v9

    move-object v9, v5

    .end local v5    # "dstNor":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    .local v9, "dstNor":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    .local v25, "sizeCurr":I
    move-object v5, v6

    move-object/from16 v26, v6

    .end local v6    # "norCurr":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    .local v26, "norCurr":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    move-object/from16 v6, v23

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->spectrum([Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;)V

    .line 81
    invoke-interface {v13, v9}, Lcom/oneplus/screenshot/longshot/transform/FFT;->reverse([Lcom/oneplus/screenshot/longshot/transform/Complex;)[Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-result-object v6

    .line 82
    .end local v9    # "dstNor":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    .local v6, "dstNor":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    invoke-interface {v13, v8}, Lcom/oneplus/screenshot/longshot/transform/FFT;->reverse([Lcom/oneplus/screenshot/longshot/transform/Complex;)[Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-result-object v8

    .line 83
    invoke-direct {v7, v6, v8, v15, v14}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->findMisregistration([Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;II)V

    .line 84
    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, v14, v0

    add-int/lit8 v9, v0, -0x1

    .line 85
    .local v9, "posLast":I
    add-int/lit8 v27, v14, -0x1

    .line 86
    .local v27, "posCurr":I
    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v28, v14, v0

    .line 87
    .local v28, "matched":I
    invoke-direct {v7, v12}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->toInt([D)[I

    move-result-object v3

    iget-object v4, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move v2, v14

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getLines(II[ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v29

    .line 88
    .local v29, "pixLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    invoke-direct {v7, v11}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->toInt([D)[I

    move-result-object v3

    iget-object v4, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getLines(II[ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v0

    .line 89
    .local v0, "pixCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    new-instance v1, Lcom/oneplus/screenshot/longshot/match/MatchData;

    iget-object v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    iget v3, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mIndex:I

    invoke-direct {v1, v2, v3}, Lcom/oneplus/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    .line 90
    .local v1, "data":Lcom/oneplus/screenshot/longshot/match/MatchData;
    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mStep:I

    iget-object v3, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/16 v16, 0x1

    move-object v4, v10

    .end local v10    # "norLast":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    .local v4, "norLast":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    move-object v10, v1

    move-object v5, v11

    .end local v11    # "pCurr":[D
    .local v5, "pCurr":[D
    move/from16 v11, v28

    move-object/from16 v30, v12

    .end local v12    # "pLast":[D
    .local v30, "pLast":[D
    move v12, v9

    move-object/from16 v31, v13

    .end local v13    # "fft":Lcom/oneplus/screenshot/longshot/transform/FFT;
    .local v31, "fft":Lcom/oneplus/screenshot/longshot/transform/FFT;
    move/from16 v13, v27

    move/from16 v32, v14

    .end local v14    # "hSize":I
    .local v32, "hSize":I
    move-object/from16 v14, v29

    move/from16 v33, v15

    .end local v15    # "wSize":I
    .local v33, "wSize":I
    move-object v15, v0

    move/from16 v17, v2

    move/from16 v18, v20

    move-object/from16 v19, v3

    invoke-virtual/range {v10 .. v19}, Lcom/oneplus/screenshot/longshot/match/MatchData;->init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZIILcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V

    .line 91
    return-object v1
.end method
