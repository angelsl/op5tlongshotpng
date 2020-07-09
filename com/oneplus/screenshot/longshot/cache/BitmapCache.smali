.class public Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.BitmapCache"


# instance fields
.field private isLastCache:Z

.field private isStitchComplete:Z

.field private mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

.field private mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

.field private mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

.field private mIndex:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "paddingTop"    # I
    .param p3, "paddingBottom"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 13
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 14
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mIndex:I

    .line 19
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->isLastCache:Z

    .line 21
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->isStitchComplete:Z

    .line 31
    if-lez p2, :cond_0

    .line 32
    new-instance v1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;II)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 34
    :cond_0
    if-lez p3, :cond_1

    .line 35
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;II)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 37
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->initMain(Landroid/graphics/Bitmap;II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "top"    # Landroid/graphics/Bitmap;
    .param p3, "bottom"    # Landroid/graphics/Bitmap;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 13
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 14
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mIndex:I

    .line 19
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->isLastCache:Z

    .line 21
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->isStitchComplete:Z

    .line 41
    if-eqz p2, :cond_0

    .line 42
    new-instance v1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 44
    :cond_0
    if-eqz p3, :cond_1

    .line 45
    new-instance v1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-direct {v1, p0, p3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 47
    :cond_1
    invoke-direct {p0, p1, v0, v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->initMain(Landroid/graphics/Bitmap;II)V

    .line 48
    return-void
.end method

.method private initMain(Landroid/graphics/Bitmap;II)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "paddingTop"    # I
    .param p3, "paddingBottom"    # I

    .line 111
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;II)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 112
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 57
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBottom()Landroid/graphics/Bitmap;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mIndex:I

    return v0
.end method

.method public getTop()Landroid/graphics/Bitmap;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLastCache()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->isLastCache:Z

    return v0
.end method

.method public isStithComplete()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->isStitchComplete:Z

    return v0
.end method

.method public recycle()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->recycle()V

    .line 95
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->recycle()V

    .line 99
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->recycle()V

    .line 103
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 105
    :cond_2
    return-void
.end method

.method public removeBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 77
    return-object v0
.end method

.method public removeBottom()Landroid/graphics/Bitmap;
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 89
    return-object v0
.end method

.method public removeTop()Landroid/graphics/Bitmap;
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 83
    return-object v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 161
    iput p1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mIndex:I

    .line 162
    return-void
.end method

.method public setLastCache(Z)V
    .locals 0
    .param p1, "last"    # Z

    .line 145
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->isLastCache:Z

    .line 146
    return-void
.end method

.method public setStithComplete(Z)V
    .locals 0
    .param p1, "complete"    # Z

    .line 153
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->isStitchComplete:Z

    .line 154
    return-void
.end method
