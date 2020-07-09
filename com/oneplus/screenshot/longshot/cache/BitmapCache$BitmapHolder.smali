.class Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapHolder"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/cache/BitmapCache;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 122
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;II)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;II)V
    .locals 1
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "offset"    # I
    .param p4, "height"    # I

    .line 125
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->this$0:Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    .line 126
    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ne p4, p1, :cond_0

    .line 127
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 129
    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {p2, p1, p3, v0, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    .line 131
    :goto_0
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public recycle()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    .line 140
    return-void
.end method
