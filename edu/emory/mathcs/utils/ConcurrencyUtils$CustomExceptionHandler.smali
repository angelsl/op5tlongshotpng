.class Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomExceptionHandler;
.super Ljava/lang/Object;
.source "ConcurrencyUtils.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/utils/ConcurrencyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomExceptionHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ledu/emory/mathcs/utils/ConcurrencyUtils$1;)V
    .locals 0
    .param p1, "x0"    # Ledu/emory/mathcs/utils/ConcurrencyUtils$1;

    .line 283
    invoke-direct {p0}, Ledu/emory/mathcs/utils/ConcurrencyUtils$CustomExceptionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 285
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 286
    return-void
.end method
