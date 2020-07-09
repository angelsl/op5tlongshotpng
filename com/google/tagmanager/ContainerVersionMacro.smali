.class Lcom/google/tagmanager/ContainerVersionMacro;
.super Lcom/google/tagmanager/FunctionCallImplementation;
.source "ContainerVersionMacro.java"


# static fields
.field private static final ID:Ljava/lang/String;


# instance fields
.field private final mRuntime:Lcom/google/tagmanager/Runtime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->CONTAINER_VERSION:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/ContainerVersionMacro;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/tagmanager/Runtime;)V
    .locals 2
    .param p1, "runtime"    # Lcom/google/tagmanager/Runtime;

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
    .locals 1

    .line 19
    sget-object v0, Lcom/google/tagmanager/ContainerVersionMacro;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;"
        }
    .end annotation

    .line 32
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    iget-object v0, p0, Lcom/google/tagmanager/ContainerVersionMacro;->mRuntime:Lcom/google/tagmanager/Runtime;

    invoke-virtual {v0}, Lcom/google/tagmanager/Runtime;->getResource()Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "containerVersion":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public isCacheable()Z
    .locals 1

    .line 28
    const/4 v0, 0x1

    return v0
.end method
