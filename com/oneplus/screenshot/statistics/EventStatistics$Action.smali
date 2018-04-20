.class public final enum Lcom/oneplus/screenshot/statistics/EventStatistics$Action;
.super Ljava/lang/Enum;
.source "EventStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/statistics/EventStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/screenshot/statistics/EventStatistics$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

.field public static final enum CLICK_EDIT:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

.field public static final enum CLICK_MAIN:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

.field public static final enum CLICK_NEXT:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

.field public static final enum CLICK_PREV:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

.field public static final enum CLICK_SAVE:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

.field public static final enum DRAG_EDIT:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    new-instance v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    const-string/jumbo v1, "CLICK_PREV"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;->CLICK_PREV:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    .line 99
    new-instance v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    const-string/jumbo v1, "CLICK_NEXT"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;->CLICK_NEXT:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    .line 100
    new-instance v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    const-string/jumbo v1, "CLICK_EDIT"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;->CLICK_EDIT:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    .line 101
    new-instance v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    const-string/jumbo v1, "CLICK_SAVE"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;->CLICK_SAVE:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    .line 102
    new-instance v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    const-string/jumbo v1, "CLICK_MAIN"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;->CLICK_MAIN:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    .line 103
    new-instance v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    const-string/jumbo v1, "DRAG_EDIT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;->DRAG_EDIT:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    .line 96
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    sget-object v1, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;->CLICK_PREV:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;->CLICK_NEXT:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;->CLICK_EDIT:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;->CLICK_SAVE:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;->CLICK_MAIN:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;->DRAG_EDIT:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;->$VALUES:[Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/screenshot/statistics/EventStatistics$Action;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    const-class v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/screenshot/statistics/EventStatistics$Action;
    .registers 1

    .prologue
    .line 96
    sget-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;->$VALUES:[Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    return-object v0
.end method


# virtual methods
.method public valueOf()I
    .registers 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/oneplus/screenshot/statistics/EventStatistics;->-get0()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;->ACTION:Lcom/oneplus/screenshot/statistics/EventStatistics$Base;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/statistics/EventStatistics$Base;->valueOf()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
