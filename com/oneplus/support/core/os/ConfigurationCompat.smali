.class public final Lcom/oneplus/support/core/os/ConfigurationCompat;
.super Ljava/lang/Object;
.source "ConfigurationCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getLocales(Landroid/content/res/Configuration;)Lcom/oneplus/support/core/os/LocaleListCompat;
    .locals 3
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/support/core/os/LocaleListCompat;->wrap(Ljava/lang/Object;)Lcom/oneplus/support/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0

    .line 40
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/oneplus/support/core/os/LocaleListCompat;->create([Ljava/util/Locale;)Lcom/oneplus/support/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method
