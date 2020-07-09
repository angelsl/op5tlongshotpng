.class Lcom/oneplus/screenshot/GlobalScreenshot$34$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot$34;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/screenshot/GlobalScreenshot$34;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot$34;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/screenshot/GlobalScreenshot$34;

    .line 2661
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2664
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$34;

    iget-object v0, v0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 2665
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsVoiceLongshot:Z

    .line 2666
    return-void
.end method
