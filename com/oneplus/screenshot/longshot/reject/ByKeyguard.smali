.class public Lcom/oneplus/screenshot/longshot/reject/ByKeyguard;
.super Lcom/oneplus/screenshot/longshot/reject/Reject;
.source "ByKeyguard.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/reject/Reject;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/reject/ByKeyguard;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public isReject()Z
    .registers 4

    .prologue
    .line 18
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/reject/ByKeyguard;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 19
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method
