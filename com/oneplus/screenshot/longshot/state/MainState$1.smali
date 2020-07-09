.class Lcom/oneplus/screenshot/longshot/state/MainState$1;
.super Ljava/lang/Object;
.source "MainState.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/MainState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/MainState;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/state/MainState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/state/MainState;

    .line 26
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/MainState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateState()V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MOVE_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 30
    return-void
.end method
