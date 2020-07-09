.class public Lcom/oneplus/lib/widget/preference/OPPreferenceDivider;
.super Lcom/oneplus/lib/preference/PreferenceCategory;
.source "OPPreferenceDivider.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/preference/OPPreferenceDivider;->initViews(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/preference/OPPreferenceDivider;->initViews(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/preference/OPPreferenceDivider;->initViews(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    iput-object p1, p0, Lcom/oneplus/lib/widget/preference/OPPreferenceDivider;->mContext:Landroid/content/Context;

    .line 33
    sget v0, Lcom/oneplus/commonctrl/R$layout;->op_ctrl_preference_divider:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/preference/OPPreferenceDivider;->setLayoutResource(I)V

    .line 34
    return-void
.end method
