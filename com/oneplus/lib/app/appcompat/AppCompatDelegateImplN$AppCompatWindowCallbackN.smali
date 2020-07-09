.class Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN$AppCompatWindowCallbackN;
.super Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;
.source "AppCompatDelegateImplN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppCompatWindowCallbackN"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN;
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .line 38
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN$AppCompatWindowCallbackN;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23;Landroid/view/Window$Callback;)V

    .line 40
    return-void
.end method


# virtual methods
.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 3
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 45
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN$AppCompatWindowCallbackN;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 46
    .local v0, "panel":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-super {p0, p1, v1, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 54
    :goto_0
    return-void
.end method
