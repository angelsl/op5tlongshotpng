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

    .line 129
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 134
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    const-string v1, "&cid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 135
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    const-string v1, "&cid"

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mClientId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/analytics/tracking/android/GAThread;->access$000(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_1d
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAThread;->access$100(Lcom/google/analytics/tracking/android/GAThread;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getAppOptOut()Z

    move-result v0

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    # invokes: Lcom/google/analytics/tracking/android/GAThread;->isSampledOut(Ljava/util/Map;)Z
    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/GAThread;->access$200(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_aa

    .line 146
    :cond_38
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAThread;->access$300(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 147
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 148
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    new-instance v1, Lcom/google/analytics/tracking/android/MapBuilder;

    invoke-direct {v1}, Lcom/google/analytics/tracking/android/MapBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/analytics/tracking/android/GAThread;->access$300(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->setCampaignParamsFromUrl(Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 150
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    const/4 v1, 0x0

    # setter for: Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/GAThread;->access$302(Lcom/google/analytics/tracking/android/GAThread;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    :cond_72
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/GAThread;->access$400(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)V

    .line 153
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/HitBuilder;->generateHitParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 154
    .local v0, "wireFormatParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;
    invoke-static {v1}, Lcom/google/analytics/tracking/android/GAThread;->access$700(Lcom/google/analytics/tracking/android/GAThread;)Lcom/google/analytics/tracking/android/ServiceProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    const-string v3, "&ht"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iget-object v5, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    # invokes: Lcom/google/analytics/tracking/android/GAThread;->getUrlScheme(Ljava/util/Map;)Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/google/analytics/tracking/android/GAThread;->access$500(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mCommands:Ljava/util/List;
    invoke-static {v2}, Lcom/google/analytics/tracking/android/GAThread;->access$600(Lcom/google/analytics/tracking/android/GAThread;)Ljava/util/List;

    move-result-object v6

    move-object v2, v0

    invoke-interface/range {v1 .. v6}, Lcom/google/analytics/tracking/android/ServiceProxy;->putHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    .line 159
    return-void

    .line 144
    .end local v0    # "wireFormatParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_aa
    :goto_aa
    return-void
.end method
