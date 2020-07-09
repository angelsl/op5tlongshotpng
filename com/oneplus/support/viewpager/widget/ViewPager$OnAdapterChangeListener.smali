.class public interface abstract Lcom/oneplus/support/viewpager/widget/ViewPager$OnAdapterChangeListener;
.super Ljava/lang/Object;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAdapterChangeListener"
.end annotation


# virtual methods
.method public abstract onAdapterChanged(Lcom/oneplus/support/viewpager/widget/ViewPager;Lcom/oneplus/support/viewpager/widget/PagerAdapter;Lcom/oneplus/support/viewpager/widget/PagerAdapter;)V
    .param p1    # Lcom/oneplus/support/viewpager/widget/ViewPager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/viewpager/widget/PagerAdapter;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/oneplus/support/viewpager/widget/PagerAdapter;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
.end method
