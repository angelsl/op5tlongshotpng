.class public Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
.super Ljava/lang/Object;
.source "Pixels.java"


# static fields
.field private static final MAX:I = 0x64

.field private static final PERCENT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "Pixels"


# instance fields
.field private mComparable:Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

.field private mPixels:[I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IIII)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    .line 24
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    .line 38
    mul-int v0, p4, p5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    .line 39
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p4

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 40
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "buffer"    # [I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    .line 24
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    .line 30
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    .line 31
    return-void
.end method

.method private init()V
    .locals 1

    .line 171
    new-instance v0, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    invoke-direct {v0}, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;-><init>()V

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->setComparable(Lcom/oneplus/screenshot/longshot/compare/ColorCompare;)V

    .line 172
    return-void
.end method


# virtual methods
.method public diff(Ljava/lang/Object;)I
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 113
    move-object v0, p1

    check-cast v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 114
    .local v0, "pixels":Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v2, v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 118
    :cond_0
    sget-object v2, Lcom/oneplus/screenshot/longshot/util/Configs;->lineSamples:Ljava/util/List;

    .line 120
    .local v2, "lineSample":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v3, v3

    iget-object v4, v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v4, v4

    if-eq v3, v4, :cond_1

    .line 121
    return v1

    .line 123
    :cond_1
    const/4 v3, 0x0

    .line 124
    .local v3, "match":I
    const/4 v4, 0x0

    .line 125
    .local v4, "total":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v7, v6

    if-ge v5, v7, :cond_3

    .line 126
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    aget v6, v6, v5

    iget-object v8, v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v8, v8, v5

    invoke-virtual {v7, v6, v8}, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;->compare(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 127
    add-int/lit8 v3, v3, 0x1

    .line 129
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 125
    sget-object v6, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_LINE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_0

    .line 132
    .end local v5    # "i":I
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 134
    .local v6, "param":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .local v7, "i":I
    :goto_2
    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v7, v8, :cond_5

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v9, v8

    if-ge v7, v9, :cond_5

    .line 135
    iget-object v9, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    aget v8, v8, v7

    iget-object v10, v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v10, v10, v7

    invoke-virtual {v9, v8, v10}, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;->compare(II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 136
    add-int/lit8 v3, v3, 0x1

    .line 138
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 134
    const/4 v8, 0x2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_2

    .line 140
    .end local v6    # "param":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "i":I
    :cond_5
    goto :goto_1

    .line 141
    :cond_6
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v5, v5

    sget-object v6, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_LINE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v3, v5, :cond_7

    .line 142
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v3, v5

    .line 146
    :cond_7
    if-nez v4, :cond_8

    .line 147
    const-string v5, "Pixels"

    const-string v6, "diff total is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v1

    .line 150
    :cond_8
    mul-int/lit8 v1, v3, 0x64

    div-int/2addr v1, v4

    return v1

    .line 115
    .end local v2    # "lineSample":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v3    # "match":I
    .end local v4    # "total":I
    :cond_9
    :goto_3
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;Z)Z
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "fullcompare"    # Z

    .line 52
    move-object v0, p1

    check-cast v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 53
    .local v0, "pixels":Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v2, v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 59
    :cond_0
    sget-object v2, Lcom/oneplus/screenshot/longshot/util/Configs;->lineSamples:Ljava/util/List;

    .line 61
    .local v2, "lineSample":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v3, v3

    iget-object v4, v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v4, v4

    if-eq v3, v4, :cond_1

    .line 62
    return v1

    .line 64
    :cond_1
    const/4 v3, 0x0

    .line 65
    .local v3, "match":I
    const/4 v4, 0x0

    .line 66
    .local v4, "total":I
    const/4 v5, 0x1

    if-eqz p2, :cond_4

    .line 68
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v8, v7

    if-ge v6, v8, :cond_3

    .line 69
    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    aget v7, v7, v6

    iget-object v9, v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v9, v9, v6

    invoke-virtual {v8, v7, v9}, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;->compare(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 72
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 68
    add-int/lit8 v6, v6, 0x3

    goto :goto_0

    .end local v6    # "i":I
    :cond_3
    goto/16 :goto_4

    .line 75
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v8, v7

    if-ge v6, v8, :cond_6

    .line 76
    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    aget v7, v7, v6

    iget-object v9, v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v9, v9, v6

    invoke-virtual {v8, v7, v9}, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;->compare(II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 79
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 75
    sget-object v7, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_LINE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_1

    .line 82
    .end local v6    # "i":I
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 84
    .local v7, "param":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .local v8, "i":I
    :goto_3
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v8, v9, :cond_8

    iget-object v9, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v10, v9

    if-ge v8, v10, :cond_8

    .line 85
    iget-object v10, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    aget v9, v9, v8

    iget-object v11, v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v11, v11, v8

    invoke-virtual {v10, v9, v11}, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;->compare(II)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 86
    add-int/lit8 v3, v3, 0x1

    .line 88
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 84
    const/4 v9, 0x2

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_3

    .line 90
    .end local v7    # "param":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "i":I
    :cond_8
    goto :goto_2

    .line 91
    :cond_9
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v6, v6

    sget-object v7, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_LINE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v7

    sub-int/2addr v6, v7

    if-le v3, v6, :cond_a

    .line 92
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v3, v6

    .line 97
    :cond_a
    :goto_4
    if-nez v4, :cond_b

    .line 98
    const-string v5, "Pixels"

    const-string v6, "equals total is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return v1

    .line 102
    :cond_b
    mul-int/lit8 v6, v3, 0x64

    div-int/2addr v6, v4

    .line 103
    .local v6, "equalsRatio":I
    sget-boolean v7, Lcom/oneplus/screenshot/longshot/util/Configs;->isTopActivityDisplayCompatible:Z

    if-eqz v7, :cond_c

    sget v7, Lcom/oneplus/screenshot/longshot/util/Configs;->topActivityDisplayCompatibleStitchMatchThreshold:I

    goto :goto_5

    :cond_c
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getOverrideMatchThresholdValue()I

    move-result v7

    .line 105
    .local v7, "equalsThreshold":I
    :goto_5
    if-lt v6, v7, :cond_d

    move v1, v5

    :cond_d
    return v1

    .line 54
    .end local v2    # "lineSample":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v3    # "match":I
    .end local v4    # "total":I
    .end local v6    # "equalsRatio":I
    .end local v7    # "equalsThreshold":I
    :cond_e
    :goto_6
    return v1
.end method

.method public get()[I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    return-object v0
.end method

.method public setComparable(Lcom/oneplus/screenshot/longshot/compare/ColorCompare;)V
    .locals 0
    .param p1, "comparable"    # Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    .line 160
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    .line 161
    return-void
.end method
