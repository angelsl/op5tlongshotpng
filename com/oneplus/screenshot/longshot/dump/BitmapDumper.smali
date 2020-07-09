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

.field private static final TAG:Ljava/lang/String; = "BitmapDumper"

.field public static final TAG_CURR:Ljava/lang/String; = "Curr"

.field public static final TAG_LAST:Ljava/lang/String; = "Last"

.field public static final TAG_NEXT:Ljava/lang/String; = "Next"

.field public static final TAG_PREV:Ljava/lang/String; = "Prev"

.field public static divColor:I

.field public static divHeight:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIndex:I

.field protected mIsNext:Z

.field protected mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->divHeight:I

    .line 36
    const v0, -0xffff01

    sput v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->divColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I
    .param p3, "isNext"    # Z

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIsNext:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mTag:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mContext:Landroid/content/Context;

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
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIsNext:Z

    if-eqz v1, :cond_0

    const-string v1, "Next"

    goto :goto_0

    :cond_0
    const-string v1, "Prev"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static load(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    invoke-static {p0}, Lcom/oneplus/screenshot/util/Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->values()[Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 65
    .local v4, "opt":Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;
    invoke-static {v4, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->access$002(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;Z)Z

    .line 64
    .end local v4    # "opt":Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->DIVIDE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    const/4 v0, 0x1

    sput v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->divHeight:I

    .line 71
    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tag"    # Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dump image"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-nez p1, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/oneplus/screenshot/util/ImageInfo;

    const-string v2, "Dump"

    invoke-direct {v1, v2, p2}, Lcom/oneplus/screenshot/util/ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    .line 81
    :cond_1
    return-void
.end method

.method public dump(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Z)V
    .locals 19
    .param p1, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "isCurr"    # Z

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dump image"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->FILE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 106
    .local v1, "top":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 107
    .local v2, "main":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 108
    .local v3, "bottom":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 109
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    if-eqz v2, :cond_1

    .line 112
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    if-eqz v3, :cond_2

    .line 115
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_2
    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth(Ljava/util/List;)I

    move-result v10

    .line 118
    .local v10, "w":I
    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight(Ljava/util/List;)I

    move-result v11

    .line 119
    .local v11, "h":I
    new-array v12, v11, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 120
    .local v12, "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v4, 0x0

    .line 121
    .local v4, "i":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/graphics/Bitmap;

    .line 122
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    move/from16 v16, v4

    move v15, v5

    .end local v4    # "i":I
    .local v15, "y":I
    .local v16, "i":I
    :goto_1
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v15, v4, :cond_3

    .line 123
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "i":I
    .local v17, "i":I
    new-instance v18, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, v18

    move-object v5, v14

    move v7, v15

    move v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v18, v12, v16

    .line 122
    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v17

    goto :goto_1

    .line 125
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .end local v15    # "y":I
    .end local v17    # "i":I
    .restart local v16    # "i":I
    :cond_3
    move/from16 v4, v16

    goto :goto_0

    .line 126
    .end local v16    # "i":I
    .restart local v4    # "i":I
    :cond_4
    const/4 v5, 0x0

    array-length v6, v12

    move-object/from16 v7, p0

    invoke-virtual {v7, v12, v5, v6}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    goto :goto_2

    .line 103
    .end local v0    # "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    .end local v1    # "top":Landroid/graphics/Bitmap;
    .end local v2    # "main":Landroid/graphics/Bitmap;
    .end local v3    # "bottom":Landroid/graphics/Bitmap;
    .end local v4    # "i":I
    .end local v10    # "w":I
    .end local v11    # "h":I
    .end local v12    # "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    :cond_5
    move-object/from16 v7, p0

    .line 128
    :goto_2
    return-void
.end method

.method public dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V
    .locals 9
    .param p1, "lines"    # [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .param p2, "offset"    # I
    .param p3, "height"    # I

    .line 84
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dump image"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-lez p3, :cond_1

    .line 86
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->get()[I

    move-result-object v1

    array-length v1, v1

    .line 87
    .local v1, "w":I
    move v2, p3

    .line 88
    .local v2, "h":I
    mul-int v3, v1, v2

    new-array v3, v3, [I

    .line 89
    .local v3, "pixels":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 90
    add-int v5, v4, p2

    aget-object v5, p1, v5

    .line 91
    .local v5, "line":Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->get()[I

    move-result-object v6

    mul-int v7, v1, v4

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->get()[I

    move-result-object v8

    array-length v8, v8

    invoke-static {v6, v0, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    .end local v5    # "line":Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    .end local v4    # "i":I
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getCombinedTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Dump"

    invoke-direct {v5, v7, v6}, Lcom/oneplus/screenshot/util/ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5, v0}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    .line 96
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v3    # "pixels":[I
    :cond_1
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method protected setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mTag:Ljava/lang/String;

    .line 139
    return-void
.end method
