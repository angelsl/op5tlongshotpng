.class Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver$1;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;

    .line 1397
    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1400
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-static {v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;->access$800(Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;

    .line 1401
    .local v0, "textView":Lcom/oneplus/lib/widget/AutoCompleteTextView;
    if-nez v0, :cond_0

    .line 1402
    return-void

    .line 1404
    :cond_0
    invoke-static {v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->access$700(Lcom/oneplus/lib/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v1

    .line 1405
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 1406
    return-void

    .line 1408
    :cond_1
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    invoke-static {v0, v2}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->access$900(Lcom/oneplus/lib/widget/AutoCompleteTextView;I)V

    .line 1409
    return-void
.end method
