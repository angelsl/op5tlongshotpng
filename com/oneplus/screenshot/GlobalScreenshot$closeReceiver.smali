.class Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "closeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;


# direct methods
.method private constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .registers 2
    .param p1, "this$0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;)V
    .registers 3
    .param p1, "this$0"    # Lcom/oneplus/screenshot/GlobalScreenshot;
    .param p2, "-this1"    # Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 729
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 733
    :cond_16
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->-wrap2(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    .line 746
    :cond_1b
    :goto_1b
    return-void

    .line 736
    :cond_1c
    const-string/jumbo v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 737
    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, "state":Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 739
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->-wrap2(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    .line 741
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->-get9(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1b
.end method
