.class Lcom/google/tagmanager/Runtime$CachedMacro;
.super Ljava/lang/Object;
.source "Runtime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/Runtime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedMacro"
.end annotation


# instance fields
.field private mObjectAndStatic:Lcom/google/tagmanager/ObjectAndStatic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private mPushAfterEvaluate:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;


# direct methods
.method public constructor <init>(Lcom/google/tagmanager/ObjectAndStatic;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)V"
        }
    .end annotation

    .line 913
    .local p1, "objectAndStatic":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/tagmanager/Runtime$CachedMacro;-><init>(Lcom/google/tagmanager/ObjectAndStatic;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    .line 914
    return-void
.end method

.method public constructor <init>(Lcom/google/tagmanager/ObjectAndStatic;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V
    .registers 3
    .param p2, "pushAfterEvaluate"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ")V"
        }
    .end annotation

    .line 916
    .local p1, "objectAndStatic":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput-object p1, p0, Lcom/google/tagmanager/Runtime$CachedMacro;->mObjectAndStatic:Lcom/google/tagmanager/ObjectAndStatic;

    .line 918
    iput-object p2, p0, Lcom/google/tagmanager/Runtime$CachedMacro;->mPushAfterEvaluate:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 919
    return-void
.end method


# virtual methods
.method public getObjectAndStatic()Lcom/google/tagmanager/ObjectAndStatic;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 922
    iget-object v0, p0, Lcom/google/tagmanager/Runtime$CachedMacro;->mObjectAndStatic:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v0
.end method

.method public getPushAfterEvaluate()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .registers 2

    .line 926
    iget-object v0, p0, Lcom/google/tagmanager/Runtime$CachedMacro;->mPushAfterEvaluate:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v0
.end method

.method public getSize()I
    .registers 3

    .line 930
    iget-object v0, p0, Lcom/google/tagmanager/Runtime$CachedMacro;->mObjectAndStatic:Lcom/google/tagmanager/ObjectAndStatic;

    invoke-virtual {v0}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getCachedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/tagmanager/Runtime$CachedMacro;->mPushAfterEvaluate:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_18

    :cond_12
    iget-object v1, p0, Lcom/google/tagmanager/Runtime$CachedMacro;->mPushAfterEvaluate:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getCachedSize()I

    move-result v1

    :goto_18
    add-int/2addr v0, v1

    return v0
.end method
