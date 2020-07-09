.class Lcom/google/tagmanager/NoopResolvedFunctionCallBuilder;
.super Ljava/lang/Object;
.source "NoopResolvedFunctionCallBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/ResolvedFunctionCallBuilder;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createResolvedPropertyBuilder(Ljava/lang/String;)Lcom/google/tagmanager/ResolvedPropertyBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 13
    new-instance v0, Lcom/google/tagmanager/NoopResolvedPropertyBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopResolvedPropertyBuilder;-><init>()V

    return-object v0
.end method

.method public setFunctionResult(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V
    .locals 0
    .param p1, "functionResult"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 18
    return-void
.end method
