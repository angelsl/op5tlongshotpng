.class public Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
.super Ljava/lang/Object;
.source "Pixels.java"


# static fields
.field private static final MAX:I = 0x64

.field private static final PERCENT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "Pixels"


# instance fields
.field private mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

.field private mPixels:[I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IIII)V
    .registers 14
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    .line 25
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    .line 39
    mul-int v0, p4, p5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    .line 40
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    const/4 v2, 0x0

    move-object v0, p1

    move v3, p4

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 41
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>([I)V
    .registers 3
    .param p1, "buffer"    # [I

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    .line 25
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    .line 31
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    .line 32
    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 152
    new-instance v0, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    invoke-direct {v0}, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;-><init>()V

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->setComparable(Lcom/oneplus/screenshot/longshot/compare/Comparable;)V

    .line 153
    return-void
.end method


# virtual methods
.method public diff(Ljava/lang/Object;)I
    .registers 13
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    move-object v5, p1

    .line 102
    check-cast v5, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 103
    .local v5, "pixels":Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    if-eqz v5, :cond_a

    iget-object v7, v5, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    if-nez v7, :cond_b

    .line 104
    :cond_a
    return v10

    .line 103
    :cond_b
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    if-eqz v7, :cond_a

    .line 107
    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->LINE_SAMPLES:Ljava/util/List;

    .line 109
    .local v1, "lineSample":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v7, v7

    iget-object v8, v5, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v8, v8

    if-eq v7, v8, :cond_1a

    .line 110
    return v10

    .line 112
    :cond_1a
    const/4 v2, 0x0

    .line 113
    .local v2, "match":I
    const/4 v6, 0x0

    .line 114
    .local v6, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v7, v7

    if-ge v0, v7, :cond_46

    .line 115
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v8, v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v5, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v9, v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/oneplus/screenshot/longshot/compare/Comparable;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 116
    add-int/lit8 v2, v2, 0x1

    .line 118
    :cond_3c
    add-int/lit8 v6, v6, 0x1

    .line 114
    sget-object v7, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_LINE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v7

    add-int/2addr v0, v7

    goto :goto_1d

    .line 121
    :cond_46
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "param$iterator":Ljava/util/Iterator;
    :cond_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 123
    .local v3, "param":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_60
    const/4 v7, 0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v0, v7, :cond_4a

    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v7, v7

    if-ge v0, v7, :cond_4a

    .line 124
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v8, v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v5, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v9, v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/oneplus/screenshot/longshot/compare/Comparable;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 125
    add-int/lit8 v2, v2, 0x1

    .line 127
    :cond_8c
    add-int/lit8 v6, v6, 0x1

    .line 123
    const/4 v7, 0x2

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v0, v7

    goto :goto_60

    .line 130
    .end local v3    # "param":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_9b
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v7, v7

    sget-object v8, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_LINE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v8}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v8

    sub-int/2addr v7, v8

    if-le v2, v7, :cond_aa

    .line 131
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v2, v7

    .line 133
    :cond_aa
    mul-int/lit8 v7, v2, 0x64

    div-int/2addr v7, v6

    return v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;Z)Z
    .registers 16
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "fullcompare"    # Z

    .prologue
    const/16 v12, 0x64

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v5, p1

    .line 53
    check-cast v5, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 54
    .local v5, "pixels":Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    if-eqz v5, :cond_d

    iget-object v7, v5, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    if-nez v7, :cond_e

    .line 55
    :cond_d
    return v9

    .line 54
    :cond_e
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    if-eqz v7, :cond_d

    .line 60
    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->LINE_SAMPLES:Ljava/util/List;

    .line 62
    .local v1, "lineSample":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v7, v7

    iget-object v10, v5, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v10, v10

    if-eq v7, v10, :cond_1d

    .line 63
    return v9

    .line 65
    :cond_1d
    const/4 v2, 0x0

    .line 66
    .local v2, "match":I
    const/4 v6, 0x0

    .line 67
    .local v6, "total":I
    if-eqz p2, :cond_46

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v7, v7

    if-ge v0, v7, :cond_d3

    .line 70
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    iget-object v10, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v10, v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v5, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v11, v11, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Lcom/oneplus/screenshot/longshot/compare/Comparable;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 73
    :cond_41
    add-int/lit8 v6, v6, 0x1

    .line 69
    add-int/lit8 v0, v0, 0x3

    goto :goto_22

    .line 76
    .end local v0    # "i":I
    :cond_46
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_47
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v7, v7

    if-ge v0, v7, :cond_70

    .line 77
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    iget-object v10, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v10, v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v5, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v11, v11, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Lcom/oneplus/screenshot/longshot/compare/Comparable;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 80
    :cond_66
    add-int/lit8 v6, v6, 0x1

    .line 76
    sget-object v7, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_LINE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v7

    add-int/2addr v0, v7

    goto :goto_47

    .line 83
    :cond_70
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "param$iterator":Ljava/util/Iterator;
    :cond_74
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 85
    .local v3, "param":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_8a
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v0, v7, :cond_74

    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v7, v7

    if-ge v0, v7, :cond_74

    .line 86
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    iget-object v10, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v10, v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v5, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v11, v11, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Lcom/oneplus/screenshot/longshot/compare/Comparable;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b5

    .line 87
    add-int/lit8 v2, v2, 0x1

    .line 89
    :cond_b5
    add-int/lit8 v6, v6, 0x1

    .line 85
    const/4 v7, 0x2

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v0, v7

    goto :goto_8a

    .line 92
    .end local v3    # "param":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_c4
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v7, v7

    sget-object v10, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_LINE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v10}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v10

    sub-int/2addr v7, v10

    if-le v2, v7, :cond_d3

    .line 93
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v2, v7

    .line 96
    .end local v4    # "param$iterator":Ljava/util/Iterator;
    :cond_d3
    mul-int/lit8 v7, v2, 0x64

    div-int/2addr v7, v6

    if-ne v7, v12, :cond_da

    move v7, v8

    :goto_d9
    return v7

    :cond_da
    move v7, v9

    goto :goto_d9
.end method

.method public get()[I
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    return-object v0
.end method

.method public setComparable(Lcom/oneplus/screenshot/longshot/compare/Comparable;)V
    .registers 2
    .param p1, "comparable"    # Lcom/oneplus/screenshot/longshot/compare/Comparable;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    .line 142
    return-void
.end method
