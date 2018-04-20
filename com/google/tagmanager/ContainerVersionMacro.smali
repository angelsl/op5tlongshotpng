.class Lcom/google/tagmanager/ContainerVersionMacro;
.super Lcom/google/tagmanager/FunctionCallImplementation;
.source "ContainerVersionMacro.java"


# static fields
.field private static final ID:Ljava/lang/String;


# instance fields
.field private final mRuntime:Lcom/google/tagmanager/Runtime;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->CONTAINER_VERSION:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/ContainerVersionMacro;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/tagmanager/Runtime;)V
    .registers 4
    .param p1, "runtime"    # Lcom/google/tagmanager/Runtime;

    .prologue
    .line 23
    sget-object v0, Lcom/google/tagmanager/ContainerVersionMacro;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/FunctionCallImplementation;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/google/tagmanager/ContainerVersionMacro;->mRuntime:Lcom/google/tagmanager/Runtime;

    .line 25
    return-void
.end method

.method public static getFunctionId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/tagmanager/ContainerVersionMacro;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    iget-object v1, p0, Lcom/google/tagmanager/ContainerVersionMacro;->mRuntime:Lcom/google/tagmanager/Runtime;

    invoke-virtual {v1}, Lcom/google/tagmanager/Runtime;->getResource()Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "containerVersion":Ljava/lang/String;
    if-eqz v0, :cond_11

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    goto :goto_10
.end method

.method public isCacheable()Z
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method
