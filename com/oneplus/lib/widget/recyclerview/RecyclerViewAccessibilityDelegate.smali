.class public Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "RecyclerViewAccessibilityDelegate.java"


# instance fields
.field final mItemDelegate:Landroid/view/View$AccessibilityDelegate;

.field final mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 36
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 81
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mItemDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 37
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    .line 32
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    return v0
.end method

.method private shouldIgnore()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    return v0
.end method


# virtual methods
.method getItemDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mItemDelegate:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 67
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 68
    const-class v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 69
    instance-of v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 71
    .local v0, "rv":Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 75
    .end local v0    # "rv":Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 58
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 59
    const-class v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 60
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 63
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 46
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    return v0

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 53
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
