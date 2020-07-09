.class public final enum Lcom/google/analytics/tracking/android/Logger$LogLevel;
.super Ljava/lang/Enum;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/analytics/tracking/android/Logger$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/analytics/tracking/android/Logger$LogLevel;

.field public static final enum ERROR:Lcom/google/analytics/tracking/android/Logger$LogLevel;

.field public static final enum INFO:Lcom/google/analytics/tracking/android/Logger$LogLevel;

.field public static final enum VERBOSE:Lcom/google/analytics/tracking/android/Logger$LogLevel;

.field public static final enum WARNING:Lcom/google/analytics/tracking/android/Logger$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    new-instance v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;

    const/4 v1, 0x0

    const-string v2, "VERBOSE"

    invoke-direct {v0, v2, v1}, Lcom/google/analytics/tracking/android/Logger$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->VERBOSE:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    new-instance v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;

    const/4 v2, 0x1

    const-string v3, "INFO"

    invoke-direct {v0, v3, v2}, Lcom/google/analytics/tracking/android/Logger$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->INFO:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    new-instance v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;

    const/4 v3, 0x2

    const-string v4, "WARNING"

    invoke-direct {v0, v4, v3}, Lcom/google/analytics/tracking/android/Logger$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->WARNING:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    new-instance v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v4}, Lcom/google/analytics/tracking/android/Logger$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ERROR:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/analytics/tracking/android/Logger$LogLevel;

    sget-object v5, Lcom/google/analytics/tracking/android/Logger$LogLevel;->VERBOSE:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    aput-object v5, v0, v1

    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->INFO:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->WARNING:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ERROR:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->$VALUES:[Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Logger$LogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/google/analytics/tracking/android/Logger$LogLevel;
    .locals 1

    .line 20
    sget-object v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->$VALUES:[Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v0}, [Lcom/google/analytics/tracking/android/Logger$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-object v0
.end method
