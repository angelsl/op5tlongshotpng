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
    .locals 1

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
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

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
    .locals 1

    .line 21
    sget-object v0, Lcom/google/tagmanager/InstallReferrerMacro;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 4
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

    .line 36
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v0, Lcom/google/tagmanager/InstallReferrerMacro;->COMPONENT:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 37
    .local v0, "componentValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/tagmanager/InstallReferrerMacro;->COMPONENT:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v1}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 39
    .local v1, "component":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/google/tagmanager/InstallReferrerMacro;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/google/tagmanager/InstallReferrerUtil;->getInstallReferrer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "referrer":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3

    :goto_1
    return-object v3
.end method

.method public isCacheable()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method
