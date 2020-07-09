.class Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OPSwitchFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->fabDisappear1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;

    .line 153
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 156
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setVisibility(I)V

    .line 157
    return-void
.end method
