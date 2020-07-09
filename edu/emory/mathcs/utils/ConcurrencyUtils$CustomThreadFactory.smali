.class Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomThreadFactory;
.super Ljava/lang/Object;
.source "ConcurrencyUtils.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/utils/ConcurrencyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomThreadFactory"
.end annotation


# static fields
.field private static final defaultFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final handler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 291
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomThreadFactory;->defaultFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomThreadFactory;->handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 297
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 300
    sget-object v0, Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomThreadFactory;->defaultFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 301
    .local v0, "t":Ljava/lang/Thread;
    iget-object v1, p0, Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomThreadFactory;->handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 302
    return-object v0
.end method
