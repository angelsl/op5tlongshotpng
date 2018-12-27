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

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    .line 36
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IIII)V
    .registers 15
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    .line 25
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    .line 39
    mul-int v0, p4, p5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    .line 40
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p4

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 41
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->init()V

    .line 42
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>([I)V
    .registers 3
    .param p1, "buffer"    # [I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    .line 25
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    .line 31
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    .line 32
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init()V
    .registers 2

    .line 152
    new-instance v0, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    invoke-direct {v0}, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;-><init>()V

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->setComparable(Lcom/oneplus/screenshot/longshot/compare/Comparable;)V

    .line 153
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public diff(Ljava/lang/Object;)I
    .registers 13
    .param p1, "obj"    # Ljava/lang/Object;

    .line 102
    move-object v0, p1

    check-cast v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 103
    .local v0, "pixels":Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v1, 0x0

    if-eqz v0, :cond_b3

    iget-object v2, v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    if-eqz v2, :cond_b3

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    if-nez v2, :cond_10

    goto/16 :goto_b3

    .line 107
    :cond_10
    sget-object v2, Lcom/oneplus/screenshot/longshot/util/Configs;->LINE_SAMPLES:Ljava/util/List;

    .line 109
    .local v2, "lineSample":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v3, v3

    iget-object v4, v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v4, v4

    if-eq v3, v4, :cond_1b

    .line 110
    return v1

    .line 112
    :cond_1b
    const/4 v3, 0x0

    .line 113
    .local v3, "match":I
    const/4 v4, 0x0

    .line 114
    .local v4, "total":I
    move v5, v4

    move v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "match":I
    .local v5, "total":I
    :goto_20
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v6, v6

    if-ge v3, v6, :cond_49

    .line 115
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v7, v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v8, v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/oneplus/screenshot/longshot/compare/Comparable;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 116
    add-int/lit8 v4, v4, 0x1

    .line 118
    :cond_3f
    add-int/lit8 v5, v5, 0x1

    .line 114
    sget-object v6, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_LINE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_20

    .line 121
    .end local v3    # "i":I
    :cond_49
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 123
    .local v6, "param":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .local v7, "i":I
    :goto_63
    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v7, v8, :cond_9e

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v8, v8

    if-ge v7, v8, :cond_9e

    .line 124
    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    iget-object v9, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v9, v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v10, v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/oneplus/screenshot/longshot/compare/Comparable;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 125
    add-int/lit8 v4, v4, 0x1

    .line 127
    :cond_8f
    add-int/lit8 v5, v5, 0x1

    .line 123
    const/4 v8, 0x2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_63

    .line 129
    .end local v6    # "param":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "i":I
    :cond_9e
    goto :goto_4d

    .line 130
    :cond_9f
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v1, v1

    sget-object v3, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_LINE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v3

    sub-int/2addr v1, v3

    if-le v4, v1, :cond_ae

    .line 131
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v4, v1

    .line 133
    :cond_ae
    const/16 v1, 0x64

    mul-int/2addr v1, v4

    div-int/2addr v1, v5

    return v1

    .line 104
    .end local v2    # "lineSample":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v4    # "match":I
    .end local v5    # "total":I
    :cond_b3
    :goto_b3
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;Z)Z
    .registers 15
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "fullcompare"    # Z

    .line 53
    move-object v0, p1

    check-cast v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 54
    .local v0, "pixels":Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v1, 0x0

    if-eqz v0, :cond_e1

    iget-object v2, v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    if-eqz v2, :cond_e1

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    if-nez v2, :cond_10

    goto/16 :goto_e1

    .line 60
    :cond_10
    sget-object v2, Lcom/oneplus/screenshot/longshot/util/Configs;->LINE_SAMPLES:Ljava/util/List;

    .line 62
    .local v2, "lineSample":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v3, v3

    iget-object v4, v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v4, v4

    if-eq v3, v4, :cond_1b

    .line 63
    return v1

    .line 65
    :cond_1b
    const/4 v3, 0x0

    .line 66
    .local v3, "match":I
    const/4 v4, 0x0

    .line 67
    .local v4, "total":I
    const/4 v5, 0x1

    if-eqz p2, :cond_47

    .line 69
    move v6, v4

    move v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "match":I
    .local v6, "total":I
    :goto_23
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v7, v7

    if-ge v3, v7, :cond_d7

    .line 70
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v8, v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v9, v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/oneplus/screenshot/longshot/compare/Comparable;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 73
    :cond_42
    add-int/lit8 v6, v6, 0x1

    .line 69
    add-int/lit8 v3, v3, 0x3

    goto :goto_23

    .line 76
    .end local v6    # "total":I
    .local v3, "match":I
    .local v4, "total":I
    :cond_47
    move v6, v4

    move v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "match":I
    .restart local v6    # "total":I
    :goto_4a
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v7, v7

    if-ge v3, v7, :cond_73

    .line 77
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v8, v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v9, v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/oneplus/screenshot/longshot/compare/Comparable;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 78
    add-int/lit8 v4, v4, 0x1

    .line 80
    :cond_69
    add-int/lit8 v6, v6, 0x1

    .line 76
    sget-object v7, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_LINE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_4a

    .line 83
    .end local v3    # "i":I
    :cond_73
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_77
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 85
    .local v7, "param":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .local v8, "i":I
    :goto_8d
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v8, v9, :cond_c7

    iget-object v9, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v9, v9

    if-ge v8, v9, :cond_c7

    .line 86
    iget-object v9, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    iget-object v10, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v10, v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v11, v11, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/oneplus/screenshot/longshot/compare/Comparable;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b8

    .line 87
    add-int/lit8 v4, v4, 0x1

    .line 89
    :cond_b8
    add-int/lit8 v6, v6, 0x1

    .line 85
    const/4 v9, 0x2

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_8d

    .line 91
    .end local v7    # "param":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "i":I
    :cond_c7
    goto :goto_77

    .line 92
    :cond_c8
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v3, v3

    sget-object v7, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_LINE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v7

    sub-int/2addr v3, v7

    if-le v4, v3, :cond_d7

    .line 93
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v4, v3

    .line 96
    :cond_d7
    const/16 v3, 0x64

    mul-int v7, v3, v4

    div-int/2addr v7, v6

    if-ne v7, v3, :cond_e0

    move v1, v5

    nop

    :cond_e0
    return v1

    .line 55
    .end local v2    # "lineSample":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v4    # "match":I
    .end local v6    # "total":I
    :cond_e1
    :goto_e1
    return v1
.end method

.method public get()[I
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    return-object v0
.end method

.method public setComparable(Lcom/oneplus/screenshot/longshot/compare/Comparable;)V
    .registers 2
    .param p1, "comparable"    # Lcom/oneplus/screenshot/longshot/compare/Comparable;

    .line 141
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    .line 142
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
