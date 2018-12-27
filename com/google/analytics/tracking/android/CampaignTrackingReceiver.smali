.class public final Lcom/google/analytics/tracking/android/CampaignTrackingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CampaignTrackingReceiver.java"


# static fields
.field static final CAMPAIGN_KEY:Ljava/lang/String; = "referrer"

.field static final INSTALL_ACTION:Ljava/lang/String; = "com.android.vending.INSTALL_REFERRER"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 44
    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "campaign":Ljava/lang/String;
    const-string v1, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    if-nez v0, :cond_15

    goto :goto_25

    .line 50
    :cond_15
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/analytics/tracking/android/CampaignTrackingService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "referrer"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 53
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 47
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_25
    :goto_25
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
