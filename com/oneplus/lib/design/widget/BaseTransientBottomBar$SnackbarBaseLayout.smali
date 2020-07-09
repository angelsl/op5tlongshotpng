.class Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;
.super Landroid/widget/FrameLayout;
.source "BaseTransientBottomBar.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SnackbarBaseLayout"
.end annotation


# instance fields
.field private mOnAttachStateChangeListener:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

.field private mOnLayoutChangeListener:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 639
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 640
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 643
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 644
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 645
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->SnackbarLayout_op_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->SnackbarLayout_op_elevation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/oneplus/support/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 649
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 651
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setClickable(Z)V

    .line 652
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 664
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 665
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 666
    invoke-interface {v0, p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 669
    :cond_0
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 670
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 674
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 675
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 676
    invoke-interface {v0, p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    .line 678
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 656
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 657
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnLayoutChangeListener:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 658
    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIII)V

    .line 660
    :cond_0
    return-void
.end method

.method setOnAttachStateChangeListener(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    .line 687
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    .line 688
    return-void
.end method

.method setOnLayoutChangeListener(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;)V
    .locals 0
    .param p1, "onLayoutChangeListener"    # Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;

    .line 682
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnLayoutChangeListener:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;

    .line 683
    return-void
.end method
