.class public Lcom/oneplus/lib/widget/button/OPRadioGroup;
.super Landroid/widget/LinearLayout;
.source "OPRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;,
        Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;,
        Lcom/oneplus/lib/widget/button/OPRadioGroup$OnCheckedChangeListener;,
        Lcom/oneplus/lib/widget/button/OPRadioGroup$LayoutParams;
    }
.end annotation


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPRadioGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mProtectFromCheckedChange:Z

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->setOrientation(I)V

    .line 71
    invoke-direct {p0}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mProtectFromCheckedChange:Z

    .line 85
    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OPRadioGroup:[I

    const v3, 0x101007e

    invoke-virtual {p1, p2, v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 88
    .local v1, "attributes":Landroid/content/res/TypedArray;
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPRadioGroup_android_checkedButton:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 89
    .local v2, "value":I
    if-eq v2, v0, :cond_0

    .line 90
    iput v2, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    .line 93
    :cond_0
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPRadioGroup_android_orientation:I

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 94
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->setOrientation(I)V

    .line 96
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    invoke-direct {p0}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->init()V

    .line 98
    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/button/OPRadioGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/button/OPRadioGroup;

    .line 55
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mProtectFromCheckedChange:Z

    return v0
.end method

.method static synthetic access$302(Lcom/oneplus/lib/widget/button/OPRadioGroup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/button/OPRadioGroup;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/button/OPRadioGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/button/OPRadioGroup;

    .line 55
    iget v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/button/OPRadioGroup;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/button/OPRadioGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/button/OPRadioGroup;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/button/OPRadioGroup;
    .param p1, "x1"    # I

    .line 55
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/button/OPRadioGroup;)Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/button/OPRadioGroup;

    .line 55
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mChildOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 101
    new-instance v0, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;-><init>(Lcom/oneplus/lib/widget/button/OPRadioGroup;Lcom/oneplus/lib/widget/button/OPRadioGroup$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mChildOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    .line 102
    new-instance v0, Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/oneplus/lib/widget/button/OPRadioGroup;Lcom/oneplus/lib/widget/button/OPRadioGroup$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mPassThroughListener:Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;

    .line 103
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mPassThroughListener:Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 104
    return-void
.end method

.method private setCheckedId(I)V
    .locals 2
    .param p1, "id"    # I

    .line 176
    iput p1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    .line 177
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPRadioGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 178
    iget v1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    invoke-interface {v0, p0, v1}, Lcom/oneplus/lib/widget/button/OPRadioGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/oneplus/lib/widget/button/OPRadioGroup;I)V

    .line 180
    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    .line 183
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, "checkedView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    if-eqz v1, :cond_0

    .line 185
    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-virtual {v1, p2}, Lcom/oneplus/lib/widget/button/OPRadioButton;->setChecked(Z)V

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 133
    instance-of v0, p1, Lcom/oneplus/lib/widget/button/OPRadioButton;

    if-eqz v0, :cond_1

    .line 134
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    .line 135
    .local v0, "button":Lcom/oneplus/lib/widget/button/OPRadioButton;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPRadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mProtectFromCheckedChange:Z

    .line 137
    iget v1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 138
    invoke-direct {p0, v1, v3}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->setCheckedStateForView(IZ)V

    .line 140
    :cond_0
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mProtectFromCheckedChange:Z

    .line 141
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPRadioButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->setCheckedId(I)V

    .line 145
    .end local v0    # "button":Lcom/oneplus/lib/widget/button/OPRadioButton;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 146
    return-void
.end method

.method public check(I)V
    .locals 3
    .param p1, "id"    # I

    .line 160
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget v1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    if-ne p1, v1, :cond_0

    .line 161
    return-void

    .line 164
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    if-eq v1, v0, :cond_1

    .line 165
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->setCheckedStateForView(IZ)V

    .line 168
    :cond_1
    if-eq p1, v0, :cond_2

    .line 169
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->setCheckedStateForView(IZ)V

    .line 172
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->setCheckedId(I)V

    .line 173
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 239
    instance-of v0, p1, Lcom/oneplus/lib/widget/button/OPRadioGroup$LayoutParams;

    return v0
.end method

.method public clearCheck()V
    .locals 1

    .line 213
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->check(I)V

    .line 214
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 244
    new-instance v0, Lcom/oneplus/lib/widget/button/OPRadioGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/widget/button/OPRadioGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/button/OPRadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/button/OPRadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/button/OPRadioGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 231
    new-instance v0, Lcom/oneplus/lib/widget/button/OPRadioGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oneplus/lib/widget/button/OPRadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCheckedRadioButtonId()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 120
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 123
    iget v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 124
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mProtectFromCheckedChange:Z

    .line 125
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->setCheckedStateForView(IZ)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mProtectFromCheckedChange:Z

    .line 127
    iget v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->setCheckedId(I)V

    .line 129
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 249
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 250
    const-class v0, Lcom/oneplus/lib/widget/button/OPRadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 251
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 255
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 256
    const-class v0, Lcom/oneplus/lib/widget/button/OPRadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/oneplus/lib/widget/button/OPRadioGroup$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/button/OPRadioGroup$OnCheckedChangeListener;

    .line 223
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPRadioGroup$OnCheckedChangeListener;

    .line 224
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 112
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mPassThroughListener:Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;->access$202(Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 113
    return-void
.end method
