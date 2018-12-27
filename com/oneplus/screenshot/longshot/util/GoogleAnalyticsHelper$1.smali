.class Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$1;
.super Ljava/lang/Object;
.source "GoogleAnalyticsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 58
    # getter for: Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Take the initiative in retrieving online config"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    .line 60
    # getter for: Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "OPSystemUIGAConfig"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->access$200(Lorg/json/JSONArray;)V

    .line 62
    return-void
.end method
