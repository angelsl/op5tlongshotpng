.class Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$4;
.super Landroid/os/Handler;
.source "PreviewWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->initBgHadndler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 212
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$4;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    .line 216
    .local v0, "action":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$4;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$800(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)V

    .line 219
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$4;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$900(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)V

    .line 220
    nop

    .line 224
    :goto_0
    return-void
.end method
