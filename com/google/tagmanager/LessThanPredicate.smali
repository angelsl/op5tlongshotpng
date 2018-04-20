.class Lcom/google/tagmanager/LessThanPredicate;
.super Lcom/google/tagmanager/NumberPredicate;
.source "LessThanPredicate.java"


# static fields
.field private static final ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->LESS_THAN:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/LessThanPredicate;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    sget-object v0, Lcom/google/tagmanager/LessThanPredicate;->ID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/tagmanager/NumberPredicate;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static getFunctionId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/tagmanager/LessThanPredicate;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected evaluateNumber(Lcom/google/tagmanager/TypedNumber;Lcom/google/tagmanager/TypedNumber;Ljava/util/Map;)Z
    .registers 6
    .param p1, "arg0"    # Lcom/google/tagmanager/TypedNumber;
    .param p2, "arg1"    # Lcom/google/tagmanager/TypedNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/TypedNumber;",
            "Lcom/google/tagmanager/TypedNumber;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, p2}, Lcom/google/tagmanager/TypedNumber;->compareTo(Lcom/google/tagmanager/TypedNumber;)I

    move-result v1

    if-ltz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method
