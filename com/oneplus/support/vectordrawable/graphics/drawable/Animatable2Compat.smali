.class public interface abstract Lcom/oneplus/support/vectordrawable/graphics/drawable/Animatable2Compat;
.super Ljava/lang/Object;
.source "Animatable2Compat.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
    }
.end annotation


# virtual methods
.method public abstract clearAnimationCallbacks()V
.end method

.method public abstract registerAnimationCallback(Lcom/oneplus/support/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .param p1    # Lcom/oneplus/support/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract unregisterAnimationCallback(Lcom/oneplus/support/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .param p1    # Lcom/oneplus/support/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
.end method
