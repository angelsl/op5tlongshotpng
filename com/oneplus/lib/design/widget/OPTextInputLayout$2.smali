.class Lcom/oneplus/lib/design/widget/OPTextInputLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OPTextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setError(Ljava/lang/CharSequence;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    .line 747
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$2;->this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 750
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$2;->this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 751
    return-void
.end method
