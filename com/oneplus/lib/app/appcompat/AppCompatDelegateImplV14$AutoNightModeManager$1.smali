.class Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;

    .line 341
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager$1;->this$1:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 347
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager$1;->this$1:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;->dispatchTimeChanged()V

    .line 348
    return-void
.end method
