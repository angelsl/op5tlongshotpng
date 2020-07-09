.class Lcom/oneplus/support/viewpager/widget/PagerTitleStrip$PageListener;
.super Landroid/database/DataSetObserver;
.source "PagerTitleStrip.java"

# interfaces
.implements Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Lcom/oneplus/support/viewpager/widget/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;


# direct methods
.method constructor <init>(Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 476
    return-void
.end method


# virtual methods
.method public onAdapterChanged(Lcom/oneplus/support/viewpager/widget/ViewPager;Lcom/oneplus/support/viewpager/widget/PagerAdapter;Lcom/oneplus/support/viewpager/widget/PagerAdapter;)V
    .locals 1
    .param p1, "viewPager"    # Lcom/oneplus/support/viewpager/widget/ViewPager;
    .param p2, "oldAdapter"    # Lcom/oneplus/support/viewpager/widget/PagerAdapter;
    .param p3, "newAdapter"    # Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    .line 506
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;

    invoke-virtual {v0, p2, p3}, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;->updateAdapter(Lcom/oneplus/support/viewpager/widget/PagerAdapter;Lcom/oneplus/support/viewpager/widget/PagerAdapter;)V

    .line 507
    return-void
.end method

.method public onChanged()V
    .locals 4

    .line 511
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;

    iget-object v1, v0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;->mPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;

    iget-object v2, v2, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;->mPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getAdapter()Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;->updateText(ILcom/oneplus/support/viewpager/widget/PagerAdapter;)V

    .line 513
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;

    iget v0, v0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;

    iget v1, v0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    :cond_0
    move v0, v1

    .line 514
    .local v0, "offset":F
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;

    iget-object v2, v1, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;->mPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 515
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 500
    iput p1, p0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip$PageListener;->mScrollState:I

    .line 501
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 480
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 482
    add-int/lit8 p1, p1, 0x1

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 485
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .line 489
    iget v0, p0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip$PageListener;->mScrollState:I

    if-nez v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;

    iget-object v1, v0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;->mPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;

    iget-object v2, v2, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;->mPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getAdapter()Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;->updateText(ILcom/oneplus/support/viewpager/widget/PagerAdapter;)V

    .line 493
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;

    iget v0, v0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;

    iget v1, v0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    :cond_0
    move v0, v1

    .line 494
    .local v0, "offset":F
    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;

    iget-object v2, v1, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;->mPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 496
    .end local v0    # "offset":F
    :cond_1
    return-void
.end method
