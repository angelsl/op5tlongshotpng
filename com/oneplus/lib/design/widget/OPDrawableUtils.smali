.class Lcom/oneplus/lib/design/widget/OPDrawableUtils;
.super Ljava/lang/Object;
.source "OPDrawableUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DrawableUtils"

.field private static sSetConstantStateMethod:Ljava/lang/reflect/Method;

.field private static sSetConstantStateMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 77
    .local v0, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    instance-of v1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v1, :cond_2

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 80
    .local v1, "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 81
    .local v6, "child":Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Lcom/oneplus/lib/design/widget/OPDrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 82
    return v4

    .line 80
    .end local v6    # "child":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v1    # "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    :cond_1
    instance-of v0, p0, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v0, :cond_2

    .line 87
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/lib/design/widget/OPDrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    .line 86
    :cond_2
    nop

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method static setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/DrawableContainer;
    .param p1, "constantState"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .line 43
    invoke-static {p0, p1}, Lcom/oneplus/lib/design/widget/OPDrawableUtils;->setContainerConstantStateV9(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v0

    return v0
.end method

.method private static setContainerConstantStateV9(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/DrawableContainer;
    .param p1, "constantState"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .line 48
    sget-boolean v0, Lcom/oneplus/lib/design/widget/OPDrawableUtils;->sSetConstantStateMethodFetched:Z

    const-string v1, "DrawableUtils"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 50
    :try_start_0
    const-class v0, Landroid/graphics/drawable/DrawableContainer;

    const-string v4, "setConstantState"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/design/widget/OPDrawableUtils;->sSetConstantStateMethod:Ljava/lang/reflect/Method;

    .line 52
    sget-object v0, Lcom/oneplus/lib/design/widget/OPDrawableUtils;->sSetConstantStateMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "Could not fetch setConstantState(). Oh well."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    sput-boolean v3, Lcom/oneplus/lib/design/widget/OPDrawableUtils;->sSetConstantStateMethodFetched:Z

    .line 58
    :cond_0
    sget-object v0, Lcom/oneplus/lib/design/widget/OPDrawableUtils;->sSetConstantStateMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 60
    :try_start_1
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    return v3

    .line 62
    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Could not invoke setConstantState(). Oh well."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v2
.end method
