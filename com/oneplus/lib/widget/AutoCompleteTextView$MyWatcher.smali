.class Lcom/oneplus/lib/widget/AutoCompleteTextView$MyWatcher;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;)V
    .locals 0

    .line 851
    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$MyWatcher;->this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;Lcom/oneplus/lib/widget/AutoCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/lib/widget/AutoCompleteTextView;
    .param p2, "x1"    # Lcom/oneplus/lib/widget/AutoCompleteTextView$1;

    .line 851
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/AutoCompleteTextView$MyWatcher;-><init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .line 853
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$MyWatcher;->this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->doAfterTextChanged()V

    .line 854
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 856
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$MyWatcher;->this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->doBeforeTextChanged()V

    .line 857
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 859
    return-void
.end method
