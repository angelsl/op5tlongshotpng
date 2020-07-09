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
    .locals 2
    .param p1, "tracker"    # Lcom/google/analytics/tracking/android/Tracker;
    .param p2, "serviceManager"    # Lcom/google/analytics/tracking/android/ServiceManager;
    .param p3, "originalHandler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p4, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p1, :cond_2

    .line 52
    if-eqz p2, :cond_1

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

    const-string v1, "ExceptionReporter created, original handler is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 61
    return-void

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "serviceManager cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tracker cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getExceptionParser()Lcom/google/analytics/tracking/android/ExceptionParser;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    return-object v0
.end method

.method public setExceptionParser(Lcom/google/analytics/tracking/android/ExceptionParser;)V
    .locals 0
    .param p1, "exceptionParser"    # Lcom/google/analytics/tracking/android/ExceptionParser;

    .line 68
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    .line 69
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 74
    const-string v0, "UncaughtException"

    .line 75
    .local v0, "description":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    if-eqz v1, :cond_1

    .line 76
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 77
    .local v1, "threadName":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    invoke-interface {v2, v1, p2}, Lcom/google/analytics/tracking/android/ExceptionParser;->getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .end local v1    # "threadName":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracking Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->createException(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 82
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mServiceManager:Lcom/google/analytics/tracking/android/ServiceManager;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/ServiceManager;->dispatchLocalHits()V

    .line 83
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mOriginalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_2

    .line 84
    const-string v1, "Passing exception to original handler."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mOriginalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 87
    :cond_2
    return-void
.end method
