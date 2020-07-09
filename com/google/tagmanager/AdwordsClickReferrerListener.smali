.class Lcom/google/tagmanager/AdwordsClickReferrerListener;
.super Ljava/lang/Object;
.source "AdwordsClickReferrerListener.java"

# interfaces
.implements Lcom/google/tagmanager/DataLayer$Listener;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/tagmanager/AdwordsClickReferrerListener;->context:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public changed(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v0, "gtm.url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    .local v0, "url":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 24
    const-string v1, "gtm"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    .local v1, "gtm":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 26
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    .end local v1    # "gtm":Ljava/lang/Object;
    :cond_0
    if-eqz v0, :cond_3

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 33
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "referrer"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "referrer":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 35
    iget-object v3, p0, Lcom/google/tagmanager/AdwordsClickReferrerListener;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/google/tagmanager/InstallReferrerUtil;->addClickReferrer(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    :cond_2
    return-void

    .line 30
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "referrer":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method
