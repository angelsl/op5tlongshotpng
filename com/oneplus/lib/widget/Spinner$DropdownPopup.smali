.class Lcom/oneplus/lib/widget/Spinner$DropdownPopup;
.super Lcom/oneplus/lib/widget/ListPopupWindow;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field private final mVisibleRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/oneplus/lib/widget/Spinner;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I

    .line 634
    iput-object p1, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    .line 635
    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/lib/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 632
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    .line 637
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 638
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setModal(Z)V

    .line 639
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setPromptPosition(I)V

    .line 641
    new-instance v0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup$1;-><init>(Lcom/oneplus/lib/widget/Spinner$DropdownPopup;Lcom/oneplus/lib/widget/Spinner;)V

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 652
    return-void
.end method

.method static synthetic access$401(Lcom/oneplus/lib/widget/Spinner$DropdownPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    .line 629
    invoke-super {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method computeContentWidth()V
    .locals 8

    .line 675
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 676
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 677
    .local v1, "hOffset":I
    if-eqz v0, :cond_1

    .line 678
    iget-object v2, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-static {v2}, Lcom/oneplus/lib/widget/Spinner;->access$100(Lcom/oneplus/lib/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 679
    iget-object v2, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-static {v2}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-static {v2}, Lcom/oneplus/lib/widget/Spinner;->access$100(Lcom/oneplus/lib/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 680
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-static {v2}, Lcom/oneplus/lib/widget/Spinner;->access$100(Lcom/oneplus/lib/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    :goto_0
    move v1, v2

    goto :goto_1

    .line 682
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-static {v2}, Lcom/oneplus/lib/widget/Spinner;->access$100(Lcom/oneplus/lib/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-static {v3}, Lcom/oneplus/lib/widget/Spinner;->access$100(Lcom/oneplus/lib/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 685
    :goto_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/Spinner;->getPaddingLeft()I

    move-result v2

    .line 686
    .local v2, "spinnerPaddingLeft":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/Spinner;->getPaddingRight()I

    move-result v3

    .line 687
    .local v3, "spinnerPaddingRight":I
    iget-object v4, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/Spinner;->getWidth()I

    move-result v4

    .line 688
    .local v4, "spinnerWidth":I
    iget-object v5, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-static {v5}, Lcom/oneplus/lib/widget/Spinner;->access$200(Lcom/oneplus/lib/widget/Spinner;)I

    move-result v5

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    .line 689
    iget-object v5, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    iget-object v6, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v6, Landroid/widget/SpinnerAdapter;

    .line 690
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 689
    invoke-virtual {v5, v6, v7}, Lcom/oneplus/lib/widget/Spinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v5

    .line 691
    .local v5, "contentWidth":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 692
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-static {v7}, Lcom/oneplus/lib/widget/Spinner;->access$100(Lcom/oneplus/lib/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-static {v7}, Lcom/oneplus/lib/widget/Spinner;->access$100(Lcom/oneplus/lib/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    .line 693
    .local v6, "contentWidthLimit":I
    if-le v5, v6, :cond_2

    .line 694
    move v5, v6

    .line 696
    :cond_2
    sub-int v7, v4, v2

    sub-int/2addr v7, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    .line 698
    .end local v5    # "contentWidth":I
    .end local v6    # "contentWidthLimit":I
    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-static {v5}, Lcom/oneplus/lib/widget/Spinner;->access$200(Lcom/oneplus/lib/widget/Spinner;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 699
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_2

    .line 701
    :cond_4
    iget-object v5, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-static {v5}, Lcom/oneplus/lib/widget/Spinner;->access$200(Lcom/oneplus/lib/widget/Spinner;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    .line 703
    :goto_2
    iget-object v5, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-static {v5}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 704
    sub-int v5, v4, v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    goto :goto_3

    .line 706
    :cond_5
    add-int/2addr v1, v2

    .line 708
    :goto_3
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 709
    return-void
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method isVisibleToUser(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 767
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected needInterceptorTouchEvent()Z
    .locals 1

    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 656
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 657
    iput-object p1, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 658
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .line 671
    iput-object p1, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 672
    return-void
.end method

.method public show()V
    .locals 5

    .line 712
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->isShowing()Z

    move-result v0

    .line 714
    .local v0, "wasShowing":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->computeContentWidth()V

    .line 716
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setInputMethodMode(I)V

    .line 717
    invoke-super {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->show()V

    .line 718
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 719
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 720
    iget-object v2, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setSelection(I)V

    .line 721
    iget-object v2, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-static {v2}, Lcom/oneplus/lib/widget/Spinner;->access$300(Lcom/oneplus/lib/widget/Spinner;)Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 722
    iget-object v2, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-static {v2}, Lcom/oneplus/lib/widget/Spinner;->access$300(Lcom/oneplus/lib/widget/Spinner;)Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->setSelectedItem(I)V

    .line 724
    :cond_0
    if-eqz v0, :cond_1

    .line 727
    return-void

    .line 733
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 734
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_2

    .line 735
    new-instance v3, Lcom/oneplus/lib/widget/Spinner$DropdownPopup$2;

    invoke-direct {v3, p0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup$2;-><init>(Lcom/oneplus/lib/widget/Spinner$DropdownPopup;)V

    .line 750
    .local v3, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 751
    new-instance v4, Lcom/oneplus/lib/widget/Spinner$DropdownPopup$3;

    invoke-direct {v4, p0, v3}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup$3;-><init>(Lcom/oneplus/lib/widget/Spinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 761
    .end local v3    # "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_2
    return-void
.end method
