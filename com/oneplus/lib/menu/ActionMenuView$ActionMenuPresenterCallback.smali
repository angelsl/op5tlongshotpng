.class Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionMenuPresenterCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 798
    return-void
.end method

.method public onOpenSubMenu(Lcom/oneplus/lib/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 802
    const/4 v0, 0x0

    return v0
.end method
