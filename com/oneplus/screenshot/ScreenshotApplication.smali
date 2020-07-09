.class public Lcom/oneplus/screenshot/ScreenshotApplication;
.super Landroid/app/Application;
.source "ScreenshotApplication.java"

# interfaces
.implements Lcom/oneplus/screenshot/util/Cachable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mNaviBar:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Longshot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/oneplus/screenshot/ScreenshotApplication;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/ScreenshotApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/ScreenshotApplication;->mCache:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .line 60
    sget-object v0, Lcom/oneplus/screenshot/ScreenshotApplication;->TAG:Ljava/lang/String;

    const-string v1, "clearCache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/oneplus/screenshot/ScreenshotApplication;->mCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    return-void
.end method

.method public clearNaviBar()V
    .locals 2

    .line 81
    sget-object v0, Lcom/oneplus/screenshot/ScreenshotApplication;->TAG:Ljava/lang/String;

    const-string v1, "cleartNaviBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/oneplus/screenshot/ScreenshotApplication;->mNaviBar:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/ScreenshotApplication;->mNaviBar:Landroid/graphics/Bitmap;

    .line 87
    :cond_0
    return-void
.end method

.method public getCache()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/oneplus/screenshot/ScreenshotApplication;->mCache:Ljava/util/List;

    return-object v0
.end method

.method public getNaviBar()Landroid/graphics/Bitmap;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/oneplus/screenshot/ScreenshotApplication;->mNaviBar:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 26
    sget-object v0, Lcom/oneplus/screenshot/ScreenshotApplication;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {}, Lcom/oneplus/screenshot/util/CrashHandler;->getInstance()Lcom/oneplus/screenshot/util/CrashHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/screenshot/util/CrashHandler;->init(Landroid/content/Context;)V

    .line 30
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 31
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .line 36
    sget-object v0, Lcom/oneplus/screenshot/ScreenshotApplication;->TAG:Ljava/lang/String;

    const-string v1, "onTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, Lcom/oneplus/screenshot/util/CrashHandler;->recycle()V

    .line 40
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 41
    return-void
.end method

.method public setCache(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "cache":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    sget-object v0, Lcom/oneplus/screenshot/ScreenshotApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCache , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcom/oneplus/screenshot/ScreenshotApplication;->clearCache()V

    .line 54
    iget-object v0, p0, Lcom/oneplus/screenshot/ScreenshotApplication;->mCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    return-void
.end method

.method public setNaviBar(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 71
    sget-object v0, Lcom/oneplus/screenshot/ScreenshotApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNaviBar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/oneplus/screenshot/ScreenshotApplication;->mNaviBar:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/oneplus/screenshot/ScreenshotApplication;->mNaviBar:Landroid/graphics/Bitmap;

    .line 77
    return-void
.end method
