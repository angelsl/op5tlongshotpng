.class public abstract Lcom/oneplus/screenshot/longshot/reject/Reject;
.super Ljava/lang/Object;
.source "Reject.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-class v0, Lcom/oneplus/screenshot/longshot/reject/Reject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/reject/Reject;->TAG:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/reject/Reject;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public getReason()I
    .registers 2

    .line 17
    const v0, 0x7f0c0013

    return v0
.end method

.method public abstract isReject()Z
.end method
