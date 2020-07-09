.class public interface abstract Lcom/oneplus/support/core/graphics/drawable/TintAwareDrawable;
.super Ljava/lang/Object;
.source "TintAwareDrawable.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract setTint(I)V
    .param p1    # I
        .annotation build Lcom/oneplus/support/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract setTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTintMode(Landroid/graphics/PorterDuff$Mode;)V
.end method
