.class Lcom/oneplus/lib/widget/AutoCompleteTextView$1;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/AutoCompleteTextView;->setOnDismissListener(Lcom/oneplus/lib/widget/AutoCompleteTextView$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView;

.field final synthetic val$dismissListener:Lcom/oneplus/lib/widget/AutoCompleteTextView$OnDismissListener;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;Lcom/oneplus/lib/widget/AutoCompleteTextView$OnDismissListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/AutoCompleteTextView;

    .line 697
    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$1;->this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView;

    iput-object p2, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$1;->val$dismissListener:Lcom/oneplus/lib/widget/AutoCompleteTextView$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$1;->val$dismissListener:Lcom/oneplus/lib/widget/AutoCompleteTextView$OnDismissListener;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView$OnDismissListener;->onDismiss()V

    .line 700
    return-void
.end method
