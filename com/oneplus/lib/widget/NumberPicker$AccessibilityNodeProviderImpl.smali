.class Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x3

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/oneplus/lib/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/NumberPicker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 2371
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2380
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2382
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2384
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 2749
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2750
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v1, Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2751
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2752
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2754
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2755
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2757
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2758
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2759
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2762
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2763
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2764
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2766
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2768
    .local v1, "applicationScale":F
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2769
    .local v3, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2770
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/util/ViewUtils;->scaleRect(Landroid/graphics/Rect;F)V

    .line 2771
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2773
    iget-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v5, v3}, Lcom/oneplus/lib/widget/util/ViewUtils;->isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2775
    move-object v5, v3

    .line 2776
    .local v5, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2777
    .local v6, "locationOnScreen":[I
    iget-object v7, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v7, v6}, Lcom/oneplus/lib/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2778
    const/4 v7, 0x0

    aget v7, v6, v7

    aget v2, v6, v2

    invoke-virtual {v5, v7, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2779
    invoke-static {v5, v4}, Lcom/oneplus/lib/widget/util/ViewUtils;->scaleRect(Landroid/graphics/Rect;F)V

    .line 2780
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2782
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 2783
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2785
    :cond_2
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, v4, :cond_3

    .line 2786
    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2788
    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2789
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v2

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 2790
    :cond_4
    const/16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2792
    :cond_5
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v2

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/NumberPicker;->getMinValue()I

    move-result v4

    if-le v2, v4, :cond_7

    .line 2793
    :cond_6
    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2797
    :cond_7
    return-object v0
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .line 2715
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2716
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2717
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2718
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2719
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2720
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 2721
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2722
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2723
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2724
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2725
    .local v2, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v2, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2726
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v3, v2}, Lcom/oneplus/lib/widget/util/ViewUtils;->isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2727
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2728
    move-object v3, v2

    .line 2729
    .local v3, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2730
    .local v4, "locationOnScreen":[I
    iget-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v5, v4}, Lcom/oneplus/lib/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2731
    const/4 v5, 0x0

    aget v5, v4, v5

    aget v1, v4, v1

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2732
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2734
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, p1, :cond_0

    .line 2735
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2737
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, p1, :cond_1

    .line 2738
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2740
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2741
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2744
    :cond_2
    return-object v0
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 2693
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2694
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2695
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, v2, :cond_0

    .line 2696
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2698
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, v2, :cond_1

    .line 2699
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2701
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2702
    .local v1, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2703
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v2, v1}, Lcom/oneplus/lib/widget/util/ViewUtils;->isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2704
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2705
    move-object v2, v1

    .line 2706
    .local v2, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2707
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2708
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2709
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2710
    return-object v0
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 4
    .param p1, "searchedLowerCase"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 2656
    .local p3, "outResult":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 2658
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v1

    .line 2659
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2660
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2661
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2664
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    return-void

    .line 2666
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2667
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2668
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2669
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2670
    return-void

    .line 2672
    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v2}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 2673
    .local v2, "contentDesc":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2674
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2675
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2676
    return-void

    .line 2679
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v2    # "contentDesc":Ljava/lang/CharSequence;
    :cond_4
    nop

    .line 2689
    :goto_0
    return-void

    .line 2681
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v1

    .line 2682
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2683
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2684
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2687
    .end local v1    # "text":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 3

    .line 2809
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1800(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2810
    .local v0, "value":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1900(Lcom/oneplus/lib/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2811
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$2000(Lcom/oneplus/lib/widget/NumberPicker;I)I

    move-result v0

    .line 2813
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$2100(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 2814
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$800(Lcom/oneplus/lib/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$2200(Lcom/oneplus/lib/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2815
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$800(Lcom/oneplus/lib/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v2}, Lcom/oneplus/lib/widget/NumberPicker;->access$2100(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    .line 2814
    :goto_0
    return-object v1

    .line 2817
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 3

    .line 2821
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1800(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2822
    .local v0, "value":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1900(Lcom/oneplus/lib/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2823
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$2000(Lcom/oneplus/lib/widget/NumberPicker;I)I

    move-result v0

    .line 2825
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1000(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 2826
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$800(Lcom/oneplus/lib/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$2200(Lcom/oneplus/lib/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2827
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$800(Lcom/oneplus/lib/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v2}, Lcom/oneplus/lib/widget/NumberPicker;->access$2100(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    .line 2826
    :goto_0
    return-object v1

    .line 2829
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private hasVirtualDecrementButton()Z
    .locals 2

    .line 2801
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 2

    .line 2805
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I
    .param p3, "text"    # Ljava/lang/String;

    .line 2642
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2643
    .local v0, "assm":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2644
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 2645
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const-class v2, Landroid/widget/Button;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2646
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2647
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2648
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2649
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1, v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2650
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2, v2, v1}, Lcom/oneplus/lib/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2652
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 4
    .param p1, "eventType"    # I

    .line 2630
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2631
    .local v0, "assm":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2632
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 2633
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v2}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2634
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v2}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2635
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2636
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2, v2, v1}, Lcom/oneplus/lib/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2638
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "virtualViewId"    # I

    .line 2388
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2408
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2393
    :cond_0
    const/4 v2, 0x3

    .line 2394
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollX()I

    move-result v4

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollY()I

    move-result v5

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2395
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v6, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/NumberPicker;->getLeft()I

    move-result v6

    sub-int/2addr v1, v6

    add-int v6, v0, v1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2396
    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1700(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    add-int v7, v0, v1

    .line 2393
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2398
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2399
    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v2}, Lcom/oneplus/lib/widget/NumberPicker;->access$1700(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2400
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/NumberPicker;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2401
    invoke-static {v3}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v4}, Lcom/oneplus/lib/widget/NumberPicker;->access$1700(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 2398
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2403
    :cond_2
    const/4 v2, 0x1

    .line 2404
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollX()I

    move-result v4

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2405
    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1700(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    sub-int v5, v0, v1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2406
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v6, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/NumberPicker;->getLeft()I

    move-result v6

    sub-int/2addr v1, v6

    add-int v6, v0, v1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v1

    iget-object v7, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/NumberPicker;->getTop()I

    move-result v7

    sub-int/2addr v1, v7

    add-int v7, v0, v1

    .line 2403
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2390
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2391
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/NumberPicker;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/NumberPicker;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 2390
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p1, "searched"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 2414
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2415
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2417
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2418
    .local v0, "searchedLowerCase":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2419
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, v5, :cond_1

    if-eq p2, v4, :cond_1

    if-eq p2, v3, :cond_1

    .line 2437
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2432
    :cond_1
    invoke-direct {p0, v0, p2, v1}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2434
    return-object v1

    .line 2421
    :cond_2
    invoke-direct {p0, v0, v3, v1}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2423
    invoke-direct {p0, v0, v4, v1}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2425
    invoke-direct {p0, v0, v5, v1}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2427
    return-object v1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 2442
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/16 v2, 0x80

    const/16 v3, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v0, :cond_1c

    const/high16 v0, 0x10000

    const v6, 0x8000

    const/16 v7, 0x10

    if-eq p1, v4, :cond_15

    const/4 v8, 0x2

    if-eq p1, v8, :cond_8

    const/4 v8, 0x3

    if-eq p1, v8, :cond_0

    goto/16 :goto_0

    .line 2568
    :cond_0
    if-eq p2, v7, :cond_5

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_1

    .line 2601
    return v5

    .line 2590
    :cond_1
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_2

    .line 2591
    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2592
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2594
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v2}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    .line 2595
    return v4

    .line 2598
    :cond_2
    return v5

    .line 2580
    :cond_3
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v0, p1, :cond_4

    .line 2581
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2582
    invoke-virtual {p0, p1, v6}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2584
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v2}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    .line 2585
    return v4

    .line 2588
    :cond_4
    return v5

    .line 2570
    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2571
    if-ne p1, v4, :cond_6

    move v5, v4

    :cond_6
    move v0, v5

    .line 2572
    .local v0, "increment":Z
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V

    .line 2573
    invoke-virtual {p0, p1, v4}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2575
    return v4

    .line 2578
    .end local v0    # "increment":Z
    :cond_7
    return v5

    .line 2479
    :cond_8
    if-eq p2, v4, :cond_13

    if-eq p2, v8, :cond_11

    if-eq p2, v7, :cond_f

    const/16 v7, 0x20

    if-eq p2, v7, :cond_d

    if-eq p2, v3, :cond_b

    if-eq p2, v2, :cond_9

    .line 2528
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 2518
    :cond_9
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_a

    .line 2519
    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2520
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2522
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    .line 2523
    return v4

    .line 2526
    :cond_a
    return v5

    .line 2508
    :cond_b
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v0, p1, :cond_c

    .line 2509
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2510
    invoke-virtual {p0, p1, v6}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2512
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    .line 2513
    return v4

    .line 2516
    :cond_c
    return v5

    .line 2501
    :cond_d
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2502
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->performLongClick()Z

    .line 2503
    return v4

    .line 2505
    :cond_e
    return v5

    .line 2494
    :cond_f
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2495
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->performClick()Z

    .line 2496
    return v4

    .line 2498
    :cond_10
    return v5

    .line 2487
    :cond_11
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2488
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 2489
    return v4

    .line 2491
    :cond_12
    return v5

    .line 2481
    :cond_13
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2482
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    return v0

    .line 2532
    :cond_14
    return v5

    .line 2534
    :cond_15
    if-eq p2, v7, :cond_1a

    if-eq p2, v3, :cond_18

    if-eq p2, v2, :cond_16

    .line 2566
    return v5

    .line 2555
    :cond_16
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_17

    .line 2556
    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2557
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2559
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    .line 2560
    return v4

    .line 2563
    :cond_17
    return v5

    .line 2545
    :cond_18
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v0, p1, :cond_19

    .line 2546
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2547
    invoke-virtual {p0, p1, v6}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2549
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    .line 2550
    return v4

    .line 2553
    :cond_19
    return v5

    .line 2536
    :cond_1a
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2537
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v4}, Lcom/oneplus/lib/widget/NumberPicker;->access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V

    .line 2538
    invoke-virtual {p0, p1, v4}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2540
    return v4

    .line 2543
    :cond_1b
    return v5

    .line 2444
    :cond_1c
    if-eq p2, v3, :cond_25

    if-eq p2, v2, :cond_23

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_20

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_1d

    .line 2477
    nop

    .line 2603
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 2468
    :cond_1d
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2469
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_1f

    .line 2470
    :cond_1e
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v5}, Lcom/oneplus/lib/widget/NumberPicker;->access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V

    .line 2471
    return v4

    .line 2474
    :cond_1f
    return v5

    .line 2460
    :cond_20
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2461
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 2462
    :cond_21
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v4}, Lcom/oneplus/lib/widget/NumberPicker;->access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V

    .line 2463
    return v4

    .line 2466
    :cond_22
    return v5

    .line 2453
    :cond_23
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v0, p1, :cond_24

    .line 2454
    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2455
    return v4

    .line 2457
    :cond_24
    return v5

    .line 2446
    :cond_25
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v0, p1, :cond_26

    .line 2447
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2448
    return v4

    .line 2451
    :cond_26
    return v5
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 2607
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2609
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2610
    nop

    .line 2611
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2610
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 2616
    :cond_1
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    .line 2618
    goto :goto_0

    .line 2620
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2621
    nop

    .line 2622
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2621
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    .line 2627
    :cond_3
    :goto_0
    return-void
.end method
