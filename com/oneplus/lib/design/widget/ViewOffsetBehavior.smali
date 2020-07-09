.class Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;
.super Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
.source "ViewOffsetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private mTempLeftRightOffset:I

.field private mTempTopBottomOffset:I

.field private mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    .local p0, "this":Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;, "Lcom/oneplus/lib/design/widget/ViewOffsetBehavior<TV;>;"
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 31
    iput v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    .local p0, "this":Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;, "Lcom/oneplus/lib/design/widget/ViewOffsetBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 31
    iput v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    .line 37
    return-void
.end method


# virtual methods
.method public getLeftAndRightOffset()I
    .locals 1

    .line 89
    .local p0, "this":Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;, "Lcom/oneplus/lib/design/widget/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->getLeftAndRightOffset()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    .line 85
    .local p0, "this":Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;, "Lcom/oneplus/lib/design/widget/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->getTopAndBottomOffset()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected layoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;, "Lcom/oneplus/lib/design/widget/ViewOffsetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p1, p2, p3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 64
    return-void
.end method

.method public onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 3
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;, "Lcom/oneplus/lib/design/widget/ViewOffsetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->layoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 44
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    invoke-direct {v0, p2}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->onViewLayout()V

    .line 49
    iget v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 50
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 51
    iput v1, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 53
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    if-eqz v0, :cond_2

    .line 54
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    .line 55
    iput v1, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    .line 58
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .line 76
    .local p0, "this":Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;, "Lcom/oneplus/lib/design/widget/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    move-result v0

    return v0

    .line 79
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .line 67
    .local p0, "this":Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;, "Lcom/oneplus/lib/design/widget/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result v0

    return v0

    .line 70
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 72
    const/4 v0, 0x0

    return v0
.end method
