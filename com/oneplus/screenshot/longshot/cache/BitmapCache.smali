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
.field private mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

.field private mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

.field private mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

.field private mIndex:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    .line 24
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "paddingTop"    # I
    .param p3, "paddingBottom"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 15
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 16
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mIndex:I

    .line 27
    if-lez p2, :cond_16

    .line 28
    new-instance v1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;II)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 30
    :cond_16
    if-lez p3, :cond_24

    .line 31
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;II)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 33
    :cond_24
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->initMain(Landroid/graphics/Bitmap;II)V

    .line 34
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "top"    # Landroid/graphics/Bitmap;
    .param p3, "bottom"    # Landroid/graphics/Bitmap;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 15
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 16
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mIndex:I

    .line 37
    if-eqz p2, :cond_16

    .line 38
    new-instance v1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 40
    :cond_16
    if-eqz p3, :cond_1f

    .line 41
    new-instance v1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-direct {v1, p0, p3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 43
    :cond_1f
    invoke-direct {p0, p1, v0, v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->initMain(Landroid/graphics/Bitmap;II)V

    .line 44
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initMain(Landroid/graphics/Bitmap;II)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "paddingTop"    # I
    .param p3, "paddingBottom"    # I

    .line 107
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;II)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 108
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_b

    .line 51
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 53
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBottom()Landroid/graphics/Bitmap;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_b

    .line 65
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 67
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTop()Landroid/graphics/Bitmap;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_b

    .line 58
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 60
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public recycle()V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 90
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->recycle()V

    .line 91
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 93
    :cond_c
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_17

    .line 94
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->recycle()V

    .line 95
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 97
    :cond_17
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_22

    .line 98
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->recycle()V

    .line 99
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 101
    :cond_22
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removeBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 71
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 73
    return-object v0
.end method

.method public removeBottom()Landroid/graphics/Bitmap;
    .registers 3

    .line 83
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 85
    return-object v0
.end method

.method public removeTop()Landroid/graphics/Bitmap;
    .registers 3

    .line 77
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 79
    return-object v0
.end method
