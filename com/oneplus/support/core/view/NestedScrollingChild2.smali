.class public interface abstract Lcom/oneplus/support/core/view/NestedScrollingChild2;
.super Ljava/lang/Object;
.source "NestedScrollingChild2.java"

# interfaces
.implements Lcom/oneplus/support/core/view/NestedScrollingChild;


# virtual methods
.method public abstract dispatchNestedPreScroll(II[I[II)Z
    .param p3    # [I
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract dispatchNestedScroll(IIII[II)Z
    .param p5    # [I
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract hasNestedScrollingParent(I)Z
.end method

.method public abstract startNestedScroll(II)Z
.end method

.method public abstract stopNestedScroll(I)V
.end method