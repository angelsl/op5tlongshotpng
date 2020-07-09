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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static installReferrer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/tagmanager/InstallReferrerUtil;->clickReferrers:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addClickReferrer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "referrer"    # Ljava/lang/String;

    .line 72
    const-string v0, "conv"

    invoke-static {p1, v0}, Lcom/google/tagmanager/InstallReferrerUtil;->extractComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "conversionId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 75
    sget-object v1, Lcom/google/tagmanager/InstallReferrerUtil;->clickReferrers:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "gtm_click_referrers"

    invoke-static {p0, v1, v0, p1}, Lcom/google/tagmanager/SharedPreferencesUtil;->saveAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method

.method static cacheInstallReferrer(Ljava/lang/String;)V
    .locals 2
    .param p0, "referrer"    # Ljava/lang/String;

    .line 32
    const-class v0, Lcom/google/tagmanager/InstallReferrerUtil;

    monitor-enter v0

    .line 33
    :try_start_0
    sput-object p0, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 34
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static extractComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "referrer"    # Ljava/lang/String;
    .param p1, "component"    # Ljava/lang/String;

    .line 84
    if-nez p1, :cond_1

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://hostname/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 88
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getClickReferrer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversionId"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/google/tagmanager/InstallReferrerUtil;->clickReferrers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, "referrer":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 103
    const/4 v1, 0x0

    const-string v2, "gtm_click_referrers"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 104
    .local v1, "settings":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 105
    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_0
    const-string v0, ""

    .line 109
    :goto_0
    sget-object v2, Lcom/google/tagmanager/InstallReferrerUtil;->clickReferrers:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    invoke-static {v0, p2}, Lcom/google/tagmanager/InstallReferrerUtil;->extractComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getInstallReferrer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 54
    const-class v0, Lcom/google/tagmanager/InstallReferrerUtil;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 56
    const-string v1, "gtm_install_referrer"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 57
    .local v1, "settings":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 58
    const-string v2, "referrer"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_0
    const-string v2, ""

    sput-object v2, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    .line 63
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 65
    :cond_2
    :goto_1
    sget-object v0, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/tagmanager/InstallReferrerUtil;->extractComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static saveInstallReferrer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "referrer"    # Ljava/lang/String;

    .line 41
    const-string v0, "gtm_install_referrer"

    const-string v1, "referrer"

    invoke-static {p0, v0, v1, p1}, Lcom/google/tagmanager/SharedPreferencesUtil;->saveAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {p0, p1}, Lcom/google/tagmanager/InstallReferrerUtil;->addClickReferrer(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return-void
.end method
