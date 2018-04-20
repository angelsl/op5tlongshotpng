.class Lcom/google/analytics/tracking/android/GAThread$1;
.super Ljava/lang/Object;
.source "GAThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/GAThread;->sendHit(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAThread;

.field final synthetic val$hitCopy:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)V
    .registers 3

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 134
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    const-string/jumbo v2, "&cid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 143
    :goto_12
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAThread;->access$100(Lcom/google/analytics/tracking/android/GAThread;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getAppOptOut()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 144
    :cond_22
    return-void

    .line 135
    :cond_23
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mClientId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/analytics/tracking/android/GAThread;->access$000(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "&cid"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 143
    :cond_32
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    # invokes: Lcom/google/analytics/tracking/android/GAThread;->isSampledOut(Ljava/util/Map;)Z
    invoke-static {v0, v2}, Lcom/google/analytics/tracking/android/GAThread;->access$200(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 146
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAThread;->access$300(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 152
    :goto_48
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    # invokes: Lcom/google/analytics/tracking/android/GAThread;->fillAppParameters(Ljava/util/Map;)V
    invoke-static {v0, v2}, Lcom/google/analytics/tracking/android/GAThread;->access$400(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)V

    .line 153
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/HitBuilder;->generateHitParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 154
    .local v1, "wireFormatParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAThread;->access$700(Lcom/google/analytics/tracking/android/GAThread;)Lcom/google/analytics/tracking/android/ServiceProxy;

    move-result-object v0

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    const-string/jumbo v3, "&ht"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iget-object v5, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    # invokes: Lcom/google/analytics/tracking/android/GAThread;->getUrlScheme(Ljava/util/Map;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/google/analytics/tracking/android/GAThread;->access$500(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mCommands:Ljava/util/List;
    invoke-static {v5}, Lcom/google/analytics/tracking/android/GAThread;->access$600(Lcom/google/analytics/tracking/android/GAThread;)Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/analytics/tracking/android/ServiceProxy;->putHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    .line 159
    return-void

    .line 147
    .end local v1    # "wireFormatParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_80
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 148
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    new-instance v2, Lcom/google/analytics/tracking/android/MapBuilder;

    invoke-direct {v2}, Lcom/google/analytics/tracking/android/MapBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/analytics/tracking/android/GAThread;->access$300(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/MapBuilder;->setCampaignParamsFromUrl(Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 150
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    const/4 v2, 0x0

    # setter for: Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/google/analytics/tracking/android/GAThread;->access$302(Lcom/google/analytics/tracking/android/GAThread;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_48
.end method
