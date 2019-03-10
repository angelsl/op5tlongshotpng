.class final enum Lcom/oneplus/screenshot/statistics/EventStatistics$Base;
.super Ljava/lang/Enum;
.source "EventStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/statistics/EventStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Base"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/screenshot/statistics/EventStatistics$Base;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/screenshot/statistics/EventStatistics$Base;

.field public static final enum ACTION:Lcom/oneplus/screenshot/statistics/EventStatistics$Base;

.field public static final enum ERROR:Lcom/oneplus/screenshot/statistics/EventStatistics$Base;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 71
    new-instance v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;->ERROR:Lcom/oneplus/screenshot/statistics/EventStatistics$Base;

    .line 72
    new-instance v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;

    const-string v1, "ACTION"

    const/4 v3, 0x1

    const/16 v4, 0x3e8

    invoke-direct {v0, v1, v3, v4}, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;->ACTION:Lcom/oneplus/screenshot/statistics/EventStatistics$Base;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/screenshot/statistics/EventStatistics$Base;

    sget-object v1, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;->ERROR:Lcom/oneplus/screenshot/statistics/EventStatistics$Base;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;->ACTION:Lcom/oneplus/screenshot/statistics/EventStatistics$Base;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;->$VALUES:[Lcom/oneplus/screenshot/statistics/EventStatistics$Base;

    return-void-no-barrier
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;->mValue:I

    .line 77
    iput p3, p0, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;->mValue:I

    .line 78
    return-void-no-barrier
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/screenshot/statistics/EventStatistics$Base;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 69
    const-class v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/screenshot/statistics/EventStatistics$Base;
    .registers 1

    .line 69
    sget-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;->$VALUES:[Lcom/oneplus/screenshot/statistics/EventStatistics$Base;

    invoke-virtual {v0}, [Lcom/oneplus/screenshot/statistics/EventStatistics$Base;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/screenshot/statistics/EventStatistics$Base;

    return-object v0
.end method


# virtual methods
.method public valueOf()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;->mValue:I

    return v0
.end method
