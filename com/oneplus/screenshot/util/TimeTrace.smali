.class public Lcom/oneplus/screenshot/util/TimeTrace;
.super Ljava/lang/Object;
.source "TimeTrace.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mLast:J

.field private static mMarkLast:J

.field private static mMarkStart:J

.field private static mStart:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    .line 7
    const-class v0, Lcom/oneplus/screenshot/util/TimeTrace;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/util/TimeTrace;->TAG:Ljava/lang/String;

    .line 12
    sput-wide v2, Lcom/oneplus/screenshot/util/TimeTrace;->mLast:J

    .line 13
    sput-wide v2, Lcom/oneplus/screenshot/util/TimeTrace;->mStart:J

    .line 14
    sput-wide v2, Lcom/oneplus/screenshot/util/TimeTrace;->mMarkLast:J

    .line 15
    sput-wide v2, Lcom/oneplus/screenshot/util/TimeTrace;->mMarkStart:J

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clear()V
    .registers 2

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mStart:J

    .line 77
    sget-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mStart:J

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mLast:J

    .line 78
    sget-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mStart:J

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mMarkStart:J

    .line 79
    sget-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mStart:J

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mMarkLast:J

    .line 80
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 37
    const-wide/16 v2, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/oneplus/screenshot/util/TimeTrace;->log(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 39
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "length"    # J
    .param p4, "curr"    # J

    .prologue
    .line 66
    return-void
.end method

.method public static mark(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v6, 0x0

    .line 44
    .local v6, "canMark":Z
    if-eqz v6, :cond_1a

    sget-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mMarkStart:J

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_1a

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 46
    .local v4, "curr":J
    sget-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mMarkLast:J

    sub-long v2, v4, v0

    .line 47
    .local v2, "length":J
    sput-wide v4, Lcom/oneplus/screenshot/util/TimeTrace;->mMarkLast:J

    move-object v0, p0

    move-object v1, p1

    .line 48
    invoke-static/range {v0 .. v5}, Lcom/oneplus/screenshot/util/TimeTrace;->log(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 50
    .end local v2    # "length":J
    .end local v4    # "curr":J
    :cond_1a
    return-void
.end method

.method public static reset()V
    .registers 0

    .prologue
    .line 32
    invoke-static {}, Lcom/oneplus/screenshot/util/TimeTrace;->set()V

    .line 33
    return-void
.end method

.method private static set()V
    .registers 2

    .prologue
    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mStart:J

    .line 70
    sget-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mStart:J

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mLast:J

    .line 71
    sget-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mStart:J

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mMarkStart:J

    .line 72
    sget-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mStart:J

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mMarkLast:J

    .line 73
    return-void
.end method

.method public static start()V
    .registers 0

    .prologue
    .line 22
    invoke-static {}, Lcom/oneplus/screenshot/util/TimeTrace;->set()V

    .line 23
    return-void
.end method

.method public static stop()V
    .registers 0

    .prologue
    .line 27
    invoke-static {}, Lcom/oneplus/screenshot/util/TimeTrace;->clear()V

    .line 28
    return-void
.end method
