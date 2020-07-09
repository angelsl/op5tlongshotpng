.class Lcom/oneplus/lib/design/widget/ViewOffsetHelper;
.super Ljava/lang/Object;
.source "ViewOffsetHelper.java"


# instance fields
.field private mLayoutLeft:I

.field private mLayoutTop:I

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    .line 40
    return-void
.end method

.method private updateOffsets()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    iget v1, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mOffsetTop:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mLayoutTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 53
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    iget v1, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mLayoutLeft:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 54
    return-void
.end method


# virtual methods
.method public getLayoutLeft()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mLayoutLeft:I

    return v0
.end method

.method public getLayoutTop()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mLayoutTop:I

    return v0
.end method

.method public getLeftAndRightOffset()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mOffsetTop:I

    return v0
.end method

.method public onViewLayout()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mLayoutTop:I

    .line 45
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mLayoutLeft:I

    .line 48
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->updateOffsets()V

    .line 49
    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .line 78
    iget v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    if-eq v0, p1, :cond_0

    .line 79
    iput p1, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    .line 80
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->updateOffsets()V

    .line 81
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .line 63
    iget v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mOffsetTop:I

    if-eq v0, p1, :cond_0

    .line 64
    iput p1, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mOffsetTop:I

    .line 65
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->updateOffsets()V

    .line 66
    const/4 v0, 0x1

    return v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
