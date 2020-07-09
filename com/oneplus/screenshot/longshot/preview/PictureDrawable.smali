.class public Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PictureDrawable.java"


# static fields
.field private static final MSG_UPDATE_PREVIEW:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "Longshot.PictureDrawable"


# instance fields
.field private mBitmapList:Ljava/util/List;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private final mInvalidate:Ljava/lang/Runnable;

.field private mMeasureHeight:I

.field private mWidth:I

.field private pictureCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->pictureCount:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mBitmapList:Ljava/util/List;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 84
    new-instance v0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;-><init>(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$2;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$2;-><init>(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mInvalidate:Ljava/lang/Runnable;

    .line 36
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    .line 24
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mBitmapList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    .line 24
    iget v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mMeasureHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;
    .param p1, "x1"    # I

    .line 24
    iput p1, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mMeasureHeight:I

    return p1
.end method

.method static synthetic access$112(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;I)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;
    .param p1, "x1"    # I

    .line 24
    iget v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mMeasureHeight:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mMeasureHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    .line 24
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mInvalidate:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    .line 24
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "height":I
    const/4 v1, 0x0

    .line 43
    .local v1, "width":I
    const/4 v2, 0x0

    .local v2, "count":I
    :goto_0
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mBitmapList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 44
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mBitmapList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 45
    .local v3, "bp":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 46
    .local v4, "bitmapWidth":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 47
    .local v5, "bitmapHeight":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 48
    const/4 v6, 0x0

    int-to-float v7, v0

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 50
    if-le v4, v1, :cond_0

    .line 51
    move v1, v4

    .line 54
    :cond_0
    add-int/2addr v0, v5

    .line 43
    .end local v3    # "bp":Landroid/graphics/Bitmap;
    .end local v4    # "bitmapWidth":I
    .end local v5    # "bitmapHeight":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v2    # "count":I
    :cond_1
    iput v1, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mWidth:I

    .line 57
    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mHeight:I

    .line 58
    return-void
.end method

.method public getBitmapList()Ljava/util/List;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mBitmapList:Ljava/util/List;

    return-object v0
.end method

.method public getBitmapSize()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mBitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mHeight:I

    return v0
.end method

.method public getMeasureHeigh()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mMeasureHeight:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mWidth:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 63
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    return-void
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "index"    # I

    .line 77
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 78
    .local v0, "mag":Landroid/os/Message;
    const/16 v1, 0xbb8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 79
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 81
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    return-void
.end method
