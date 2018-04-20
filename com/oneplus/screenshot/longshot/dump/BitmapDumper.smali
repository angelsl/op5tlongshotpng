.class public abstract Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
.super Ljava/lang/Object;
.source "BitmapDumper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;
    }
.end annotation


# static fields
.field private static final DIR_NAME:Ljava/lang/String; = "Dump"

.field public static DIV_COLOR:I = 0x0

.field public static DIV_HEIGHT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BitmapDumper"

.field public static final TAG_CURR:Ljava/lang/String; = "Curr"

.field public static final TAG_LAST:Ljava/lang/String; = "Last"

.field public static final TAG_NEXT:Ljava/lang/String; = "Next"

.field public static final TAG_PREV:Ljava/lang/String; = "Prev"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIndex:I

.field protected mIsNext:Z

.field protected mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->DIV_HEIGHT:I

    .line 36
    const v0, -0xffff01

    sput v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->DIV_COLOR:I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I
    .param p3, "isNext"    # Z

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIsNext:Z

    .line 42
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mTag:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mContext:Landroid/content/Context;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIndex:I

    .line 54
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mContext:Landroid/content/Context;

    .line 55
    iput p2, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIndex:I

    .line 56
    iput-boolean p3, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIsNext:Z

    .line 57
    return-void
.end method

.method private getCombinedTag()Ljava/lang/String;
    .registers 3

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIsNext:Z

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "Next"

    :goto_19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    const-string/jumbo v0, "Prev"

    goto :goto_19
.end method

.method public static load(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-static {p0}, Lcom/oneplus/screenshot/util/Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 64
    invoke-static {}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->values()[Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_d
    if-ge v1, v4, :cond_17

    aget-object v0, v3, v1

    .line 65
    .local v0, "opt":Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;
    invoke-static {v0, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->-set0(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;Z)Z

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 68
    .end local v0    # "opt":Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;
    :cond_17
    sget-object v1, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->DIVIDE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 69
    const/4 v1, 0x1

    sput v1, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->DIV_HEIGHT:I

    .line 71
    :cond_22
    return-void
.end method


# virtual methods
.method public dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dump image"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-nez p1, :cond_d

    .line 76
    return-void

    .line 78
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_20

    .line 79
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/oneplus/screenshot/util/ImageInfo;

    const-string/jumbo v2, "Dump"

    invoke-direct {v1, v2, p2}, Lcom/oneplus/screenshot/util/ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    .line 81
    :cond_20
    return-void
.end method

.method public dump(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Z)V
    .registers 18
    .param p1, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "isCurr"    # Z

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "dump image"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->FILE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 104
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v7, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 106
    .local v14, "top":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 107
    .local v13, "main":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 108
    .local v8, "bottom":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_2c

    xor-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2c

    .line 109
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_2c
    if-eqz v13, :cond_31

    .line 112
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_31
    if-eqz v8, :cond_36

    .line 115
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_36
    invoke-static {v7}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth(Ljava/util/List;)I

    move-result v4

    .line 118
    .local v4, "w":I
    invoke-static {v7}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight(Ljava/util/List;)I

    move-result v9

    .line 119
    .local v9, "h":I
    new-array v12, v9, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 120
    .local v12, "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v10, 0x0

    .line 121
    .local v10, "i":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "bitmap$iterator":Ljava/util/Iterator;
    :cond_45
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 122
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_52
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v3, v0, :cond_45

    .line 123
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .local v11, "i":I
    new-instance v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v0, v12, v10

    .line 122
    add-int/lit8 v3, v3, 0x1

    move v10, v11

    .end local v11    # "i":I
    .restart local v10    # "i":I
    goto :goto_52

    .line 126
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "y":I
    :cond_67
    array-length v0, v12

    const/4 v2, 0x0

    invoke-virtual {p0, v12, v2, v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    .line 128
    .end local v4    # "w":I
    .end local v6    # "bitmap$iterator":Ljava/util/Iterator;
    .end local v7    # "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    .end local v8    # "bottom":Landroid/graphics/Bitmap;
    .end local v9    # "h":I
    .end local v10    # "i":I
    .end local v12    # "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .end local v13    # "main":Landroid/graphics/Bitmap;
    .end local v14    # "top":Landroid/graphics/Bitmap;
    :cond_6c
    return-void
.end method

.method public dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V
    .registers 14
    .param p1, "lines"    # [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .param p2, "offset"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v9, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "dump image"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-lez p3, :cond_48

    .line 86
    aget-object v6, p1, v9

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->get()[I

    move-result-object v6

    array-length v5, v6

    .line 87
    .local v5, "w":I
    move v1, p3

    .line 88
    .local v1, "h":I
    mul-int v6, v5, p3

    new-array v4, v6, [I

    .line 89
    .local v4, "pixels":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, p3, :cond_31

    .line 90
    add-int v6, v2, p2

    aget-object v3, p1, v6

    .line 91
    .local v3, "line":Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->get()[I

    move-result-object v6

    mul-int v7, v5, v2

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->get()[I

    move-result-object v8

    array-length v8, v8

    invoke-static {v6, v9, v4, v7, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 93
    .end local v3    # "line":Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    :cond_31
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, p3, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/oneplus/screenshot/util/ImageInfo;

    const-string/jumbo v8, "Dump"

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getCombinedTag()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/oneplus/screenshot/util/ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7, v0}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    .line 96
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v4    # "pixels":[I
    .end local v5    # "w":I
    :cond_48
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method protected setTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mTag:Ljava/lang/String;

    .line 139
    return-void
.end method
