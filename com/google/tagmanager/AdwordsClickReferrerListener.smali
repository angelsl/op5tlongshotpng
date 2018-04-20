.class Lcom/google/tagmanager/AdwordsClickReferrerListener;
.super Ljava/lang/Object;
.source "AdwordsClickReferrerListener.java"

# interfaces
.implements Lcom/google/tagmanager/DataLayer$Listener;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/tagmanager/AdwordsClickReferrerListener;->context:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public changed(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string/jumbo v4, "gtm.url"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 23
    .local v3, "url":Ljava/lang/Object;
    if-eqz v3, :cond_c

    .line 29
    :cond_9
    :goto_9
    if-nez v3, :cond_23

    .line 30
    :cond_b
    return-void

    .line 24
    :cond_c
    const-string/jumbo v4, "gtm"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    .local v0, "gtm":Ljava/lang/Object;
    if-eqz v0, :cond_9

    instance-of v4, v0, Ljava/util/Map;

    if-eqz v4, :cond_9

    .line 26
    check-cast v0, Ljava/util/Map;

    .end local v0    # "gtm":Ljava/lang/Object;
    const-string/jumbo v4, "url"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_9

    .line 29
    :cond_23
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 32
    check-cast v3, Ljava/lang/String;

    .end local v3    # "url":Ljava/lang/Object;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 33
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v4, "referrer"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "referrer":Ljava/lang/String;
    if-nez v1, :cond_37

    .line 37
    :goto_36
    return-void

    .line 35
    :cond_37
    iget-object v4, p0, Lcom/google/tagmanager/AdwordsClickReferrerListener;->context:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/google/tagmanager/InstallReferrerUtil;->addClickReferrer(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_36
.end method
