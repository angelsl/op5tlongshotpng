.class public Lcom/oneplus/lib/design/widget/OPTextInputEditText;
.super Lcom/oneplus/lib/widget/OPEditText;
.source "OPTextInputEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPEditText;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/OPEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 50
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/OPEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 51
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 55
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 56
    instance-of v2, v1, Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    if-eqz v2, :cond_0

    .line 57
    move-object v2, v1

    check-cast v2, Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 58
    goto :goto_1

    .line 60
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 63
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_1
    :goto_1
    return-object v0
.end method
