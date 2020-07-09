.class public final Lcom/oneplus/lib/design/widget/OPDrawableManager;
.super Ljava/lang/Object;
.source "OPDrawableManager.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/OPDrawableManager$ColorFilterLruCache;
    }
.end annotation


# static fields
.field private static final COLOR_FILTER_CACHE:Lcom/oneplus/lib/design/widget/OPDrawableManager$ColorFilterLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/oneplus/lib/design/widget/OPDrawableManager$ColorFilterLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/oneplus/lib/design/widget/OPDrawableManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Lcom/oneplus/lib/design/widget/OPDrawableManager;->COLOR_FILTER_CACHE:Lcom/oneplus/lib/design/widget/OPDrawableManager$ColorFilterLruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p0, "color"    # I
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 58
    sget-object v0, Lcom/oneplus/lib/design/widget/OPDrawableManager;->COLOR_FILTER_CACHE:Lcom/oneplus/lib/design/widget/OPDrawableManager$ColorFilterLruCache;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/lib/design/widget/OPDrawableManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 60
    .local v0, "filter":Landroid/graphics/PorterDuffColorFilter;
    if-nez v0, :cond_0

    .line 62
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v0, v1

    .line 63
    sget-object v1, Lcom/oneplus/lib/design/widget/OPDrawableManager;->COLOR_FILTER_CACHE:Lcom/oneplus/lib/design/widget/OPDrawableManager$ColorFilterLruCache;

    invoke-virtual {v1, p0, p1, v0}, Lcom/oneplus/lib/design/widget/OPDrawableManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 66
    :cond_0
    return-object v0
.end method
