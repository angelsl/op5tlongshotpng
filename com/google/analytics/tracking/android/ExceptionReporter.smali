.class public Lcom/google/analytics/tracking/android/ExceptionReporter;
.super Ljava/lang/Object;
.source "ExceptionReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final DEFAULT_DESCRIPTION:Ljava/lang/String; = "UncaughtException"


# instance fields
.field private mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

.field private final mOriginalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mServiceManager:Lcom/google/analytics/tracking/android/ServiceManager;

.field private final mTracker:Lcom/google/analytics/tracking/android/Tracker;


# direct methods
.method public constructor <init>(Lcom/google/analytics/tracking/android/Tracker;Lcom/google/analytics/tracking/android/ServiceManager;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V
    .registers 7
    .param p1, "tracker"    # Lcom/google/analytics/tracking/android/Tracker;
    .param p2, "serviceManager"    # Lcom/google/analytics/tracking/android/ServiceManager;
    .param p3, "originalHandler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p1, :cond_3b

    .line 52
    if-eqz p2, :cond_44

    .line 55
    iput-object p3, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mOriginalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 56
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 57
    iput-object p2, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mServiceManager:Lcom/google/analytics/tracking/android/ServiceManager;

    .line 58
    new-instance v0, Lcom/google/analytics/tracking/android/StandardExceptionParser;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p4, v1}, Lcom/google/analytics/tracking/android/StandardExceptionParser;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ExceptionReporter created, original handler is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_4d

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 61
    return-void

    .line 50
    :cond_3b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tracker cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "serviceManager cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_4d
    const-string/jumbo v0, "null"

    goto :goto_2f
.end method


# virtual methods
.method public getExceptionParser()Lcom/google/analytics/tracking/android/ExceptionParser;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    return-object v0
.end method

.method public setExceptionParser(Lcom/google/analytics/tracking/android/ExceptionParser;)V
    .registers 2
    .param p1, "exceptionParser"    # Lcom/google/analytics/tracking/android/ExceptionParser;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    .line 69
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 74
    const-string/jumbo v0, "UncaughtException"

    .line 75
    .local v0, "description":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    if-nez v2, :cond_3b

    .line 79
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tracking Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/analytics/tracking/android/MapBuilder;->createException(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 82
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mServiceManager:Lcom/google/analytics/tracking/android/ServiceManager;

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/ServiceManager;->dispatchLocalHits()V

    .line 83
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mOriginalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v2, :cond_49

    .line 87
    :goto_3a
    return-void

    .line 76
    :cond_3b
    if-nez p1, :cond_44

    .line 77
    .local v1, "threadName":Ljava/lang/String;
    :goto_3d
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    invoke-interface {v2, v1, p2}, Lcom/google/analytics/tracking/android/ExceptionParser;->getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 76
    .end local v1    # "threadName":Ljava/lang/String;
    :cond_44
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_3d

    .line 84
    :cond_49
    const-string/jumbo v2, "Passing exception to original handler."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mOriginalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_3a
.end method
