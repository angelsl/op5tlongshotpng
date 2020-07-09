.class Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$2;
.super Ljava/lang/Object;
.source "PreviewWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 184
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$2;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$2;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onProgressHide()V

    .line 188
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$2;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onPreviewShow()V

    .line 189
    return-void
.end method
