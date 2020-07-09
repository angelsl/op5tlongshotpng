.class Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23;
.super Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;
.source "AppCompatDelegateImplV23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;
    }
.end annotation


# instance fields
.field private final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Lcom/oneplus/lib/app/appcompat/AppCompatCallback;

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)V

    .line 31
    const-string v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23;->mUiModeManager:Landroid/app/UiModeManager;

    .line 32
    return-void
.end method


# virtual methods
.method mapNightMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 43
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23;->mUiModeManager:Landroid/app/UiModeManager;

    .line 44
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const/4 v0, -0x1

    return v0

    .line 49
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mapNightMode(I)I

    move-result v0

    return v0
.end method

.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .line 38
    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23;Landroid/view/Window$Callback;)V

    return-object v0
.end method
