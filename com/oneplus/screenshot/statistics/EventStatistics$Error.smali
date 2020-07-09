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
    .locals 5

    .line 87
    new-instance v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    const/4 v1, 0x0

    const-string v2, "CRASH"

    invoke-direct {v0, v2, v1}, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->CRASH:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    .line 88
    new-instance v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    const/4 v2, 0x1

    const-string v3, "MEMORY"

    invoke-direct {v0, v3, v2}, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->MEMORY:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    .line 89
    new-instance v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    const/4 v3, 0x2

    const-string v4, "JOIN"

    invoke-direct {v0, v4, v3}, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->JOIN:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    sget-object v4, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->CRASH:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->MEMORY:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->JOIN:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->$VALUES:[Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
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
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 85
    const-class v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/screenshot/statistics/EventStatistics$Error;
    .locals 1

    .line 85
    sget-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->$VALUES:[Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    invoke-virtual {v0}, [Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    return-object v0
.end method


# virtual methods
.method public valueOf()I
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/oneplus/screenshot/statistics/EventStatistics;->access$000()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;->ERROR:Lcom/oneplus/screenshot/statistics/EventStatistics$Base;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;->valueOf()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
