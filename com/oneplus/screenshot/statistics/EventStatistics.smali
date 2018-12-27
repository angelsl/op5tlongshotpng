.class public Lcom/oneplus/screenshot/statistics/EventStatistics;
.super Ljava/lang/Object;
.source "EventStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/statistics/EventStatistics$Action;,
        Lcom/oneplus/screenshot/statistics/EventStatistics$Error;,
        Lcom/oneplus/screenshot/statistics/EventStatistics$Base;
    }
.end annotation


# static fields
.field private static APPBASE:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-class v0, Lcom/oneplus/screenshot/statistics/EventStatistics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/screenshot/statistics/EventStatistics;->APPBASE:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 10
    sget v0, Lcom/oneplus/screenshot/statistics/EventStatistics;->APPBASE:I

    return v0
.end method

.method public static addAction(Landroid/content/Context;Lcom/oneplus/screenshot/statistics/EventStatistics$Action;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    .line 28
    return-void
.end method

.method public static addError(Landroid/content/Context;Lcom/oneplus/screenshot/statistics/EventStatistics$Error;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Lcom/oneplus/screenshot/statistics/EventStatistics$Error;
    .param p2, "tag"    # Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 50
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "AppCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 51
    .local v1, "appCode":I
    mul-int/lit16 v2, v1, 0x2710

    sput v2, Lcom/oneplus/screenshot/statistics/EventStatistics;->APPBASE:I
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1a} :catch_1b

    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appCode":I
    goto :goto_1e

    .line 54
    :catch_1b
    move-exception v0

    goto :goto_1f

    .line 52
    :catch_1d
    move-exception v0

    .line 56
    :goto_1e
    nop

    .line 57
    :goto_1f
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static isDebuggable(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    invoke-static {p0}, Lcom/oneplus/screenshot/util/Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static onDebug(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    return-void
.end method

.method public static onError(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .line 40
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    return-void
.end method
