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
    .registers 2
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;->this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    .line 105
    .local v0, "action":I
    packed-switch v0, :pswitch_data_10

    .line 111
    :goto_5
    return-void

    .line 107
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 108
    .local v1, "resion":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;->this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    invoke-virtual {v2, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->handleReject(Ljava/lang/String;)V

    goto :goto_5

    .line 105
    :pswitch_data_10
    .packed-switch 0x3e8
        :pswitch_6
    .end packed-switch
.end method
