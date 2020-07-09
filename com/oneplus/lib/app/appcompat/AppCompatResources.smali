.class public final Lcom/oneplus/lib/app/appcompat/AppCompatResources;
.super Ljava/lang/Object;
.source "AppCompatResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/AppCompatResources$ColorStateListCacheEntry;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatResources"

.field private static final TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final sColorStateCacheLock:Ljava/lang/Object;

.field private static final sColorStateCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/lib/app/appcompat/AppCompatResources$ColorStateListCacheEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->sColorStateCacheLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addColorStateListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p2, "value"    # Landroid/content/res/ColorStateList;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 129
    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->sColorStateCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 131
    .local v1, "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/oneplus/lib/app/appcompat/AppCompatResources$ColorStateListCacheEntry;>;"
    if-nez v1, :cond_0

    .line 132
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 133
    sget-object v2, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    new-instance v2, Lcom/oneplus/lib/app/appcompat/AppCompatResources$ColorStateListCacheEntry;

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Lcom/oneplus/lib/app/appcompat/AppCompatResources$ColorStateListCacheEntry;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;)V

    .line 135
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 137
    .end local v1    # "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/oneplus/lib/app/appcompat/AppCompatResources$ColorStateListCacheEntry;>;"
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getCachedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 109
    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->sColorStateCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 111
    .local v1, "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/oneplus/lib/app/appcompat/AppCompatResources$ColorStateListCacheEntry;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 112
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/app/appcompat/AppCompatResources$ColorStateListCacheEntry;

    .line 113
    .local v2, "entry":Lcom/oneplus/lib/app/appcompat/AppCompatResources$ColorStateListCacheEntry;
    if-eqz v2, :cond_1

    .line 114
    iget-object v3, v2, Lcom/oneplus/lib/app/appcompat/AppCompatResources$ColorStateListCacheEntry;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, v2, Lcom/oneplus/lib/app/appcompat/AppCompatResources$ColorStateListCacheEntry;->value:Landroid/content/res/ColorStateList;

    monitor-exit v0

    return-object v3

    .line 119
    :cond_0
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 123
    .end local v1    # "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/oneplus/lib/app/appcompat/AppCompatResources$ColorStateListCacheEntry;>;"
    .end local v2    # "entry":Lcom/oneplus/lib/app/appcompat/AppCompatResources$ColorStateListCacheEntry;
    :cond_1
    monitor-exit v0

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    invoke-static {p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getCachedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 53
    .local v0, "csl":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_1

    .line 54
    return-object v0

    .line 57
    :cond_1
    invoke-static {p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->inflateColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_2

    .line 60
    invoke-static {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->addColorStateListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V

    .line 61
    return-object v0

    .line 65
    :cond_2
    invoke-static {p0, p1}, Lcom/oneplus/support/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 83
    invoke-static {}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->get()Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getTypedValue()Landroid/util/TypedValue;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 152
    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 153
    .local v0, "tv":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 154
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    move-object v0, v1

    .line 155
    sget-object v1, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 157
    :cond_0
    return-object v0
.end method

.method private static inflateColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 91
    invoke-static {p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->isColorInt(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 93
    return-object v1

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 99
    .local v2, "xml":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/oneplus/lib/app/appcompat/AppCompatColorStateListInflater;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 100
    :catch_0
    move-exception v3

    .line 101
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "AppCompatResources"

    const-string v5, "Failed to inflate ColorStateList, leaving it to the framework"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v3    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method private static isColorInt(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 143
    .local v0, "r":Landroid/content/res/Resources;
    invoke-static {}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getTypedValue()Landroid/util/TypedValue;

    move-result-object v1

    .line 144
    .local v1, "value":Landroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 146
    iget v3, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    iget v3, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
