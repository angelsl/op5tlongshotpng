.class public Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "gravity"    # I

    .line 1386
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;-><init>(III)V

    .line 1387
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1376
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1365
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;->gravity:I

    .line 1377
    const v0, 0x800013

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;->gravity:I

    .line 1378
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .line 1381
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1365
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;->gravity:I

    .line 1382
    iput p3, p0, Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;->gravity:I

    .line 1383
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1368
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1365
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;->gravity:I

    .line 1370
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPActionBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1371
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPActionBarLayout_android_layout_gravity:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;->gravity:I

    .line 1372
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1373
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1396
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1365
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;->gravity:I

    .line 1397
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;

    .line 1390
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1365
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;->gravity:I

    .line 1392
    iget v0, p1, Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;->gravity:I

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;->gravity:I

    .line 1393
    return-void
.end method
