.class public final enum Lcom/oneplus/screenshot/statistics/EventStatistics$Error;
.super Ljava/lang/Enum;
.source "EventStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/statistics/EventStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/screenshot/statistics/EventStatistics$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

.field public static final enum CRASH:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

.field public static final enum JOIN:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

.field public static final enum MEMORY:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 87
    new-instance v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    const-string v1, "CRASH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->CRASH:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    .line 88
    new-instance v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    const-string v1, "MEMORY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->MEMORY:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    .line 89
    new-instance v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    const-string v1, "JOIN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->JOIN:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    sget-object v1, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->CRASH:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->MEMORY:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->JOIN:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->$VALUES:[Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    return-void-no-barrier
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/screenshot/statistics/EventStatistics$Error;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 85
    const-class v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/screenshot/statistics/EventStatistics$Error;
    .registers 1

    .line 85
    sget-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->$VALUES:[Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    invoke-virtual {v0}, [Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    return-object v0
.end method


# virtual methods
.method public valueOf()I
    .registers 3

    .line 92
    invoke-virtual {p0}, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->ordinal()I

    move-result v0

    # getter for: Lcom/oneplus/screenshot/statistics/EventStatistics;->APPBASE:I
    invoke-static {}, Lcom/oneplus/screenshot/statistics/EventStatistics;->access$000()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;->ERROR:Lcom/oneplus/screenshot/statistics/EventStatistics$Base;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;->valueOf()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
