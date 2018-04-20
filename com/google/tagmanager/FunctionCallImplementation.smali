.class abstract Lcom/google/tagmanager/FunctionCallImplementation;
.super Ljava/lang/Object;
.source "FunctionCallImplementation.java"


# static fields
.field private static final FUNCTION_KEY:Ljava/lang/String; = "function"


# instance fields
.field private final mFunctionId:Ljava/lang/String;

.field private final mRequiredKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .param p1, "functionId"    # Ljava/lang/String;
    .param p2, "requiredKeys"    # [Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/tagmanager/FunctionCallImplementation;->mFunctionId:Ljava/lang/String;

    .line 34
    new-instance v4, Ljava/util/HashSet;

    array-length v5, p2

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    iput-object v4, p0, Lcom/google/tagmanager/FunctionCallImplementation;->mRequiredKeys:Ljava/util/Set;

    .line 35
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, p2

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_10
    if-lt v1, v2, :cond_13

    .line 38
    return-void

    .line 35
    :cond_13
    aget-object v3, p2, v1

    .line 36
    .local v3, "requiredKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/tagmanager/FunctionCallImplementation;->mRequiredKeys:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method public static getFunctionKey()Ljava/lang/String;
    .registers 1

    .prologue
    .line 19
    const-string/jumbo v0, "function"

    return-object v0
.end method


# virtual methods
.method public abstract evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
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
.end method

.method public getInstanceFunctionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/tagmanager/FunctionCallImplementation;->mFunctionId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/tagmanager/FunctionCallImplementation;->mRequiredKeys:Ljava/util/Set;

    return-object v0
.end method

.method hasRequiredKeys(Ljava/util/Set;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/tagmanager/FunctionCallImplementation;->mRequiredKeys:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public abstract isCacheable()Z
.end method
