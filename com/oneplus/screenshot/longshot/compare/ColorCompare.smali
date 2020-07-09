.class public Lcom/oneplus/screenshot/longshot/compare/ColorCompare;
.super Ljava/lang/Object;
.source "ColorCompare.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorCompare"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(II)Z
    .locals 4
    .param p1, "colorOne"    # I
    .param p2, "colorTwo"    # I

    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "error":I
    sget v1, Lcom/oneplus/screenshot/longshot/util/Configs;->levelError:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 22
    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PIXEL_ERROR_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    goto :goto_0

    .line 19
    :cond_0
    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PIXEL_ERROR_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    .line 20
    nop

    .line 25
    :goto_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x0

    if-le v1, v0, :cond_1

    .line 26
    return v2

    .line 28
    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v0, :cond_2

    .line 29
    return v2

    .line 31
    :cond_2
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v0, :cond_3

    .line 32
    return v2

    .line 34
    :cond_3
    const/4 v1, 0x1

    return v1
.end method
