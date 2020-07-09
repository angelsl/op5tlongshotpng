.class Lcom/oneplus/lib/design/widget/OPCheckableImageButton$1;
.super Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;
.source "OPCheckableImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/OPCheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/OPCheckableImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    .line 54
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPCheckableImageButton$1;->this$0:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-direct {p0}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 57
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 58
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPCheckableImageButton$1;->this$0:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 59
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 64
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 66
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPCheckableImageButton$1;->this$0:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    .line 67
    return-void
.end method
