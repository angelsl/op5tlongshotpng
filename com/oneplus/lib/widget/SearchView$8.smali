.class Lcom/oneplus/lib/widget/SearchView$8;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/SearchView;
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

    .line 1022
    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView$8;->this$0:Lcom/oneplus/lib/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1026
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView$8;->this$0:Lcom/oneplus/lib/widget/SearchView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1027
    return v1

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView$8;->this$0:Lcom/oneplus/lib/widget/SearchView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView$8;->this$0:Lcom/oneplus/lib/widget/SearchView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    .line 1038
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView$8;->this$0:Lcom/oneplus/lib/widget/SearchView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/lib/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1044
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView$8;->this$0:Lcom/oneplus/lib/widget/SearchView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-static {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->access$000(Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1045
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1046
    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    .line 1047
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 1050
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView$8;->this$0:Lcom/oneplus/lib/widget/SearchView;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 1051
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1050
    invoke-virtual {v0, v1, v3, v4}, Lcom/oneplus/lib/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1052
    return v2

    .line 1056
    :cond_2
    return v1
.end method
