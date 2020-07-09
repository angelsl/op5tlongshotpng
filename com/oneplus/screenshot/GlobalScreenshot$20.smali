.class Lcom/oneplus/screenshot/GlobalScreenshot$20;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 2018
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$20;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2021
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$20;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->playEditModeAnimation()V

    .line 2022
    return-void
.end method
