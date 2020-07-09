.class Lcom/oneplus/lib/app/OPAlertController$1;
.super Ljava/lang/Object;
.source "OPAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/OPAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/OPAlertController;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/OPAlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/OPAlertController;

    .line 129
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertController;->access$000(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertController;->access$100(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertController;->access$100(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    goto :goto_0

    .line 135
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertController;->access$200(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertController;->access$300(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertController;->access$300(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 137
    .end local v0    # "m":Landroid/os/Message;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertController;->access$400(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertController;->access$500(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertController;->access$500(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 140
    .end local v0    # "m":Landroid/os/Message;
    :cond_2
    const/4 v0, 0x0

    .line 143
    .restart local v0    # "m":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_3

    .line 144
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 148
    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v1}, Lcom/oneplus/lib/app/OPAlertController;->access$700(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v3}, Lcom/oneplus/lib/app/OPAlertController;->access$600(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 150
    return-void
.end method
