.class public abstract Lcom/oneplus/screenshot/longshot/state/BaseState;
.super Ljava/lang/Object;
.source "BaseState.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/state/LongshotAction;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsBaseState"


# instance fields
.field protected mOnStateListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

.field protected mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .registers 3
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 13
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mOnStateListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 19
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 20
    return-void
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .registers 3
    .param p1, "oldState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .prologue
    .line 32
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mOnStateListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 33
    return-void
.end method

.method public exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V
    .registers 2
    .param p1, "newState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .prologue
    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/BaseState;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .registers 2
    .param p1, "point"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .prologue
    .line 40
    return-void
.end method
