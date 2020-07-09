.class Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->animateViewIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    .line 508
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$7;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$7;"
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$7;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 518
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$7;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$7;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$7;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->onViewShown()V

    .line 519
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 511
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$7;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$7;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$7;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    invoke-static {v0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->access$000(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;)Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;

    move-result-object v0

    const/16 v1, 0x78

    const/16 v2, 0xb4

    invoke-interface {v0, v1, v2}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;->animateContentIn(II)V

    .line 514
    return-void
.end method
