.class Lcom/oneplus/lib/design/widget/SnackbarManager$1;
.super Ljava/lang/Object;
.source "SnackbarManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/SnackbarManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/SnackbarManager;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/SnackbarManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/SnackbarManager;

    .line 52
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager$1;->this$0:Lcom/oneplus/lib/design/widget/SnackbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    return v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager$1;->this$0:Lcom/oneplus/lib/design/widget/SnackbarManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->handleTimeout(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 58
    const/4 v0, 0x1

    return v0
.end method
