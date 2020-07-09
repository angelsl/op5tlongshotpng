.class Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 250
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchLayout()V

    .line 259
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    const-string v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->eatRequestLayout()V

    .line 263
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->preProcess()V

    .line 264
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->rebindUpdatedViewHolders()V

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resumeRequestLayout(Z)V

    .line 270
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 272
    :cond_3
    :goto_0
    return-void
.end method
