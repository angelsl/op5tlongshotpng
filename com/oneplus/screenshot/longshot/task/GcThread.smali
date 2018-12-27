.class public Lcom/oneplus/screenshot/longshot/task/GcThread;
.super Lcom/oneplus/screenshot/longshot/task/BaseThread;
.source "GcThread.java"


# static fields
.field private static final GC_DELAY:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "GcThread"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/BaseThread;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/task/GcThread;->mDelay:J

    .line 17
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onRun()V
    .registers 1

    .line 24
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 25
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
