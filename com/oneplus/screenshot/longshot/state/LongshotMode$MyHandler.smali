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

    .line 108
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;->this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    .line 113
    .local v0, "action":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_7

    goto :goto_10

    .line 115
    :cond_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, "resion":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;->this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    invoke-virtual {v2, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->handleReject(Ljava/lang/String;)V

    .line 119
    .end local v1    # "resion":Ljava/lang/String;
    :goto_10
    return-void
.end method
