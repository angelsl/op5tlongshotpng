.class public final Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;
.super Ljava/lang/Object;
.source "MenuWrapperFactory.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->GROUP_ID:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static wrapSupportMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/SupportMenu;)Landroid/view/Menu;
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "supportMenu"    # Lcom/oneplus/lib/menu/SupportMenu;

    .line 25
    return-object p1
.end method

.method public static wrapSupportMenuItem(Landroid/content/Context;Lcom/oneplus/lib/menu/SupportMenuItem;)Landroid/view/MenuItem;
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "supportMenuItem"    # Lcom/oneplus/lib/menu/SupportMenuItem;

    .line 29
    return-object p1
.end method

.method public static wrapSupportSubMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/SupportSubMenu;)Landroid/view/SubMenu;
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "supportSubMenu"    # Lcom/oneplus/lib/menu/SupportSubMenu;

    .line 33
    return-object p1
.end method
