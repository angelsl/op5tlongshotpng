.class Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    .line 81
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 84
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 85
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->access$000(Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 89
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 93
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->access$000(Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    .line 97
    return v0

    .line 100
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
