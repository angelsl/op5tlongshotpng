.class public Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/ResourceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandedFunctionCallBuilder"
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

.field private mPushAfterEvaluate:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->mPropertiesMap:Ljava/util/Map;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/ResourceUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/tagmanager/ResourceUtil$1;

    .line 44
    invoke-direct {p0}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 54
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-object p0
.end method

.method public build()Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .locals 4

    .line 64
    new-instance v0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    iget-object v1, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->mPropertiesMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->mPushAfterEvaluate:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;-><init>(Ljava/util/Map;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Lcom/google/tagmanager/ResourceUtil$1;)V

    return-object v0
.end method

.method public setPushAfterEvaluate(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;
    .locals 0
    .param p1, "value"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 59
    iput-object p1, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->mPushAfterEvaluate:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 60
    return-object p0
.end method
