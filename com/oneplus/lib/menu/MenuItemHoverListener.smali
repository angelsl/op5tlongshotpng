.class public interface abstract Lcom/oneplus/lib/menu/MenuItemHoverListener;
.super Ljava/lang/Object;
.source "MenuItemHoverListener.java"


# virtual methods
.method public abstract onItemHoverEnter(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .param p1    # Lcom/oneplus/lib/menu/MenuBuilder;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuItem;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onItemHoverExit(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .param p1    # Lcom/oneplus/lib/menu/MenuBuilder;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuItem;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
.end method
