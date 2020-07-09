.class Lcom/oneplus/lib/app/appcompat/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->initForMode(Lcom/oneplus/lib/app/appcompat/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

.field final synthetic val$mode:Lcom/oneplus/lib/app/appcompat/ActionMode;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/ActionBarContextView;Lcom/oneplus/lib/app/appcompat/ActionMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    .line 154
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView$1;->this$0:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView$1;->val$mode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 156
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView$1;->val$mode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->finish()V

    .line 157
    return-void
.end method
