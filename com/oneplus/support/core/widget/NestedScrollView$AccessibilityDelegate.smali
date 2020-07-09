.class Lcom/oneplus/support/core/widget/NestedScrollView$AccessibilityDelegate;
.super Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;
.source "NestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/widget/NestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2028
    invoke-direct {p0}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2085
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2086
    move-object v0, p1

    check-cast v0, Lcom/oneplus/support/core/widget/NestedScrollView;

    .line 2087
    .local v0, "nsvHost":Lcom/oneplus/support/core/widget/NestedScrollView;
    const-class v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2088
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2089
    .local v1, "scrollable":Z
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2090
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 2091
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 2092
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollX()I

    move-result v2

    invoke-static {p2, v2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 2093
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollRange()I

    move-result v2

    invoke-static {p2, v2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 2094
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 2066
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2067
    move-object v0, p1

    check-cast v0, Lcom/oneplus/support/core/widget/NestedScrollView;

    .line 2068
    .local v0, "nsvHost":Lcom/oneplus/support/core/widget/NestedScrollView;
    const-class v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2069
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2070
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    .line 2071
    .local v1, "scrollRange":I
    if-lez v1, :cond_1

    .line 2072
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 2073
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-lez v2, :cond_0

    .line 2074
    const/16 v2, 0x2000

    invoke-virtual {p2, v2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2076
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 2077
    const/16 v2, 0x1000

    invoke-virtual {p2, v2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2081
    .end local v1    # "scrollRange":I
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 2031
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2032
    return v1

    .line 2034
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/support/core/widget/NestedScrollView;

    .line 2035
    .local v0, "nsvHost":Lcom/oneplus/support/core/widget/NestedScrollView;
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->isEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 2036
    return v3

    .line 2038
    :cond_1
    const/16 v2, 0x1000

    if-eq p2, v2, :cond_4

    const/16 v2, 0x2000

    if-eq p2, v2, :cond_2

    .line 2061
    return v3

    .line 2051
    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    .line 2052
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v2, v4

    .line 2053
    .local v2, "viewportHeight":I
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2054
    .local v4, "targetScrollY":I
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 2055
    invoke-virtual {v0, v3, v4}, Lcom/oneplus/support/core/widget/NestedScrollView;->smoothScrollTo(II)V

    .line 2056
    return v1

    .line 2059
    .end local v2    # "viewportHeight":I
    .end local v4    # "targetScrollY":I
    :cond_3
    return v3

    .line 2040
    :cond_4
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    .line 2041
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v2, v4

    .line 2042
    .restart local v2    # "viewportHeight":I
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    add-int/2addr v4, v2

    .line 2043
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollRange()I

    move-result v5

    .line 2042
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2044
    .restart local v4    # "targetScrollY":I
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

    if-eq v4, v5, :cond_5

    .line 2045
    invoke-virtual {v0, v3, v4}, Lcom/oneplus/support/core/widget/NestedScrollView;->smoothScrollTo(II)V

    .line 2046
    return v1

    .line 2049
    .end local v2    # "viewportHeight":I
    .end local v4    # "targetScrollY":I
    :cond_5
    return v3
.end method
