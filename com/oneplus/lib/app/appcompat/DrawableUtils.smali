.class public Lcom/oneplus/lib/app/appcompat/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# static fields
.field public static final INSETS_NONE:Landroid/graphics/Rect;

.field private static final TAG:Ljava/lang/String; = "DrawableUtils"

.field private static final VECTOR_DRAWABLE_CLAZZ_NAME:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static sInsetsClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 35
    :try_start_0
    const-string v0, "android.graphics.Insets"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 40
    :cond_0
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 11
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    .line 111
    return v2

    .line 112
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 115
    return v2

    .line 116
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_2

    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_2

    .line 117
    return v2

    .line 120
    :cond_2
    const/4 v0, 0x0

    .line 121
    .local v0, "wdClass":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 123
    .local v1, "dwClass":Ljava/lang/Class;
    :try_start_0
    const-string v3, "com.oneplus.support.core.graphics.drawable.WrappedDrawable"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v3

    .line 125
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 128
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    :try_start_1
    const-string v3, "com.oneplus.support.core.graphics.drawable.DrawableWrapper"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    .line 131
    goto :goto_1

    .line 129
    :catch_1
    move-exception v3

    .line 130
    .restart local v3    # "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 133
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    instance-of v3, p0, Landroid/graphics/drawable/DrawableContainer;

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 135
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    .line 136
    .local v3, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    instance-of v5, v3, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v5, :cond_4

    .line 137
    move-object v5, v3

    check-cast v5, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 139
    .local v5, "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    invoke-virtual {v5}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    array-length v7, v6

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 140
    .local v9, "child":Landroid/graphics/drawable/Drawable;
    invoke-static {v9}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 141
    return v2

    .line 139
    .end local v9    # "child":Landroid/graphics/drawable/Drawable;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 145
    .end local v3    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v5    # "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    :cond_4
    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v1, :cond_6

    goto :goto_4

    .line 156
    :cond_6
    instance-of v2, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawableWrapper;

    if-eqz v2, :cond_7

    .line 157
    move-object v2, p0

    check-cast v2, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawableWrapper;

    .line 159
    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 157
    invoke-static {v2}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    return v2

    .line 160
    :cond_7
    instance-of v2, p0, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v2, :cond_8

    .line 161
    move-object v2, p0

    check-cast v2, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    return v2

    .line 164
    :cond_8
    :goto_3
    return v4

    .line 146
    :cond_9
    :goto_4
    if-nez v0, :cond_a

    move-object v3, v1

    goto :goto_5

    :cond_a
    move-object v3, v0

    .line 148
    .local v3, "dwOrwdClass":Ljava/lang/Class;
    :goto_5
    :try_start_2
    const-string v5, "getWrappedDrawable"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 149
    .local v5, "getWrappedDrawableMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 150
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 151
    .local v4, "returnDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return v2

    .line 152
    .end local v4    # "returnDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "getWrappedDrawableMethod":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v4

    .line 153
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    return v2
.end method

.method static fixDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->fixVectorDrawableTinting(Landroid/graphics/drawable/Drawable;)V

    .line 103
    :cond_0
    return-void
.end method

.method private static fixVectorDrawableTinting(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 172
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 173
    .local v0, "originalState":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    sget-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->EMPTY_STATE_SET:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1

    .line 175
    :cond_1
    :goto_0
    sget-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->CHECKED_STATE_SET:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 181
    :goto_1
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 182
    return-void
.end method

.method public static getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 14
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 50
    sget-object v0, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 54
    :try_start_0
    invoke-static {p0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object p0, v0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getOpticalInsets"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 57
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 58
    .local v0, "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 60
    .local v1, "insets":Ljava/lang/Object;
    if-eqz v1, :cond_6

    .line 62
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 64
    .local v3, "result":Landroid/graphics/Rect;
    sget-object v4, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 65
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    sparse-switch v10, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v10, "right"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v9, v12

    goto :goto_1

    :sswitch_1
    const-string v10, "left"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v9, v2

    goto :goto_1

    :sswitch_2
    const-string v10, "top"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v9, v13

    goto :goto_1

    :sswitch_3
    const-string v10, "bottom"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v9, v11

    :goto_1
    if-eqz v9, :cond_4

    if-eq v9, v13, :cond_3

    if-eq v9, v12, :cond_2

    if-eq v9, v11, :cond_1

    goto :goto_2

    .line 76
    :cond_1
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->right:I

    .line 74
    goto :goto_2

    .line 70
    :cond_3
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->top:I

    .line 71
    goto :goto_2

    .line 67
    :cond_4
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->left:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    nop

    .line 64
    .end local v7    # "field":Ljava/lang/reflect/Field;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 80
    :cond_5
    return-object v3

    .line 85
    .end local v0    # "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    .end local v1    # "insets":Ljava/lang/Object;
    .end local v3    # "result":Landroid/graphics/Rect;
    :cond_6
    goto :goto_3

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DrawableUtils"

    const-string v2, "Couldn\'t obtain the optical insets. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_3
    sget-object v0, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_3
        0x1c155 -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch
.end method

.method static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 185
    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 194
    return-object p1

    .line 191
    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 192
    const-string v0, "ADD"

    invoke-static {v0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_0
    move-object v0, p1

    .line 191
    :goto_0
    return-object v0

    .line 190
    :pswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 189
    :pswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 188
    :cond_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 187
    :cond_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 186
    :cond_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
