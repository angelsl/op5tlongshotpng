.class public interface abstract Lcom/oneplus/support/core/widget/TintableImageSourceView;
.super Ljava/lang/Object;
.source "TintableImageSourceView.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract getSupportImageTintList()Landroid/content/res/ColorStateList;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
.end method
