.class Lcom/google/tagmanager/DataLayerMacro;
.super Lcom/google/tagmanager/FunctionCallImplementation;
.source "DataLayerMacro.java"


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String;

.field private static final ID:Ljava/lang/String;

.field private static final NAME:Ljava/lang/String;


# instance fields
.field private final mDataLayer:Lcom/google/tagmanager/DataLayer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->CUSTOM_VAR:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/DataLayerMacro;->ID:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->NAME:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/DataLayerMacro;->NAME:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->DEFAULT_VALUE:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/DataLayerMacro;->DEFAULT_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/tagmanager/DataLayer;)V
    .registers 6
    .param p1, "dataLayer"    # Lcom/google/tagmanager/DataLayer;

    .prologue
    .line 26
    sget-object v0, Lcom/google/tagmanager/DataLayerMacro;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/google/tagmanager/DataLayerMacro;->NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/FunctionCallImplementation;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/google/tagmanager/DataLayerMacro;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    .line 28
    return-void
.end method

.method public static getDefaultValueKey()Ljava/lang/String;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/tagmanager/DataLayerMacro;->DEFAULT_VALUE:Ljava/lang/String;

    return-object v0
.end method

.method public static getFunctionId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/tagmanager/DataLayerMacro;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public static getNameKey()Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/tagmanager/DataLayerMacro;->NAME:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .registers 6
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
    .line 43
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    iget-object v3, p0, Lcom/google/tagmanager/DataLayerMacro;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    sget-object v2, Lcom/google/tagmanager/DataLayerMacro;->NAME:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v2}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, "dataLayerValue":Ljava/lang/Object;
    if-eqz v0, :cond_19

    .line 52
    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v2

    return-object v2

    .line 45
    :cond_19
    sget-object v2, Lcom/google/tagmanager/DataLayerMacro;->DEFAULT_VALUE:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 46
    .local v1, "defaultValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-nez v1, :cond_28

    .line 49
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v2

    return-object v2

    .line 47
    :cond_28
    return-object v1
.end method

.method public isCacheable()Z
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method
