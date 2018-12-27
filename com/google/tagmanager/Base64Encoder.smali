.class Lcom/google/tagmanager/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final NO_PADDING:I = 0x1

.field public static final URL_SAFE:I = 0x2


# direct methods
.method constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .registers 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 43
    invoke-static {}, Lcom/google/tagmanager/Base64Encoder;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1a

    .line 44
    const/4 v0, 0x2

    .line 45
    .local v0, "newFlags":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_f

    .line 46
    or-int/lit8 v0, v0, 0x1

    .line 48
    :cond_f
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_15

    .line 49
    or-int/lit8 v0, v0, 0x8

    .line 52
    :cond_15
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    return-object v1

    .line 54
    .end local v0    # "newFlags":I
    :cond_1a
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_22

    move v0, v2

    goto :goto_23

    :cond_22
    move v0, v1

    .line 55
    .local v0, "paddingDesired":Z
    :goto_23
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 56
    .local v1, "websafeDesired":Z
    :cond_29
    if-eqz v1, :cond_30

    .line 57
    invoke-static {p0}, Lcom/google/tagmanager/Base64;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    .line 59
    :cond_30
    invoke-static {p0}, Lcom/google/tagmanager/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .registers 6
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .line 21
    invoke-static {}, Lcom/google/tagmanager/Base64Encoder;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1a

    .line 22
    const/4 v0, 0x2

    .line 23
    .local v0, "newFlags":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_f

    .line 24
    or-int/lit8 v0, v0, 0x1

    .line 26
    :cond_f
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_15

    .line 27
    or-int/lit8 v0, v0, 0x8

    .line 30
    :cond_15
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 32
    .end local v0    # "newFlags":I
    :cond_1a
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_22

    move v0, v2

    goto :goto_23

    :cond_22
    move v0, v1

    .line 33
    .local v0, "paddingDesired":Z
    :goto_23
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 34
    .local v1, "websafeDesired":Z
    :cond_29
    if-eqz v1, :cond_30

    .line 35
    invoke-static {p0, v0}, Lcom/google/tagmanager/Base64;->encodeWebSafe([BZ)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 37
    :cond_30
    invoke-static {p0, v0}, Lcom/google/tagmanager/Base64;->encode([BZ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static getSdkVersion()I
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
