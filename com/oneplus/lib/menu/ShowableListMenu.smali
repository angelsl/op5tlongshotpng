.class public interface abstract Lcom/oneplus/lib/menu/ShowableListMenu;
.super Ljava/lang/Object;
.source "ShowableListMenu.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract dismiss()V
.end method

.method public abstract getListView()Landroid/widget/ListView;
.end method

.method public abstract isShowing()Z
.end method

.method public abstract show()V
.end method
