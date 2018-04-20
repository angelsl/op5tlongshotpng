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
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPeak:D

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    .line 30
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    .line 37
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    .line 38
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_BGNEXT:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mSize:I

    .line 39
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_BGNEXT_LAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mOffsetLast:I

    .line 40
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_BGNEXT_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mOffsetCurr:I

    .line 41
    return-void
.end method

.method private findMisregistration([Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;II)V
    .registers 15
    .param p1, "norPoc"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;
    .param p2, "fftPoc"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 188
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_1
    if-ge v4, p4, :cond_32

    .line 189
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_4
    if-ge v1, p3, :cond_2f

    .line 190
    mul-int v5, v4, p3

    add-int v0, v1, v5

    .line 191
    .local v0, "idx":I
    aget-object v5, p1, v0

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v6

    aget-object v5, p2, v0

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double v2, v6, v8

    .line 192
    .local v2, "spectrum":D
    iget-wide v6, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPeak:D

    cmpl-double v5, v2, v6

    if-lez v5, :cond_2c

    .line 193
    iput-wide v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPeak:D

    .line 194
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iput v1, v5, Landroid/graphics/Point;->x:I

    .line 195
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iput v4, v5, Landroid/graphics/Point;->y:I

    .line 189
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 188
    .end local v0    # "idx":I
    .end local v2    # "spectrum":D
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 199
    .end local v1    # "x":I
    :cond_32
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v5, p3, v5

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-ge v5, v6, :cond_48

    .line 200
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int v6, p3, v6

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 202
    :cond_48
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int v5, p4, v5

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-ge v5, v6, :cond_5e

    .line 203
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int v6, p4, v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 205
    :cond_5e
    return-void
.end method

.method private getLines(II[ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .registers 11
    .param p1, "wSize"    # I
    .param p2, "hSize"    # I
    .param p3, "buffer"    # [I
    .param p4, "dumper"    # Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
    .param p5, "isCurr"    # Z

    .prologue
    const/4 v4, 0x0

    .line 108
    new-array v1, p2, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 109
    .local v1, "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, p2, :cond_17

    .line 110
    new-array v2, p1, [I

    .line 111
    .local v2, "p":[I
    mul-int v3, p1, v0

    invoke-static {p3, v3, v2, v4, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 112
    new-instance v3, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    invoke-direct {v3, v2}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>([I)V

    aput-object v3, v1, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 114
    .end local v2    # "p":[I
    :cond_17
    if-eqz p4, :cond_1d

    .line 115
    array-length v3, v1

    invoke-virtual {p4, v1, v4, v3}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    .line 117
    :cond_1d
    return-object v1
.end method

.method private getPixels(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[D
    .registers 25
    .param p1, "wSize"    # I
    .param p2, "hSize"    # I
    .param p3, "offset"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "dumper"    # Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
    .param p6, "isCurr"    # Z

    .prologue
    .line 121
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 122
    .local v11, "w":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 123
    .local v2, "h":I
    sget-object v15, Lcom/oneplus/screenshot/longshot/util/Configs;->BGLINE_SAMPLES:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v7

    .line 124
    .local v7, "nLength":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    sub-int v15, p1, v15

    div-int v12, v15, v7

    .line 125
    .local v12, "wLength":I
    int-to-float v15, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    move/from16 v16, v0

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-int v8, v15

    .line 126
    .local v8, "pExtend":I
    move/from16 v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 127
    mul-int v15, p1, p2

    new-array v9, v15, [D

    .line 128
    .local v9, "pixels":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_38
    move/from16 v0, p2

    if-ge v3, v0, :cond_c2

    .line 129
    if-eqz p6, :cond_7d

    add-int v14, v3, p3

    .line 130
    .local v14, "y":I
    :goto_40
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_41
    if-ge v4, v7, :cond_86

    .line 131
    sget-object v15, Lcom/oneplus/screenshot/longshot/util/Configs;->BGLINE_SAMPLES:Ljava/util/List;

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 132
    .local v10, "pos":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_50
    if-ge v5, v12, :cond_83

    .line 133
    int-to-float v15, v10

    int-to-float v0, v5

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    float-to-int v13, v15

    .line 134
    .local v13, "x":I
    mul-int v15, v3, p1

    mul-int v16, v4, v12

    add-int v15, v15, v16

    add-int v6, v15, v5

    .line 135
    .local v6, "n":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->grayScale(I)I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    aput-wide v16, v9, v6

    .line 132
    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    .line 129
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "n":I
    .end local v10    # "pos":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_7d
    sub-int v15, v3, p3

    add-int/2addr v15, v2

    sub-int v14, v15, p2

    .restart local v14    # "y":I
    goto :goto_40

    .line 130
    .restart local v4    # "j":I
    .restart local v5    # "k":I
    .restart local v10    # "pos":I
    :cond_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 138
    .end local v5    # "k":I
    .end local v10    # "pos":I
    :cond_86
    const/4 v4, 0x0

    :goto_87
    move-object/from16 v0, p0

    iget v15, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    if-ge v4, v15, :cond_be

    .line 139
    int-to-float v15, v8

    int-to-float v0, v4

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    float-to-int v13, v15

    .line 140
    .restart local v13    # "x":I
    mul-int v15, v3, p1

    add-int v15, v15, p1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int v6, v15, v4

    .line 141
    .restart local v6    # "n":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->grayScale(I)I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    aput-wide v16, v9, v6

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto :goto_87

    .line 128
    .end local v6    # "n":I
    .end local v13    # "x":I
    :cond_be
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_38

    .line 144
    .end local v4    # "j":I
    .end local v14    # "y":I
    :cond_c2
    return-object v9
.end method

.method private grayScale(I)I
    .registers 2
    .param p1, "pixel"    # I

    .prologue
    .line 159
    return p1
.end method

.method private spectrum([Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;)V
    .registers 17
    .param p1, "dstNor"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;
    .param p2, "dstFft"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;
    .param p3, "norLast"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;
    .param p4, "fftLast"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;
    .param p5, "norCurr"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;
    .param p6, "fftCurr"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;

    .prologue
    .line 170
    const-wide/16 v2, 0x0

    .line 172
    .local v2, "spectrum":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v1, p3

    if-ge v0, v1, :cond_84

    .line 173
    aget-object v1, p3, v0

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v4

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v6

    mul-double/2addr v4, v6

    aget-object v1, p4, v0

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v6

    aget-object v1, p4, v0

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 174
    aget-object v1, p3, v0

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;->divide(D)Lcom/oneplus/screenshot/longshot/transform/Complex;

    .line 175
    aget-object v1, p4, v0

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;->divide(D)Lcom/oneplus/screenshot/longshot/transform/Complex;

    .line 177
    aget-object v1, p5, v0

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v4

    aget-object v1, p5, v0

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v6

    mul-double/2addr v4, v6

    aget-object v1, p6, v0

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v6

    aget-object v1, p6, v0

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 178
    aget-object v1, p5, v0

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;->divide(D)Lcom/oneplus/screenshot/longshot/transform/Complex;

    .line 179
    aget-object v1, p6, v0

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;->divide(D)Lcom/oneplus/screenshot/longshot/transform/Complex;

    .line 182
    new-instance v1, Lcom/oneplus/screenshot/longshot/transform/Complex;

    aget-object v4, p3, v0

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v4

    aget-object v6, p5, v0

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-direct {v1, v4, v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;-><init>(D)V

    aput-object v1, p1, v0

    .line 183
    new-instance v1, Lcom/oneplus/screenshot/longshot/transform/Complex;

    aget-object v4, p4, v0

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v4

    aget-object v6, p6, v0

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v6

    neg-double v6, v6

    mul-double/2addr v4, v6

    invoke-direct {v1, v4, v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;-><init>(D)V

    aput-object v1, p2, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 185
    :cond_84
    return-void
.end method

.method private toInt([D)[I
    .registers 6
    .param p1, "pixels"    # [D

    .prologue
    .line 100
    array-length v2, p1

    new-array v1, v2, [I

    .line 101
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_f

    .line 102
    aget-wide v2, p1, v0

    double-to-int v2, v2

    aput v2, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 104
    :cond_f
    return-object v1
.end method

.method private transComplex([Lcom/oneplus/screenshot/longshot/transform/Complex;[D)V
    .registers 7
    .param p1, "complexs"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;
    .param p2, "data"    # [D

    .prologue
    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_10

    .line 165
    new-instance v1, Lcom/oneplus/screenshot/longshot/transform/Complex;

    aget-wide v2, p2, v0

    invoke-direct {v1, v2, v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;-><init>(D)V

    aput-object v1, p1, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_10
    return-void
.end method


# virtual methods
.method protected canDump()Z
    .registers 2

    .prologue
    .line 60
    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->NEXT:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 53
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 54
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 55
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/oneplus/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 56
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    const-string/jumbo v0, "StitchBgNext"

    return-object v0
.end method

.method public run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;
    .registers 35
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .prologue
    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mSize:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mStep:I

    div-int v31, v2, v5

    .line 66
    .local v31, "sizeLast":I
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mSize:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mStep:I

    div-int v30, v2, v5

    .line 67
    .local v30, "sizeCurr":I
    const/16 v20, 0x0

    .line 68
    .local v20, "offset":I
    sget-object v2, Lcom/oneplus/screenshot/longshot/util/Configs;->BGLINE_SAMPLES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v23

    .line 69
    .local v23, "length":I
    sget-object v2, Lcom/oneplus/screenshot/longshot/util/Configs;->WIDTH_SAMPLE_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v2

    div-int v2, v2, v23

    mul-int v2, v2, v23

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    add-int v3, v2, v5

    .line 70
    .local v3, "wSize":I
    move/from16 v0, v31

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 71
    .local v4, "hSize":I
    mul-int v2, v3, v4

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/transform/Factory;->createTransform(I)Lcom/oneplus/screenshot/longshot/transform/FFT;

    move-result-object v22

    .line 72
    .local v22, "fft":Lcom/oneplus/screenshot/longshot/transform/FFT;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mOffsetLast:I

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getPixels(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[D

    move-result-object v26

    .line 73
    .local v26, "pLast":[D
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mOffsetCurr:I

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getPixels(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[D

    move-result-object v25

    .line 74
    .local v25, "pCurr":[D
    mul-int v2, v3, v4

    new-array v8, v2, [Lcom/oneplus/screenshot/longshot/transform/Complex;

    .line 75
    .local v8, "norLast":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v8, v1}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->transComplex([Lcom/oneplus/screenshot/longshot/transform/Complex;[D)V

    .line 76
    move-object/from16 v0, v22

    invoke-interface {v0, v8}, Lcom/oneplus/screenshot/longshot/transform/FFT;->transform([Lcom/oneplus/screenshot/longshot/transform/Complex;)[Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-result-object v9

    .line 77
    .local v9, "fftLast":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    mul-int v2, v3, v4

    new-array v10, v2, [Lcom/oneplus/screenshot/longshot/transform/Complex;

    .line 78
    .local v10, "norCurr":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v10, v1}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->transComplex([Lcom/oneplus/screenshot/longshot/transform/Complex;[D)V

    .line 79
    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Lcom/oneplus/screenshot/longshot/transform/FFT;->transform([Lcom/oneplus/screenshot/longshot/transform/Complex;)[Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-result-object v11

    .line 80
    .local v11, "fftCurr":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    mul-int v2, v3, v4

    new-array v6, v2, [Lcom/oneplus/screenshot/longshot/transform/Complex;

    .line 81
    .local v6, "dstNor":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    mul-int v2, v3, v4

    new-array v7, v2, [Lcom/oneplus/screenshot/longshot/transform/Complex;

    .local v7, "dstFft":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    move-object/from16 v5, p0

    .line 82
    invoke-direct/range {v5 .. v11}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->spectrum([Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;)V

    .line 83
    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Lcom/oneplus/screenshot/longshot/transform/FFT;->reverse([Lcom/oneplus/screenshot/longshot/transform/Complex;)[Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-result-object v6

    .line 84
    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Lcom/oneplus/screenshot/longshot/transform/FFT;->reverse([Lcom/oneplus/screenshot/longshot/transform/Complex;)[Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-result-object v7

    .line 85
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v3, v4}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->findMisregistration([Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;II)V

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int v2, v4, v2

    add-int/lit8 v29, v2, -0x1

    .line 87
    .local v29, "posLast":I
    add-int/lit8 v28, v4, -0x1

    .line 88
    .local v28, "posCurr":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int v24, v4, v2

    .line 89
    .local v24, "matched":I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->toInt([D)[I

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v12, p0

    move v13, v3

    move v14, v4

    invoke-direct/range {v12 .. v17}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getLines(II[ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v27

    .line 90
    .local v27, "pixLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->toInt([D)[I

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v12, p0

    move v13, v3

    move v14, v4

    invoke-direct/range {v12 .. v17}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getLines(II[ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v17

    .line 91
    .local v17, "pixCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    new-instance v12, Lcom/oneplus/screenshot/longshot/match/MatchData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mIndex:I

    invoke-direct {v12, v2, v5}, Lcom/oneplus/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    .line 92
    .local v12, "data":Lcom/oneplus/screenshot/longshot/match/MatchData;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mStep:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    move-object/from16 v21, v0

    const/16 v18, 0x1

    move/from16 v13, v24

    move/from16 v14, v29

    move/from16 v15, v28

    move-object/from16 v16, v27

    invoke-virtual/range {v12 .. v21}, Lcom/oneplus/screenshot/longshot/match/MatchData;->init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZIILcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V

    .line 93
    return-object v12
.end method
