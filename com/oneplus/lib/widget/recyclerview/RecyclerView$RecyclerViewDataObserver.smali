.class Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0

    .line 4102
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "x1"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;

    .line 4102
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 4105
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4106
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4110
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    .line 4111
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    goto :goto_0

    .line 4113
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    .line 4114
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 4116
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4117
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    .line 4119
    :cond_1
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 4123
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4124
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->onItemRangeChanged(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4125
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4127
    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 4131
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4132
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->onItemRangeInserted(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4133
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4135
    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 4147
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4148
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->onItemRangeMoved(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4149
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4151
    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 4139
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4140
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->onItemRangeRemoved(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4141
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4143
    :cond_0
    return-void
.end method

.method triggerUpdateProcessor()V
    .locals 2

    .line 4154
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3500(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4155
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4157
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3802(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Z)Z

    .line 4158
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    .line 4160
    :goto_0
    return-void
.end method
