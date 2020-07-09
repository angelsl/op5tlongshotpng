.class public Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$AvdcInflateDelegate;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$VdcInflateDelegate;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;
    }
.end annotation


# static fields
.field private static final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

.field private static final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

.field private static final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

.field private static final COLOR_FILTER_CACHE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager; = null

.field private static final PLATFORM_VD_CLAZZ:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static final SKIP_DRAWABLE_TAG:Ljava/lang/String; = "appcompat_skip_skip"

.field private static final TAG:Ljava/lang/String; = "AppCompatDrawableManager"

.field private static final TINT_CHECKABLE_BUTTON_LIST:[I

.field private static final TINT_COLOR_CONTROL_NORMAL:[I

.field private static final TINT_COLOR_CONTROL_STATE_LIST:[I


# instance fields
.field private mDelegates:Lcom/oneplus/support/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawableCacheLock:Ljava/lang/Object;

.field private final mDrawableCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lcom/oneplus/support/collection/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mHasCheckedVectorDrawableSetup:Z

.field private mKnownDrawableIdTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTintLists:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 58
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 87
    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

    .line 93
    const/4 v0, 0x3

    new-array v2, v0, [I

    sget v3, Lcom/oneplus/commonctrl/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lcom/oneplus/commonctrl/R$drawable;->abc_textfield_default_mtrl_alpha:I

    const/4 v5, 0x1

    aput v3, v2, v5

    sget v3, Lcom/oneplus/commonctrl/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    const/4 v6, 0x2

    aput v3, v2, v6

    sput-object v2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    .line 103
    const/4 v2, 0x7

    new-array v3, v2, [I

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v7, v3, v4

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_seekbar_tick_mark_material:I

    aput v7, v3, v5

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    aput v7, v3, v6

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v7, v3, v0

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    const/4 v8, 0x4

    aput v7, v3, v8

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    const/4 v9, 0x5

    aput v7, v3, v9

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v7, v3, v1

    sput-object v3, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    .line 117
    const/16 v3, 0xa

    new-array v3, v3, [I

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v7, v3, v4

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v7, v3, v5

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v7, v3, v6

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_text_cursor_material:I

    aput v7, v3, v0

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_text_select_handle_left_mtrl_dark:I

    aput v7, v3, v8

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_text_select_handle_middle_mtrl_dark:I

    aput v7, v3, v9

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_text_select_handle_right_mtrl_dark:I

    aput v7, v3, v1

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_text_select_handle_left_mtrl_light:I

    aput v1, v3, v2

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_text_select_handle_middle_mtrl_light:I

    const/16 v2, 0x8

    aput v1, v3, v2

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_text_select_handle_right_mtrl_light:I

    const/16 v2, 0x9

    aput v1, v3, v2

    sput-object v3, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    .line 134
    new-array v0, v0, [I

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_popup_background_mtrl_mult:I

    aput v1, v0, v4

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_cab_background_internal_bg:I

    aput v1, v0, v5

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v1, v0, v6

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    .line 144
    new-array v0, v6, [I

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_tab_indicator_material:I

    aput v1, v0, v4

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_textfield_search_material:I

    aput v1, v0, v5

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    .line 154
    new-array v0, v6, [I

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_btn_check_material:I

    aput v1, v0, v4

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_btn_radio_material:I

    aput v1, v0, v5

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    .line 164
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    return-void
.end method

.method private addDelegate(Ljava/lang/String;Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "delegate"    # Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 458
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Lcom/oneplus/support/collection/ArrayMap;

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Lcom/oneplus/support/collection/ArrayMap;

    invoke-direct {v0}, Lcom/oneplus/support/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Lcom/oneplus/support/collection/ArrayMap;

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Lcom/oneplus/support/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/support/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    return-void
.end method

.method private addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # J
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 387
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 388
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_1

    .line 389
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 390
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/collection/LongSparseArray;

    .line 391
    .local v2, "cache":Lcom/oneplus/support/collection/LongSparseArray;, "Lcom/oneplus/support/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-nez v2, :cond_0

    .line 392
    new-instance v3, Lcom/oneplus/support/collection/LongSparseArray;

    invoke-direct {v3}, Lcom/oneplus/support/collection/LongSparseArray;-><init>()V

    move-object v2, v3

    .line 393
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_0
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2, p3, v3}, Lcom/oneplus/support/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 396
    .end local v2    # "cache":Lcom/oneplus/support/collection/LongSparseArray;, "Lcom/oneplus/support/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    monitor-exit v1

    .line 397
    const/4 v1, 0x1

    return v1

    .line 396
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 399
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "tintList"    # Landroid/content/res/ColorStateList;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 546
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 550
    .local v0, "themeTints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/res/ColorStateList;>;"
    if-nez v0, :cond_1

    .line 551
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 552
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 555
    return-void
.end method

.method private static arrayContains([II)Z
    .locals 4
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 471
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    .line 472
    .local v3, "id":I
    if-ne v3, p1, :cond_0

    .line 473
    const/4 v0, 0x1

    return v0

    .line 471
    .end local v3    # "id":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    :cond_1
    return v1
.end method

.method private checkVectorDrawableSetup(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 681
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    if-eqz v0, :cond_0

    .line 683
    return-void

    .line 687
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    .line 688
    return-void
.end method

.method private createBorderlessButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "customTint"    # Landroid/content/res/ColorStateList;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 566
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "baseColor"    # I
        .annotation build Lcom/oneplus/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p3, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 577
    const/4 v0, 0x4

    new-array v1, v0, [[I

    .line 578
    .local v1, "states":[[I
    new-array v0, v0, [I

    .line 579
    .local v0, "colors":[I
    const/4 v2, 0x0

    .line 581
    .local v2, "i":I
    sget v3, Lcom/oneplus/commonctrl/R$attr;->colorControlHighlight:I

    invoke-static {p1, v3}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    .line 582
    .local v3, "colorControlHighlight":I
    sget v4, Lcom/oneplus/commonctrl/R$attr;->colorButtonNormal:I

    invoke-static {p1, v4}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    .line 585
    .local v4, "disabledColor":I
    sget-object v5, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v5, v1, v2

    .line 586
    const/4 v5, 0x0

    if-nez p3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    aget-object v6, v1, v2

    invoke-virtual {p3, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    :goto_0
    aput v6, v0, v2

    .line 587
    add-int/lit8 v2, v2, 0x1

    .line 589
    sget-object v6, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->PRESSED_STATE_SET:[I

    aput-object v6, v1, v2

    .line 590
    nop

    .line 591
    if-nez p3, :cond_1

    move v6, p2

    goto :goto_1

    :cond_1
    aget-object v6, v1, v2

    invoke-virtual {p3, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    .line 590
    :goto_1
    invoke-static {v3, v6}, Lcom/oneplus/support/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v6

    aput v6, v0, v2

    .line 592
    add-int/lit8 v2, v2, 0x1

    .line 594
    sget-object v6, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->FOCUSED_STATE_SET:[I

    aput-object v6, v1, v2

    .line 595
    nop

    .line 596
    if-nez p3, :cond_2

    move v6, p2

    goto :goto_2

    :cond_2
    aget-object v6, v1, v2

    invoke-virtual {p3, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    .line 595
    :goto_2
    invoke-static {v3, v6}, Lcom/oneplus/support/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v6

    aput v6, v0, v2

    .line 597
    add-int/lit8 v2, v2, 0x1

    .line 600
    sget-object v6, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v6, v1, v2

    .line 601
    if-nez p3, :cond_3

    move v5, p2

    goto :goto_3

    :cond_3
    aget-object v6, v1, v2

    invoke-virtual {p3, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    :goto_3
    aput v5, v0, v2

    .line 602
    add-int/lit8 v2, v2, 0x1

    .line 604
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v5
.end method

.method private static createCacheKey(Landroid/util/TypedValue;)J
    .locals 4
    .param p0, "tv"    # Landroid/util/TypedValue;

    .line 209
    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private createColoredButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "customTint"    # Landroid/content/res/ColorStateList;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 571
    sget v0, Lcom/oneplus/commonctrl/R$attr;->colorAccent:I

    .line 572
    invoke-static {p1, v0}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 571
    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createDefaultButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "customTint"    # Landroid/content/res/ColorStateList;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 559
    sget v0, Lcom/oneplus/commonctrl/R$attr;->colorButtonNormal:I

    .line 560
    invoke-static {p1, v0}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 559
    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 214
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 218
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 219
    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v3

    .line 221
    .local v3, "key":J
    invoke-direct {p0, p1, v3, v4}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 222
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 224
    return-object v1

    .line 228
    :cond_1
    sget v5, Lcom/oneplus/commonctrl/R$drawable;->abc_cab_background_top_material:I

    if-ne p2, v5, :cond_2

    .line 229
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    sget v8, Lcom/oneplus/commonctrl/R$drawable;->abc_cab_background_internal_bg:I

    .line 230
    invoke-virtual {p0, p1, v8}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v6, v7

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    .line 231
    invoke-virtual {p0, p1, v7}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v1, v5

    .line 235
    :cond_2
    if-eqz v1, :cond_3

    .line 236
    iget v2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 238
    invoke-direct {p0, p1, v3, v4, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    .line 241
    :cond_3
    return-object v1
.end method

.method private static createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p0, "tint"    # Landroid/content/res/ColorStateList;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p2, "state"    # [I

    .line 653
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 656
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 657
    .local v0, "color":I
    invoke-static {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    return-object v1

    .line 654
    .end local v0    # "color":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static get()Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;
    .locals 1

    .line 66
    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->INSTANCE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    invoke-direct {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->INSTANCE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    .line 68
    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->INSTANCE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->installDefaultInflateDelegates(Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;)V

    .line 70
    :cond_0
    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->INSTANCE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    return-object v0
.end method

.method private getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # J

    .line 363
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 365
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/collection/LongSparseArray;

    .line 366
    .local v1, "cache":Lcom/oneplus/support/collection/LongSparseArray;, "Lcom/oneplus/support/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 367
    monitor-exit v0

    return-object v2

    .line 370
    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/oneplus/support/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 371
    .local v3, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v3, :cond_2

    .line 373
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 374
    .local v4, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v4, :cond_1

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 378
    :cond_1
    invoke-virtual {v1, p2, p3}, Lcom/oneplus/support/collection/LongSparseArray;->delete(J)V

    .line 381
    .end local v1    # "cache":Lcom/oneplus/support/collection/LongSparseArray;, "Lcom/oneplus/support/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .end local v3    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v4    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    monitor-exit v0

    .line 382
    return-object v2

    .line 381
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p0, "color"    # I
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 662
    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 664
    .local v0, "filter":Landroid/graphics/PorterDuffColorFilter;
    if-nez v0, :cond_0

    .line 666
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v0, v1

    .line 667
    sget-object v1, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v1, p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 670
    :cond_0
    return-object v0
.end method

.method private getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 537
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 538
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 539
    .local v0, "tints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/res/ColorStateList;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    :cond_0
    return-object v1

    .line 541
    .end local v0    # "tints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/res/ColorStateList;>;"
    :cond_1
    return-object v1
.end method

.method static getTintMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .param p0, "resId"    # I

    .line 480
    const/4 v0, 0x0

    .line 482
    .local v0, "mode":Landroid/graphics/PorterDuff$Mode;
    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_switch_thumb_material:I

    if-ne p0, v1, :cond_0

    .line 483
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 486
    :cond_0
    return-object v0
.end method

.method private static installDefaultInflateDelegates(Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;)V
    .locals 3
    .param p0, "manager"    # Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 78
    .local v0, "sdk":I
    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 79
    new-instance v1, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$VdcInflateDelegate;

    invoke-direct {v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$VdcInflateDelegate;-><init>()V

    const-string v2, "vector"

    invoke-direct {p0, v2, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;)V

    .line 80
    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 82
    new-instance v1, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$AvdcInflateDelegate;

    invoke-direct {v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$AvdcInflateDelegate;-><init>()V

    const-string v2, "animated-vector"

    invoke-direct {p0, v2, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;)V

    .line 85
    :cond_0
    return-void
.end method

.method private static isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 691
    instance-of v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-nez v0, :cond_1

    .line 692
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 691
    :goto_1
    return v0
.end method

.method private loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I

    .line 291
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Lcom/oneplus/support/collection/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/oneplus/support/collection/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 292
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    const-string v2, "appcompat_skip_skip"

    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    .local v0, "cachedTagName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Lcom/oneplus/support/collection/ArrayMap;

    .line 295
    invoke-virtual {v3, v0}, Lcom/oneplus/support/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 300
    .end local v0    # "cachedTagName":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 298
    .restart local v0    # "cachedTagName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 302
    .end local v0    # "cachedTagName":Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    .line 305
    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_3

    .line 306
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 309
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 310
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v3, 0x1

    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 312
    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v4

    .line 314
    .local v4, "key":J
    invoke-direct {p0, p1, v4, v5}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 315
    .local v6, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_4

    .line 317
    return-object v6

    .line 320
    :cond_4
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_9

    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 323
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 324
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    .line 326
    .local v8, "attrs":Landroid/util/AttributeSet;
    :goto_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v10, v9

    .local v10, "type":I
    const/4 v11, 0x2

    if-eq v9, v11, :cond_5

    if-eq v10, v3, :cond_5

    goto :goto_2

    .line 330
    :cond_5
    if-ne v10, v11, :cond_8

    .line 334
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "tagName":Ljava/lang/String;
    iget-object v9, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    invoke-virtual {v9, p2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 339
    iget-object v9, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Lcom/oneplus/support/collection/ArrayMap;

    invoke-virtual {v9, v3}, Lcom/oneplus/support/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;

    .line 340
    .local v9, "delegate":Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;
    if-eqz v9, :cond_6

    .line 341
    nop

    .line 342
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    .line 341
    invoke-interface {v9, p1, v7, v8, v11}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;->createFromXmlInner(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object v6, v11

    .line 344
    :cond_6
    if-eqz v6, :cond_7

    .line 346
    iget v11, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v6, v11}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 349
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "delegate":Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;
    .end local v10    # "type":I
    :cond_7
    goto :goto_3

    .line 331
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "attrs":Landroid/util/AttributeSet;
    .restart local v10    # "type":I
    :cond_8
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v9, "No start tag found"

    invoke-direct {v3, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "tv":Landroid/util/TypedValue;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v4    # "key":J
    .end local v6    # "dr":Landroid/graphics/drawable/Drawable;
    .end local p0    # "this":Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resId":I
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "type":I
    .restart local v0    # "tv":Landroid/util/TypedValue;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v4    # "key":J
    .restart local v6    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "this":Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "resId":I
    :catch_0
    move-exception v3

    .line 351
    :cond_9
    :goto_3
    if-nez v6, :cond_a

    .line 354
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 356
    :cond_a
    return-object v6

    .line 359
    .end local v0    # "tv":Landroid/util/TypedValue;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v4    # "key":J
    .end local v6    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_b
    return-object v1
.end method

.method private removeDelegate(Ljava/lang/String;Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "delegate"    # Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 465
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Lcom/oneplus/support/collection/ArrayMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/support/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 466
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Lcom/oneplus/support/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_0
    return-void
.end method

.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 674
    invoke-static {p0}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 677
    :cond_0
    if-nez p2, :cond_1

    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-static {p1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 678
    return-void
.end method

.method private tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "failIfNotKnown"    # Z
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 246
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 247
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_2

    .line 249
    invoke-static {p4}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 252
    :cond_0
    invoke-static {p4}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 253
    invoke-static {p4, v0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 256
    invoke-static {p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 257
    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v1, :cond_1

    .line 258
    invoke-static {p4, v1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 260
    .end local v1    # "tintMode":Landroid/graphics/PorterDuff$Mode;
    :cond_1
    goto/16 :goto_1

    :cond_2
    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_seekbar_track_material:I

    const v2, 0x102000d

    const v3, 0x102000f

    const/high16 v4, 0x1020000

    if-ne p2, v1, :cond_3

    .line 261
    move-object v1, p4

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 262
    .local v1, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$attr;->colorControlNormal:I

    .line 263
    invoke-static {p1, v5}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 262
    invoke-static {v4, v5, v6}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 264
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$attr;->colorControlNormal:I

    .line 265
    invoke-static {p1, v4}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 264
    invoke-static {v3, v4, v5}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 266
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$attr;->colorControlActivated:I

    .line 267
    invoke-static {p1, v3}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 266
    invoke-static {v2, v3, v4}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 268
    .end local v1    # "ld":Landroid/graphics/drawable/LayerDrawable;
    goto :goto_1

    :cond_3
    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_ratingbar_material:I

    if-eq p2, v1, :cond_5

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_ratingbar_indicator_material:I

    if-eq p2, v1, :cond_5

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_ratingbar_small_material:I

    if-ne p2, v1, :cond_4

    goto :goto_0

    .line 280
    :cond_4
    invoke-static {p1, p2, p4}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v1

    .line 281
    .local v1, "tinted":Z
    if-nez v1, :cond_6

    if-eqz p3, :cond_6

    .line 284
    const/4 p4, 0x0

    goto :goto_1

    .line 271
    .end local v1    # "tinted":Z
    :cond_5
    :goto_0
    move-object v1, p4

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 272
    .local v1, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$attr;->colorControlNormal:I

    .line 273
    invoke-static {p1, v5}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 272
    invoke-static {v4, v5, v6}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 275
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$attr;->colorControlActivated:I

    .line 276
    invoke-static {p1, v4}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 275
    invoke-static {v3, v4, v5}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 277
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$attr;->colorControlActivated:I

    .line 278
    invoke-static {p1, v3}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 277
    invoke-static {v2, v3, v4}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 279
    .end local v1    # "ld":Landroid/graphics/drawable/LayerDrawable;
    nop

    .line 287
    :cond_6
    :goto_1
    return-object p4
.end method

.method static tintDrawable(Landroid/graphics/drawable/Drawable;Lcom/oneplus/lib/app/appcompat/TintInfo;[I)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Lcom/oneplus/lib/app/appcompat/TintInfo;
    .param p2, "state"    # [I

    .line 630
    invoke-static {p0}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 632
    return-void

    .line 635
    :cond_0
    iget-boolean v0, p1, Lcom/oneplus/lib/app/appcompat/TintInfo;->mHasTintList:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/oneplus/lib/app/appcompat/TintInfo;->mHasTintMode:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 641
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3

    .line 636
    :cond_2
    :goto_0
    nop

    .line 637
    iget-boolean v0, p1, Lcom/oneplus/lib/app/appcompat/TintInfo;->mHasTintList:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/oneplus/lib/app/appcompat/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 638
    :goto_1
    iget-boolean v1, p1, Lcom/oneplus/lib/app/appcompat/TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/oneplus/lib/app/appcompat/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 636
    :goto_2
    invoke-static {v0, v1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 644
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_5

    .line 647
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 649
    :cond_5
    return-void
.end method

.method static tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 416
    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 417
    .local v0, "tintMode":Landroid/graphics/PorterDuff$Mode;
    const/4 v1, 0x0

    .line 418
    .local v1, "colorAttrSet":Z
    const/4 v2, 0x0

    .line 419
    .local v2, "colorAttr":I
    const/4 v3, 0x0

    .line 421
    .local v3, "alpha":I
    sget-object v4, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v4, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 422
    sget v2, Lcom/oneplus/commonctrl/R$attr;->colorControlNormal:I

    .line 423
    const/4 v1, 0x1

    goto :goto_0

    .line 424
    :cond_0
    sget-object v4, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    invoke-static {v4, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 425
    sget v2, Lcom/oneplus/commonctrl/R$attr;->colorControlActivated:I

    .line 426
    const/4 v1, 0x1

    goto :goto_0

    .line 427
    :cond_1
    sget-object v4, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    invoke-static {v4, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 428
    const v2, 0x1010031

    .line 429
    const/4 v1, 0x1

    .line 430
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 431
    :cond_2
    sget v4, Lcom/oneplus/commonctrl/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v4, :cond_3

    .line 432
    const v2, 0x1010030

    .line 433
    const/4 v1, 0x1

    .line 434
    const v4, 0x42233333    # 40.8f

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_0

    .line 435
    :cond_3
    sget v4, Lcom/oneplus/commonctrl/R$drawable;->abc_dialog_material_background:I

    if-ne p1, v4, :cond_4

    .line 436
    const v2, 0x1010031

    .line 437
    const/4 v1, 0x1

    .line 440
    :cond_4
    :goto_0
    if-eqz v1, :cond_7

    .line 441
    invoke-static {p2}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 442
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 445
    :cond_5
    invoke-static {p0, v2}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    .line 446
    .local v4, "color":I
    invoke-static {v4, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 448
    const/4 v5, -0x1

    if-eq v3, v5, :cond_6

    .line 449
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 452
    :cond_6
    const/4 v5, 0x1

    return v5

    .line 454
    .end local v4    # "color":I
    :cond_7
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "failIfNotKnown"    # Z

    .line 177
    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->checkVectorDrawableSetup(Landroid/content/Context;)V

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 180
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 183
    :cond_0
    if-nez v0, :cond_1

    .line 184
    invoke-static {p1, p2}, Lcom/oneplus/support/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 187
    :cond_1
    if-eqz v0, :cond_2

    .line 189
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 191
    :cond_2
    if-eqz v0, :cond_3

    .line 193
    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    :cond_3
    return-object v0
.end method

.method getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getTintList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method getTintList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "customTint"    # Landroid/content/res/ColorStateList;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 497
    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 500
    .local v0, "useCache":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 502
    .local v1, "tint":Landroid/content/res/ColorStateList;
    :goto_1
    if-nez v1, :cond_e

    .line 504
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_edit_text_material:I

    if-ne p2, v2, :cond_2

    .line 505
    sget v2, Lcom/oneplus/commonctrl/R$color;->abc_tint_edittext:I

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_3

    .line 506
    :cond_2
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v2, :cond_3

    .line 507
    sget v2, Lcom/oneplus/commonctrl/R$color;->abc_tint_switch_track:I

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_3

    .line 508
    :cond_3
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_switch_thumb_material:I

    if-ne p2, v2, :cond_4

    .line 509
    sget v2, Lcom/oneplus/commonctrl/R$color;->op_abc_tint_switch_thumb:I

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    .line 510
    :cond_4
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_btn_default_mtrl_shape:I

    if-ne p2, v2, :cond_5

    .line 511
    invoke-direct {p0, p1, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createDefaultButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    .line 512
    :cond_5
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_btn_borderless_material:I

    if-ne p2, v2, :cond_6

    .line 513
    invoke-direct {p0, p1, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createBorderlessButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    .line 514
    :cond_6
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_btn_colored_material:I

    if-ne p2, v2, :cond_7

    .line 515
    invoke-direct {p0, p1, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createColoredButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    .line 516
    :cond_7
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v2, :cond_c

    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_spinner_textfield_background_material:I

    if-ne p2, v2, :cond_8

    goto :goto_2

    .line 519
    :cond_8
    sget-object v2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v2, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 520
    sget v2, Lcom/oneplus/commonctrl/R$attr;->colorControlNormal:I

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    .line 521
    :cond_9
    sget-object v2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    invoke-static {v2, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 522
    sget v2, Lcom/oneplus/commonctrl/R$color;->abc_tint_default:I

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    .line 523
    :cond_a
    sget-object v2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    invoke-static {v2, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 524
    sget v2, Lcom/oneplus/commonctrl/R$color;->abc_tint_btn_checkable:I

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    .line 525
    :cond_b
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_seekbar_thumb_material:I

    if-ne p2, v2, :cond_d

    .line 526
    sget v2, Lcom/oneplus/commonctrl/R$color;->abc_tint_seek_thumb:I

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    .line 518
    :cond_c
    :goto_2
    sget v2, Lcom/oneplus/commonctrl/R$color;->abc_tint_spinner:I

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 529
    :cond_d
    :goto_3
    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    .line 530
    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V

    .line 533
    :cond_e
    return-object v1
.end method

.method public onConfigurationChanged(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 199
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/collection/LongSparseArray;

    .line 201
    .local v1, "cache":Lcom/oneplus/support/collection/LongSparseArray;, "Lcom/oneplus/support/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v1}, Lcom/oneplus/support/collection/LongSparseArray;->clear()V

    .line 205
    .end local v1    # "cache":Lcom/oneplus/support/collection/LongSparseArray;, "Lcom/oneplus/support/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :cond_0
    monitor-exit v0

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onDrawableLoadedFromResources(Landroid/content/Context;Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resources"    # Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 404
    invoke-direct {p0, p1, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 405
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p2, p3}, Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;->superGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 408
    :cond_0
    if-eqz v0, :cond_1

    .line 409
    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 411
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
