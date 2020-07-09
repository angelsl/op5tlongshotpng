.class public final Lcom/oneplus/lib/design/widget/ThemeEnforcement;
.super Ljava/lang/Object;
.source "ThemeEnforcement.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final MATERIAL_CHECK_ATTRS:[I

.field private static final MATERIAL_THEME_NAME:Ljava/lang/String; = "Theme.MaterialComponents"

.field private static final ONEPLUS_CHECK_ATTRS:[I

.field private static final ONEPLUS_THEME_NAME:Ljava/lang/String; = "Oneplus.Theme"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcom/oneplus/commonctrl/R$attr;->colorPrimary:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->ONEPLUS_CHECK_ATTRS:[I

    .line 42
    new-array v0, v0, [I

    sget v1, Lcom/oneplus/commonctrl/R$attr;->colorSecondary:I

    aput v1, v0, v3

    sput-object v0, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppCompatTheme(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 195
    sget-object v0, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->ONEPLUS_CHECK_ATTRS:[I

    const-string v1, "Oneplus.Theme"

    invoke-static {p0, v0, v1}, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    .line 196
    return-void
.end method

.method private static checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
        .annotation build Lcom/oneplus/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p3, "defStyleRes"    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 120
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->ThemeEnforcement:[I

    .line 121
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 123
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->ThemeEnforcement_enforceMaterialTheme:I

    .line 124
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 125
    .local v1, "enforceMaterialTheme":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    if-eqz v1, :cond_0

    .line 128
    invoke-static {p0}, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->checkMaterialTheme(Landroid/content/Context;)V

    .line 130
    :cond_0
    invoke-static {p0}, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 131
    return-void
.end method

.method public static checkMaterialTheme(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 199
    sget-object v0, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    const-string v1, "Theme.MaterialComponents"

    invoke-static {p0, v0, v1}, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    .line 200
    return-void
.end method

.method private static varargs checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
        .annotation build Lcom/oneplus/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Lcom/oneplus/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4, "defStyleRes"    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p5, "textAppearanceResIndices"    # [I
        .annotation build Lcom/oneplus/support/annotation/StyleableRes;
        .end annotation
    .end param

    .line 140
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->ThemeEnforcement:[I

    .line 141
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 143
    .local v0, "themeEnforcementAttrs":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->ThemeEnforcement_enforceTextAppearance:I

    .line 144
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 146
    .local v1, "enforceTextAppearance":Z
    if-nez v1, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    return-void

    .line 153
    :cond_0
    if-eqz p5, :cond_2

    array-length v3, p5

    if-nez v3, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    nop

    .line 162
    invoke-static/range {p0 .. p5}, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->isCustomTextAppearanceValid(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z

    move-result v2

    .local v2, "validTextAppearance":Z
    goto :goto_1

    .line 155
    .end local v2    # "validTextAppearance":Z
    :cond_2
    :goto_0
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->ThemeEnforcement_android_textAppearance:I

    .line 156
    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eq v3, v4, :cond_3

    const/4 v2, 0x1

    .line 166
    .restart local v2    # "validTextAppearance":Z
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    if-eqz v2, :cond_4

    .line 173
    return-void

    .line 169
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static checkTheme(Landroid/content/Context;[ILjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeAttributes"    # [I
    .param p2, "themeName"    # Ljava/lang/String;

    .line 219
    invoke-static {p0, p1}, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    return-void

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The style on this component requires your app theme to be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (or a descendant)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isAppCompatTheme(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 203
    sget-object v0, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->ONEPLUS_CHECK_ATTRS:[I

    invoke-static {p0, v0}, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    move-result v0

    return v0
.end method

.method private static varargs isCustomTextAppearanceValid(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
        .annotation build Lcom/oneplus/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Lcom/oneplus/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4, "defStyleRes"    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p5, "textAppearanceResIndices"    # [I
        .annotation build Lcom/oneplus/support/annotation/StyleableRes;
        .end annotation
    .end param

    .line 182
    nop

    .line 183
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 184
    .local v0, "componentAttrs":Landroid/content/res/TypedArray;
    array-length v1, p5

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p5, v3

    .line 185
    .local v4, "customTextAppearanceIndex":I
    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    return v2

    .line 184
    .end local v4    # "customTextAppearanceIndex":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    const/4 v1, 0x1

    return v1
.end method

.method public static isMaterialTheme(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 207
    sget-object v0, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    invoke-static {p0, v0}, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    move-result v0

    return v0
.end method

.method private static isTheme(Landroid/content/Context;[I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeAttributes"    # [I

    .line 211
    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 212
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    .line 213
    .local v1, "success":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    return v1
.end method

.method public static varargs obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
        .annotation build Lcom/oneplus/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Lcom/oneplus/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4, "defStyleRes"    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p5, "textAppearanceResIndices"    # [I
        .annotation build Lcom/oneplus/support/annotation/StyleableRes;
        .end annotation
    .end param

    .line 71
    invoke-static {p0, p1, p3, p4}, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    invoke-static/range {p0 .. p5}, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 77
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public static varargs obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Lcom/oneplus/lib/app/appcompat/TintTypedArray;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
        .annotation build Lcom/oneplus/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Lcom/oneplus/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4, "defStyleRes"    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p5, "textAppearanceResIndices"    # [I
        .annotation build Lcom/oneplus/support/annotation/StyleableRes;
        .end annotation
    .end param

    .line 109
    invoke-static {p0, p1, p3, p4}, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 112
    invoke-static/range {p0 .. p5}, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 115
    invoke-static {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    move-result-object v0

    return-object v0
.end method
