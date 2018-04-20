.class final Lcom/google/tagmanager/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field static sLogger:Lcom/google/tagmanager/Logger;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/tagmanager/DefaultLogger;

    invoke-direct {v0}, Lcom/google/tagmanager/DefaultLogger;-><init>()V

    sput-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/Logger;->d(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 27
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/Logger;->e(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 31
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

.method public static getLogLevel()Lcom/google/tagmanager/Logger$LogLevel;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0}, Lcom/google/tagmanager/Logger;->getLogLevel()Lcom/google/tagmanager/Logger$LogLevel;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger()Lcom/google/tagmanager/Logger;
    .registers 2

    .prologue
    .line 23
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/tagmanager/NoOpLogger;

    if-eq v0, v1, :cond_d

    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/Logger;->i(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method public static setLogger(Lcom/google/tagmanager/Logger;)V
    .registers 2
    .param p0, "logger"    # Lcom/google/tagmanager/Logger;

    .prologue
    .line 15
    if-eqz p0, :cond_5

    .line 18
    sput-object p0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    .line 20
    :goto_4
    return-void

    .line 16
    :cond_5
    new-instance v0, Lcom/google/tagmanager/NoOpLogger;

    invoke-direct {v0}, Lcom/google/tagmanager/NoOpLogger;-><init>()V

    sput-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    goto :goto_4
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/Logger;->v(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/Logger;->w(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 39
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    return-void
.end method
