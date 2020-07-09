.class public Lcom/oneplus/lib/widget/Spinner;
.super Landroid/widget/Spinner;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/Spinner$DropdownPopup;,
        Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;
    }
.end annotation


# static fields
.field private static final ATTRS_ANDROID_SPINNERMODE:[I

.field private static final IS_AT_LEAST_JB:Z

.field static final IS_AT_LEAST_M:Z

.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field private static final MODE_DIALOG:I = 0x0

.field private static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final SELECTED_INDEX_BOTTOM:I = 0x2

.field private static final SELECTED_INDEX_MIDDLE:I = 0x1

.field private static final SELECTED_INDEX_TOP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OpSpinner"


# instance fields
.field private mDropDownAdapter:Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;

.field private mDropDownWidth:I

.field private mForwardingListener:Lcom/oneplus/lib/widget/ForwardingListener;

.field private mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

.field private final mPopupContext:Landroid/content/Context;

.field private final mPopupSet:Z

.field private mSelectedItemBackground:[Landroid/graphics/drawable/Drawable;

.field private mTempAdapter:Landroid/widget/SpinnerAdapter;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_M:Z

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_JB:Z

    .line 32
    new-array v0, v1, [I

    const v1, 0x10102f1

    aput v1, v0, v2

    sput-object v0, Lcom/oneplus/lib/widget/Spinner;->ATTRS_ANDROID_SPINNERMODE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 86
    const/4 v0, 0x0

    const v1, 0x1010081

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/oneplus/lib/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 97
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 112
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .line 131
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I
    .param p5, "popupTheme"    # Landroid/content/res/Resources$Theme;

    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mSelectedItemBackground:[Landroid/graphics/drawable/Drawable;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 162
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->Spinner:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 165
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Spinner_android_popupTheme:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 166
    .local v2, "popupThemeResId":I
    if-eqz p5, :cond_1

    .line 167
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 168
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p1, p5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v3, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 170
    :cond_0
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 174
    :cond_1
    if-eqz v2, :cond_2

    .line 175
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 179
    :cond_2
    iput-object p1, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    .line 183
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/Spinner;->mSelectedItemBackground:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$drawable;->op_drop_down_item_background_top:I

    iget-object v6, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    .line 184
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 183
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v1

    .line 185
    iget-object v3, p0, Lcom/oneplus/lib/widget/Spinner;->mSelectedItemBackground:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/oneplus/commonctrl/R$drawable;->op_drop_down_item_background_bottom:I

    iget-object v7, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    .line 186
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 185
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    .line 187
    iget-object v3, p0, Lcom/oneplus/lib/widget/Spinner;->mSelectedItemBackground:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$drawable;->op_drop_down_item_background:I

    iget-object v6, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    .line 188
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 187
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 189
    iget-object v3, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    if-eqz v3, :cond_8

    .line 190
    const/4 v3, -0x1

    if-ne p4, v3, :cond_7

    .line 191
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_6

    .line 193
    const/4 v3, 0x0

    .line 195
    .local v3, "aa":Landroid/content/res/TypedArray;
    :try_start_0
    sget-object v4, Lcom/oneplus/lib/widget/Spinner;->ATTRS_ANDROID_SPINNERMODE:[I

    invoke-virtual {p1, p2, v4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 197
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 198
    invoke-virtual {v3, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p4, v4

    .line 203
    :cond_3
    nop

    .line 204
    :goto_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 203
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 200
    :catch_0
    move-exception v4

    .line 201
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "OpSpinner"

    const-string v7, "Could not read android:spinnerMode"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_4

    .line 204
    goto :goto_1

    .line 207
    .end local v3    # "aa":Landroid/content/res/TypedArray;
    :cond_4
    :goto_2
    goto :goto_4

    .line 203
    .restart local v3    # "aa":Landroid/content/res/TypedArray;
    :goto_3
    if-eqz v3, :cond_5

    .line 204
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    throw v1

    .line 209
    .end local v3    # "aa":Landroid/content/res/TypedArray;
    :cond_6
    const/4 p4, 0x1

    .line 213
    :cond_7
    :goto_4
    if-ne p4, v5, :cond_8

    .line 214
    new-instance v3, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    iget-object v4, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, p2, p3}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;-><init>(Lcom/oneplus/lib/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 215
    .local v3, "popup":Lcom/oneplus/lib/widget/Spinner$DropdownPopup;
    iget-object v4, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    sget-object v6, Lcom/oneplus/commonctrl/R$styleable;->Spinner:[I

    invoke-virtual {v4, p2, v6, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 217
    .local v1, "pa":Landroid/content/res/TypedArray;
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->Spinner_android_dropDownWidth:I

    const/4 v6, -0x2

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/widget/Spinner;->mDropDownWidth:I

    .line 219
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->Spinner_android_popupBackground:I

    .line 220
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 219
    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    iput-object v3, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    .line 225
    new-instance v4, Lcom/oneplus/lib/widget/Spinner$1;

    invoke-direct {v4, p0, p0, v3}, Lcom/oneplus/lib/widget/Spinner$1;-><init>(Lcom/oneplus/lib/widget/Spinner;Landroid/view/View;Lcom/oneplus/lib/widget/Spinner$DropdownPopup;)V

    iput-object v4, p0, Lcom/oneplus/lib/widget/Spinner;->mForwardingListener:Lcom/oneplus/lib/widget/ForwardingListener;

    .line 242
    .end local v1    # "pa":Landroid/content/res/TypedArray;
    .end local v3    # "popup":Lcom/oneplus/lib/widget/Spinner$DropdownPopup;
    :cond_8
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Spinner_android_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 243
    .local v1, "entries":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_9

    .line 244
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v3, p1, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 246
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 247
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 250
    .end local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    iput-boolean v5, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupSet:Z

    .line 256
    iget-object v3, p0, Lcom/oneplus/lib/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v3, :cond_a

    .line 257
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 258
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oneplus/lib/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 261
    :cond_a
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/Spinner;)Lcom/oneplus/lib/widget/Spinner$DropdownPopup;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/Spinner;

    .line 28
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/Spinner;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/Spinner;

    .line 28
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/Spinner;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/Spinner;

    .line 28
    iget v0, p0, Lcom/oneplus/lib/widget/Spinner;->mDropDownWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/Spinner;)Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/Spinner;

    .line 28
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mDropDownAdapter:Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;

    return-object v0
.end method


# virtual methods
.method compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 12
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .line 435
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 436
    return v0

    .line 439
    :cond_0
    const/4 v1, 0x0

    .line 440
    .local v1, "width":I
    const/4 v2, 0x0

    .line 441
    .local v2, "itemView":Landroid/view/View;
    const/4 v3, 0x0

    .line 442
    .local v3, "itemType":I
    nop

    .line 443
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 444
    .local v4, "widthMeasureSpec":I
    nop

    .line 445
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 449
    .local v5, "heightMeasureSpec":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 450
    .local v6, "start":I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v7

    add-int/lit8 v8, v6, 0xf

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 451
    .local v7, "end":I
    sub-int v8, v7, v6

    .line 452
    .local v8, "count":I
    rsub-int/lit8 v9, v8, 0xf

    sub-int v9, v6, v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 453
    .end local v6    # "start":I
    .local v0, "start":I
    move v6, v0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_3

    .line 454
    invoke-interface {p1, v6}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v9

    .line 455
    .local v9, "positionType":I
    if-eq v9, v3, :cond_1

    .line 456
    move v3, v9

    .line 457
    const/4 v2, 0x0

    .line 459
    :cond_1
    invoke-interface {p1, v6, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 460
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_2

    .line 461
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v10, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    :cond_2
    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 466
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 453
    .end local v9    # "positionType":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 470
    .end local v6    # "i":I
    :cond_3
    if-eqz p2, :cond_4

    .line 471
    iget-object v6, p0, Lcom/oneplus/lib/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 472
    iget-object v6, p0, Lcom/oneplus/lib/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/oneplus/lib/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v9

    add-int/2addr v1, v6

    .line 475
    :cond_4
    return v1
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->getHorizontalOffset()I

    move-result v0

    return v0

    .line 330
    :cond_0
    sget-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_JB:Z

    if-eqz v0, :cond_1

    .line 331
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    return v0

    .line 333
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->getVerticalOffset()I

    move-result v0

    return v0

    .line 307
    :cond_0
    sget-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_JB:Z

    if-eqz v0, :cond_1

    .line 308
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    return v0

    .line 310
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 346
    iget v0, p0, Lcom/oneplus/lib/widget/Spinner;->mDropDownWidth:I

    return v0

    .line 347
    :cond_0
    sget-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_JB:Z

    if-eqz v0, :cond_1

    .line 348
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    return v0

    .line 350
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 290
    :cond_0
    sget-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_JB:Z

    if-eqz v0, :cond_1

    .line 291
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 293
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    return-object v0

    .line 269
    :cond_0
    sget-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_M:Z

    if-eqz v0, :cond_1

    .line 270
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 272
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 378
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 380
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->dismiss()V

    .line 383
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 395
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 397
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner;->getMeasuredWidth()I

    move-result v0

    .line 399
    .local v0, "measuredWidth":I
    nop

    .line 400
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/widget/Spinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 399
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 401
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 399
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 402
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    .line 399
    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/widget/Spinner;->setMeasuredDimension(II)V

    .line 404
    .end local v0    # "measuredWidth":I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 387
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mForwardingListener:Lcom/oneplus/lib/widget/ForwardingListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/lib/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const/4 v0, 0x1

    return v0

    .line 390
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performClick()Z
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_1

    .line 410
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->show()V

    .line 413
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 417
    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 28
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .line 358
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupSet:Z

    if-nez v0, :cond_0

    .line 359
    iput-object p1, p0, Lcom/oneplus/lib/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 360
    return-void

    .line 363
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 365
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 367
    .local v0, "popupContext":Landroid/content/Context;
    :cond_1
    new-instance v1, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/Spinner;->mDropDownAdapter:Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;

    .line 368
    iget-object v1, p0, Lcom/oneplus/lib/widget/Spinner;->mDropDownAdapter:Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;

    iget-object v2, p0, Lcom/oneplus/lib/widget/Spinner;->mSelectedItemBackground:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->setSelectedItemBackground([Landroid/graphics/drawable/Drawable;)V

    .line 369
    iget-object v1, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    iget-object v2, p0, Lcom/oneplus/lib/widget/Spinner;->mDropDownAdapter:Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 371
    .end local v0    # "popupContext":Landroid/content/Context;
    :cond_2
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    .line 314
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    goto :goto_0

    .line 316
    :cond_0
    sget-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_JB:Z

    if-eqz v0, :cond_1

    .line 317
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    .line 319
    :cond_1
    :goto_0
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    .line 297
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setVerticalOffset(I)V

    goto :goto_0

    .line 299
    :cond_0
    sget-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_JB:Z

    if-eqz v0, :cond_1

    .line 300
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    .line 302
    :cond_1
    :goto_0
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1
    .param p1, "pixels"    # I

    .line 337
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 338
    iput p1, p0, Lcom/oneplus/lib/widget/Spinner;->mDropDownWidth:I

    goto :goto_0

    .line 339
    :cond_0
    sget-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_JB:Z

    if-eqz v0, :cond_1

    .line 340
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    .line 342
    :cond_1
    :goto_0
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 276
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 278
    :cond_0
    sget-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_JB:Z

    if-eqz v0, :cond_1

    .line 279
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    :cond_1
    :goto_0
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 284
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    .line 422
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 425
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 427
    :goto_0
    return-void
.end method
