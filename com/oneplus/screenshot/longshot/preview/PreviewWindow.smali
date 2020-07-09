.class public Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;
.super Landroid/widget/RelativeLayout;
.source "PreviewWindow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewWindow:"


# instance fields
.field private mPreviewWindowController:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " dispatchTouchEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPreviewWindowController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->mPreviewWindowController:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewWindow:"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->mPreviewWindowController:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->isIsPreviewShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    sput-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    .line 39
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->mPreviewWindowController:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v1, v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onScrollStop(I)V

    .line 42
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setPreviewWindowController(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)V
    .locals 0
    .param p1, "previewController"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 47
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->mPreviewWindowController:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 48
    return-void
.end method
