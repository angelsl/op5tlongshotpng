.class Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmallScreenContorller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->getResetAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    .line 261
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$4;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 270
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$4;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->access$702(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;Z)Z

    .line 271
    const-string v0, "Longshot.SmallScreenContorller"

    const-string v1, "ResetAnimation End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$4;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->access$800(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)V

    .line 273
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 264
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$4;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->access$702(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;Z)Z

    .line 265
    const-string v0, "Longshot.SmallScreenContorller"

    const-string v1, "ResetAnimation Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method
