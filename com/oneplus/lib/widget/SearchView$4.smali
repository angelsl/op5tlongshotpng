.class Lcom/oneplus/lib/widget/SearchView$4;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/SearchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/SearchView;

    .line 313
    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView$4;->this$0:Lcom/oneplus/lib/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 316
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView$4;->this$0:Lcom/oneplus/lib/widget/SearchView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView$4;->this$0:Lcom/oneplus/lib/widget/SearchView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView$4;->this$0:Lcom/oneplus/lib/widget/SearchView;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 319
    :cond_0
    return-void
.end method
