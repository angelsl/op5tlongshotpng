.class Lcom/google/tagmanager/NoopEventInfoDistributor;
.super Ljava/lang/Object;
.source "NoopEventInfoDistributor.java"

# interfaces
.implements Lcom/google/tagmanager/EventInfoDistributor;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDataLayerEventEvaluationEventInfo(Ljava/lang/String;)Lcom/google/tagmanager/EventInfoBuilder;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/google/tagmanager/NoopEventInfoBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopEventInfoBuilder;-><init>()V

    return-object v0
.end method

.method public createMacroEvalutionEventInfo(Ljava/lang/String;)Lcom/google/tagmanager/EventInfoBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 11
    new-instance v0, Lcom/google/tagmanager/NoopEventInfoBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopEventInfoBuilder;-><init>()V

    return-object v0
.end method

.method public debugMode()Z
    .locals 1

    .line 21
    const/4 v0, 0x0

    return v0
.end method
