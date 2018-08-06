.class Lcom/oneplus/screenshot/GlobalScreenshot$5;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .registers 2
    .param p1, "this$0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$5;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$5;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->-get14(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/ScreenshotSelectorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->setVisibility(I)V

    .line 1038
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$5;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->-get14(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/ScreenshotSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->requestFocus()Z

    .line 1039
    return-void
.end method
