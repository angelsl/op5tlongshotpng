.class public Lcom/oneplus/screenshot/statistics/EventStatistics;
.super Ljava/lang/Object;
.source "EventStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/statistics/EventStatistics$Action;,
        Lcom/oneplus/screenshot/statistics/EventStatistics$Base;,
        Lcom/oneplus/screenshot/statistics/EventStatistics$Error;
    }
.end annotation


# static fields
.field private static APPBASE:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0()I
    .registers 1

    sget v0, Lcom/oneplus/screenshot/statistics/EventStatistics;->APPBASE:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/oneplus/screenshot/statistics/EventStatistics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/screenshot/statistics/EventStatistics;->APPBASE:I

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAction(Landroid/content/Context;Lcom/oneplus/screenshot/statistics/EventStatistics$Action;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    .prologue
    .line 28
    return-void
.end method

.method public static addError(Landroid/content/Context;Lcom/oneplus/screenshot/statistics/EventStatistics$Error;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Lcom/oneplus/screenshot/statistics/EventStatistics$Error;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 24
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    .line 48
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 50
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "AppCode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, "appCode":I
    mul-int/lit16 v4, v0, 0x2710

    sput v4, Lcom/oneplus/screenshot/statistics/EventStatistics;->APPBASE:I
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1b} :catch_1e

    .line 57
    .end local v0    # "appCode":I
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_1b
    return-void

    .line 52
    :catch_1c
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1b

    .line 54
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1e
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_1b
.end method

.method private static isDebuggable(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/oneplus/screenshot/util/Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static onDebug(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    return-void
.end method

.method public static onError(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    return-void
.end method
