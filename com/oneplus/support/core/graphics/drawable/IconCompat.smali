.class public Lcom/oneplus/support/core/graphics/drawable/IconCompat;
.super Ljava/lang/Object;
.source "IconCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/graphics/drawable/IconCompat$IconType;
    }
.end annotation


# static fields
.field private static final ADAPTIVE_ICON_INSET_FACTOR:F = 0.25f

.field private static final AMBIENT_SHADOW_ALPHA:I = 0x1e

.field private static final BLUR_FACTOR:F = 0.010416667f

.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static final DEFAULT_VIEW_PORT_SCALE:F = 0.6666667f

.field private static final EXTRA_INT1:Ljava/lang/String; = "int1"

.field private static final EXTRA_INT2:Ljava/lang/String; = "int2"

.field private static final EXTRA_OBJ:Ljava/lang/String; = "obj"

.field private static final EXTRA_TINT_LIST:Ljava/lang/String; = "tint_list"

.field private static final EXTRA_TINT_MODE:Ljava/lang/String; = "tint_mode"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final ICON_DIAMETER_FACTOR:F = 0.9166667f

.field private static final KEY_SHADOW_ALPHA:I = 0x3d

.field private static final KEY_SHADOW_OFFSET_FACTOR:F = 0.020833334f

.field private static final TAG:Ljava/lang/String; = "IconCompat"

.field public static final TYPE_UNKOWN:I = -0x1


# instance fields
.field private mInt1:I

.field private mInt2:I

.field private mObj1:Ljava/lang/Object;

.field private mTintList:Landroid/content/res/ColorStateList;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "mType"    # I

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    .line 136
    sget-object v0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 233
    iput p1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mType:I

    .line 234
    return-void
.end method

.method public static createFromBundle(Landroid/os/Bundle;)Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 628
    const-string v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 629
    .local v0, "type":I
    new-instance v1, Lcom/oneplus/support/core/graphics/drawable/IconCompat;

    invoke-direct {v1, v0}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 630
    .local v1, "icon":Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    const-string v2, "int1"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt1:I

    .line 631
    const-string v2, "int2"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt2:I

    .line 632
    const-string v2, "tint_list"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 633
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/res/ColorStateList;

    iput-object v2, v1, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    .line 635
    :cond_0
    const-string v2, "tint_mode"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 636
    nop

    .line 637
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 636
    invoke-static {v2}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 639
    :cond_1
    const/4 v2, -0x1

    const-string v3, "obj"

    if-eq v0, v2, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IconCompat"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v2, 0x0

    return-object v2

    .line 650
    :cond_2
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 651
    goto :goto_0

    .line 647
    :cond_3
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 648
    goto :goto_0

    .line 643
    :cond_4
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 644
    nop

    .line 656
    :goto_0
    return-object v1
.end method

.method public static createFromIcon(Landroid/graphics/drawable/Icon;)Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    .locals 2
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 665
    new-instance v0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 666
    .local v0, "iconCompat":Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    iput-object p0, v0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 667
    return-object v0
.end method

