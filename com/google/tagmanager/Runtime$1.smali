.class Lcom/google/tagmanager/Runtime$1;
.super Ljava/lang/Object;
.source "Runtime.java"

# interfaces
.implements Lcom/google/tagmanager/CacheFactory$CacheSizeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/Runtime;-><init>(Landroid/content/Context;Lcom/google/tagmanager/ResourceUtil$ExpandedResource;Lcom/google/tagmanager/DataLayer;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/EventInfoDistributor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/tagmanager/CacheFactory$CacheSizeManager<",
        "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
        "Lcom/google/tagmanager/ObjectAndStatic<",
        "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/Runtime;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/Runtime;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/google/tagmanager/Runtime$1;->this$0:Lcom/google/tagmanager/Runtime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sizeOf(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Lcom/google/tagmanager/ObjectAndStatic;)I
    .locals 1
    .param p1, "key"    # Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)I"
        }
    .end annotation

    .line 198
    .local p2, "value":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-virtual {p2}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getCachedSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 193
    move-object v0, p1

    check-cast v0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    move-object v1, p2

    check-cast v1, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-virtual {p0, v0, v1}, Lcom/google/tagmanager/Runtime$1;->sizeOf(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Lcom/google/tagmanager/ObjectAndStatic;)I

    move-result v0

    return v0
.end method
