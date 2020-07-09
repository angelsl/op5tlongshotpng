.class public Lcom/oneplus/lib/widget/preference/OPDividerSwitchPreference;
.super Lcom/oneplus/lib/preference/SwitchPreference;
.source "OPDividerSwitchPreference.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/preference/OPDividerSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 28
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_dividerSwitchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/preference/OPDividerSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 32
    sget v0, Lcom/oneplus/commonctrl/R$style;->OnePlus_DeviceDefault_Preference_Material_DividerSwitchPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/preference/OPDividerSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 36
    invoke-static {p1, p3}, Lcom/oneplus/lib/widget/util/utils;->resolveDefStyleAttr(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/oneplus/lib/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    iput-object p1, p0, Lcom/oneplus/lib/widget/preference/OPDividerSwitchPreference;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 42
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 43
    sget v0, Lcom/oneplus/commonctrl/R$id;->left_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "leftLayout":Landroid/view/View;
    sget v1, Lcom/oneplus/commonctrl/R$id;->right_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, "rightLayout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/preference/OPDividerSwitchPreference;->isSummaryEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 47
    if-eqz v0, :cond_3

    .line 48
    sget v2, Lcom/oneplus/commonctrl/R$id;->top_space:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 49
    .local v2, "topSpace":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 50
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v4, :cond_1

    .line 51
    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    :cond_0
    const/4 v5, -0x2

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 55
    iget-object v5, p0, Lcom/oneplus/lib/widget/preference/OPDividerSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/oneplus/commonctrl/R$dimen;->op_preference_divider_switch_bottom_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v0, v3, v3, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 56
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .end local v2    # "topSpace":Landroid/view/View;
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    goto :goto_0

    .line 61
    :cond_2
    if-eqz v1, :cond_3

    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 63
    .local v2, "rightParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_3

    .line 64
    const/16 v4, 0x10

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 65
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 66
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .end local v2    # "rightParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    :goto_0
    return-void
.end method

.method protected onClick()V
    .locals 0

    .line 77
    return-void
.end method
