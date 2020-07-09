.class Lcom/google/tagmanager/DebugResolvedPropertyBuilder;
.super Ljava/lang/Object;
.source "DebugResolvedPropertyBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/ResolvedPropertyBuilder;


# instance fields
.field private resolvedProperty:Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;


# direct methods
.method public constructor <init>(Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;)V
    .locals 0
    .param p1, "resolvedProperty"    # Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/tagmanager/DebugResolvedPropertyBuilder;->resolvedProperty:Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    .line 18
    return-void
.end method


# virtual methods
.method public createPropertyValueBuilder(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/ValueBuilder;
    .locals 2
    .param p1, "propertyValue"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 22
    invoke-static {p1}, Lcom/google/tagmanager/DebugValueBuilder;->copyImmutableValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    .line 23
    .local v0, "val":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v1, p0, Lcom/google/tagmanager/DebugResolvedPropertyBuilder;->resolvedProperty:Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    iput-object v0, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 24
    new-instance v1, Lcom/google/tagmanager/DebugValueBuilder;

    invoke-direct {v1, v0}, Lcom/google/tagmanager/DebugValueBuilder;-><init>(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    return-object v1
.end method
