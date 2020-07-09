.class Lcom/oneplus/screenshot/longshot/state/ShotNextState$2;
.super Ljava/lang/Object;
.source "ShotNextState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/ShotNextState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/ShotNextState;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/state/ShotNextState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/state/ShotNextState;

    .line 72
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState$2;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotNextState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState$2;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotNextState;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->updateState()V

    .line 76
    return-void
.end method
