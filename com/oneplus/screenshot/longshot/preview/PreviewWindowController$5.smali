.class Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;
.super Ljava/lang/Object;
.source "PreviewWindowController.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onPreviewShow()V
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

    .line 304
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "oldScrollX"    # I
    .param p5, "oldScrollY"    # I

    .line 307
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1000(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    sub-int v1, p3, p5

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1112(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;I)I

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "dx":I
    sub-int v1, p3, p5

    .line 312
    .local v1, "dy":I
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1000(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;->onScrollChanged(II)V

    .line 315
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 317
    .local v0, "position":[I
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onScrollChange canScrollVertically:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " getScrollY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 319
    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mMaxLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mUpdating:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$000(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " containerTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mScrollContainer h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 320
    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mMoveDistance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    const-string v2, "Longshot.PreviewWindow"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v1, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onScrollStop(I)V

    .line 323
    .end local v0    # "position":[I
    :cond_1
    return-void
.end method
