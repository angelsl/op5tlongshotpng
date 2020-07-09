.class public Lcom/oneplus/lib/menu/ActionMenuPresenter;
.super Lcom/oneplus/lib/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

.field mOverflowPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingOverflowIconSet:Z

.field private mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;

.field mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    sget v0, Lcom/oneplus/commonctrl/R$layout;->op_abc_action_menu_layout:I

    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 66
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 76
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;

    .line 81
    return-void
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 314
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 315
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 317
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 318
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 319
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 320
    .local v4, "child":Landroid/view/View;
    instance-of v5, v4, Lcom/oneplus/lib/menu/MenuView$ItemView;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/oneplus/lib/menu/MenuView$ItemView;

    .line 321
    invoke-interface {v5}, Lcom/oneplus/lib/menu/MenuView$ItemView;->getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 322
    return-object v4

    .line 318
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 325
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method


# virtual methods
.method public bindItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Lcom/oneplus/lib/menu/MenuView$ItemView;)V
    .locals 3
    .param p1, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/oneplus/lib/menu/MenuView$ItemView;

    .line 203
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/oneplus/lib/menu/MenuView$ItemView;->initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V

    .line 205
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v0, Lcom/oneplus/lib/menu/ActionMenuView;

    .line 206
    .local v0, "menuView":Lcom/oneplus/lib/menu/ActionMenuView;
    move-object v1, p2

    check-cast v1, Lcom/oneplus/lib/menu/ActionMenuItemView;

    .line 207
    .local v1, "actionItemView":Lcom/oneplus/lib/menu/ActionMenuItemView;
    invoke-virtual {v1, v0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->setItemInvoker(Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;)V

    .line 209
    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v2, :cond_0

    .line 210
    new-instance v2, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;)V

    iput-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/ActionMenuItemView;->setPopupCallback(Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;)V

    .line 213
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .line 374
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 375
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 376
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .line 271
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 272
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    return v0
.end method

