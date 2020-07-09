.class Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabClickListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabClickListener;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 566
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;

    .line 567
    .local v0, "tabView":Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->getTab()Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->select()V

    .line 568
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabClickListener;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget-object v1, v1, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 569
    .local v1, "tabCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 570
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabClickListener;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget-object v3, v3, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 571
    .local v3, "child":Landroid/view/View;
    if-ne v3, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 569
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 573
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
