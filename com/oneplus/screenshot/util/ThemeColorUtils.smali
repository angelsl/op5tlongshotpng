.class public Lcom/oneplus/screenshot/util/ThemeColorUtils;
.super Ljava/lang/Object;
.source "ThemeColorUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeColorUtils"

.field public static final THEME_ANDROID:I = 0x2

.field public static final THEME_BLACK:I = 0x1

.field public static final THEME_WHITE:I

.field public static qsAccent:I

.field private static sAccentColor:I

.field private static sCurrentTheme:I

.field private static sSpecialTheme:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, -0x1

    sput v0, Lcom/oneplus/screenshot/util/ThemeColorUtils;->sCurrentTheme:I

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/screenshot/util/ThemeColorUtils;->sSpecialTheme:Z

    .line 21
    const/16 v0, 0x64

    sput v0, Lcom/oneplus/screenshot/util/ThemeColorUtils;->qsAccent:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor()I
    .locals 1

    .line 72
    sget v0, Lcom/oneplus/screenshot/util/ThemeColorUtils;->sAccentColor:I

    return v0
.end method

.method public static getColorCode()I
    .locals 1

    .line 76
    sget v0, Lcom/oneplus/screenshot/util/ThemeColorUtils;->sAccentColor:I

    return v0
.end method

.method public static getCurrentTheme()I
    .locals 1

    .line 80
    sget v0, Lcom/oneplus/screenshot/util/ThemeColorUtils;->sCurrentTheme:I

    return v0
.end method

.method private static getThemeAccentColor(Landroid/content/Context;ILjava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultResourceId"    # I
    .param p2, "colorKey"    # Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "color":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    .line 106
    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getThemeBlackAccentColor(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultResourceId"    # I

    .line 98
    const-string v0, "oem_black_mode_accent_color"

    invoke-static {p0, p1, v0}, Lcom/oneplus/screenshot/util/ThemeColorUtils;->getThemeAccentColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getThemeColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_black_mode"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getThemeWhiteAccentColor(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultResourceId"    # I

    .line 94
    const-string v0, "oem_white_mode_accent_color"

    invoke-static {p0, p1, v0}, Lcom/oneplus/screenshot/util/ThemeColorUtils;->getThemeAccentColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 33
    invoke-static {p0}, Lcom/oneplus/screenshot/util/ThemeColorUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    .line 35
    .local v0, "currentTheme":I
    invoke-static {p0}, Lcom/oneplus/screenshot/util/ThemeColorUtils;->isSpecialTheme(Landroid/content/Context;)Z

    move-result v1

    .line 36
    .local v1, "specialTheme":Z
    sget v2, Lcom/oneplus/screenshot/util/ThemeColorUtils;->sCurrentTheme:I

    if-ne v2, v0, :cond_0

    sget-boolean v2, Lcom/oneplus/screenshot/util/ThemeColorUtils;->sSpecialTheme:Z

    if-eq v2, v1, :cond_1

    .line 38
    :cond_0
    sput v0, Lcom/oneplus/screenshot/util/ThemeColorUtils;->sCurrentTheme:I

    .line 40
    sput-boolean v1, Lcom/oneplus/screenshot/util/ThemeColorUtils;->sSpecialTheme:Z

    .line 43
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sSpecialTheme:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/oneplus/screenshot/util/ThemeColorUtils;->sSpecialTheme:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ThemeColorUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p0}, Lcom/oneplus/screenshot/util/ThemeColorUtils;->updateAccentColor(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public static isSpecialTheme(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oem_special_theme"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private static updateAccentColor(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    const-string v0, "#FF2196F3"

    .line 49
    .local v0, "color":Ljava/lang/String;
    sget v1, Lcom/oneplus/screenshot/util/ThemeColorUtils;->sCurrentTheme:I

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_white_mode_accent_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    const-string v0, "#FF2196F3"

    goto :goto_1

    .line 54
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 56
    sget-boolean v1, Lcom/oneplus/screenshot/util/ThemeColorUtils;->sSpecialTheme:Z

    if-eqz v1, :cond_1

    .line 58
    const-string v0, "#FFFF2837"

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_black_mode_accent_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    if-nez v0, :cond_2

    .line 64
    const-string v0, "#FF42A5F5"

    .line 67
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oneplus/screenshot/util/ThemeColorUtils;->sAccentColor:I

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAccentColor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oneplus/screenshot/util/ThemeColorUtils;->sAccentColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sCurrentTheme:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oneplus/screenshot/util/ThemeColorUtils;->sCurrentTheme:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThemeColorUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method
