.class Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 532
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 541
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->getTab()Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 546
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 551
    if-nez p2, :cond_0

    .line 552
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->createTabView(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Z)Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;

    move-result-object p2

    goto :goto_0

    .line 554
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->bindTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V

    .line 556
    :goto_0
    return-object p2
.end method
