.class public Lcom/oneplus/screenshot/longshot/state/IdleState;
.super Lcom/oneplus/screenshot/longshot/state/BaseState;
.source "IdleState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IdleState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .registers 2
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/BaseState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 12
    return-void
.end method