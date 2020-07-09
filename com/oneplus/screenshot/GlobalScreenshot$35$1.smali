.class Lcom/oneplus/screenshot/GlobalScreenshot$35$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot$35;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/screenshot/GlobalScreenshot$35;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot$35;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/screenshot/GlobalScreenshot$35;

    .line 2705
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$35$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$35;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2713
    const-string v0, "Longshot.GlobalScreenshot"

    const-string v1, " screenshotFadeOutAnim end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$35$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$35;

    iget-object v0, v0, Lcom/oneplus/screenshot/GlobalScreenshot$35;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2500(Lcom/oneplus/screenshot/GlobalScreenshot;Z)V

    .line 2715
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2708
    const-string v0, "Longshot.GlobalScreenshot"

    const-string v1, " screenshotFadeOutAnim start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    return-void
.end method
