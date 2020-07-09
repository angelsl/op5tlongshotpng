.class public Lcom/oneplus/lib/app/appcompat/TintContextWrapper;
.super Landroid/content/ContextWrapper;
.source "TintContextWrapper.java"


# static fields
.field private static final CACHE_LOCK:Ljava/lang/Object;

.field private static sCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oneplus/lib/app/appcompat/TintContextWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mResources:Landroid/content/res/Resources;

.field private final mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->CACHE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-static {}, Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    .line 73
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 74
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Lcom/oneplus/lib/app/appcompat/TintResources;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/app/appcompat/TintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 79
    :goto_0
    return-void
.end method

.method private static shouldWrap(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    instance-of v0, p0, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/lib/app/appcompat/TintResources;

    if-nez v0, :cond_3

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 58
    :cond_3
    :goto_0
    return v1
.end method

.method public static wrap(Landroid/content/Context;)Landroid/content/Context;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-static {p0}, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->shouldWrap(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    sget-object v0, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    goto :goto_3

    .line 27
    :cond_0
    sget-object v1, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 28
    sget-object v2, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 29
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/app/appcompat/TintContextWrapper;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 30
    :cond_1
    sget-object v3, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 27
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/app/appcompat/TintContextWrapper;>;"
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 34
    .end local v1    # "i":I
    :cond_3
    sget-object v1, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_6

    .line 35
    sget-object v2, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 36
    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/app/appcompat/TintContextWrapper;>;"
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 37
    .local v3, "wrapper":Lcom/oneplus/lib/app/appcompat/TintContextWrapper;
    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    if-ne v4, p0, :cond_5

    .line 38
    monitor-exit v0

    return-object v3

    .line 34
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/app/appcompat/TintContextWrapper;>;"
    .end local v3    # "wrapper":Lcom/oneplus/lib/app/appcompat/TintContextWrapper;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 44
    .end local v1    # "i":I
    :cond_6
    :goto_3
    new-instance v1, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;-><init>(Landroid/content/Context;)V

    .line 45
    .local v1, "wrapper":Lcom/oneplus/lib/app/appcompat/TintContextWrapper;
    sget-object v2, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    monitor-exit v0

    return-object v1

    .line 47
    .end local v1    # "wrapper":Lcom/oneplus/lib/app/appcompat/TintContextWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_7
    return-object p0
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/content/ContextWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "resid"    # I

    .line 88
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_0

    .line 89
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->setTheme(I)V

    goto :goto_0

    .line 91
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 93
    :goto_0
    return-void
.end method
