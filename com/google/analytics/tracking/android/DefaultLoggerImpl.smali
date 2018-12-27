.class Lcom/google/analytics/tracking/android/DefaultLoggerImpl;
.super Ljava/lang/Object;
.source "DefaultLoggerImpl.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/Logger;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GAV3"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mLogLevel:Lcom/google/analytics/tracking/android/Logger$LogLevel;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->INFO:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->mLogLevel:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    .line 21
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private formatMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 53
    iget-object v0, p0, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->mLogLevel:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ERROR:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_14

    .line 54
    const-string v0, "GAV3"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :cond_14
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public error(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->mLogLevel:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ERROR:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_17

    .line 47
    const-string v0, "GAV3"

    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_17
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getLogLevel()Lcom/google/analytics/tracking/android/Logger$LogLevel;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->mLogLevel:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->mLogLevel:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->INFO:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_17

    .line 33
    const-string v0, "GAV3"

    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_17
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setLogLevel(Lcom/google/analytics/tracking/android/Logger$LogLevel;)V
    .registers 2
    .param p1, "level"    # Lcom/google/analytics/tracking/android/Logger$LogLevel;

    .line 60
    iput-object p1, p0, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->mLogLevel:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    .line 61
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public verbose(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->mLogLevel:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->VERBOSE:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_17

    .line 26
    const-string v0, "GAV3"

    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_17
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public warn(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->mLogLevel:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->WARNING:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_17

    .line 40
    const-string v0, "GAV3"

    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_17
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
