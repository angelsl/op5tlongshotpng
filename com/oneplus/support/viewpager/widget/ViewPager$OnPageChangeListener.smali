.class public interface abstract Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;
.super Ljava/lang/Object;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPageChangeListener"
.end annotation


# virtual methods
.method public abstract onPageScrollStateChanged(I)V
.end method

.method public abstract onPageScrolled(IFI)V
    .param p3    # I
        .annotation build Lcom/oneplus/support/annotation/Px;
        .end annotation
    .end param
.end method

.method public abstract onPageSelected(I)V
.end method
