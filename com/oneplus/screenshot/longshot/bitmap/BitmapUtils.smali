.class public Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.BitmapUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBitmaps(Ljava/util/List;Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    .local p1, "sources":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    return-void
.end method

.method public static createPreview(Ljava/util/List;I)Landroid/graphics/Bitmap;
    .registers 13
    .param p1, "previewSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v10, 0x0

    .line 137
    invoke-static {p0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight(Ljava/util/List;)I

    move-result v4

    .line 138
    .local v4, "imageHeight":I
    if-gtz v4, :cond_8

    .line 139
    return-object v10

    .line 141
    :cond_8
    invoke-static {p0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth(Ljava/util/List;)I

    move-result v5

    .line 142
    .local v5, "imageWidth":I
    if-ge v5, v4, :cond_3a

    move v2, v5

    .line 143
    .local v2, "cutSize":I
    :goto_f
    invoke-static {p0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageConfig(Ljava/util/List;)Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v2, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 144
    .local v7, "preview":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 145
    .local v1, "canvas":Landroid/graphics/Canvas;
    move v6, v2

    .line 146
    .local v6, "pos":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_23
    if-ltz v3, :cond_3c

    if-lez v6, :cond_3c

    .line 147
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 148
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v6, v8

    .line 149
    const/4 v8, 0x0

    int-to-float v9, v6

    invoke-virtual {v1, v0, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 146
    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    .line 142
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "cutSize":I
    .end local v3    # "i":I
    .end local v6    # "pos":I
    .end local v7    # "preview":Landroid/graphics/Bitmap;
    :cond_3a
    move v2, v4

    .restart local v2    # "cutSize":I
    goto :goto_f

    .line 151
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v3    # "i":I
    .restart local v6    # "pos":I
    .restart local v7    # "preview":Landroid/graphics/Bitmap;
    :cond_3c
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    const/4 v8, 0x1

    invoke-static {v7, p1, p1, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8
.end method

.method public static drawBitmaps(Ljava/util/List;IIIILandroid/graphics/Canvas;Landroid/graphics/Bitmap$Config;)V
    .registers 16
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "hdiv"    # I
    .param p5, "canvas"    # Landroid/graphics/Canvas;
    .param p6, "config"    # Landroid/graphics/Bitmap$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;IIII",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Bitmap$Config;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    .line 109
    .local v8, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v8, :cond_2a

    .line 110
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 111
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    int-to-float v0, p1

    int-to-float v1, p2

    const/4 v2, 0x0

    invoke-virtual {p5, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 116
    add-int/lit8 v0, v8, -0x1

    invoke-static {p4, v7, v0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->hasDivider(III)Z

    move-result v3

    move v0, p3

    move v1, p4

    move v2, p2

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->drawDivider(IIIZLandroid/graphics/Canvas;Landroid/graphics/Bitmap$Config;)I

    move-result p2

    .line 109
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 118
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2a
    return-void
.end method

.method private static drawDivider(IIIZLandroid/graphics/Canvas;Landroid/graphics/Bitmap$Config;)I
    .registers 12
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "pos"    # I
    .param p3, "draw"    # Z
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 169
    if-eqz p3, :cond_21

    .line 170
    mul-int v3, p0, p1

    new-array v2, v3, [I

    .line 171
    .local v2, "pixels":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    mul-int v3, p0, p1

    if-ge v1, v3, :cond_12

    .line 172
    sget v3, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->DIV_COLOR:I

    aput v3, v2, v1

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 174
    :cond_12
    invoke-static {v2, p0, p1, p5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    int-to-float v4, p2

    const/4 v5, 0x0

    invoke-virtual {p4, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 176
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr p2, v3

    .line 178
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "i":I
    .end local v2    # "pixels":[I
    :cond_21
    return p2
.end method

.method public static getImageConfig(Ljava/util/List;)Landroid/graphics/Bitmap$Config;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap$Config;"
        }
    .end annotation

    .prologue
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    .line 55
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 56
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v2, 0x0

    .line 29
    .local v2, "height":I
    if-eqz p0, :cond_1b

    .line 30
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bitmap$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 31
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_7

    .line 34
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmap$iterator":Ljava/util/Iterator;
    :cond_1b
    return v2
.end method

.method public static getImageHeight([Landroid/graphics/Bitmap;)I
    .registers 6
    .param p0, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "height":I
    if-eqz p0, :cond_11

    .line 47
    const/4 v2, 0x0

    array-length v3, p0

    :goto_5
    if-ge v2, v3, :cond_11

    aget-object v0, p0, v2

    .line 48
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 51
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_11
    return v1
.end method

.method public static getImageWidth(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    .line 21
    if-eqz p0, :cond_14

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 22
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    .line 24
    :cond_14
    return v1
.end method

.method public static getImageWidth([Landroid/graphics/Bitmap;)I
    .registers 3
    .param p0, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 38
    if-eqz p0, :cond_d

    array-length v0, p0

    if-lez v0, :cond_d

    .line 39
    aget-object v0, p0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    .line 41
    :cond_d
    return v1
.end method

.method private static hasDivider(III)Z
    .registers 5
    .param p0, "hdiv"    # I
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 159
    if-gtz p0, :cond_4

    .line 160
    return v1

    .line 162
    :cond_4
    add-int/lit8 v0, p2, -0x2

    if-le p1, v0, :cond_9

    .line 163
    return v1

    .line 165
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public static joinBitmaps(ILjava/util/List;)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "hdiv"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
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

    .prologue
    .local p1, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 74
    if-nez p1, :cond_e

    .line 75
    const-string/jumbo v0, "Longshot.BitmapUtils"

    const-string/jumbo v1, "null bitmaps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-object v4

    .line 78
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    .line 79
    .local v10, "size":I
    if-nez v10, :cond_1e

    .line 80
    const-string/jumbo v0, "Longshot.BitmapUtils"

    const-string/jumbo v1, "bitmap size 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-object v4

    .line 83
    :cond_1e
    const/4 v0, 0x1

    if-ne v10, v0, :cond_31

    .line 84
    const-string/jumbo v0, "Longshot.BitmapUtils"

    const-string/jumbo v1, "bitmap size 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 87
    :cond_31
    const/4 v9, 0x0

    .line 88
    .local v9, "image":Landroid/graphics/Bitmap;
    monitor-enter p1

    .line 89
    :try_start_33
    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth(Ljava/util/List;)I

    move-result v3

    .line 90
    .local v3, "width":I
    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight(Ljava/util/List;)I

    move-result v8

    .line 91
    .local v8, "height":I
    add-int/lit8 v0, v10, -0x1

    mul-int/2addr v0, p0

    add-int/2addr v8, v0

    .line 92
    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageConfig(Ljava/util/List;)Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 93
    .local v6, "config":Landroid/graphics/Bitmap$Config;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 94
    invoke-static {}, Ljava/lang/System;->runFinalization()V
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_66

    .line 96
    const-wide/16 v0, 0xa

    :try_start_4b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_4e} :catch_64
    .catchall {:try_start_4b .. :try_end_4e} :catchall_66

    .line 99
    :goto_4e
    :try_start_4e
    invoke-static {v3, v8, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 100
    .local v9, "image":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 101
    .local v5, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move v4, p0

    invoke-static/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->drawBitmaps(Ljava/util/List;IIIILandroid/graphics/Canvas;Landroid/graphics/Bitmap$Config;)V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_62
    .catchall {:try_start_4e .. :try_end_62} :catchall_66

    monitor-exit p1

    .line 104
    return-object v9

    .line 97
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .local v9, "image":Landroid/graphics/Bitmap;
    :catch_64
    move-exception v7

    .local v7, "e":Ljava/lang/InterruptedException;
    goto :goto_4e

    .line 88
    .end local v3    # "width":I
    .end local v6    # "config":Landroid/graphics/Bitmap$Config;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "height":I
    .end local v9    # "image":Landroid/graphics/Bitmap;
    :catchall_66
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public static varargs joinBitmaps(I[Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "hdiv"    # I
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
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
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
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

    .prologue
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
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/screenshot/longshot/cache/BitmapCache;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    .local p1, "caches":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/screenshot/longshot/cache/BitmapCache;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cache$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 122
    .local v0, "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 123
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_1d
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 127
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 130
    .end local v0    # "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_32
    return-void
.end method
