.class Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;
.super Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppCompatWindowCallbackV14"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .line 273
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V

    .line 275
    return-void
.end method


# virtual methods
.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 280
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->isHandleNativeActionModesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 284
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method final startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 293
    new-instance v0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;

    iget-object v1, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 297
    .local v0, "callbackWrapper":Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;

    .line 298
    invoke-virtual {v1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->startSupportActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)Lcom/oneplus/lib/app/appcompat/ActionMode;

    move-result-object v1

    .line 300
    .local v1, "supportActionMode":Lcom/oneplus/lib/app/appcompat/ActionMode;
    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Lcom/oneplus/lib/app/appcompat/ActionMode;)Landroid/view/ActionMode;

    move-result-object v2

    return-object v2

    .line 304
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
