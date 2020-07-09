.class Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExploreByTouchNodeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/ExploreByTouchHelper;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/ExploreByTouchHelper;)V
    .locals 0

    .line 799
    iput-object p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/oneplus/lib/widget/ExploreByTouchHelper;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/ExploreByTouchHelper;Lcom/oneplus/lib/widget/ExploreByTouchHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/lib/widget/ExploreByTouchHelper;
    .param p2, "x1"    # Lcom/oneplus/lib/widget/ExploreByTouchHelper$1;

    .line 799
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Lcom/oneplus/lib/widget/ExploreByTouchHelper;)V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "virtualViewId"    # I

    .line 802
    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/oneplus/lib/widget/ExploreByTouchHelper;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->access$100(Lcom/oneplus/lib/widget/ExploreByTouchHelper;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 807
    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/oneplus/lib/widget/ExploreByTouchHelper;

    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->access$200(Lcom/oneplus/lib/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
