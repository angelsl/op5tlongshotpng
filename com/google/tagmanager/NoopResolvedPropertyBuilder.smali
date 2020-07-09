.class Lcom/google/tagmanager/NoopResolvedPropertyBuilder;
.super Ljava/lang/Object;
.source "NoopResolvedPropertyBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/ResolvedPropertyBuilder;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPropertyValueBuilder(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/ValueBuilder;
    .locals 1
    .param p1, "propertyValue"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 13
    new-instance v0, Lcom/google/tagmanager/NoopValueBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopValueBuilder;-><init>()V

    return-object v0
.end method
