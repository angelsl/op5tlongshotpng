.class public Lcom/oneplus/screenshot/longshot/cache/JoinCache;
.super Ljava/util/LinkedList;
.source "JoinCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lcom/oneplus/screenshot/longshot/cache/BitmapCache;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageHeight()I
    .locals 2

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .local v0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-static {v0, p0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->pickBitmaps(Ljava/util/List;Ljava/util/List;)V

    .line 19
    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight(Ljava/util/List;)I

    move-result v1

    return v1
.end method
