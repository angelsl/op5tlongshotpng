.class Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$3;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lcom/oneplus/support/core/view/ViewPropertyAnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    .line 157
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$3;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 160
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$3;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 161
    .local v0, "parent":Landroid/view/ViewParent;
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 162
    return-void
.end method
