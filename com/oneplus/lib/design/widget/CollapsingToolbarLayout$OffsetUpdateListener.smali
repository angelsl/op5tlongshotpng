.class Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;)V
    .locals 0

    .line 1261
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1262
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/oneplus/lib/design/widget/AppBarLayout;I)V
    .locals 9
    .param p1, "layout"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p2, "verticalOffset"    # I

    .line 1266
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    iput p2, v0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    .line 1268
    iget-object v0, v0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    invoke-virtual {v0}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1270
    .local v0, "insetTop":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v3

    .local v3, "z":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1271
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1272
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 1273
    .local v5, "lp":Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;
    invoke-static {v4}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    move-result-object v6

    .line 1275
    .local v6, "offsetHelper":Lcom/oneplus/lib/design/widget/ViewOffsetHelper;
    iget v7, v5, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    goto :goto_2

    .line 1281
    :cond_1
    neg-int v7, p2

    int-to-float v7, v7

    iget v8, v5, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    mul-float/2addr v7, v8

    .line 1282
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 1281
    invoke-virtual {v6, v7}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_2

    .line 1277
    :cond_2
    neg-int v7, p2

    iget-object v8, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    .line 1278
    invoke-virtual {v8, v4}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v8

    invoke-static {v7, v1, v8}, Lcom/oneplus/lib/design/widget/Utils;->constrain(III)I

    move-result v7

    .line 1277
    invoke-virtual {v6, v7}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 1279
    nop

    .line 1270
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;
    .end local v6    # "offsetHelper":Lcom/oneplus/lib/design/widget/ViewOffsetHelper;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1288
    .end local v2    # "i":I
    .end local v3    # "z":I
    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1290
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    iget-object v1, v1, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    .line 1291
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-static {v1}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1295
    :cond_4
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 1297
    .local v1, "expandRange":I
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    iget-object v2, v2, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    .line 1298
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 1297
    invoke-virtual {v2, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 1299
    return-void
.end method
