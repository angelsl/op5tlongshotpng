.class public Lcom/oneplus/screenshot/longshot/reject/ByTelephony;
.super Lcom/oneplus/screenshot/longshot/reject/Reject;
.source "ByTelephony.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ByTelephony"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/reject/Reject;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/reject/ByTelephony;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private isIdle()Z
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/reject/ByTelephony;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public isReject()Z
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/reject/ByTelephony;->isIdle()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
