.class public Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/ResourceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandedFunctionCall"
.end annotation


# instance fields
.field private final mPropertiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private final mPushAfterEvaluate:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;


# direct methods
.method private constructor <init>(Ljava/util/Map;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V
    .locals 0
    .param p2, "pushAfterEvaluate"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ")V"
        }
    .end annotation

    .line 79
    .local p1, "propertiesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->mPropertiesMap:Ljava/util/Map;

    .line 81
    iput-object p2, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->mPushAfterEvaluate:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Lcom/google/tagmanager/ResourceUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .param p3, "x2"    # Lcom/google/tagmanager/ResourceUtil$1;

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;-><init>(Ljava/util/Map;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;
    .locals 2

    .line 85
    new-instance v0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;-><init>(Lcom/google/tagmanager/ResourceUtil$1;)V

    return-object v0
.end method


# virtual methods
.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->mPropertiesMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPushAfterEvaluate()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->mPushAfterEvaluate:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Properties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pushAfterEvaluate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->mPushAfterEvaluate:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCacheableProperty(Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 94
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method