.method public flagActionItems()Z
    .locals 24

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 416
    .local v1, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "itemsSize":I
    goto :goto_0

    .line 418
    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    .end local v2    # "itemsSize":I
    :cond_0
    const/4 v1, 0x0

    .line 419
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    const/4 v2, 0x0

    .line 422
    .restart local v2    # "itemsSize":I
    :goto_0
    iget v3, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMaxItems:I

    .line 423
    .local v3, "maxActions":I
    iget v4, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 424
    .local v4, "widthLimit":I
    const/4 v5, 0x0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 425
    .local v6, "querySpec":I
    iget-object v7, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    .line 427
    .local v7, "parent":Landroid/view/ViewGroup;
    const/4 v8, 0x0

    .line 428
    .local v8, "requiredItems":I
    const/4 v9, 0x0

    .line 429
    .local v9, "requestedItems":I
    const/4 v10, 0x0

    .line 430
    .local v10, "firstActionWidth":I
    const/4 v11, 0x0

    .line 431
    .local v11, "hasOverflow":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v2, :cond_4

    .line 432
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 433
    .local v13, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    invoke-virtual {v13}, Lcom/oneplus/lib/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 434
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 435
    :cond_1
    invoke-virtual {v13}, Lcom/oneplus/lib/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 436
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 438
    :cond_2
    const/4 v11, 0x1

    .line 440
    :goto_2
    iget-boolean v14, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    if-eqz v14, :cond_3

    invoke-virtual {v13}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 443
    const/4 v3, 0x0

    .line 431
    .end local v13    # "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 448
    .end local v12    # "i":I
    :cond_4
    iget-boolean v12, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v12, :cond_6

    if-nez v11, :cond_5

    add-int v12, v8, v9

    if-le v12, v3, :cond_6

    .line 450
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 452
    :cond_6
    sub-int/2addr v3, v8

    .line 454
    iget-object v12, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 455
    .local v12, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clear()V

    .line 457
    const/4 v13, 0x0

    .line 458
    .local v13, "cellSize":I
    const/4 v14, 0x0

    .line 459
    .local v14, "cellsRemaining":I
    iget-boolean v15, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v15, :cond_7

    .line 460
    iget v15, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMinCellSize:I

    div-int v14, v4, v15

    .line 461
    rem-int v16, v4, v15

    .line 462
    .local v16, "cellSizeRemaining":I
    div-int v17, v16, v14

    add-int v13, v15, v17

    .line 466
    .end local v16    # "cellSizeRemaining":I
    :cond_7
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    if-ge v15, v2, :cond_21

    .line 467
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 469
    .local v5, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    invoke-virtual {v5}, Lcom/oneplus/lib/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 470
    move/from16 v17, v2

    .end local v2    # "itemsSize":I
    .local v17, "itemsSize":I
    iget-object v2, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v5, v2, v7}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 471
    .local v2, "v":Landroid/view/View;
    move/from16 v19, v8

    .end local v8    # "requiredItems":I
    .local v19, "requiredItems":I
    iget-object v8, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    if-nez v8, :cond_8

    .line 472
    iput-object v2, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 474
    :cond_8
    iget-boolean v8, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v8, :cond_9

    .line 475
    const/4 v8, 0x0

    invoke-static {v2, v13, v14, v6, v8}, Lcom/oneplus/lib/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v20

    sub-int v14, v14, v20

    goto :goto_4

    .line 478
    :cond_9
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 480
    :goto_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 481
    .local v8, "measuredWidth":I
    sub-int/2addr v4, v8

    .line 482
    if-nez v10, :cond_a

    .line 483
    move v10, v8

    .line 485
    :cond_a
    move-object/from16 v20, v2

    .end local v2    # "v":Landroid/view/View;
    .local v20, "v":Landroid/view/View;
    invoke-virtual {v5}, Lcom/oneplus/lib/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    .line 486
    .local v2, "groupId":I
    if-eqz v2, :cond_b

    .line 487
    move/from16 v21, v4

    const/4 v4, 0x1

    .end local v4    # "widthLimit":I
    .local v21, "widthLimit":I
    invoke-virtual {v12, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_5

    .line 486
    .end local v21    # "widthLimit":I
    .restart local v4    # "widthLimit":I
    :cond_b
    move/from16 v21, v4

    const/4 v4, 0x1

    .line 489
    .end local v4    # "widthLimit":I
    .restart local v21    # "widthLimit":I
    :goto_5
    invoke-virtual {v5, v4}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 490
    .end local v2    # "groupId":I
    .end local v8    # "measuredWidth":I
    .end local v20    # "v":Landroid/view/View;
    move-object/from16 v22, v7

    move/from16 v4, v21

    const/4 v0, 0x0

    move-object/from16 v21, v1

    goto/16 :goto_f

    .end local v17    # "itemsSize":I
    .end local v19    # "requiredItems":I
    .end local v21    # "widthLimit":I
    .local v2, "itemsSize":I
    .restart local v4    # "widthLimit":I
    .local v8, "requiredItems":I
    :cond_c
    move/from16 v17, v2

    move/from16 v19, v8

    .end local v2    # "itemsSize":I
    .end local v8    # "requiredItems":I
    .restart local v17    # "itemsSize":I
    .restart local v19    # "requiredItems":I
    invoke-virtual {v5}, Lcom/oneplus/lib/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 493
    invoke-virtual {v5}, Lcom/oneplus/lib/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    .line 494
    .local v2, "groupId":I
    invoke-virtual {v12, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    .line 495
    .local v8, "inGroup":Z
    if-gtz v3, :cond_e

    if-eqz v8, :cond_d

    goto :goto_6

    :cond_d
    move/from16 v20, v3

    goto :goto_7

    :cond_e
    :goto_6
    if-lez v4, :cond_10

    move/from16 v20, v3

    .end local v3    # "maxActions":I
    .local v20, "maxActions":I
    iget-boolean v3, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v3, :cond_f

    if-lez v14, :cond_11

    :cond_f
    const/4 v3, 0x1

    goto :goto_8

    .end local v20    # "maxActions":I
    .restart local v3    # "maxActions":I
    :cond_10
    move/from16 v20, v3

    .end local v3    # "maxActions":I
    .restart local v20    # "maxActions":I
    :cond_11
    :goto_7
    const/4 v3, 0x0

    .line 498
    .local v3, "isAction":Z
    :goto_8
    if-eqz v3, :cond_19

    .line 499
    move/from16 v21, v3

    .end local v3    # "isAction":Z
    .local v21, "isAction":Z
    iget-object v3, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v5, v3, v7}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 500
    .local v3, "v":Landroid/view/View;
    move-object/from16 v22, v7

    .end local v7    # "parent":Landroid/view/ViewGroup;
    .local v22, "parent":Landroid/view/ViewGroup;
    iget-object v7, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    if-nez v7, :cond_12

    .line 501
    iput-object v3, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 503
    :cond_12
    iget-boolean v7, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v7, :cond_14

    .line 504
    const/4 v7, 0x0

    invoke-static {v3, v13, v14, v6, v7}, Lcom/oneplus/lib/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v23

    .line 506
    .local v23, "cells":I
    sub-int v14, v14, v23

    .line 507
    if-nez v23, :cond_13

    .line 508
    const/4 v7, 0x0

    move/from16 v21, v7

    .line 510
    .end local v23    # "cells":I
    :cond_13
    goto :goto_9

    .line 511
    :cond_14
    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    .line 513
    :goto_9
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 514
    .local v7, "measuredWidth":I
    sub-int/2addr v4, v7

    .line 515
    if-nez v10, :cond_15

    .line 516
    move v10, v7

    .line 519
    :cond_15
    move-object/from16 v23, v3

    .end local v3    # "v":Landroid/view/View;
    .local v23, "v":Landroid/view/View;
    iget-boolean v3, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v3, :cond_17

    .line 520
    if-ltz v4, :cond_16

    const/4 v3, 0x1

    goto :goto_a

    :cond_16
    const/4 v3, 0x0

    :goto_a
    and-int v3, v21, v3

    .end local v21    # "isAction":Z
    .local v3, "isAction":Z
    goto :goto_c

    .line 523
    .end local v3    # "isAction":Z
    .restart local v21    # "isAction":Z
    :cond_17
    add-int v3, v4, v10

    if-lez v3, :cond_18

    const/4 v3, 0x1

    goto :goto_b

    :cond_18
    const/4 v3, 0x0

    :goto_b
    and-int v3, v21, v3

    .end local v21    # "isAction":Z
    .restart local v3    # "isAction":Z
    goto :goto_c

    .line 498
    .end local v22    # "parent":Landroid/view/ViewGroup;
    .end local v23    # "v":Landroid/view/View;
    .local v7, "parent":Landroid/view/ViewGroup;
    :cond_19
    move/from16 v21, v3

    move-object/from16 v22, v7

    .line 527
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .restart local v22    # "parent":Landroid/view/ViewGroup;
    :goto_c
    if-eqz v3, :cond_1a

    if-eqz v2, :cond_1a

    .line 528
    const/4 v7, 0x1

    invoke-virtual {v12, v2, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move-object/from16 v21, v1

    goto :goto_e

    .line 529
    :cond_1a
    if-eqz v8, :cond_1e

    .line 531
    const/4 v7, 0x0

    invoke-virtual {v12, v2, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 532
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_d
    if-ge v7, v15, :cond_1d

    .line 533
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 534
    .local v0, "areYouMyGroupie":Lcom/oneplus/lib/menu/MenuItemImpl;
    move-object/from16 v21, v1

    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    .local v21, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    if-ne v1, v2, :cond_1c

    .line 536
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionButton()Z

    move-result v1

    if-eqz v1, :cond_1b

    add-int/lit8 v20, v20, 0x1

    .line 537
    :cond_1b
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 532
    .end local v0    # "areYouMyGroupie":Lcom/oneplus/lib/menu/MenuItemImpl;
    :cond_1c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    goto :goto_d

    .end local v21    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    :cond_1d
    move-object/from16 v21, v1

    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    .restart local v21    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    goto :goto_e

    .line 529
    .end local v7    # "j":I
    .end local v21    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    :cond_1e
    move-object/from16 v21, v1

    .line 542
    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    .restart local v21    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    :goto_e
    if-eqz v3, :cond_1f

    add-int/lit8 v20, v20, -0x1

    .line 544
    :cond_1f
    invoke-virtual {v5, v3}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 545
    .end local v2    # "groupId":I
    .end local v3    # "isAction":Z
    .end local v8    # "inGroup":Z
    move/from16 v3, v20

    const/4 v0, 0x0

    goto :goto_f

    .line 547
    .end local v20    # "maxActions":I
    .end local v21    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    .end local v22    # "parent":Landroid/view/ViewGroup;
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    .local v3, "maxActions":I
    .local v7, "parent":Landroid/view/ViewGroup;
    :cond_20
    move-object/from16 v21, v1

    move/from16 v20, v3

    move-object/from16 v22, v7

    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    .end local v3    # "maxActions":I
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .restart local v20    # "maxActions":I
    .restart local v21    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    .restart local v22    # "parent":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 466
    .end local v5    # "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    .end local v20    # "maxActions":I
    .restart local v3    # "maxActions":I
    :goto_f
    add-int/lit8 v15, v15, 0x1

    move v5, v0

    move/from16 v2, v17

    move/from16 v8, v19

    move-object/from16 v1, v21

    move-object/from16 v7, v22

    move-object/from16 v0, p0

    goto/16 :goto_3

    .line 550
    .end local v15    # "i":I
    .end local v17    # "itemsSize":I
    .end local v19    # "requiredItems":I
    .end local v21    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    .end local v22    # "parent":Landroid/view/ViewGroup;
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    .local v2, "itemsSize":I
    .restart local v7    # "parent":Landroid/view/ViewGroup;
    .local v8, "requiredItems":I
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 187
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 188
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 191
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    move-object v1, p3

    check-cast v1, Lcom/oneplus/lib/menu/ActionMenuView;

    .line 194
    .local v1, "menuParent":Lcom/oneplus/lib/menu/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 195
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 196
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    :cond_3
    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 177
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    .line 178
    .local v0, "oldMenuView":Lcom/oneplus/lib/menu/MenuView;
    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;

    move-result-object v1

    .line 179
    .local v1, "result":Lcom/oneplus/lib/menu/MenuView;
    if-eq v0, v1, :cond_0

    .line 180
    move-object v2, v1

    check-cast v2, Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v2, p0}, Lcom/oneplus/lib/menu/ActionMenuView;->setPresenter(Lcom/oneplus/lib/menu/ActionMenuPresenter;)V

    .line 182
    :cond_0
    return-object v1
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 172
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 358
    return v1

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    .line 362
    .local v0, "popup":Lcom/oneplus/lib/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->dismiss()V

    .line 364
    return v1

    .line 366
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public hideSubMenus()Z
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 387
    const/4 v0, 0x1

    return v0

    .line 389
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 85
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;

    move-result-object v1

    .line 90
    .local v1, "abp":Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;
    iget-boolean v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v2, :cond_0

    .line 91
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    .line 94
    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v2, :cond_1

    .line 95
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 99
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v2, :cond_2

    .line 100
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->getMaxActionButtons()I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMaxItems:I

    .line 103
    :cond_2
    iget v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 104
    .local v2, "width":I
    iget-boolean v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 105
    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-nez v3, :cond_4

    .line 106
    new-instance v3, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v5}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    .line 107
    iget-boolean v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 108
    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v6, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iput-object v4, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 110
    iput-boolean v5, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 112
    :cond_3
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 113
    .local v3, "spec":I
    iget-object v5, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v5, v3, v3}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->measure(II)V

    .line 115
    .end local v3    # "spec":I
    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    .line 117
    :cond_5
    iput-object v4, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    .line 120
    :goto_0
    iput v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 122
    const/high16 v3, 0x42400000    # 48.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v3

    float-to-int v3, v5

    iput v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMinCellSize:I

    .line 125
    iput-object v4, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 126
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 407
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 555
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 556
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    .line 557
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 129
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->getMaxActionButtons()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMaxItems:I

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 135
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 568
    instance-of v0, p1, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;

    if-nez v0, :cond_0

    .line 569
    return-void

    .line 572
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;

    .line 573
    .local v0, "saved":Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;
    iget v1, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v1, :cond_1

    .line 574
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget v2, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 575
    .local v1, "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_1

    .line 576
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/SubMenuBuilder;

    .line 577
    .local v2, "subMenu":Lcom/oneplus/lib/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z

    .line 580
    .end local v1    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Lcom/oneplus/lib/menu/SubMenuBuilder;
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 561
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;-><init>()V

    .line 562
    .local v0, "state":Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;
    iget v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 563
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 7
    .param p1, "subMenu"    # Lcom/oneplus/lib/menu/SubMenuBuilder;

    .line 277
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 279
    :cond_0
    move-object v0, p1

    .line 280
    .local v0, "topSubMenu":Lcom/oneplus/lib/menu/SubMenuBuilder;
    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eq v2, v3, :cond_1

    .line 281
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/oneplus/lib/menu/SubMenuBuilder;

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    .line 284
    .local v2, "anchor":Landroid/view/View;
    if-nez v2, :cond_2

    .line 289
    return v1

    .line 292
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->size()I

    move-result v3

    .line 296
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 297
    invoke-virtual {p1, v4}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 298
    .local v5, "childItem":Landroid/view/MenuItem;
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 299
    const/4 v1, 0x1

    .line 300
    goto :goto_2

    .line 296
    .end local v5    # "childItem":Landroid/view/MenuItem;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 304
    .end local v4    # "i":I
    :cond_4
    :goto_2
    new-instance v4, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v5, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, p1, v2}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/oneplus/lib/menu/SubMenuBuilder;Landroid/view/View;)V

    iput-object v4, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .line 305
    iget-object v4, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 306
    iget-object v4, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    const v5, 0x800005

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;->setGravity(I)V

    .line 307
    iget-object v4, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;->showSubMenu()V

    .line 309
    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z

    .line 310
    const/4 v4, 0x1

    return v4
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 584
    if-eqz p1, :cond_0

    .line 586
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z

    goto :goto_0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    .line 590
    :cond_1
    :goto_0
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 155
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .param p1, "itemCount"    # I

    .line 149
    iput p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMaxItems:I

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 151
    return-void
