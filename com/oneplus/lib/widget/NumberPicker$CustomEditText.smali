.class public Lcom/oneplus/lib/widget/NumberPicker$CustomEditText;
.super Landroid/widget/EditText;
.source "NumberPicker.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomEditText"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2345
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2346
    return-void
.end method


# virtual methods
.method public onEditorAction(I)V
    .locals 1
    .param p1, "actionCode"    # I

    .line 2350
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 2351
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 2352
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker$CustomEditText;->clearFocus()V

    .line 2354
    :cond_0
    return-void
.end method
