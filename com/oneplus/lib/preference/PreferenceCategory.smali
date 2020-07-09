.class public Lcom/oneplus/lib/preference/PreferenceCategory;
.super Lcom/oneplus/lib/preference/PreferenceGroup;
.source "PreferenceCategory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceCategory"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_preferenceCategoryStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method protected onPrepareAddPreference(Lcom/oneplus/lib/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Lcom/oneplus/lib/preference/Preference;

    .line 56
    instance-of v0, p1, Lcom/oneplus/lib/preference/PreferenceCategory;

    if-nez v0, :cond_0

    .line 61
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroup;->onPrepareAddPreference(Lcom/oneplus/lib/preference/Preference;)Z

    move-result v0

    return v0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a PreferenceCategory directly to a PreferenceCategory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