.method static createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "adaptiveIconBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "addShadow"    # Z
    .annotation build Lcom/oneplus/support/annotation/VisibleForTesting;
    .end annotation

    .line 790
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 791
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 790
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 793
    .local v0, "size":I
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 794
    .local v1, "icon":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 795
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 797
    .local v3, "paint":Landroid/graphics/Paint;
    int-to-float v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    .line 798
    .local v4, "center":F
    const v5, 0x3f6aaaab

    mul-float/2addr v5, v4

    .line 800
    .local v5, "radius":F
    if-eqz p1, :cond_0

    .line 802
    const v6, 0x3c2aaaab

    int-to-float v7, v0

    mul-float/2addr v7, v6

    .line 803
    .local v7, "blur":F
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 804
    const v6, 0x3caaaaab

    int-to-float v8, v0

    mul-float/2addr v8, v6

    const/high16 v6, 0x3d000000    # 0.03125f

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9, v8, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 805
    invoke-virtual {v2, v4, v4, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 808
    const/high16 v6, 0x1e000000

    invoke-virtual {v3, v7, v9, v9, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 809
    invoke-virtual {v2, v4, v4, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 810
    invoke-virtual {v3}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 814
    .end local v7    # "blur":F
    :cond_0
    const/high16 v6, -0x1000000

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 815
    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, p0, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 817
    .local v6, "shader":Landroid/graphics/BitmapShader;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 818
    .local v7, "shift":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v8, v0

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    .line 819
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, v0

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    .line 818
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 820
    invoke-virtual {v6, v7}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 821
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 822
    invoke-virtual {v2, v4, v4, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 824
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 825
    return-object v1
.end method

.method public static createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    .locals 2
    .param p0, "bits"    # Landroid/graphics/Bitmap;

    .line 176
    if-eqz p0, :cond_0

    .line 179
    new-instance v0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 180
    .local v0, "rep":Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    iput-object p0, v0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 181
    return-object v0

    .line 177
    .end local v0    # "rep":Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createWithBitmap(Landroid/graphics/Bitmap;)Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    .locals 2
    .param p0, "bits"    # Landroid/graphics/Bitmap;

    .line 161
    if-eqz p0, :cond_0

    .line 164
    new-instance v0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 165
    .local v0, "rep":Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    iput-object p0, v0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 166
    return-object v0

    .line 162
    .end local v0    # "rep":Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createWithContentUri(Landroid/net/Uri;)Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 226
    if-eqz p0, :cond_0

    .line 229
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->createWithContentUri(Ljava/lang/String;)Lcom/oneplus/support/core/graphics/drawable/IconCompat;

    move-result-object v0

    return-object v0

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createWithContentUri(Ljava/lang/String;)Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;

    .line 211
    if-eqz p0, :cond_0

    .line 214
    new-instance v0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 215
    .local v0, "rep":Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    iput-object p0, v0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 216
    return-object v0

    .line 212
    .end local v0    # "rep":Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createWithData([BII)Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 194
    if-eqz p0, :cond_0

    .line 197
    new-instance v0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 198
    .local v0, "rep":Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    iput-object p0, v0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 199
    iput p1, v0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt1:I

    .line 200
    iput p2, v0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt2:I

    .line 201
    return-object v0

    .line 195
    .end local v0    # "rep":Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createWithResource(Landroid/content/Context;I)Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 146
    if-eqz p0, :cond_0

    .line 149
    new-instance v0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 150
    .local v0, "rep":Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    iput p1, v0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt1:I

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 152
    return-object v0

    .line 147
    .end local v0    # "rep":Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getResId(Landroid/graphics/drawable/Icon;)I
    .locals 6
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/IdRes;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 736
    const-string v0, "Unable to get icon resource"

    const-string v1, "IconCompat"

    invoke-static {}, Lcom/oneplus/support/core/os/BuildCompat;->isAtLeastP()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 737
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    return v0

    .line 740
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getResId"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 747
    :catch_0
    move-exception v3

    .line 748
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 749
    return v2

    .line 744
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 745
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 746
    return v2

    .line 741
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    .line 742
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 743
    return v2
.end method

.method public static getResPackage(Landroid/graphics/drawable/Icon;)Ljava/lang/String;
    .locals 7
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 708
    const-string v0, "Unable to get icon package"

    const-string v1, "IconCompat"

    invoke-static {}, Lcom/oneplus/support/core/os/BuildCompat;->isAtLeastP()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 709
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 712
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getResPackage"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 719
    :catch_0
    move-exception v3

    .line 720
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 721
    return-object v2

    .line 716
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 717
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    return-object v2

    .line 713
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    .line 714
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 715
    return-object v2
.end method

.method public static getType(Landroid/graphics/drawable/Icon;)I
    .locals 7
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 680
    const-string v0, "Unable to get icon type "

    const-string v1, "IconCompat"

    invoke-static {}, Lcom/oneplus/support/core/os/BuildCompat;->isAtLeastP()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 681
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    return v0

    .line 684
    :cond_0
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getType"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 691
    :catch_0
    move-exception v3

    .line 692
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 693
    return v2

    .line 688
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 689
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    return v2

    .line 685
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    .line 686
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 687
    return v2
.end method

.method private loadDrawableInner(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 406
    iget v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "IconCompat"

    if-eq v0, v3, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 410
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    .line 411
    invoke-static {v3, v2}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 410
    return-object v0

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 453
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "scheme":Ljava/lang/String;
    const/4 v2, 0x0

    .line 455
    .local v2, "is":Ljava/io/InputStream;
    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 456
    const-string v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 464
    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 467
    goto :goto_2

    .line 465
    :catch_0
    move-exception v3

    .line 466
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load image from path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 458
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 461
    :goto_1
    goto :goto_2

    .line 459
    :catch_1
    move-exception v3

    .line 460
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load image from URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 469
    :goto_2
    if-eqz v2, :cond_9

    .line 470
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 471
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 470
    return-object v3

    .line 448
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v2, [B

    iget v3, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt1:I

    iget v4, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt2:I

    .line 449
    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 448
    return-object v0

    .line 415
    :cond_5
    iget-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 416
    .local v0, "resPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 420
    :cond_6
    const-string v5, "android"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 421
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .local v5, "res":Landroid/content/res/Resources;
    goto :goto_3

    .line 423
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 425
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x2000

    :try_start_2
    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 427
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_8

    .line 428
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v7
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 436
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v7, "res":Landroid/content/res/Resources;
    move-object v5, v7

    .line 439
    .end local v7    # "res":Landroid/content/res/Resources;
    .local v5, "res":Landroid/content/res/Resources;
    :goto_3
    :try_start_3
    iget v6, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt1:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/oneplus/support/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v1

    .line 440
    :catch_2
    move-exception v6

    .line 441
    .local v6, "e":Ljava/lang/RuntimeException;
    new-array v3, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt1:I

    .line 442
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    iget-object v2, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 441
    const-string v1, "Unable to load resource 0x%08x from pkg=%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    .end local v6    # "e":Ljava/lang/RuntimeException;
    goto :goto_4

    .line 430
    .local v5, "pm":Landroid/content/pm/PackageManager;
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    :cond_8
    goto :goto_4

    .line 432
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_3
    move-exception v6

    .line 433
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object p0, v3, v1

    const-string v1, "Unable to find pkg=%s for icon %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    nop

    .line 475
    .end local v0    # "resPackage":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_9
    :goto_4
    const/4 v0, 0x0

    return-object v0

    .line 408
    :cond_a
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "x"    # I

    .line 614
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 620
    const-string v0, "UNKNOWN"

    return-object v0

    .line 616
    :cond_0
    const-string v0, "BITMAP_MASKABLE"

    return-object v0

    .line 619
    :cond_1
    const-string v0, "URI"

    return-object v0

    .line 617
    :cond_2
    const-string v0, "DATA"

    return-object v0

    .line 618
    :cond_3
    const-string v0, "RESOURCE"

    return-object v0

    .line 615
    :cond_4
    const-string v0, "BITMAP"

    return-object v0
.end method


# virtual methods
.method public addToShortcutIntent(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 6
    .param p1, "outIntent"    # Landroid/content/Intent;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "badge"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "c"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 486
    iget v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 495
    iget-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 496
    .local v0, "icon":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 523
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Icon type not supported for intent shortcuts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 500
    .local v0, "context":Landroid/content/Context;
    if-nez p2, :cond_2

    .line 501
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget v2, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt1:I

    .line 502
    invoke-static {v0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    .line 501
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 503
    return-void

    .line 505
    :cond_2
    iget v2, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt1:I

    invoke-static {v0, v2}, Lcom/oneplus/support/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 506
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-gtz v3, :cond_3

    goto :goto_0

    .line 511
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 512
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 511
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "icon":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 507
    .end local v3    # "icon":Landroid/graphics/Bitmap;
    :cond_4
    :goto_0
    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 508
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v3

    .line 509
    .local v3, "size":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v3, v4

    .line 510
    .local v3, "icon":Landroid/graphics/Bitmap;
    nop

    .line 515
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v1, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 516
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    move-object v0, v3

    goto :goto_2

    .line 518
    .end local v3    # "icon":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 488
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    iget-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 489
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_6

    .line 491
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 525
    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    .line 527
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 528
    .local v1, "w":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 529
    .local v2, "h":I
    div-int/lit8 v3, v1, 0x2

    div-int/lit8 v4, v2, 0x2

    invoke-virtual {p2, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 530
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 532
    .end local v1    # "w":I
    .end local v2    # "h":I
    :cond_7
    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 533
    return-void
.end method

.method public getResId()I
    .locals 3
    .annotation build Lcom/oneplus/support/annotation/IdRes;
    .end annotation

    .line 278
    iget v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {v0}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->getResId(Landroid/graphics/drawable/Icon;)I

    move-result v0

    return v0

    .line 281
    :cond_0
    iget v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 284
    iget v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt1:I

    return v0

    .line 282
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getResId() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResPackage()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 260
    iget v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {v0}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->getResPackage(Landroid/graphics/drawable/Icon;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 263
    :cond_0
    iget v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 264
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getResPackage() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()I
    .locals 2

    .line 245
    iget v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {v0}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->getType(Landroid/graphics/drawable/Icon;)I

    move-result v0

    return v0

    .line 248
    :cond_0
    iget v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mType:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 296
    iget v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->getUri(Landroid/graphics/drawable/Icon;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getUri(Landroid/graphics/drawable/Icon;)Landroid/net/Uri;
    .locals 7
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 764
    const-string v0, "Unable to get icon uri"

    const-string v1, "IconCompat"

    invoke-static {}, Lcom/oneplus/support/core/os/BuildCompat;->isAtLeastP()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 765
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 768
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getUri"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 775
    :catch_0
    move-exception v3

    .line 776
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    return-object v2

    .line 772
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 773
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 774
    return-object v2

    .line 769
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    .line 770
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 771
    return-object v2
.end method

.method public loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 392
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->loadDrawableInner(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 393
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v2, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, v2, :cond_2

    .line 394
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 395
    iget-object v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 396
    iget-object v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 398
    :cond_2
    return-object v0
.end method

.method public setTint(I)Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    .locals 1
    .param p1, "tint"    # I
        .annotation build Lcom/oneplus/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 309
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->setTintList(Landroid/content/res/ColorStateList;)Lcom/oneplus/support/core/graphics/drawable/IconCompat;

    move-result-object v0

    return-object v0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    .locals 0
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 319
    iput-object p1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    .line 320
    return-object p0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    .locals 0
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 330
    iput-object p1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 331
    return-object p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 540
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 541
    .local v0, "bundle":Landroid/os/Bundle;
    iget v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mType:I

    const/4 v2, -0x1

    const-string v3, "obj"

    if-eq v1, v2, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid icon"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 555
    :cond_1
    iget-object v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 556
    goto :goto_1

    .line 552
    :cond_2
    iget-object v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    goto :goto_1

    .line 544
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 545
    goto :goto_1

    .line 548
    :cond_4
    iget-object v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 549
    nop

    .line 560
    :goto_1
    iget v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mType:I

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 561
    iget v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt1:I

    const-string v2, "int1"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 562
    iget v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt2:I

    const-string v2, "int2"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 563
    iget-object v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_5

    .line 564
    const-string v2, "tint_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 566
    :cond_5
    iget-object v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v2, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, v2, :cond_6

    .line 567
    invoke-virtual {v1}, Landroid/graphics/PorterDuff$Mode;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tint_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_6
    return-object v0
.end method

.method public toIcon()Landroid/graphics/drawable/Icon;
    .locals 3
    .annotation build Lcom/oneplus/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 342
    iget v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 350
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .local v0, "icon":Landroid/graphics/drawable/Icon;
    goto :goto_0

    .line 353
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 354
    invoke-static {v0, v1}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 353
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 356
    .restart local v0    # "icon":Landroid/graphics/drawable/Icon;
    goto :goto_0

    .line 367
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 365
    .restart local v0    # "icon":Landroid/graphics/drawable/Icon;
    goto :goto_0

    .line 361
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :cond_3
    iget-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt1:I

    iget v2, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt2:I

    invoke-static {v0, v1, v2}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 362
    .restart local v0    # "icon":Landroid/graphics/drawable/Icon;
    goto :goto_0

    .line 358
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :cond_4
    iget-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt1:I

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 359
    .restart local v0    # "icon":Landroid/graphics/drawable/Icon;
    goto :goto_0

    .line 347
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :cond_5
    iget-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 348
    .restart local v0    # "icon":Landroid/graphics/drawable/Icon;
    nop

    .line 369
    :goto_0
    iget-object v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_6

    .line 370
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    .line 372
    :cond_6
    iget-object v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v2, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, v2, :cond_7

    .line 373
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;

    .line 375
    :cond_7
    return-object v0

    .line 345
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :cond_8
    iget-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 574
    iget v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 575
    iget-object v0, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 577
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Icon(typ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mType:I

    invoke-static {v1}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 578
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    goto :goto_0

    .line 599
    :cond_1
    const-string v1, " uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 593
    :cond_2
    const-string v1, " len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 594
    iget v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt2:I

    if-eqz v1, :cond_5

    .line 595
    const-string v1, " off="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mInt2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 587
    :cond_3
    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {p0}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 590
    invoke-virtual {p0}, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->getResId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "0x%08x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    goto :goto_0

    .line 581
    :cond_4
    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    .line 582
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    .line 584
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    nop

    .line 602
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_6

    .line 603
    const-string v1, " tint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    iget-object v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 606
    :cond_6
    iget-object v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v2, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, v2, :cond_7

    .line 607
    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/support/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 609
    :cond_7
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
