.class public Lcom/oneplus/lib/app/appcompat/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field static final ACTIVATED_STATE_SET:[I

.field static final CHECKED_STATE_SET:[I

.field static final DISABLED_STATE_SET:[I

.field static final EMPTY_STATE_SET:[I

.field static final FOCUSED_STATE_SET:[I

.field static final NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

.field static final PRESSED_STATE_SET:[I

.field static final SELECTED_STATE_SET:[I

.field private static final TEMP_ARRAY:[I

.field private static final TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    .line 15
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, -0x101009e

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->DISABLED_STATE_SET:[I

    .line 16
    new-array v1, v0, [I

    const v3, 0x101009c

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->FOCUSED_STATE_SET:[I

    .line 17
    new-array v1, v0, [I

    const v3, 0x10102fe

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->ACTIVATED_STATE_SET:[I

    .line 18
    new-array v1, v0, [I

    const v3, 0x10100a7

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->PRESSED_STATE_SET:[I

    .line 19
    new-array v1, v0, [I

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->CHECKED_STATE_SET:[I

    .line 20
    new-array v1, v0, [I

    const v3, 0x10100a1

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->SELECTED_STATE_SET:[I

    .line 21
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

    .line 23
    new-array v1, v2, [I

    sput-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->EMPTY_STATE_SET:[I

    .line 25
    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->TEMP_ARRAY:[I

    return-void

    :array_0
    .array-data 4
        -0x10100a7
        -0x101009c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDisabledStateList(II)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "textColor"    # I
    .param p1, "disabledTextColor"    # I

    .line 30
    const/4 v0, 0x2

    new-array v1, v0, [[I

    .line 31
    .local v1, "states":[[I
    new-array v0, v0, [I

    .line 32
    .local v0, "colors":[I
    const/4 v2, 0x0

    .line 35
    .local v2, "i":I
    sget-object v3, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v3, v1, v2

    .line 36
    aput p1, v0, v2

    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 40
    sget-object v3, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v3, v1, v2

    .line 41
    aput p0, v0, v2

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 44
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public static getDisabledThemeAttrColor(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 68
    invoke-static {p0, p1}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 69
    .local v0, "csl":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    sget-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->DISABLED_STATE_SET:[I

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    return v1

    .line 75
    :cond_0
    invoke-static {}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getTypedValue()Landroid/util/TypedValue;

    move-result-object v1

    .line 77
    .local v1, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 78
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    .line 80
    .local v2, "disabledAlpha":F
    invoke-static {p0, p1, v2}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I

    move-result v3

    return v3
.end method

.method public static getThemeAttrColor(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 48
    sget-object v0, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->TEMP_ARRAY:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 49
    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    move-result-object v0

    .line 51
    .local v0, "a":Lcom/oneplus/lib/app/appcompat/TintTypedArray;
    :try_start_0
    invoke-virtual {v0, v1, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getColor(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    .line 51
    return v1

    .line 53
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    throw v1
.end method

.method static getThemeAttrColor(Landroid/content/Context;IF)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
    .param p2, "alpha"    # F

    .line 94
    invoke-static {p0, p1}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 95
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 96
    .local v1, "originalAlpha":I
    int-to-float v2, v1

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0, v2}, Lcom/oneplus/lib/util/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    return v2
.end method

.method public static getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 58
    sget-object v0, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->TEMP_ARRAY:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 59
    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Lcom/oneplus/lib/app/appcompat/TintTypedArray;
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    .line 61
    return-object v1

    .line 63
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    throw v1
.end method

.method private static getTypedValue()Landroid/util/TypedValue;
    .locals 2

    .line 85
    sget-object v0, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 86
    .local v0, "typedValue":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 87
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    move-object v0, v1

    .line 88
    sget-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 90
    :cond_0
    return-object v0
.end method
