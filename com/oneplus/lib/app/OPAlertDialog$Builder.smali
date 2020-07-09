.class public Lcom/oneplus/lib/app/OPAlertDialog$Builder;
.super Ljava/lang/Object;
.source "OPAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/OPAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    new-instance v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/app/OPAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    .line 374
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    new-instance v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 389
    invoke-static {p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    .line 391
    return-void
.end method


# virtual methods
.method public create()Lcom/oneplus/lib/app/OPAlertDialog;
    .locals 3

    .line 997
    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;)V

    .line 998
    .local v0, "dialog":Lcom/oneplus/lib/app/OPAlertDialog;
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertDialog;->access$000(Lcom/oneplus/lib/app/OPAlertDialog;)Lcom/oneplus/lib/app/OPAlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->apply(Lcom/oneplus/lib/app/OPAlertController;)V

    .line 999
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setCancelable(Z)V

    .line 1000
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 1001
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1003
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1004
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1005
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 1006
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1008
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v0, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 675
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 676
    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 677
    return-object p0
.end method

.method public setCancelable(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .line 598
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCancelable:Z

    .line 599
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .line 694
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 695
    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 696
    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 697
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .line 442
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 443
    return-object p0
.end method

.method public setIcon(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .line 474
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIconId:I

    .line 475
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 484
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 485
    return-object p0
.end method

.method public setIconAttribute(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 3
    .param p1, "attrId"    # I

    .line 508
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 509
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 510
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIconId:I

    .line 511
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 975
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mForceInverseBackground:Z

    .line 976
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 647
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 648
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 649
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 659
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 660
    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 661
    return-object p0
.end method

.method public setMessage(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    .line 452
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 453
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 462
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 463
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 720
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 721
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 722
    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItems:[Z

    .line 723
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsMultiChoice:Z

    .line 724
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 774
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 775
    iput-object p4, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 776
    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 777
    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 778
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsMultiChoice:Z

    .line 779
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 746
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 747
    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 748
    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItems:[Z

    .line 749
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsMultiChoice:Z

    .line 750
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 548
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 549
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 550
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 561
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 562
    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 563
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 574
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 575
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 576
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 587
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 588
    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 589
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 616
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 617
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 626
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 627
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 884
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 885
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .line 636
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 637
    return-object p0
.end method

.method public setOnlyDarkTheme(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "onlyDarkTheme"    # Z

    .line 489
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnlyDarkTheme:Z

    .line 490
    return-object p0
.end method

.method public setOnlyLightTheme(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "onlyLightTheme"    # Z

    .line 494
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnlyLightTheme:Z

    .line 495
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 522
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 523
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 524
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 535
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 536
    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 537
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .line 983
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 984
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 799
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 800
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 801
    iput p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItem:I

    .line 802
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    .line 803
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 824
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 825
    iput-object p4, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 826
    iput p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItem:I

    .line 827
    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 828
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    .line 829
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 869
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 870
    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 871
    iput p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItem:I

    .line 872
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    .line 873
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 847
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 848
    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 849
    iput p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItem:I

    .line 850
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    .line 851
    return-object p0
.end method

.method public setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    .line 411
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 412
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 421
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 422
    return-object p0
.end method

.method public setView(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "layoutResId"    # I

    .line 897
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mView:Landroid/view/View;

    .line 898
    iput p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewLayoutResId:I

    .line 899
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 900
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 918
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mView:Landroid/view/View;

    .line 919
    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewLayoutResId:I

    .line 920
    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 921
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 953
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mView:Landroid/view/View;

    .line 954
    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewLayoutResId:I

    .line 955
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 956
    iput p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingLeft:I

    .line 957
    iput p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingTop:I

    .line 958
    iput p4, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingRight:I

    .line 959
    iput p5, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingBottom:I

    .line 960
    return-object p0
.end method

.method public show()Lcom/oneplus/lib/app/OPAlertDialog;
    .locals 1

    .line 1022
    invoke-virtual {p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object v0

    .line 1023
    .local v0, "dialog":Lcom/oneplus/lib/app/OPAlertDialog;
    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog;->show()V

    .line 1024
    return-object v0
.end method
