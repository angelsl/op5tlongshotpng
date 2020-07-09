.class Lcom/oneplus/support/viewpager/widget/ViewPager$ViewPositionComparator;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 4
    .param p1, "lhs"    # Landroid/view/View;
    .param p2, "rhs"    # Landroid/view/View;

    .line 3173
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;

    .line 3174
    .local v0, "llp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;

    .line 3175
    .local v1, "rlp":Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;
    iget-boolean v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    iget-boolean v3, v1, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eq v2, v3, :cond_1

    .line 3176
    iget-boolean v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 3178
    :cond_1
    iget v2, v0, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->position:I

    iget v3, v1, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->position:I

    sub-int/2addr v2, v3

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3170
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/viewpager/widget/ViewPager$ViewPositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
