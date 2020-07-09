.class public Lcom/oneplus/lib/app/appcompat/TintResources;
.super Lcom/oneplus/lib/app/appcompat/ResourcesWrapper;
.source "TintResources.java"


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
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "res"    # Landroid/content/res/Resources;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p2}, Lcom/oneplus/lib/app/appcompat/ResourcesWrapper;-><init>(Landroid/content/res/Resources;)V

    .line 16
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintResources;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 17
    return-void
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

    .line 26
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/ResourcesWrapper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 27
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/TintResources;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 28
    .local v1, "context":Landroid/content/Context;
    nop

    .line 32
    return-object v0
.end method
