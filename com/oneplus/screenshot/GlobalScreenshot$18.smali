.class Lcom/oneplus/screenshot/GlobalScreenshot$18;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 1692
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$18;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$18;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1695
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$18;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$18;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2700(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/content/Context;)V

    .line 1696
    return-void
.end method
