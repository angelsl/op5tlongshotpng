.class Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownAdapter"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/SpinnerAdapter;

.field private mLastSelectedPosition:I

.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mSelectedItemBackground:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "dropDownTheme"    # Landroid/content/res/Resources$Theme;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->mLastSelectedPosition:I

    .line 501
    iput-object p1, p0, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 503
    instance-of v0, p1, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 504
    move-object v0, p1

    check-cast v0, Landroid/widget/ListAdapter;

    iput-object v0, p0, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 507
    :cond_0
    if-eqz p2, :cond_2

    .line 508
    sget-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_M:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/widget/ThemedSpinnerAdapter;

    if-eqz v0, :cond_1

    .line 509
    move-object v0, p1

    check-cast v0, Landroid/widget/ThemedSpinnerAdapter;

    .line 511
    .local v0, "themedAdapter":Landroid/widget/ThemedSpinnerAdapter;
    invoke-interface {v0}, Landroid/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    if-eq v1, p2, :cond_2

    .line 512
    invoke-interface {v0, p2}, Landroid/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    goto :goto_0

    .line 514
    .end local v0    # "themedAdapter":Landroid/widget/ThemedSpinnerAdapter;
    :cond_1
    instance-of v0, p1, Landroid/widget/ThemedSpinnerAdapter;

    if-eqz v0, :cond_2

    .line 515
    move-object v0, p1

    check-cast v0, Landroid/widget/ThemedSpinnerAdapter;

    .line 516
    .restart local v0    # "themedAdapter":Landroid/widget/ThemedSpinnerAdapter;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 517
    invoke-interface {v0}, Landroid/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    if-nez v1, :cond_2

    .line 518
    invoke-interface {v0, p2}, Landroid/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    nop

    .line 523
    .end local v0    # "themedAdapter":Landroid/widget/ThemedSpinnerAdapter;
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 596
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 597
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    return v1

    .line 599
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getCount()I
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 548
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 549
    return-object v1

    .line 552
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 553
    .local v0, "dropDownView":Landroid/view/View;
    iget v2, p0, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->mLastSelectedPosition:I

    if-ne p1, v2, :cond_3

    .line 554
    if-nez p1, :cond_1

    .line 555
    iget-object v1, p0, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->mSelectedItemBackground:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 556
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_2

    .line 557
    iget-object v1, p0, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->mSelectedItemBackground:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 559
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->mSelectedItemBackground:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 563
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 565
    :goto_0
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 536
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 540
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 544
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 621
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 625
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 608
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 609
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 610
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    return v1

    .line 612
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 579
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 580
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 582
    :cond_0
    return-void
.end method

.method public setSelectedItem(I)V
    .locals 0
    .param p1, "selectedItem"    # I

    .line 574
    iput p1, p0, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->mLastSelectedPosition:I

    .line 575
    return-void
.end method

.method public setSelectedItemBackground([Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawables"    # [Landroid/graphics/drawable/Drawable;

    .line 526
    iput-object p1, p0, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->mSelectedItemBackground:[Landroid/graphics/drawable/Drawable;

    .line 527
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 585
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 586
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 588
    :cond_0
    return-void
.end method
