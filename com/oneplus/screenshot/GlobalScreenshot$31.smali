.class Lcom/oneplus/screenshot/GlobalScreenshot$31;
.super Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 2430
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$31;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(Z)V
    .locals 4
    .param p1, "isDrop"    # Z

    .line 2440
    const-string v0, "Longshot.GlobalScreenshot"

    const-string v1, "onDragEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    if-eqz p1, :cond_0

    .line 2442
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$31;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v0, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$31;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3100(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2444
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$31;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v0, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$31;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3100(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2446
    :goto_0
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsUnSupported:Z

    if-nez v0, :cond_1

    .line 2447
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$31;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2449
    :cond_1
    return-void
.end method

.method public onDragStart()V
    .locals 2

    .line 2432
    const-string v0, "Longshot.GlobalScreenshot"

    const-string v1, "onDragStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$31;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v0, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$31;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3100(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2434
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsUnSupported:Z

    if-nez v0, :cond_0

    .line 2435
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$31;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2437
    :cond_0
    return-void
.end method
