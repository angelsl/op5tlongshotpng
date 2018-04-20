.class Lcom/google/analytics/tracking/android/Hit;
.super Ljava/lang/Object;
.source "Hit.java"


# instance fields
.field private final mHitId:J

.field private mHitString:Ljava/lang/String;

.field private final mHitTime:J

.field private mHitUrlScheme:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .registers 8
    .param p1, "hitString"    # Ljava/lang/String;
    .param p2, "hitId"    # J
    .param p4, "hitTime"    # J

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string/jumbo v0, "https:"

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Hit;->mHitUrlScheme:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Hit;->mHitString:Ljava/lang/String;

    .line 37
    iput-wide p2, p0, Lcom/google/analytics/tracking/android/Hit;->mHitId:J

    .line 38
    iput-wide p4, p0, Lcom/google/analytics/tracking/android/Hit;->mHitTime:J

    .line 39
    return-void
.end method


# virtual methods
.method getHitId()J
    .registers 3

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Hit;->mHitId:J

    return-wide v0
.end method

.method getHitParams()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Hit;->mHitString:Ljava/lang/String;

    return-object v0
.end method

.method getHitTime()J
    .registers 3

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Hit;->mHitTime:J

    return-wide v0
.end method

.method getHitUrlScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Hit;->mHitUrlScheme:Ljava/lang/String;

    return-object v0
.end method

.method setHitString(Ljava/lang/String;)V
    .registers 2
    .param p1, "hitString"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Hit;->mHitString:Ljava/lang/String;

    .line 25
    return-void
.end method

.method setHitUrl(Ljava/lang/String;)V
    .registers 4
    .param p1, "hitUrl"    # Ljava/lang/String;

    .prologue
    .line 58
    if-nez p1, :cond_3

    .line 59
    :cond_2
    return-void

    .line 58
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 64
    :goto_1a
    return-void

    .line 62
    :cond_1b
    const-string/jumbo v0, "http:"

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Hit;->mHitUrlScheme:Ljava/lang/String;

    goto :goto_1a
.end method
