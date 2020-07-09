.class Lcom/oneplus/screenshot/GlobalScreenshot$3;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

.field final synthetic val$finisher:Ljava/lang/Runnable;

.field final synthetic val$navBarVisible:Z

.field final synthetic val$statusBarVisible:Z


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;Ljava/lang/Runnable;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 1248
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$3;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$3;->val$finisher:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$3;->val$statusBarVisible:Z

    iput-boolean p4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$3;->val$navBarVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1251
    move-object v0, p1

    check-cast v0, Lcom/oneplus/screenshot/ScreenshotSelectorView;

    .line 1252
    .local v0, "view":Lcom/oneplus/screenshot/ScreenshotSelectorView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 1280
    const/4 v1, 0x0

    return v1

    .line 1257
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->updateSelection(II)V

    .line 1258
    return v2

    .line 1260
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->setVisibility(I)V

    .line 1261
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$3;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$3;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v3}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$700(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1262
    invoke-virtual {v0}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1263
    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz v1, :cond_2

    .line 1264
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1266
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$3;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v3}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$700(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v3

    new-instance v4, Lcom/oneplus/screenshot/GlobalScreenshot$3$1;

    invoke-direct {v4, p0, v1}, Lcom/oneplus/screenshot/GlobalScreenshot$3$1;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot$3;Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1275
    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->stopSelection()V

    .line 1276
    return v2

    .line 1254
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->startSelection(II)V

    .line 1255
    return v2
.end method
