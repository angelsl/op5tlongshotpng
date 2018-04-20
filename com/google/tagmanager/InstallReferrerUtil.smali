.class Lcom/google/tagmanager/InstallReferrerUtil;
.super Ljava/lang/Object;
.source "InstallReferrerUtil.java"


# static fields
.field static final INTENT_EXTRA_REFERRER:Ljava/lang/String; = "referrer"

.field static final PREF_KEY_REFERRER:Ljava/lang/String; = "referrer"

.field static final PREF_NAME_CLICK_REFERRERS:Ljava/lang/String; = "gtm_click_referrers"

.field static final PREF_NAME_INSTALL_REFERRER:Ljava/lang/String; = "gtm_install_referrer"

.field static clickReferrers:Ljava/util/Map;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static installReferrer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/tagmanager/InstallReferrerUtil;->clickReferrers:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addClickReferrer(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "referrer"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string/jumbo v1, "conv"

    invoke-static {p1, v1}, Lcom/google/tagmanager/InstallReferrerUtil;->extractComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "conversionId":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 78
    :cond_9
    :goto_9
    return-void

    .line 74
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 75
    sget-object v1, Lcom/google/tagmanager/InstallReferrerUtil;->clickReferrers:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v1, "gtm_click_referrers"

    invoke-static {p0, v1, v0, p1}, Lcom/google/tagmanager/SharedPreferencesUtil;->saveAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method static cacheInstallReferrer(Ljava/lang/String;)V
    .registers 4
    .param p0, "referrer"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/google/tagmanager/InstallReferrerUtil;

    .local v0, "-l_1_R":Ljava/lang/Object;
    const-class v2, Lcom/google/tagmanager/InstallReferrerUtil;

    monitor-enter v2

    .line 33
    :try_start_5
    sput-object p0, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 34
    :catchall_9
    move-exception v1

    .local v1, "-l_2_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v1
.end method

.method static extractComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "referrer"    # Ljava/lang/String;
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 84
    if-eqz p1, :cond_20

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://hostname/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 88
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 85
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_27

    move-object p0, v1

    .end local p0    # "referrer":Ljava/lang/String;
    :cond_27
    return-object p0
.end method

.method static getClickReferrer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversionId"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-object v2, Lcom/google/tagmanager/InstallReferrerUtil;->clickReferrers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, "referrer":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 111
    :goto_a
    invoke-static {v0, p2}, Lcom/google/tagmanager/InstallReferrerUtil;->extractComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 103
    :cond_f
    const-string/jumbo v2, "gtm_click_referrers"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 104
    .local v1, "settings":Landroid/content/SharedPreferences;
    if-nez v1, :cond_22

    .line 107
    const-string/jumbo v0, ""

    .line 109
    :goto_1c
    sget-object v2, Lcom/google/tagmanager/InstallReferrerUtil;->clickReferrers:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 105
    :cond_22
    const-string/jumbo v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method static getInstallReferrer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v3, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 65
    :goto_4
    sget-object v3, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/google/tagmanager/InstallReferrerUtil;->extractComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 54
    :cond_b
    const-class v0, Lcom/google/tagmanager/InstallReferrerUtil;

    .local v0, "-l_2_R":Ljava/lang/Object;
    const-class v3, Lcom/google/tagmanager/InstallReferrerUtil;

    monitor-enter v3

    .line 55
    :try_start_10
    sget-object v3, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    if-eqz v3, :cond_19

    .line 63
    :goto_14
    monitor-exit v0

    goto :goto_4

    :catchall_16
    move-exception v1

    .local v1, "-l_4_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_16

    throw v1

    .line 56
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    :cond_19
    :try_start_19
    const-string/jumbo v3, "gtm_install_referrer"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 57
    .local v2, "settings":Landroid/content/SharedPreferences;
    if-nez v2, :cond_29

    .line 60
    const-string/jumbo v3, ""

    sput-object v3, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    goto :goto_14

    .line 58
    :cond_29
    const-string/jumbo v3, "referrer"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_19 .. :try_end_35} :catchall_16

    goto :goto_14
.end method

.method static saveInstallReferrer(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "referrer"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string/jumbo v0, "gtm_install_referrer"

    const-string/jumbo v1, "referrer"

    invoke-static {p0, v0, v1, p1}, Lcom/google/tagmanager/SharedPreferencesUtil;->saveAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {p0, p1}, Lcom/google/tagmanager/InstallReferrerUtil;->addClickReferrer(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return-void
.end method
