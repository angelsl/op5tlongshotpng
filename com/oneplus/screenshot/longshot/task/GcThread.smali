.class public Lcom/oneplus/screenshot/longshot/task/GcThread;
.super Lcom/oneplus/screenshot/longshot/task/BaseThread;
.source "GcThread.java"


# static fields
.field private static final GC_DELAY:J = 0x32L

.field public static final TAG:Ljava/lang/String; = "GcThread"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/BaseThread;-><init>()V

    .line 16
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/task/GcThread;->mDelay:J

    .line 17
    return-void
.end method


# virtual methods
.method protected onRun()V
    .locals 0

    .line 24
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 25
    return-void
.end method
