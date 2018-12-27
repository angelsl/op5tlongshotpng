.class public Ledu/emory/mathcs/utils/ConcurrencyUtils;
.super Ljava/lang/Object;
.source "ConcurrencyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomThreadFactory;,
        Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomExceptionHandler;
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
    .registers 3

    .line 51
    new-instance v0, Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomThreadFactory;

    new-instance v1, Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomExceptionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomExceptionHandler;-><init>(Ledu/emory/mathcs/utils/ConcurrencyUtils$1;)V

    invoke-direct {v0, v1}, Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomThreadFactory;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREAD_POOL:Ljava/util/concurrent/ExecutorService;

    .line 53
    const/16 v0, 0x2000

    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_2THREADS:I

    .line 55
    const/high16 v0, 0x10000

    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_4THREADS:I

    .line 57
    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_2D:I

    .line 59
    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_3D:I

    .line 61
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfProcessors()I

    move-result v0

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->prevPow2(I)I

    move-result v0

    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->NTHREADS:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static getNumberOfProcessors()I
    .registers 1

    .line 73
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method public static getNumberOfThreads()I
    .registers 1

    .line 82
    sget v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->NTHREADS:I

    return v0
.end method

.method public static getThreadsBeginN_1D_FFT_2Threads()I
    .registers 1

    .line 103
    sget v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_2THREADS:I

    return v0
.end method

.method public static getThreadsBeginN_1D_FFT_4Threads()I
    .registers 1

    .line 125
    sget v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_4THREADS:I

    return v0
.end method

.method public static getThreadsBeginN_2D()I
    .registers 1

    .line 147
    sget v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_2D:I

    return v0
.end method

.method public static getThreadsBeginN_3D()I
    .registers 1

    .line 165
    sget v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_3D:I

    return v0
.end method

.method public static isPowerOf2(I)Z
    .registers 3
    .param p0, "x"    # I

    .line 234
    const/4 v0, 0x0

    if-gtz p0, :cond_4

    .line 235
    return v0

    .line 237
    :cond_4
    add-int/lit8 v1, p0, -0x1

    and-int/2addr v1, p0

    if-nez v1, :cond_b

    const/4 v0, 0x1

    nop

    :cond_b
    return v0
.end method

.method public static nextPow2(I)I
    .registers 3
    .param p0, "x"    # I

    .line 201
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1e

    .line 203
    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_9

    .line 204
    return p0

    .line 206
    :cond_9
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
    ushr-int/lit8 v0, p0, 0x20

    or-int/2addr p0, v0

    .line 212
    add-int/lit8 v0, p0, 0x1

    return v0

    .line 202
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x must be greater or equal 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static prevPow2(I)I
    .registers 7
    .param p0, "x"    # I

    .line 222
    const/4 v0, 0x1

    if-lt p0, v0, :cond_19

    .line 224
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 223
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x must be greater or equal 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resetThreadsBeginN()V
    .registers 1

    .line 190
    const/high16 v0, 0x10000

    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_2D:I

    .line 191
    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_3D:I

    .line 192
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static resetThreadsBeginN_FFT()V
    .registers 1

    .line 182
    const/16 v0, 0x2000

    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_2THREADS:I

    .line 183
    const/high16 v0, 0x10000

    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_4THREADS:I

    .line 184
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setNumberOfThreads(I)V
    .registers 2
    .param p0, "n"    # I

    .line 94
    invoke-static {p0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->prevPow2(I)I

    move-result v0

    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->NTHREADS:I

    .line 95
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setThreadsBeginN_1D_FFT_2Threads(I)V
    .registers 2
    .param p0, "n"    # I

    .line 112
    const/16 v0, 0x200

    if-ge p0, v0, :cond_7

    .line 113
    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_2THREADS:I

    goto :goto_9

    .line 115
    :cond_7
    sput p0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_2THREADS:I

    .line 117
    :goto_9
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setThreadsBeginN_1D_FFT_4Threads(I)V
    .registers 2
    .param p0, "n"    # I

    .line 134
    const/16 v0, 0x200

    if-ge p0, v0, :cond_7

    .line 135
    sput v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_4THREADS:I

    goto :goto_9

    .line 137
    :cond_7
    sput p0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_1D_FFT_4THREADS:I

    .line 139
    :goto_9
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setThreadsBeginN_2D(I)V
    .registers 1
    .param p0, "n"    # I

    .line 156
    sput p0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_2D:I

    .line 157
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setThreadsBeginN_3D(I)V
    .registers 1
    .param p0, "n"    # I

    .line 174
    sput p0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREADS_BEGIN_N_3D:I

    .line 175
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static sleep(J)V
    .registers 4
    .param p0, "millis"    # J

    .line 248
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    .line 251
    goto :goto_a

    .line 249
    :catch_6
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 252
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_a
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 2
    .param p0, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 262
    sget-object v0, Ledu/emory/mathcs/utils/ConcurrencyUtils;->THREAD_POOL:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static waitForCompletion([Ljava/util/concurrent/Future;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 271
    .local p0, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    array-length v0, p0

    .line 273
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v0, :cond_15

    .line 274
    :try_start_4
    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_9} :catch_11
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_9} :catch_c

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 278
    .end local v1    # "j":I
    :catch_c
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_16

    .line 276
    :catch_11
    move-exception v1

    .line 277
    .local v1, "ex":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 280
    .end local v1    # "ex":Ljava/util/concurrent/ExecutionException;
    :cond_15
    nop

    .line 281
    :goto_16
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
