.class public interface abstract Lcom/oneplus/support/core/fragment/app/FragmentManager$BackStackEntry;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BackStackEntry"
.end annotation


# virtual methods
.method public abstract getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getBreadCrumbShortTitleRes()I
    .annotation build Lcom/oneplus/support/annotation/StringRes;
    .end annotation
.end method

.method public abstract getBreadCrumbTitle()Ljava/lang/CharSequence;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getBreadCrumbTitleRes()I
    .annotation build Lcom/oneplus/support/annotation/StringRes;
    .end annotation
.end method

.method public abstract getId()I
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end method
