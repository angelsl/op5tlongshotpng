.class Lcom/oneplus/screenshot/longshot/util/Configs$1;
.super Ljava/lang/Object;
.source "Configs.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/util/Configs;->showNotifyWindow(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/util/Configs$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 859
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/util/Configs$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    .line 860
    .local v0, "lsm":Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouch, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isMoveState()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Longshot.Configs"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    sput-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    .line 863
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isMoveState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 864
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onTouch()V

    .line 867
    :cond_0
    return v2
.end method
