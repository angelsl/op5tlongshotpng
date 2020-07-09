.class public Lcom/oneplus/lib/widget/AutoCompleteTextView;
.super Landroid/widget/EditText;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;,
        Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;,
        Lcom/oneplus/lib/widget/AutoCompleteTextView$OnDismissListener;,
        Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;,
        Lcom/oneplus/lib/widget/AutoCompleteTextView$DropDownItemClickListener;,
        Lcom/oneplus/lib/widget/AutoCompleteTextView$MyWatcher;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final EXPAND_MAX:I = 0x3

.field static final TAG:Ljava/lang/String; = "AutoCompleteTextView"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBlockCompletion:Z

.field private mDropDownAnchorId:I

.field private mDropDownDismissedOnCompletion:Z

.field private mFilter:Landroid/widget/Filter;

.field private mHintResource:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mHintView:Landroid/widget/TextView;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLastKeyCode:I

.field private mObserver:Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;

.field private mOpenBefore:Z

.field private final mPassThroughClickListener:Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;

.field private final mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

.field private mPopupCanBeUpdated:Z

.field private final mPopupContext:Landroid/content/Context;

.field private mThreshold:I

.field private mValidator:Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 149
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 186
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "popupTheme"    # Landroid/content/res/Resources$Theme;

    .line 213
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {p0 .. p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 114
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 116
    const/4 v7, 0x0

    iput v7, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 119
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mValidator:Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;

    .line 126
    iput-boolean v6, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 215
    sget-object v9, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView:[I

    invoke-virtual {v1, v2, v9, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 218
    .local v9, "a":Landroid/content/res/TypedArray;
    if-eqz v5, :cond_0

    .line 219
    new-instance v7, Landroid/view/ContextThemeWrapper;

    invoke-direct {v7, v1, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v7, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 221
    :cond_0
    sget v10, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView_android_popupTheme:I

    invoke-virtual {v9, v10, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 223
    .local v7, "popupThemeResId":I
    if-eqz v7, :cond_1

    .line 224
    new-instance v10, Landroid/view/ContextThemeWrapper;

    invoke-direct {v10, v1, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v10, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 226
    :cond_1
    iput-object v1, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    .line 232
    .end local v7    # "popupThemeResId":I
    :goto_0
    iget-object v7, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    if-eq v7, v1, :cond_2

    .line 233
    sget-object v10, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView:[I

    invoke-virtual {v7, v2, v10, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .local v7, "pa":Landroid/content/res/TypedArray;
    goto :goto_1

    .line 236
    .end local v7    # "pa":Landroid/content/res/TypedArray;
    :cond_2
    move-object v7, v9

    .line 239
    .restart local v7    # "pa":Landroid/content/res/TypedArray;
    :goto_1
    sget v10, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView_android_dropDownSelector:I

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 241
    .local v10, "popupListSelector":Landroid/graphics/drawable/Drawable;
    sget v11, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView_android_dropDownWidth:I

    const/4 v12, -0x2

    invoke-virtual {v7, v11, v12}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v11

    .line 243
    .local v11, "popupWidth":I
    sget v13, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView_android_dropDownHeight:I

    invoke-virtual {v7, v13, v12}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v12

    .line 245
    .local v12, "popupHeight":I
    sget v13, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView_android_completionHintView:I

    sget v14, Lcom/oneplus/commonctrl/R$layout;->op_simple_dropdown_hint:I

    invoke-virtual {v7, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 247
    .local v13, "popupHintLayoutResId":I
    sget v14, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView_android_completionHint:I

    invoke-virtual {v7, v14}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 250
    .local v14, "popupHintText":Ljava/lang/CharSequence;
    if-eq v7, v9, :cond_3

    .line 251
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    :cond_3
    new-instance v15, Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v8, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    invoke-direct {v15, v8, v2, v3, v4}, Lcom/oneplus/lib/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v15, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    .line 255
    iget-object v8, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    const/16 v15, 0x10

    invoke-virtual {v8, v15}, Lcom/oneplus/lib/widget/ListPopupWindow;->setSoftInputMode(I)V

    .line 256
    iget-object v8, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v8, v6}, Lcom/oneplus/lib/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 257
    iget-object v8, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v8, v10}, Lcom/oneplus/lib/widget/ListPopupWindow;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget-object v8, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    new-instance v15, Lcom/oneplus/lib/widget/AutoCompleteTextView$DropDownItemClickListener;

    const/4 v6, 0x0

    invoke-direct {v15, v0, v6}, Lcom/oneplus/lib/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;Lcom/oneplus/lib/widget/AutoCompleteTextView$1;)V

    invoke-virtual {v8, v15}, Lcom/oneplus/lib/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 263
    iget-object v6, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v6, v11}, Lcom/oneplus/lib/widget/ListPopupWindow;->setWidth(I)V

    .line 264
    iget-object v6, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v6, v12}, Lcom/oneplus/lib/widget/ListPopupWindow;->setHeight(I)V

    .line 267
    iput v13, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintResource:I

    .line 268
    invoke-virtual {v0, v14}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->setCompletionHint(Ljava/lang/CharSequence;)V

    .line 275
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView_android_dropDownAnchor:I

    const/4 v8, -0x1

    invoke-virtual {v9, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 278
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView_android_completionThreshold:I

    const/4 v8, 0x2

    invoke-virtual {v9, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mThreshold:I

    .line 280
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getInputType()I

    move-result v6

    .line 285
    .local v6, "inputType":I
    and-int/lit8 v8, v6, 0xf

    const/4 v15, 0x1

    if-ne v8, v15, :cond_4

    .line 286
    const/high16 v8, 0x10000

    or-int/2addr v6, v8

    .line 287
    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->setRawInputType(I)V

    .line 290
    :cond_4
    invoke-virtual {v0, v15}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 292
    new-instance v8, Lcom/oneplus/lib/widget/AutoCompleteTextView$MyWatcher;

    const/4 v15, 0x0

    invoke-direct {v8, v0, v15}, Lcom/oneplus/lib/widget/AutoCompleteTextView$MyWatcher;-><init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;Lcom/oneplus/lib/widget/AutoCompleteTextView$1;)V

    invoke-virtual {v0, v8}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 294
    new-instance v8, Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-direct {v8, v0, v15}, Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;-><init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;Lcom/oneplus/lib/widget/AutoCompleteTextView$1;)V

    iput-object v8, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPassThroughClickListener:Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;

    .line 295
    iget-object v8, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPassThroughClickListener:Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-super {v0, v8}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/AutoCompleteTextView;Landroid/view/View;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/AutoCompleteTextView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/AutoCompleteTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/AutoCompleteTextView;

    .line 89
    invoke-direct {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->onClickImpl()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/AutoCompleteTextView;

    .line 89
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/lib/widget/AutoCompleteTextView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/AutoCompleteTextView;
    .param p1, "x1"    # I

    .line 89
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    return-void
.end method

.method private buildImeCompletions()V
    .locals 11

    .line 1229
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1230
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_3

    .line 1231
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1232
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1233
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_3

    .line 1234
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/16 v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1235
    .local v2, "count":I
    new-array v3, v2, [Landroid/view/inputmethod/CompletionInfo;

    .line 1236
    .local v3, "completions":[Landroid/view/inputmethod/CompletionInfo;
    const/4 v4, 0x0

    .line 1238
    .local v4, "realCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 1239
    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1240
    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .line 1241
    .local v6, "item":Ljava/lang/Object;
    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    .line 1242
    .local v7, "id":J
    new-instance v9, Landroid/view/inputmethod/CompletionInfo;

    .line 1243
    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v9, v7, v8, v4, v10}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    aput-object v9, v3, v4

    .line 1244
    add-int/lit8 v4, v4, 0x1

    .line 1238
    .end local v6    # "item":Ljava/lang/Object;
    .end local v7    # "id":J
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1248
    .end local v5    # "i":I
    :cond_1
    if-eq v4, v2, :cond_2

    .line 1249
    new-array v5, v4, [Landroid/view/inputmethod/CompletionInfo;

    .line 1250
    .local v5, "tmp":[Landroid/view/inputmethod/CompletionInfo;
    const/4 v6, 0x0

    invoke-static {v3, v6, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1251
    move-object v3, v5

    .line 1254
    .end local v5    # "tmp":[Landroid/view/inputmethod/CompletionInfo;
    :cond_2
    invoke-virtual {v1, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1257
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "count":I
    .end local v3    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v4    # "realCount":I
    :cond_3
    return-void
.end method

.method private onClickImpl()V
    .locals 1

    .line 309
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->ensureImeVisible(Z)V

    .line 312
    :cond_0
    return-void
.end method

.method private performCompletion(Landroid/view/View;IJ)V
    .locals 8
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 986
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 988
    if-gez p2, :cond_0

    .line 989
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .local v0, "selectedItem":Ljava/lang/Object;
    goto :goto_0

    .line 991
    .end local v0    # "selectedItem":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 993
    .restart local v0    # "selectedItem":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_1

    .line 994
    const-string v1, "AutoCompleteTextView"

    const-string v2, "performCompletion: no selected item"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    return-void

    .line 998
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 999
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 1000
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 1002
    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_4

    .line 1003
    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    .line 1005
    .local v1, "list":Lcom/oneplus/lib/widget/ListPopupWindow;
    if-eqz p1, :cond_2

    if-gez p2, :cond_3

    .line 1006
    :cond_2
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->getSelectedView()Landroid/view/View;

    move-result-object p1

    .line 1007
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result p2

    .line 1008
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->getSelectedItemId()J

    move-result-wide p3

    .line 1010
    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1014
    .end local v0    # "selectedItem":Ljava/lang/Object;
    .end local v1    # "list":Lcom/oneplus/lib/widget/ListPopupWindow;
    :cond_4
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1015
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1017
    :cond_5
    return-void
.end method

.method private updateDropDownForFilter(I)V
    .locals 3
    .param p1, "count"    # I

    .line 1066
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    .line 1076
    .local v0, "dropDownAlwaysVisible":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v1

    .line 1077
    .local v1, "enoughToFilter":Z
    if-gtz p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v1, :cond_2

    .line 1078
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    if-eqz v2, :cond_3

    .line 1079
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_0

    .line 1081
    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1082
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1086
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 1088
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->clearListSelection()V

    .line 929
    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "selectedItem"    # Ljava/lang/Object;

    .line 920
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public dismissDropDown()V
    .locals 2

    .line 1145
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1146
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1147
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1148
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1150
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->dismiss()V

    .line 1151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 1152
    return-void
.end method

.method public doAfterTextChanged()V
    .locals 2

    .line 872
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_0

    return-void

    .line 879
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mOpenBefore:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 880
    return-void

    .line 885
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 886
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_4

    .line 887
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 888
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mLastKeyCode:I

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 894
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 896
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_4

    .line 897
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 900
    :cond_4
    :goto_0
    return-void
.end method

.method public doBeforeTextChanged()V
    .locals 1

    .line 863
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_0

    return-void

    .line 867
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mOpenBefore:Z

    .line 869
    return-void
.end method

.method public enoughToFilter()Z
    .locals 2

    .line 843
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mThreshold:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ensureImeVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 1181
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    if-eqz p1, :cond_0

    .line 1182
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 1181
    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1183
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1184
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->showDropDown()V

    .line 1186
    :cond_2
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCompletionHint()Ljava/lang/CharSequence;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDropDownAnchor()I
    .locals 1

    .line 418
    iget v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    return v0
.end method

.method public getDropDownAnimationStyle()I
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getDropDownBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDropDownHeight()I
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getWidth()I

    move-result v0

    return v0
.end method

.method protected getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1305
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getListSelection()I
    .locals 1

    .line 951
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    .line 598
    iget v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mThreshold:I

    return v0
.end method

.method public getValidator()Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;
    .locals 1

    .line 1279
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mValidator:Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;

    return-object v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    return v0
.end method

.method public isDropDownDismissedOnCompletion()Z
    .locals 1

    .line 572
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .line 1192
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPerformingCompletion()Z
    .locals 1

    .line 1024
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mBlockCompletion:Z

    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1132
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 1133
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2
    .param p1, "completion"    # Landroid/view/inputmethod/CompletionInfo;

    .line 980
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->performItemClick(I)Z

    .line 983
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1137
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1138
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 1139
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .line 1100
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDisplayHint(I)V

    .line 1101
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1104
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1108
    :cond_1
    :goto_0
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 0
    .param p1, "count"    # I

    .line 1061
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    .line 1062
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 1112
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 1115
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    return-void

    .line 1122
    :cond_0
    if-nez p1, :cond_1

    .line 1123
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performValidation()V

    .line 1125
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1126
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1128
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 806
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/ListPopupWindow;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 807
    return v1

    .line 810
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 811
    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 813
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performValidation()V

    .line 819
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 820
    return v1

    .line 823
    :cond_3
    iput p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 824
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 825
    .local v0, "handled":Z
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 827
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 828
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->clearListSelection()V

    .line 831
    :cond_4
    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 754
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    .line 755
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 758
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 760
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 763
    :cond_0
    return v1

    .line 764
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 765
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 766
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    .line 767
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 769
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 770
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 771
    return v1

    .line 775
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 780
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/ListPopupWindow;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 781
    .local v0, "consumed":Z
    const/4 v1, 0x1

    const/16 v2, 0x3d

    if-eqz v0, :cond_2

    .line 782
    const/16 v3, 0x17

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    const/16 v3, 0x42

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 789
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 790
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performCompletion()V

    .line 792
    :cond_1
    return v1

    .line 796
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne p1, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 797
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performCompletion()V

    .line 798
    return v1

    .line 801
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .line 1092
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 1093
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1096
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 4

    .line 975
    const/4 v0, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    .line 976
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    .line 966
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 967
    return-void
.end method

.method public performValidation()V
    .locals 2

    .line 1290
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mValidator:Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;

    if-nez v0, :cond_0

    return-void

    .line 1292
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1294
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mValidator:Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1295
    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mValidator:Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    :cond_1
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 1051
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->clearComposingText()V

    .line 1053
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1056
    .local v0, "spannable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1057
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .line 735
    .local p1, "adapter":Landroid/widget/ListAdapter;, "TT;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mObserver:Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 736
    new-instance v0, Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;-><init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;Lcom/oneplus/lib/widget/AutoCompleteTextView$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mObserver:Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;

    goto :goto_0

    .line 737
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 738
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 740
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 741
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 743
    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    .line 744
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mObserver:Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_1

    .line 746
    :cond_2
    iput-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    .line 749
    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 750
    return-void
.end method

.method public setCompletionHint(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 326
    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    .line 327
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintResource:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020014

    .line 330
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 331
    .local v0, "hintView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iput-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    .line 333
    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 334
    .end local v0    # "hintView":Landroid/widget/TextView;
    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 339
    iput-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    .line 341
    :goto_0
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 1
    .param p1, "dropDownAlwaysVisible"    # Z

    .line 563
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setDropDownAlwaysVisible(Z)V

    .line 564
    return-void
.end method

.method public setDropDownAnchor(I)V
    .locals 2
    .param p1, "id"    # I

    .line 431
    iput p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 432
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 433
    return-void
.end method

.method public setDropDownAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    .line 525
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAnimationStyle(I)V

    .line 526
    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 454
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 455
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 2
    .param p1, "id"    # I

    .line 465
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 466
    return-void
.end method

.method public setDropDownDismissedOnCompletion(Z)V
    .locals 0
    .param p1, "dropDownDismissedOnCompletion"    # Z

    .line 584
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 585
    return-void
.end method

.method public setDropDownHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .line 407
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setHeight(I)V

    .line 408
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 498
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 499
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 476
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 477
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .line 379
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setWidth(I)V

    .line 380
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 1
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .line 1225
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setForceIgnoreOutsideTouch(Z)V

    .line 1226
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 1156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setFrame(IIII)Z

    move-result v0

    .line 1158
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1159
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->showDropDown()V

    .line 1162
    :cond_0
    return v0
.end method

.method public setListSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .line 937
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setSelection(I)V

    .line 938
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 300
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPassThroughClickListener:Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;->access$302(Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 301
    return-void
.end method

.method public setOnDismissListener(Lcom/oneplus/lib/widget/AutoCompleteTextView$OnDismissListener;)V
    .locals 2
    .param p1, "dismissListener"    # Lcom/oneplus/lib/widget/AutoCompleteTextView$OnDismissListener;

    .line 695
    const/4 v0, 0x0

    .line 696
    .local v0, "wrappedListener":Landroid/widget/PopupWindow$OnDismissListener;
    if-eqz p1, :cond_0

    .line 697
    new-instance v1, Lcom/oneplus/lib/widget/AutoCompleteTextView$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/lib/widget/AutoCompleteTextView$1;-><init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;Lcom/oneplus/lib/widget/AutoCompleteTextView$OnDismissListener;)V

    move-object v0, v1

    .line 703
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 704
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 630
    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 631
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 640
    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 641
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "filter"    # Z

    .line 1034
    if-eqz p2, :cond_0

    .line 1035
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1037
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 1038
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1039
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 1041
    :goto_0
    return-void
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .line 616
    if-gtz p1, :cond_0

    .line 617
    const/4 p1, 0x1

    .line 620
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mThreshold:I

    .line 621
    return-void
.end method

.method public setValidator(Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;)V
    .locals 0
    .param p1, "validator"    # Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;

    .line 1268
    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mValidator:Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;

    .line 1269
    return-void
.end method

.method public showDropDown()V
    .locals 3

    .line 1199
    invoke-direct {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->buildImeCompletions()V

    .line 1201
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1202
    iget v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getRootView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    goto :goto_0

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1208
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1210
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1211
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setListItemExpandMax(I)V

    .line 1213
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->show()V

    .line 1214
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 1215
    return-void
.end method

.method public showDropDownAfterLayout()V
    .locals 1

    .line 1171
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->postShow()V

    .line 1172
    return-void
.end method
