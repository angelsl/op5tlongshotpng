.class public Ledu/emory/mathcs/utils/ConcurrencyUtils;
.super Ljava/lang/Object;
.source "ConcurrencyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomExceptionHandler;,
        Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomThreadFactory;
    }
.end annotation


# static fields
.field private static NTHREADS:I

.field private static THREADS_BEGIN_N_1D_FFT_2THREADS:I

.field private static THREADS_BEGIN_N_1D_FFT_4THREADS:I

.field private static THREADS_BEGIN_N_2D:I

.field private static THREADS_BEGIN_N_3D:I

.field private static final THREAD_POOL:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/high16 v3, 0x10000

    .line 51
    new-instance v0, Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomThreadFactory;

    new-instance v1, Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomExceptionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomExceptionHandler;-><init>(Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomExceptionHandler;)V

    invoke-direct {v0, v1}, Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomThreadFactory;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREAD_POOL:Ljava/util/concurrent/ExecutorService;

    .line 53
    const/16 v0, 0x2000

    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_2THREADS:I

    .line 55
    sput v3, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_4THREADS:I

    .line 57
    sput v3, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_2D:I

    .line 59
    sput v3, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_3D:I

    .line 61
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfProcessors()I

    move-result v0

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->prevPow2(I)I

    move-result v0

    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->NTHREADS:I

    .line 47
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static getNumberOfProcessors()I
    .registers 1

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method public static getNumberOfThreads()I
    .registers 1

    .prologue
    .line 82
    sget v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->NTHREADS:I

    return v0
.end method

.method public static getThreadsBeginN_1D_FFT_2Threads()I
    .registers 1

    .prologue
    .line 103
    sget v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_2THREADS:I

    return v0
.end method

.method public static getThreadsBeginN_1D_FFT_4Threads()I
    .registers 1

    .prologue
    .line 125
    sget v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_4THREADS:I

    return v0
.end method

.method public static getThreadsBeginN_2D()I
    .registers 1

    .prologue
    .line 147
    sget v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_2D:I

    return v0
.end method

.method public static getThreadsBeginN_3D()I
    .registers 1

    .prologue
    .line 165
    sget v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_3D:I

    return v0
.end method

.method public static isPowerOf2(I)Z
    .registers 3
    .param p0, "x"    # I

    .prologue
    const/4 v0, 0x0

    .line 234
    if-gtz p0, :cond_4

    .line 235
    return v0

    .line 237
    :cond_4
    add-int/lit8 v1, p0, -0x1

    and-int/2addr v1, p0

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public static nextPow2(I)I
    .registers 3
    .param p0, "x"    # I

    .prologue
    .line 201
    const/4 v0, 0x1

    if-ge p0, v0, :cond_c

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be greater or equal 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_c
    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_12

    .line 204
    return p0

    .line 206
    :cond_12
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 207
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 208
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 209
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 210
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 211
    ushr-int/lit8 v0, p0, 0x0

    or-int/2addr p0, v0

    .line 212
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static prevPow2(I)I
    .registers 7
    .param p0, "x"    # I

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 222
    const/4 v0, 0x1

    if-ge p0, v0, :cond_e

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be greater or equal 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_e
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static resetThreadsBeginN()V
    .registers 1

    .prologue
    const/high16 v0, 0x10000

    .line 190
    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_2D:I

    .line 191
    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_3D:I

    .line 192
    return-void
.end method

.method public static resetThreadsBeginN_FFT()V
    .registers 1

    .prologue
    .line 182
    const/16 v0, 0x2000

    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_2THREADS:I

    .line 183
    const/high16 v0, 0x10000

    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_4THREADS:I

    .line 184
    return-void
.end method

.method public static setNumberOfThreads(I)V
    .registers 2
    .param p0, "n"    # I

    .prologue
    .line 94
    invoke-static {p0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->prevPow2(I)I

    move-result v0

    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->NTHREADS:I

    .line 95
    return-void
.end method

.method public static setThreadsBeginN_1D_FFT_2Threads(I)V
    .registers 2
    .param p0, "n"    # I

    .prologue
    const/16 v0, 0x200

    .line 112
    if-ge p0, v0, :cond_7

    .line 113
    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_2THREADS:I

    .line 117
    :goto_6
    return-void

    .line 115
    :cond_7
    sput p0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_2THREADS:I

    goto :goto_6
.end method

.method public static setThreadsBeginN_1D_FFT_4Threads(I)V
    .registers 2
    .param p0, "n"    # I

    .prologue
    const/16 v0, 0x200

    .line 134
    if-ge p0, v0, :cond_7

    .line 135
    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_4THREADS:I

    .line 139
    :goto_6
    return-void

    .line 137
    :cond_7
    sput p0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_4THREADS:I

    goto :goto_6
.end method

.method public static setThreadsBeginN_2D(I)V
    .registers 1
    .param p0, "n"    # I

    .prologue
    .line 156
    sput p0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_2D:I

    .line 157
    return-void
.end method

.method public static setThreadsBeginN_3D(I)V
    .registers 1
    .param p0, "n"    # I

    .prologue
    .line 174
    sput p0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_3D:I

    .line 175
    return-void
.end method

.method public static sleep(J)V
    .registers 6
    .param p0, "millis"    # J

    .prologue
    .line 248
    const-wide/16 v2, 0x1388

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    .line 252
    :goto_5
    return-void

    .line 249
    :catch_6
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method

.method public static submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 2
    .param p0, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 262
    sget-object v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREAD_POOL:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static waitForCompletion([Ljava/util/concurrent/Future;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    array-length v3, p0

    .line 273
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v3, :cond_10

    .line 274
    :try_start_4
    aget-object v4, p0, v2

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_9} :catch_11
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_9} :catch_c

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 278
    :catch_c
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 281
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_10
    :goto_10
    return-void

    .line 276
    :catch_11
    move-exception v1

    .line 277
    .local v1, "ex":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_10
.end method
