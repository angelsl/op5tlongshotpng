.class Lcom/oneplus/screenshot/GlobalScreenshot$21;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->playEditModeAnimation()V
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

    .line 2054
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2057
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2058
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->buildLayer()V

    .line 2060
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1700(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/animation/ValueAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 2061
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1700(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$21$1;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$21$1;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot$21;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2076
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1700(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2077
    return-void
.end method