.end method

.method public setMenuView(Lcom/oneplus/lib/menu/ActionMenuView;)V
    .locals 1
    .param p1, "menuView"    # Lcom/oneplus/lib/menu/ActionMenuView;

    .line 593
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    .line 594
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/ActionMenuView;->initialize(Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 595
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 158
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 161
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 162
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 164
    :goto_0
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    .line 144
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 146
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .line 138
    iput p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 139
    iput-boolean p2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 141
    return-void
.end method

.method public shouldIncludeItem(ILcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 217
    invoke-virtual {p2}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 7

    .line 333
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 334
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v5, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 336
    .local v0, "popup":Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 338
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 342
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z

    .line 344
    const/4 v1, 0x1

    return v1

    .line 346
    .end local v0    # "popup":Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .line 222
    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 224
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 226
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 228
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 229
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 230
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuItemImpl;->getSupportActionProvider()Lcom/oneplus/lib/widget/ActionProvider;

    move-result-object v3

    .line 231
    .local v3, "provider":Lcom/oneplus/lib/widget/ActionProvider;
    if-eqz v3, :cond_0

    .line 232
    invoke-virtual {v3, p0}, Lcom/oneplus/lib/widget/ActionProvider;->setSubUiVisibilityListener(Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;)V

    .line 229
    .end local v3    # "provider":Lcom/oneplus/lib/widget/ActionProvider;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 240
    .local v0, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v1, 0x0

    .line 241
    .local v1, "hasOverflow":Z
    iget-boolean v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    .line 242
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 243
    .local v2, "count":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 244
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    xor-int/2addr v3, v4

    move v1, v3

    goto :goto_2

    .line 246
    :cond_3
    if-lez v2, :cond_4

    move v3, v4

    :cond_4
    move v1, v3

    .line 250
    .end local v2    # "count":I
    :cond_5
    :goto_2
    if-eqz v1, :cond_8

    .line 251
    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-nez v2, :cond_6

    .line 252
    new-instance v2, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    .line 254
    :cond_6
    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 255
    .local v2, "parent":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    if-eq v2, v3, :cond_9

    .line 256
    if-eqz v2, :cond_7

    .line 257
    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 259
    :cond_7
    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v3, Lcom/oneplus/lib/menu/ActionMenuView;

    .line 260
    .local v3, "menuView":Lcom/oneplus/lib/menu/ActionMenuView;
    iget-object v4, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/ActionMenuView;->generateOverflowButtonLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/lib/menu/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 262
    .end local v2    # "parent":Landroid/view/ViewGroup;
    .end local v3    # "menuView":Lcom/oneplus/lib/menu/ActionMenuView;
    :cond_8
    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    if-ne v2, v3, :cond_9

    .line 263
    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 262
    :cond_9
    :goto_3
    nop

    .line 266
    :goto_4
    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v2, Lcom/oneplus/lib/menu/ActionMenuView;

    iget-boolean v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/menu/ActionMenuView;->setOverflowReserved(Z)V

    .line 267
    return-void
.end method
