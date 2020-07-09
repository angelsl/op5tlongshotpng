.class public final Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;
.super Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSpanSizeLookup"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 834
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanIndex(II)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .line 843
    rem-int v0, p1, p2

    return v0
.end method

.method public getSpanSize(I)I
    .locals 1
    .param p1, "position"    # I

    .line 838
    const/4 v0, 0x1

    return v0
.end method
