.class public Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;
.super Landroid/content/res/Resources;
.source "VectorEnabledTintResources.java"


# static fields
.field public static final MAX_SDK_WHERE_REQUIRED:I = 0x14


# instance fields
.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "res"    # Landroid/content/res/Resources;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method

.method public static shouldBeUsed()Z
    .locals 2

    .line 18
    invoke-static {}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->isCompatVectorFromResourcesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 43
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->get()Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    move-result-object v1

    invoke-virtual {v1, v0, p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->onDrawableLoadedFromResources(Landroid/content/Context;Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 46
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method final superGetDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I

    .line 51
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
