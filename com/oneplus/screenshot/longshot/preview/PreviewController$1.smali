.class Lcom/oneplus/screenshot/longshot/preview/PreviewController$1;
.super Landroid/os/Handler;
.source "PreviewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/preview/PreviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewController;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/preview/PreviewController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewController;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 33
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    .line 37
    .local v0, "action":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 39
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 40
    .local v1, "bitmapCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 41
    .local v2, "isTop":Z
    :goto_0
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 42
    .local v3, "isLast":Z
    :goto_1
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    invoke-static {v4, v1, v2, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->access$000(Lcom/oneplus/screenshot/longshot/preview/PreviewController;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;ZZ)V

    .line 43
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    invoke-static {v4, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->access$100(Lcom/oneplus/screenshot/longshot/preview/PreviewController;Z)V

    .line 44
    nop

    .line 47
    .end local v1    # "bitmapCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .end local v2    # "isTop":Z
    .end local v3    # "isLast":Z
    :goto_2
    return-void
.end method
