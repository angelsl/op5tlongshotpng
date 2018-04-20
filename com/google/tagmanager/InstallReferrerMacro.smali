.class Lcom/google/tagmanager/InstallReferrerMacro;
.super Lcom/google/tagmanager/FunctionCallImplementation;
.source "InstallReferrerMacro.java"


# static fields
.field private static final COMPONENT:Ljava/lang/String;

.field private static final ID:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->INSTALL_REFERRER:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/InstallReferrerMacro;->ID:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->COMPONENT:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/InstallReferrerMacro;->COMPONENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Lcom/google/tagmanager/InstallReferrerMacro;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/FunctionCallImplementation;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/google/tagmanager/InstallReferrerMacro;->context:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public static getFunctionId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/tagmanager/InstallReferrerMacro;->ID:Ljava/lang/String;

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
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    const/4 v0, 0x0

    .line 36
    sget-object v3, Lcom/google/tagmanager/InstallReferrerMacro;->COMPONENT:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 37
    .local v1, "componentValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-nez v1, :cond_18

    .line 39
    .local v0, "component":Ljava/lang/String;
    :goto_b
    iget-object v3, p0, Lcom/google/tagmanager/InstallReferrerMacro;->context:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/google/tagmanager/InstallReferrerUtil;->getInstallReferrer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "referrer":Ljava/lang/String;
    if-nez v2, :cond_25

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3

    :goto_17
    return-object v3

    .line 37
    .end local v0    # "component":Ljava/lang/String;
    .end local v2    # "referrer":Ljava/lang/String;
    :cond_18
    sget-object v3, Lcom/google/tagmanager/InstallReferrerMacro;->COMPONENT:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 40
    .restart local v0    # "component":Ljava/lang/String;
    .restart local v2    # "referrer":Ljava/lang/String;
    :cond_25
    invoke-static {v2}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3

    goto :goto_17
.end method

.method public isCacheable()Z
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method
