.class public Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:I = -0x1


# instance fields
.field mFullSpan:Z

.field mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2044
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;-><init>(II)V

    .line 2045
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2040
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2041
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2052
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2053
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2048
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2049
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 2056
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;)V

    .line 2057
    return-void
.end method


# virtual methods
.method public final getSpanIndex()I
    .locals 1

    .line 2088
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    if-nez v0, :cond_0

    .line 2089
    const/4 v0, -0x1

    return v0

    .line 2091
    :cond_0
    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    return v0
.end method

.method public isFullSpan()Z
    .locals 1

    .line 2078
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    return v0
.end method

.method public setFullSpan(Z)V
    .locals 0
    .param p1, "fullSpan"    # Z

    .line 2068
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 2069
    return-void
.end method
