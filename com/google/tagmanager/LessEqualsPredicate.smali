.class Lcom/google/tagmanager/LessEqualsPredicate;
.super Lcom/google/tagmanager/NumberPredicate;
.source "LessEqualsPredicate.java"


# static fields
.field private static final ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->LESS_EQUALS:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/LessEqualsPredicate;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    sget-object v0, Lcom/google/tagmanager/LessEqualsPredicate;->ID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/tagmanager/NumberPredicate;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static getFunctionId()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/tagmanager/LessEqualsPredicate;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected evaluateNumber(Lcom/google/tagmanager/TypedNumber;Lcom/google/tagmanager/TypedNumber;Ljava/util/Map;)Z
    .locals 1
    .param p1, "arg0"    # Lcom/google/tagmanager/TypedNumber;
    .param p2, "arg1"    # Lcom/google/tagmanager/TypedNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/TypedNumber;",
            "Lcom/google/tagmanager/TypedNumber;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)Z"
        }
    .end annotation

    .line 26
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-virtual {p1, p2}, Lcom/google/tagmanager/TypedNumber;->compareTo(Lcom/google/tagmanager/TypedNumber;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
