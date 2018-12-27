.class Lcom/google/tagmanager/RuntimeVersionMacro;
.super Lcom/google/tagmanager/FunctionCallImplementation;
.source "RuntimeVersionMacro.java"


# static fields
.field private static final ID:Ljava/lang/String;

.field public static final VERSION_NUMBER:J = 0x3bc5d66L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->RUNTIME_VERSION:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/RuntimeVersionMacro;->ID:Ljava/lang/String;

    return-void-no-barrier
.end method

.method public constructor <init>()V
    .registers 3

    .line 24
    sget-object v0, Lcom/google/tagmanager/RuntimeVersionMacro;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/FunctionCallImplementation;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 25
    return-void-no-barrier
.end method

.method public static getFunctionId()Ljava/lang/String;
    .registers 1

    .line 20
    sget-object v0, Lcom/google/tagmanager/RuntimeVersionMacro;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .registers 4
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
    const-wide/32 v0, 0x3bc5d66

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public isCacheable()Z
    .registers 2

    .line 28
    const/4 v0, 0x1

    return v0
.end method