.class Lcom/google/tagmanager/DebugEventInfoDistributor;
.super Ljava/lang/Object;
.source "DebugEventInfoDistributor.java"

# interfaces
.implements Lcom/google/tagmanager/EventInfoDistributor;


# instance fields
.field private containerId:Ljava/lang/String;

.field private containerVersion:Ljava/lang/String;

.field private handler:Lcom/google/tagmanager/DebugInformationHandler;


# direct methods
.method public constructor <init>(Lcom/google/tagmanager/DebugInformationHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "handler"    # Lcom/google/tagmanager/DebugInformationHandler;
    .param p2, "containerVersion"    # Ljava/lang/String;
    .param p3, "containerId"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/tagmanager/DebugEventInfoDistributor;->handler:Lcom/google/tagmanager/DebugInformationHandler;

    .line 17
    iput-object p2, p0, Lcom/google/tagmanager/DebugEventInfoDistributor;->containerVersion:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/google/tagmanager/DebugEventInfoDistributor;->containerId:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public createDataLayerEventEvaluationEventInfo(Ljava/lang/String;)Lcom/google/tagmanager/EventInfoBuilder;
    .locals 7
    .param p1, "event"    # Ljava/lang/String;

    .line 29
    new-instance v6, Lcom/google/tagmanager/DebugEventInfoBuilder;

    iget-object v2, p0, Lcom/google/tagmanager/DebugEventInfoDistributor;->containerVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/tagmanager/DebugEventInfoDistributor;->containerId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/tagmanager/DebugEventInfoDistributor;->handler:Lcom/google/tagmanager/DebugInformationHandler;

    const/4 v1, 0x1

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/tagmanager/DebugEventInfoBuilder;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/tagmanager/DebugInformationHandler;)V

    return-object v6
.end method

.method public createMacroEvalutionEventInfo(Ljava/lang/String;)Lcom/google/tagmanager/EventInfoBuilder;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .line 23
    new-instance v6, Lcom/google/tagmanager/DebugEventInfoBuilder;

    iget-object v2, p0, Lcom/google/tagmanager/DebugEventInfoDistributor;->containerVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/tagmanager/DebugEventInfoDistributor;->containerId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/tagmanager/DebugEventInfoDistributor;->handler:Lcom/google/tagmanager/DebugInformationHandler;

    const/4 v1, 0x2

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/tagmanager/DebugEventInfoBuilder;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/tagmanager/DebugInformationHandler;)V

    return-object v6
.end method

.method public debugMode()Z
    .locals 1

    .line 35
    const/4 v0, 0x1

    return v0
.end method
