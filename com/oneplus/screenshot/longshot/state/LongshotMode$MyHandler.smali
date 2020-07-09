.class public Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;
.super Landroid/os/Handler;
.source "LongshotMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/LongshotMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    .line 142
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;->this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    .line 147
    .local v0, "action":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 155
    .local v1, "stopreason":I
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;->this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    invoke-static {v2, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->access$000(Lcom/oneplus/screenshot/longshot/state/LongshotMode;I)V

    .line 156
    goto :goto_0

    .line 149
    .end local v1    # "stopreason":I
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 150
    .local v1, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;->this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    invoke-virtual {v2, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->handleReject(Ljava/lang/String;)V

    .line 151
    nop

    .line 161
    .end local v1    # "reason":Ljava/lang/String;
    :goto_0
    return-void
.end method
