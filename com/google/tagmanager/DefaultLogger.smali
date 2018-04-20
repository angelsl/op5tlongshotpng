.class Lcom/google/tagmanager/DefaultLogger;
.super Ljava/lang/Object;
.source "DefaultLogger.java"

# interfaces
.implements Lcom/google/tagmanager/Logger;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GoogleTagManager"


# instance fields
.field private mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/google/tagmanager/Logger$LogLevel;->WARNING:Lcom/google/tagmanager/Logger$LogLevel;

    iput-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->DEBUG:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_f

    .line 58
    :goto_e
    return-void

    .line 56
    :cond_f
    const-string/jumbo v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->DEBUG:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_f

    .line 65
    :goto_e
    return-void

    .line 63
    :cond_f
    const-string/jumbo v0, "GoogleTagManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public e(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->ERROR:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_f

    .line 16
    :goto_e
    return-void

    .line 14
    :cond_f
    const-string/jumbo v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->ERROR:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_f

    .line 23
    :goto_e
    return-void

    .line 21
    :cond_f
    const-string/jumbo v0, "GoogleTagManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public getLogLevel()Lcom/google/tagmanager/Logger$LogLevel;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->INFO:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_f

    .line 44
    :goto_e
    return-void

    .line 42
    :cond_f
    const-string/jumbo v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->INFO:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_f

    .line 51
    :goto_e
    return-void

    .line 49
    :cond_f
    const-string/jumbo v0, "GoogleTagManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public setLogLevel(Lcom/google/tagmanager/Logger$LogLevel;)V
    .registers 2
    .param p1, "logLevel"    # Lcom/google/tagmanager/Logger$LogLevel;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    .line 89
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->VERBOSE:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_f

    .line 72
    :goto_e
    return-void

    .line 70
    :cond_f
    const-string/jumbo v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->VERBOSE:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_f

    .line 79
    :goto_e
    return-void

    .line 77
    :cond_f
    const-string/jumbo v0, "GoogleTagManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public w(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->WARNING:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_f

    .line 30
    :goto_e
    return-void

    .line 28
    :cond_f
    const-string/jumbo v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->WARNING:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_f

    .line 37
    :goto_e
    return-void

    .line 35
    :cond_f
    const-string/jumbo v0, "GoogleTagManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method
