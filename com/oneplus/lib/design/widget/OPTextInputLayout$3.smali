.class Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;
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

.field final synthetic val$error:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    .line 764
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;->this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    iput-object p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;->val$error:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 767
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;->this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;->val$error:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;->this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 769
    return-void
.end method
