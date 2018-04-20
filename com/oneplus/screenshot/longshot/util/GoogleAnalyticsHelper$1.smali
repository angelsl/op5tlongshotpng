.class final Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$1;
.super Ljava/lang/Object;
.source "GoogleAnalyticsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 58
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Take the initiative in retrieving online config"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    .line 60
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->-get1()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "OPSystemUIGAConfig"

    .line 59
    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->-wrap0(Lorg/json/JSONArray;)V

    .line 62
    return-void
.end method
