.class Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/ImageView;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private final mTempPts:[F

.field final synthetic this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .line 635
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    .line 636
    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 633
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->mTempPts:[F

    .line 638
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 639
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 640
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 641
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 643
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oneplus/lib/app/appcompat/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 645
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton$1;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Lcom/oneplus/lib/menu/ActionMenuPresenter;)V

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 674
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .line 694
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .line 689
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .line 678
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 679
    return v1

    .line 682
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 683
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 684
    return v1
.end method

.method protected setFrame(IIII)Z
    .locals 14
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 699
    invoke-super/range {p0 .. p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v0

    .line 702
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 703
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 704
    .local v2, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 705
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result v3

    .line 706
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getHeight()I

    move-result v4

    .line 707
    .local v4, "height":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 708
    .local v5, "halfEdge":I
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 709
    .local v6, "offsetX":I
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    .line 710
    .local v7, "offsetY":I
    add-int v8, v3, v6

    div-int/lit8 v8, v8, 0x2

    .line 711
    .local v8, "centerX":I
    add-int v9, v4, v7

    div-int/lit8 v9, v9, 0x2

    .line 712
    .local v9, "centerY":I
    sub-int v10, v8, v5

    sub-int v11, v9, v5

    add-int v12, v8, v5

    add-int v13, v9, v5

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 716
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "halfEdge":I
    .end local v6    # "offsetX":I
    .end local v7    # "offsetY":I
    .end local v8    # "centerX":I
    .end local v9    # "centerY":I
    :cond_0
    return v0
.end method
