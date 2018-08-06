.class Lcom/oneplus/screenshot/GlobalScreenshot$4;
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
    .registers 5
    .param p1, "this$0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->val$finisher:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->val$statusBarVisible:Z

    iput-boolean p4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->val$navBarVisible:Z

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    move-object v6, p1

    .line 1003
    check-cast v6, Lcom/oneplus/screenshot/ScreenshotSelectorView;

    .line 1004
    .local v6, "view":Lcom/oneplus/screenshot/ScreenshotSelectorView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_68

    .line 1031
    return v1

    .line 1006
    :pswitch_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v6, v0, v1}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->startSelection(II)V

    .line 1007
    return v8

    .line 1009
    :pswitch_1b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v6, v0, v1}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->updateSelection(II)V

    .line 1010
    return v8

    .line 1012
    :pswitch_29
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->setVisibility(I)V

    .line 1013
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->-get17(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->-get13(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1014
    invoke-virtual {v6}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 1015
    .local v5, "rect":Landroid/graphics/Rect;
    if-eqz v5, :cond_64

    .line 1016
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_64

    .line 1018
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->-get13(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v7

    new-instance v0, Lcom/oneplus/screenshot/GlobalScreenshot$4$1;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->val$finisher:Ljava/lang/Runnable;

    iget-boolean v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->val$statusBarVisible:Z

    iget-boolean v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->val$navBarVisible:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/GlobalScreenshot$4$1;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot$4;Ljava/lang/Runnable;ZZLandroid/graphics/Rect;)V

    invoke-virtual {v7, v0}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1027
    :cond_64
    invoke-virtual {v6}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->stopSelection()V

    .line 1028
    return v8

    .line 1004
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_d
        :pswitch_29
        :pswitch_1b
    .end packed-switch
.end method
