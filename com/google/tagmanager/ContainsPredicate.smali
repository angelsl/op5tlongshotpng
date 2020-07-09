.class Lcom/google/tagmanager/ContainsPredicate;
.super Lcom/google/tagmanager/StringPredicate;
.source "ContainsPredicate.java"


# static fields
.field private static final ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->CONTAINS:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/ContainsPredicate;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    sget-object v0, Lcom/google/tagmanager/ContainsPredicate;->ID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/tagmanager/StringPredicate;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static getFunctionId()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/tagmanager/ContainsPredicate;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected evaluateString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)Z"
        }
    .end annotation

    .line 25
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
