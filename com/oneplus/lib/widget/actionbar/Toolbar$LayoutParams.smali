.class public Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
.super Landroid/widget/Toolbar$LayoutParams;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/actionbar/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field static final CUSTOM:I = 0x0

.field static final EXPANDED:I = 0x2

.field static final SYSTEM:I = 0x1


# instance fields
.field mViewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "gravity"    # I

    .line 2368
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(III)V

    .line 2369
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2358
    invoke-direct {p0, p1, p2}, Landroid/widget/Toolbar$LayoutParams;-><init>(II)V

    .line 2351
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    .line 2359
    const v0, 0x800013

    iput v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->gravity:I

    .line 2360
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .line 2363
    invoke-direct {p0, p1, p2}, Landroid/widget/Toolbar$LayoutParams;-><init>(II)V

    .line 2351
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    .line 2364
    iput p3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->gravity:I

    .line 2365
    return-void
.end method

.method public constructor <init>(Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/app/ActionBar$LayoutParams;

    .line 2378
    invoke-direct {p0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    .line 2351
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    .line 2379
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2354
    invoke-direct {p0, p1, p2}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2351
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    .line 2355
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2389
    invoke-direct {p0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2351
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    .line 2390
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2382
    invoke-direct {p0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2351
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    .line 2386
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 2372
    invoke-direct {p0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/widget/Toolbar$LayoutParams;)V

    .line 2351
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    .line 2374
    iget v0, p1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    iput v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    .line 2375
    return-void
.end method
