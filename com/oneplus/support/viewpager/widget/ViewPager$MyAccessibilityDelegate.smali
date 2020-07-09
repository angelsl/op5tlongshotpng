.class Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;
.super Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Lcom/oneplus/support/viewpager/widget/ViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/support/viewpager/widget/ViewPager;

    .line 3050
    iput-object p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-direct {p0}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .locals 2

    .line 3100
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    iget-object v0, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    iget-object v0, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 3054
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3055
    const-class v0, Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3056
    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 3057
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    iget-object v0, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    .line 3058
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    iget-object v0, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 3059
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    iget v0, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 3060
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    iget v0, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 3062
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 3066
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 3067
    const-class v0, Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 3068
    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 3069
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3070
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3072
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3073
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3075
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 3079
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3080
    return v1

    .line 3082
    :cond_0
    const/16 v0, 0x1000

    const/4 v2, 0x0

    if-eq p2, v0, :cond_3

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_1

    .line 3096
    return v2

    .line 3090
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3091
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    iget v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 3092
    return v1

    .line 3094
    :cond_2
    return v2

    .line 3084
    :cond_3
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3085
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    iget v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 3086
    return v1

    .line 3088
    :cond_4
    return v2
.end method
