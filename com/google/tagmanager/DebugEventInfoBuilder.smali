.class Lcom/google/tagmanager/DebugEventInfoBuilder;
.super Ljava/lang/Object;
.source "DebugEventInfoBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/EventInfoBuilder;


# instance fields
.field private dataLayerEventBuilder:Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;

.field eventInfoBuilder:Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private handler:Lcom/google/tagmanager/DebugInformationHandler;

.field private macroBuilder:Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/tagmanager/DebugInformationHandler;)V
    .registers 8
    .param p1, "eventType"    # I
    .param p2, "containerVersion"    # Ljava/lang/String;
    .param p3, "containerId"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "handler"    # Lcom/google/tagmanager/DebugInformationHandler;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$EventInfo;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->eventInfoBuilder:Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    .line 25
    iget-object v0, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->eventInfoBuilder:Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    iput p1, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    .line 26
    iget-object v0, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->eventInfoBuilder:Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    iput-object p2, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->eventInfoBuilder:Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    iput-object p3, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->eventInfoBuilder:Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    iput-object p4, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->handler:Lcom/google/tagmanager/DebugInformationHandler;

    .line 30
    const/4 v0, 0x1

    if-ne p1, v0, :cond_34

    .line 31
    iget-object v0, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->eventInfoBuilder:Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    new-instance v1, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;-><init>()V

    iput-object v1, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    .line 32
    new-instance v0, Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->eventInfoBuilder:Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    iget-object v1, v1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-direct {v0, v1}, Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;-><init>(Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;)V

    iput-object v0, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->dataLayerEventBuilder:Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;

    goto :goto_48

    .line 35
    :cond_34
    iget-object v0, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->eventInfoBuilder:Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    new-instance v1, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;-><init>()V

    iput-object v1, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    .line 36
    new-instance v0, Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->eventInfoBuilder:Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    iget-object v1, v1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-direct {v0, v1}, Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;-><init>(Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;)V

    iput-object v0, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->macroBuilder:Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;

    .line 38
    :goto_48
    return-void
.end method


# virtual methods
.method public createDataLayerEventEvaluationInfoBuilder()Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->dataLayerEventBuilder:Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;

    return-object v0
.end method

.method public createMacroEvaluationInfoBuilder()Lcom/google/tagmanager/MacroEvaluationInfoBuilder;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->macroBuilder:Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;

    return-object v0
.end method

.method public processEventInfo()V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->handler:Lcom/google/tagmanager/DebugInformationHandler;

    iget-object v1, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->eventInfoBuilder:Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    invoke-interface {v0, v1}, Lcom/google/tagmanager/DebugInformationHandler;->receiveEventInfo(Lcom/google/analytics/containertag/proto/Debug$EventInfo;)V

    .line 53
    return-void
.end method
