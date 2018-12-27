.class public Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.BitmapUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBitmaps(Ljava/util/List;Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    .local p1, "sources":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static createPreview(Ljava/util/List;I)Landroid/graphics/Bitmap;
    .registers 14
    .param p1, "previewSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;I)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 137
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-static {p0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight(Ljava/util/List;)I

    move-result v0

    .line 138
    .local v0, "imageHeight":I
    const/4 v1, 0x0

    if-gtz v0, :cond_8

    .line 139
    return-object v1

    .line 141
    :cond_8
    invoke-static {p0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth(Ljava/util/List;)I

    move-result v2

    .line 142
    .local v2, "imageWidth":I
    if-ge v2, v0, :cond_10

    move v3, v2

    goto :goto_11

    :cond_10
    move v3, v0

    .line 143
    .local v3, "cutSize":I
    :goto_11
    invoke-static {p0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageConfig(Ljava/util/List;)Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 144
    .local v4, "preview":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 145
    .local v5, "canvas":Landroid/graphics/Canvas;
    move v6, v3

    .line 146
    .local v6, "pos":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .local v7, "i":I
    :goto_25
    if-ltz v7, :cond_3c

    if-lez v6, :cond_3c

    .line 147
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 148
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v6, v10

    .line 149
    const/4 v10, 0x0

    int-to-float v11, v6

    invoke-virtual {v5, v9, v10, v11, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 146
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    add-int/lit8 v7, v7, -0x1

    goto :goto_25

    .line 151
    .end local v7    # "i":I
    :cond_3c
    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    invoke-static {v4, p1, p1, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static drawBitmaps(Ljava/util/List;IIIILandroid/graphics/Canvas;Landroid/graphics/Bitmap$Config;)V
    .registers 23
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "hdiv"    # I
    .param p5, "canvas"    # Landroid/graphics/Canvas;
    .param p6, "config"    # Landroid/graphics/Bitmap$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;IIII",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Bitmap$Config;",
            ")V"
        }
    .end annotation

    .line 108
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    .line 109
    .local v0, "size":I
    const/4 v1, 0x0

    move/from16 v2, p2

    .end local p2    # "y":I
    .local v1, "i":I
    .local v2, "y":I
    :goto_7
    if-ge v1, v0, :cond_36

    .line 110
    move-object/from16 v3, p0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 111
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    move/from16 v5, p1

    int-to-float v6, v5

    int-to-float v7, v2

    const/4 v8, 0x0

    move-object/from16 v15, p5

    invoke-virtual {v15, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v2, v6

    .line 116
    add-int/lit8 v6, v0, -0x1

    move/from16 v7, p4

    invoke-static {v7, v1, v6}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->hasDivider(III)Z

    move-result v12

    move/from16 v9, p3

    move v10, v7

    move v11, v2

    move-object v13, v15

    move-object/from16 v14, p6

    invoke-static/range {v9 .. v14}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->drawDivider(IIIZLandroid/graphics/Canvas;Landroid/graphics/Bitmap$Config;)I

    move-result v2

    .line 109
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 118
    .end local v1    # "i":I
    :cond_36
    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p4

    move-object/from16 v15, p5

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static drawDivider(IIIZLandroid/graphics/Canvas;Landroid/graphics/Bitmap$Config;)I
    .registers 11
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "pos"    # I
    .param p3, "draw"    # Z
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .line 169
    if-eqz p3, :cond_21

    .line 170
    mul-int v0, p0, p1

    new-array v0, v0, [I

    .line 171
    .local v0, "pixels":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    mul-int v2, p0, p1

    if-ge v1, v2, :cond_12

    .line 172
    sget v2, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->DIV_COLOR:I

    aput v2, v0, v1

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 174
    .end local v1    # "i":I
    :cond_12
    invoke-static {v0, p0, p1, p5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 175
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    int-to-float v3, p2

    const/4 v4, 0x0

    invoke-virtual {p4, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 176
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr p2, v2

    .line 178
    .end local v0    # "pixels":[I
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_21
    return p2
.end method

.method public static getImageConfig(Ljava/util/List;)Landroid/graphics/Bitmap$Config;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap$Config;"
        }
    .end annotation

    .line 55
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 56
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0

    .line 58
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getImageHeight(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    .line 28
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .line 29
    .local v0, "height":I
    if-eqz p0, :cond_1b

    .line 30
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 31
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 32
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1a
    goto :goto_7

    .line 34
    :cond_1b
    return v0
.end method

.method public static getImageHeight([Landroid/graphics/Bitmap;)I
    .registers 6
    .param p0, "bitmaps"    # [Landroid/graphics/Bitmap;

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "height":I
    if-eqz p0, :cond_11

    .line 47
    array-length v1, p0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_11

    aget-object v3, p0, v2

    .line 48
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    .line 47
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 51
    :cond_11
    return v0
.end method

.method public static getImageWidth(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    .line 21
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_14

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_14

    .line 22
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    .line 24
    :cond_14
    return v0
.end method

.method public static getImageWidth([Landroid/graphics/Bitmap;)I
    .registers 3
    .param p0, "bitmaps"    # [Landroid/graphics/Bitmap;

    .line 38
    const/4 v0, 0x0

    if-eqz p0, :cond_d

    array-length v1, p0

    if-lez v1, :cond_d

    .line 39
    aget-object v0, p0, v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    .line 41
    :cond_d
    return v0
.end method

.method private static hasDivider(III)Z
    .registers 5
    .param p0, "hdiv"    # I
    .param p1, "index"    # I
    .param p2, "size"    # I

    .line 159
    const/4 v0, 0x0

    if-gtz p0, :cond_4

    .line 160
    return v0

    .line 162
    :cond_4
    add-int/lit8 v1, p2, -0x2

    if-le p1, v1, :cond_9

    .line 163
    return v0

    .line 165
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public static joinBitmaps(ILjava/util/List;)Landroid/graphics/Bitmap;
    .registers 16
    .param p0, "hdiv"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 74
    .local p1, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 75
    const-string v1, "Longshot.BitmapUtils"

    const-string v2, "null bitmaps"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-object v0

    .line 78
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 79
    .local v1, "size":I
    if-nez v1, :cond_19

    .line 80
    const-string v2, "Longshot.BitmapUtils"

    const-string v3, "bitmap size 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-object v0

    .line 83
    :cond_19
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2b

    .line 84
    const-string v0, "Longshot.BitmapUtils"

    const-string v2, "bitmap size 1"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 87
    :cond_2b
    const/4 v2, 0x0

    .line 88
    .local v2, "image":Landroid/graphics/Bitmap;
    monitor-enter p1

    .line 89
    :try_start_2d
    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth(Ljava/util/List;)I

    move-result v3

    .line 90
    .local v3, "width":I
    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight(Ljava/util/List;)I

    move-result v4

    .line 91
    .local v4, "height":I
    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p0

    add-int v11, v4, v5

    .line 92
    .end local v4    # "height":I
    .local v11, "height":I
    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageConfig(Ljava/util/List;)Landroid/graphics/Bitmap$Config;

    move-result-object v4

    move-object v12, v4

    .line 93
    .local v12, "config":Landroid/graphics/Bitmap$Config;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 94
    invoke-static {}, Ljava/lang/System;->runFinalization()V
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_66

    .line 96
    const-wide/16 v4, 0xa

    :try_start_47
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4a} :catch_4b
    .catchall {:try_start_47 .. :try_end_4a} :catchall_66

    .line 98
    goto :goto_4c

    .line 97
    :catch_4b
    move-exception v4

    .line 99
    :goto_4c
    :try_start_4c
    invoke-static {v3, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v2, v4

    .line 100
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v13, v4

    .line 101
    .local v13, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    move v7, v3

    move v8, p0

    move-object v9, v13

    move-object v10, v12

    invoke-static/range {v4 .. v10}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->drawBitmaps(Ljava/util/List;IIIILandroid/graphics/Canvas;Landroid/graphics/Bitmap$Config;)V

    .line 102
    invoke-virtual {v13, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    .end local v3    # "width":I
    .end local v11    # "height":I
    .end local v12    # "config":Landroid/graphics/Bitmap$Config;
    .end local v13    # "canvas":Landroid/graphics/Canvas;
    monitor-exit p1

    .line 104
    return-object v2

    .line 103
    :catchall_66
    move-exception v0

    monitor-exit p1
    :try_end_68
    .catchall {:try_start_4c .. :try_end_68} :catchall_66

    throw v0
.end method

.method public static varargs joinBitmaps(I[Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "hdiv"    # I
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .line 70
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->joinBitmaps(ILjava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static joinBitmaps(Ljava/util/List;)Landroid/graphics/Bitmap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 66
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->joinBitmaps(ILjava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static varargs joinBitmaps([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "bitmaps"    # [Landroid/graphics/Bitmap;

    .line 62
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->joinBitmaps(I[Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static pickBitmaps(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oneplus/screenshot/longshot/cache/BitmapCache;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    .local p1, "caches":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/screenshot/longshot/cache/BitmapCache;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 122
    .local v1, "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 123
    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_1d
    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 127
    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v1    # "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_31
    goto :goto_4

    .line 130
    :cond_32
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
