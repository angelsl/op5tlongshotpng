.class Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$2;
.super Ljava/lang/Object;
.source "ShotBgNextState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    .line 59
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$2;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$2;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->updateState()V

    .line 63
    return-void
.end method
