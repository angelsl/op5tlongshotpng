.class Lcom/oneplus/screenshot/GlobalScreenshot$4$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot$4;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/screenshot/GlobalScreenshot$4;

.field final synthetic val$finisher:Ljava/lang/Runnable;

.field final synthetic val$navBarVisible:Z

.field final synthetic val$rect:Landroid/graphics/Rect;

.field final synthetic val$statusBarVisible:Z


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot$4;Ljava/lang/Runnable;ZZLandroid/graphics/Rect;)V
    .registers 6
    .param p1, "this$1"    # Lcom/oneplus/screenshot/GlobalScreenshot$4;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$4;

    iput-object p2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4$1;->val$finisher:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4$1;->val$statusBarVisible:Z

    iput-boolean p4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4$1;->val$navBarVisible:Z

    iput-object p5, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4$1;->val$rect:Landroid/graphics/Rect;

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$4;

    iget-object v0, v0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4$1;->val$finisher:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4$1;->val$statusBarVisible:Z

    iget-boolean v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4$1;->val$navBarVisible:Z

    .line 1021
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4$1;->val$rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4$1;->val$rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4$1;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4$1;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 1020
    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZIIII)V

    .line 1022
    return-void
.end method
