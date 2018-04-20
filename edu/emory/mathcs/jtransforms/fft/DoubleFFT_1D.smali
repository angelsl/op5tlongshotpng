.class public Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;
    }
.end annotation


# static fields
.field private static final synthetic -edu-emory-mathcs-jtransforms-fft-DoubleFFT_1D$PlansSwitchesValues:[I = null

.field private static final PI:D = 3.141592653589793

.field private static final TWO_PI:D = 6.283185307179586

.field private static final factors:[I


# instance fields
.field private bk1:[D

.field private bk2:[D

.field private ip:[I

.field private n:I

.field private nBluestein:I

.field private nc:I

.field private nw:I

.field private plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

.field private w:[D

.field private wtable:[D

.field private wtable_r:[D


# direct methods
.method static synthetic -get0(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D
    .registers 2
    .param p0, "-this"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    .prologue
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    return-object v0
.end method

.method static synthetic -get1(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D
    .registers 2
    .param p0, "-this"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    .prologue
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    return-object v0
.end method

.method private static synthetic -getedu-emory-mathcs-jtransforms-fft-DoubleFFT_1D$PlansSwitchesValues()[I
    .registers 3

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-edu-emory-mathcs-jtransforms-fft-DoubleFFT_1D$PlansSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-edu-emory-mathcs-jtransforms-fft-DoubleFFT_1D$PlansSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->values()[Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->BLUESTEIN:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->MIXED_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->SPLIT_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-edu-emory-mathcs-jtransforms-fft-DoubleFFT_1D$PlansSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -wrap0(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[DII[D)I
    .registers 9
    .param p0, "-this"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;
    .param p1, "n"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "a"    # [D
    .param p5, "offa"    # I
    .param p6, "nw"    # I
    .param p7, "w"    # [D

    .prologue
    invoke-direct/range {p0 .. p7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfttree(III[DII[D)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DII[D)V
    .registers 7
    .param p0, "-this"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;
    .param p1, "n"    # I
    .param p2, "isplt"    # I
    .param p3, "a"    # [D
    .param p4, "offa"    # I
    .param p5, "nw"    # I
    .param p6, "w"    # [D

    .prologue
    invoke-direct/range {p0 .. p6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    return-void
.end method

.method static synthetic -wrap2(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;I[DI[DI)V
    .registers 6
    .param p0, "-this"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "w"    # [D
    .param p5, "startw"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    return-void
.end method

.method static synthetic -wrap3(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;I[DI[DI)V
    .registers 6
    .param p0, "-this"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "w"    # [D
    .param p5, "startw"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 55
    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x5

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .registers 12
    .param p1, "n"    # I

    .prologue
    const/4 v7, 0x0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v6, 0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-ge p1, v6, :cond_14

    .line 77
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "n must be greater than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_14
    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    .line 81
    invoke-static {p1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v1

    if-nez v1, :cond_bf

    .line 82
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    invoke-static {p1, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->getReminder(I[I)I

    move-result v1

    const/16 v2, 0xd3

    if-lt v1, v2, :cond_a4

    .line 83
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->BLUESTEIN:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    .line 84
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->nextPow2(I)I

    move-result v1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    .line 85
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    .line 86
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    .line 87
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    int-to-double v2, v1

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-int v1, v2

    div-int/lit8 v1, v1, 0x2

    shl-int v1, v6, v1

    add-int/lit8 v1, v1, 0x2

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    .line 88
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    .line 89
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v0, v1, 0x2

    .line 90
    .local v0, "twon":I
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v1, v1, v7

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    .line 91
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    shl-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_83

    .line 92
    shr-int/lit8 v1, v0, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    .line 93
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makewt(I)V

    .line 95
    :cond_83
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v1, v1, v6

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    .line 96
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    shl-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_a0

    .line 97
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    .line 98
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makect(I[DI)V

    .line 100
    :cond_a0
    invoke-direct {p0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluesteini()V

    .line 124
    .end local v0    # "twon":I
    :cond_a3
    :goto_a3
    return-void

    .line 102
    :cond_a4
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->MIXED_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    .line 103
    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0xf

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    .line 104
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0xf

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    .line 105
    invoke-virtual {p0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cffti()V

    .line 106
    invoke-virtual {p0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rffti()V

    goto :goto_a3

    .line 109
    :cond_bf
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->SPLIT_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    .line 110
    int-to-double v2, p1

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-int v1, v2

    div-int/lit8 v1, v1, 0x2

    shl-int v1, v6, v1

    add-int/lit8 v1, v1, 0x2

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    .line 111
    new-array v1, p1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    .line 112
    mul-int/lit8 v0, p1, 0x2

    .line 113
    .restart local v0    # "twon":I
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v1, v1, v7

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    .line 114
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    shl-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_fc

    .line 115
    shr-int/lit8 v1, v0, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    .line 116
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makewt(I)V

    .line 118
    :cond_fc
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v1, v1, v6

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    .line 119
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    shl-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_a3

    .line 120
    shr-int/lit8 v1, p1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    .line 121
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makect(I[DI)V

    goto :goto_a3
.end method

.method private bitrv2(I[I[DI)V
    .registers 26
    .param p1, "n"    # I
    .param p2, "ip"    # [I
    .param p3, "a"    # [D
    .param p4, "offa"    # I

    .prologue
    .line 4031
    const/4 v8, 0x1

    .line 4032
    .local v8, "m":I
    shr-int/lit8 v7, p1, 0x2

    .local v7, "l":I
    :goto_3
    const/16 v11, 0x8

    if-le v7, v11, :cond_c

    .line 4033
    shl-int/lit8 v8, v8, 0x1

    .line 4032
    shr-int/lit8 v7, v7, 0x2

    goto :goto_3

    .line 4035
    :cond_c
    shr-int/lit8 v9, p1, 0x1

    .line 4036
    .local v9, "nh":I
    mul-int/lit8 v10, v8, 0x4

    .line 4037
    .local v10, "nm":I
    const/16 v11, 0x8

    if-ne v7, v11, :cond_2f1

    .line 4038
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_15
    if-ge v5, v8, :cond_443

    .line 4039
    mul-int/lit8 v0, v5, 0x4

    .line 4040
    .local v0, "idx0":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1a
    if-ge v3, v5, :cond_223

    .line 4041
    mul-int/lit8 v11, v3, 0x4

    add-int v20, v8, v5

    aget v20, p2, v20

    mul-int/lit8 v20, v20, 0x2

    add-int v4, v11, v20

    .line 4042
    .local v4, "j1":I
    add-int v11, v8, v3

    aget v11, p2, v11

    mul-int/lit8 v11, v11, 0x2

    add-int v6, v0, v11

    .line 4043
    .local v6, "k1":I
    add-int v1, p4, v4

    .line 4044
    .local v1, "idx1":I
    add-int v2, p4, v6

    .line 4045
    .local v2, "idx2":I
    aget-wide v14, p3, v1

    .line 4046
    .local v14, "xr":D
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4047
    .local v12, "xi":D
    aget-wide v18, p3, v2

    .line 4048
    .local v18, "yr":D
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4049
    .local v16, "yi":D
    aput-wide v18, p3, v1

    .line 4050
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4051
    aput-wide v14, p3, v2

    .line 4052
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4053
    add-int/2addr v4, v10

    .line 4054
    mul-int/lit8 v11, v10, 0x2

    add-int/2addr v6, v11

    .line 4055
    add-int v1, p4, v4

    .line 4056
    add-int v2, p4, v6

    .line 4057
    aget-wide v14, p3, v1

    .line 4058
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4059
    aget-wide v18, p3, v2

    .line 4060
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4061
    aput-wide v18, p3, v1

    .line 4062
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4063
    aput-wide v14, p3, v2

    .line 4064
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4065
    add-int/2addr v4, v10

    .line 4066
    sub-int/2addr v6, v10

    .line 4067
    add-int v1, p4, v4

    .line 4068
    add-int v2, p4, v6

    .line 4069
    aget-wide v14, p3, v1

    .line 4070
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4071
    aget-wide v18, p3, v2

    .line 4072
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4073
    aput-wide v18, p3, v1

    .line 4074
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4075
    aput-wide v14, p3, v2

    .line 4076
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4077
    add-int/2addr v4, v10

    .line 4078
    mul-int/lit8 v11, v10, 0x2

    add-int/2addr v6, v11

    .line 4079
    add-int v1, p4, v4

    .line 4080
    add-int v2, p4, v6

    .line 4081
    aget-wide v14, p3, v1

    .line 4082
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4083
    aget-wide v18, p3, v2

    .line 4084
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4085
    aput-wide v18, p3, v1

    .line 4086
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4087
    aput-wide v14, p3, v2

    .line 4088
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4089
    add-int/2addr v4, v9

    .line 4090
    add-int/lit8 v6, v6, 0x2

    .line 4091
    add-int v1, p4, v4

    .line 4092
    add-int v2, p4, v6

    .line 4093
    aget-wide v14, p3, v1

    .line 4094
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4095
    aget-wide v18, p3, v2

    .line 4096
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4097
    aput-wide v18, p3, v1

    .line 4098
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4099
    aput-wide v14, p3, v2

    .line 4100
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4101
    sub-int/2addr v4, v10

    .line 4102
    mul-int/lit8 v11, v10, 0x2

    sub-int/2addr v6, v11

    .line 4103
    add-int v1, p4, v4

    .line 4104
    add-int v2, p4, v6

    .line 4105
    aget-wide v14, p3, v1

    .line 4106
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4107
    aget-wide v18, p3, v2

    .line 4108
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4109
    aput-wide v18, p3, v1

    .line 4110
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4111
    aput-wide v14, p3, v2

    .line 4112
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4113
    sub-int/2addr v4, v10

    .line 4114
    add-int/2addr v6, v10

    .line 4115
    add-int v1, p4, v4

    .line 4116
    add-int v2, p4, v6

    .line 4117
    aget-wide v14, p3, v1

    .line 4118
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4119
    aget-wide v18, p3, v2

    .line 4120
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4121
    aput-wide v18, p3, v1

    .line 4122
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4123
    aput-wide v14, p3, v2

    .line 4124
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4125
    sub-int/2addr v4, v10

    .line 4126
    mul-int/lit8 v11, v10, 0x2

    sub-int/2addr v6, v11

    .line 4127
    add-int v1, p4, v4

    .line 4128
    add-int v2, p4, v6

    .line 4129
    aget-wide v14, p3, v1

    .line 4130
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4131
    aget-wide v18, p3, v2

    .line 4132
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4133
    aput-wide v18, p3, v1

    .line 4134
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4135
    aput-wide v14, p3, v2

    .line 4136
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4137
    add-int/lit8 v4, v4, 0x2

    .line 4138
    add-int/2addr v6, v9

    .line 4139
    add-int v1, p4, v4

    .line 4140
    add-int v2, p4, v6

    .line 4141
    aget-wide v14, p3, v1

    .line 4142
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4143
    aget-wide v18, p3, v2

    .line 4144
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4145
    aput-wide v18, p3, v1

    .line 4146
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4147
    aput-wide v14, p3, v2

    .line 4148
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4149
    add-int/2addr v4, v10

    .line 4150
    mul-int/lit8 v11, v10, 0x2

    add-int/2addr v6, v11

    .line 4151
    add-int v1, p4, v4

    .line 4152
    add-int v2, p4, v6

    .line 4153
    aget-wide v14, p3, v1

    .line 4154
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4155
    aget-wide v18, p3, v2

    .line 4156
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4157
    aput-wide v18, p3, v1

    .line 4158
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4159
    aput-wide v14, p3, v2

    .line 4160
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4161
    add-int/2addr v4, v10

    .line 4162
    sub-int/2addr v6, v10

    .line 4163
    add-int v1, p4, v4

    .line 4164
    add-int v2, p4, v6

    .line 4165
    aget-wide v14, p3, v1

    .line 4166
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4167
    aget-wide v18, p3, v2

    .line 4168
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4169
    aput-wide v18, p3, v1

    .line 4170
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4171
    aput-wide v14, p3, v2

    .line 4172
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4173
    add-int/2addr v4, v10

    .line 4174
    mul-int/lit8 v11, v10, 0x2

    add-int/2addr v6, v11

    .line 4175
    add-int v1, p4, v4

    .line 4176
    add-int v2, p4, v6

    .line 4177
    aget-wide v14, p3, v1

    .line 4178
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4179
    aget-wide v18, p3, v2

    .line 4180
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4181
    aput-wide v18, p3, v1

    .line 4182
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4183
    aput-wide v14, p3, v2

    .line 4184
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4185
    sub-int/2addr v4, v9

    .line 4186
    add-int/lit8 v6, v6, -0x2

    .line 4187
    add-int v1, p4, v4

    .line 4188
    add-int v2, p4, v6

    .line 4189
    aget-wide v14, p3, v1

    .line 4190
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4191
    aget-wide v18, p3, v2

    .line 4192
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4193
    aput-wide v18, p3, v1

    .line 4194
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4195
    aput-wide v14, p3, v2

    .line 4196
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4197
    sub-int/2addr v4, v10

    .line 4198
    mul-int/lit8 v11, v10, 0x2

    sub-int/2addr v6, v11

    .line 4199
    add-int v1, p4, v4

    .line 4200
    add-int v2, p4, v6

    .line 4201
    aget-wide v14, p3, v1

    .line 4202
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4203
    aget-wide v18, p3, v2

    .line 4204
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4205
    aput-wide v18, p3, v1

    .line 4206
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4207
    aput-wide v14, p3, v2

    .line 4208
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4209
    sub-int/2addr v4, v10

    .line 4210
    add-int/2addr v6, v10

    .line 4211
    add-int v1, p4, v4

    .line 4212
    add-int v2, p4, v6

    .line 4213
    aget-wide v14, p3, v1

    .line 4214
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4215
    aget-wide v18, p3, v2

    .line 4216
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4217
    aput-wide v18, p3, v1

    .line 4218
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4219
    aput-wide v14, p3, v2

    .line 4220
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4221
    sub-int/2addr v4, v10

    .line 4222
    mul-int/lit8 v11, v10, 0x2

    sub-int/2addr v6, v11

    .line 4223
    add-int v1, p4, v4

    .line 4224
    add-int v2, p4, v6

    .line 4225
    aget-wide v14, p3, v1

    .line 4226
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4227
    aget-wide v18, p3, v2

    .line 4228
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4229
    aput-wide v18, p3, v1

    .line 4230
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4231
    aput-wide v14, p3, v2

    .line 4232
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4040
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1a

    .line 4234
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v4    # "j1":I
    .end local v6    # "k1":I
    .end local v12    # "xi":D
    .end local v14    # "xr":D
    .end local v16    # "yi":D
    .end local v18    # "yr":D
    :cond_223
    add-int v11, v8, v5

    aget v11, p2, v11

    mul-int/lit8 v11, v11, 0x2

    add-int v6, v0, v11

    .line 4235
    .restart local v6    # "k1":I
    add-int/lit8 v4, v6, 0x2

    .line 4236
    .restart local v4    # "j1":I
    add-int/2addr v6, v9

    .line 4237
    add-int v1, p4, v4

    .line 4238
    .restart local v1    # "idx1":I
    add-int v2, p4, v6

    .line 4239
    .restart local v2    # "idx2":I
    aget-wide v14, p3, v1

    .line 4240
    .restart local v14    # "xr":D
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4241
    .restart local v12    # "xi":D
    aget-wide v18, p3, v2

    .line 4242
    .restart local v18    # "yr":D
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4243
    .restart local v16    # "yi":D
    aput-wide v18, p3, v1

    .line 4244
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4245
    aput-wide v14, p3, v2

    .line 4246
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4247
    add-int/2addr v4, v10

    .line 4248
    mul-int/lit8 v11, v10, 0x2

    add-int/2addr v6, v11

    .line 4249
    add-int v1, p4, v4

    .line 4250
    add-int v2, p4, v6

    .line 4251
    aget-wide v14, p3, v1

    .line 4252
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4253
    aget-wide v18, p3, v2

    .line 4254
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4255
    aput-wide v18, p3, v1

    .line 4256
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4257
    aput-wide v14, p3, v2

    .line 4258
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4259
    add-int/2addr v4, v10

    .line 4260
    sub-int/2addr v6, v10

    .line 4261
    add-int v1, p4, v4

    .line 4262
    add-int v2, p4, v6

    .line 4263
    aget-wide v14, p3, v1

    .line 4264
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4265
    aget-wide v18, p3, v2

    .line 4266
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4267
    aput-wide v18, p3, v1

    .line 4268
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4269
    aput-wide v14, p3, v2

    .line 4270
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4271
    add-int/lit8 v4, v4, -0x2

    .line 4272
    sub-int/2addr v6, v9

    .line 4273
    add-int v1, p4, v4

    .line 4274
    add-int v2, p4, v6

    .line 4275
    aget-wide v14, p3, v1

    .line 4276
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4277
    aget-wide v18, p3, v2

    .line 4278
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4279
    aput-wide v18, p3, v1

    .line 4280
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4281
    aput-wide v14, p3, v2

    .line 4282
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4283
    add-int/lit8 v11, v9, 0x2

    add-int/2addr v4, v11

    .line 4284
    add-int/lit8 v11, v9, 0x2

    add-int/2addr v6, v11

    .line 4285
    add-int v1, p4, v4

    .line 4286
    add-int v2, p4, v6

    .line 4287
    aget-wide v14, p3, v1

    .line 4288
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4289
    aget-wide v18, p3, v2

    .line 4290
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4291
    aput-wide v18, p3, v1

    .line 4292
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4293
    aput-wide v14, p3, v2

    .line 4294
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4295
    sub-int v11, v9, v10

    sub-int/2addr v4, v11

    .line 4296
    mul-int/lit8 v11, v10, 0x2

    add-int/lit8 v11, v11, -0x2

    add-int/2addr v6, v11

    .line 4297
    add-int v1, p4, v4

    .line 4298
    add-int v2, p4, v6

    .line 4299
    aget-wide v14, p3, v1

    .line 4300
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4301
    aget-wide v18, p3, v2

    .line 4302
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4303
    aput-wide v18, p3, v1

    .line 4304
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4305
    aput-wide v14, p3, v2

    .line 4306
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4038
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_15

    .line 4309
    .end local v0    # "idx0":I
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v3    # "j":I
    .end local v4    # "j1":I
    .end local v5    # "k":I
    .end local v6    # "k1":I
    .end local v12    # "xi":D
    .end local v14    # "xr":D
    .end local v16    # "yi":D
    .end local v18    # "yr":D
    :cond_2f1
    const/4 v5, 0x0

    .restart local v5    # "k":I
    :goto_2f2
    if-ge v5, v8, :cond_443

    .line 4310
    mul-int/lit8 v0, v5, 0x4

    .line 4311
    .restart local v0    # "idx0":I
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_2f7
    if-ge v3, v5, :cond_3fc

    .line 4312
    mul-int/lit8 v11, v3, 0x4

    add-int v20, v8, v5

    aget v20, p2, v20

    add-int v4, v11, v20

    .line 4313
    .restart local v4    # "j1":I
    add-int v11, v8, v3

    aget v11, p2, v11

    add-int v6, v0, v11

    .line 4314
    .restart local v6    # "k1":I
    add-int v1, p4, v4

    .line 4315
    .restart local v1    # "idx1":I
    add-int v2, p4, v6

    .line 4316
    .restart local v2    # "idx2":I
    aget-wide v14, p3, v1

    .line 4317
    .restart local v14    # "xr":D
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4318
    .restart local v12    # "xi":D
    aget-wide v18, p3, v2

    .line 4319
    .restart local v18    # "yr":D
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4320
    .restart local v16    # "yi":D
    aput-wide v18, p3, v1

    .line 4321
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4322
    aput-wide v14, p3, v2

    .line 4323
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4324
    add-int/2addr v4, v10

    .line 4325
    add-int/2addr v6, v10

    .line 4326
    add-int v1, p4, v4

    .line 4327
    add-int v2, p4, v6

    .line 4328
    aget-wide v14, p3, v1

    .line 4329
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4330
    aget-wide v18, p3, v2

    .line 4331
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4332
    aput-wide v18, p3, v1

    .line 4333
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4334
    aput-wide v14, p3, v2

    .line 4335
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4336
    add-int/2addr v4, v9

    .line 4337
    add-int/lit8 v6, v6, 0x2

    .line 4338
    add-int v1, p4, v4

    .line 4339
    add-int v2, p4, v6

    .line 4340
    aget-wide v14, p3, v1

    .line 4341
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4342
    aget-wide v18, p3, v2

    .line 4343
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4344
    aput-wide v18, p3, v1

    .line 4345
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4346
    aput-wide v14, p3, v2

    .line 4347
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4348
    sub-int/2addr v4, v10

    .line 4349
    sub-int/2addr v6, v10

    .line 4350
    add-int v1, p4, v4

    .line 4351
    add-int v2, p4, v6

    .line 4352
    aget-wide v14, p3, v1

    .line 4353
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4354
    aget-wide v18, p3, v2

    .line 4355
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4356
    aput-wide v18, p3, v1

    .line 4357
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4358
    aput-wide v14, p3, v2

    .line 4359
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4360
    add-int/lit8 v4, v4, 0x2

    .line 4361
    add-int/2addr v6, v9

    .line 4362
    add-int v1, p4, v4

    .line 4363
    add-int v2, p4, v6

    .line 4364
    aget-wide v14, p3, v1

    .line 4365
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4366
    aget-wide v18, p3, v2

    .line 4367
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4368
    aput-wide v18, p3, v1

    .line 4369
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4370
    aput-wide v14, p3, v2

    .line 4371
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4372
    add-int/2addr v4, v10

    .line 4373
    add-int/2addr v6, v10

    .line 4374
    add-int v1, p4, v4

    .line 4375
    add-int v2, p4, v6

    .line 4376
    aget-wide v14, p3, v1

    .line 4377
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4378
    aget-wide v18, p3, v2

    .line 4379
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4380
    aput-wide v18, p3, v1

    .line 4381
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4382
    aput-wide v14, p3, v2

    .line 4383
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4384
    sub-int/2addr v4, v9

    .line 4385
    add-int/lit8 v6, v6, -0x2

    .line 4386
    add-int v1, p4, v4

    .line 4387
    add-int v2, p4, v6

    .line 4388
    aget-wide v14, p3, v1

    .line 4389
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4390
    aget-wide v18, p3, v2

    .line 4391
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4392
    aput-wide v18, p3, v1

    .line 4393
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4394
    aput-wide v14, p3, v2

    .line 4395
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4396
    sub-int/2addr v4, v10

    .line 4397
    sub-int/2addr v6, v10

    .line 4398
    add-int v1, p4, v4

    .line 4399
    add-int v2, p4, v6

    .line 4400
    aget-wide v14, p3, v1

    .line 4401
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4402
    aget-wide v18, p3, v2

    .line 4403
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4404
    aput-wide v18, p3, v1

    .line 4405
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4406
    aput-wide v14, p3, v2

    .line 4407
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4311
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2f7

    .line 4409
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v4    # "j1":I
    .end local v6    # "k1":I
    .end local v12    # "xi":D
    .end local v14    # "xr":D
    .end local v16    # "yi":D
    .end local v18    # "yr":D
    :cond_3fc
    add-int v11, v8, v5

    aget v11, p2, v11

    add-int v6, v0, v11

    .line 4410
    .restart local v6    # "k1":I
    add-int/lit8 v4, v6, 0x2

    .line 4411
    .restart local v4    # "j1":I
    add-int/2addr v6, v9

    .line 4412
    add-int v1, p4, v4

    .line 4413
    .restart local v1    # "idx1":I
    add-int v2, p4, v6

    .line 4414
    .restart local v2    # "idx2":I
    aget-wide v14, p3, v1

    .line 4415
    .restart local v14    # "xr":D
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4416
    .restart local v12    # "xi":D
    aget-wide v18, p3, v2

    .line 4417
    .restart local v18    # "yr":D
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4418
    .restart local v16    # "yi":D
    aput-wide v18, p3, v1

    .line 4419
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4420
    aput-wide v14, p3, v2

    .line 4421
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4422
    add-int/2addr v4, v10

    .line 4423
    add-int/2addr v6, v10

    .line 4424
    add-int v1, p4, v4

    .line 4425
    add-int v2, p4, v6

    .line 4426
    aget-wide v14, p3, v1

    .line 4427
    add-int/lit8 v11, v1, 0x1

    aget-wide v12, p3, v11

    .line 4428
    aget-wide v18, p3, v2

    .line 4429
    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p3, v11

    .line 4430
    aput-wide v18, p3, v1

    .line 4431
    add-int/lit8 v11, v1, 0x1

    aput-wide v16, p3, v11

    .line 4432
    aput-wide v14, p3, v2

    .line 4433
    add-int/lit8 v11, v2, 0x1

    aput-wide v12, p3, v11

    .line 4309
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2f2

    .line 4436
    .end local v0    # "idx0":I
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v3    # "j":I
    .end local v4    # "j1":I
    .end local v6    # "k1":I
    .end local v12    # "xi":D
    .end local v14    # "xr":D
    .end local v16    # "yi":D
    .end local v18    # "yr":D
    :cond_443
    return-void
.end method

.method private bitrv208([DI)V
    .registers 20
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .prologue
    .line 4979
    add-int/lit8 v16, p2, 0x2

    aget-wide v2, p1, v16

    .line 4980
    .local v2, "x1r":D
    add-int/lit8 v16, p2, 0x3

    aget-wide v0, p1, v16

    .line 4981
    .local v0, "x1i":D
    add-int/lit8 v16, p2, 0x6

    aget-wide v6, p1, v16

    .line 4982
    .local v6, "x3r":D
    add-int/lit8 v16, p2, 0x7

    aget-wide v4, p1, v16

    .line 4983
    .local v4, "x3i":D
    add-int/lit8 v16, p2, 0x8

    aget-wide v10, p1, v16

    .line 4984
    .local v10, "x4r":D
    add-int/lit8 v16, p2, 0x9

    aget-wide v8, p1, v16

    .line 4985
    .local v8, "x4i":D
    add-int/lit8 v16, p2, 0xc

    aget-wide v14, p1, v16

    .line 4986
    .local v14, "x6r":D
    add-int/lit8 v16, p2, 0xd

    aget-wide v12, p1, v16

    .line 4987
    .local v12, "x6i":D
    add-int/lit8 v16, p2, 0x2

    aput-wide v10, p1, v16

    .line 4988
    add-int/lit8 v16, p2, 0x3

    aput-wide v8, p1, v16

    .line 4989
    add-int/lit8 v16, p2, 0x6

    aput-wide v14, p1, v16

    .line 4990
    add-int/lit8 v16, p2, 0x7

    aput-wide v12, p1, v16

    .line 4991
    add-int/lit8 v16, p2, 0x8

    aput-wide v2, p1, v16

    .line 4992
    add-int/lit8 v16, p2, 0x9

    aput-wide v0, p1, v16

    .line 4993
    add-int/lit8 v16, p2, 0xc

    aput-wide v6, p1, v16

    .line 4994
    add-int/lit8 v16, p2, 0xd

    aput-wide v4, p1, v16

    .line 4995
    return-void
.end method

.method private bitrv208neg([DI)V
    .registers 32
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .prologue
    .line 5000
    add-int/lit8 v28, p2, 0x2

    aget-wide v2, p1, v28

    .line 5001
    .local v2, "x1r":D
    add-int/lit8 v28, p2, 0x3

    aget-wide v0, p1, v28

    .line 5002
    .local v0, "x1i":D
    add-int/lit8 v28, p2, 0x4

    aget-wide v6, p1, v28

    .line 5003
    .local v6, "x2r":D
    add-int/lit8 v28, p2, 0x5

    aget-wide v4, p1, v28

    .line 5004
    .local v4, "x2i":D
    add-int/lit8 v28, p2, 0x6

    aget-wide v10, p1, v28

    .line 5005
    .local v10, "x3r":D
    add-int/lit8 v28, p2, 0x7

    aget-wide v8, p1, v28

    .line 5006
    .local v8, "x3i":D
    add-int/lit8 v28, p2, 0x8

    aget-wide v14, p1, v28

    .line 5007
    .local v14, "x4r":D
    add-int/lit8 v28, p2, 0x9

    aget-wide v12, p1, v28

    .line 5008
    .local v12, "x4i":D
    add-int/lit8 v28, p2, 0xa

    aget-wide v18, p1, v28

    .line 5009
    .local v18, "x5r":D
    add-int/lit8 v28, p2, 0xb

    aget-wide v16, p1, v28

    .line 5010
    .local v16, "x5i":D
    add-int/lit8 v28, p2, 0xc

    aget-wide v22, p1, v28

    .line 5011
    .local v22, "x6r":D
    add-int/lit8 v28, p2, 0xd

    aget-wide v20, p1, v28

    .line 5012
    .local v20, "x6i":D
    add-int/lit8 v28, p2, 0xe

    aget-wide v26, p1, v28

    .line 5013
    .local v26, "x7r":D
    add-int/lit8 v28, p2, 0xf

    aget-wide v24, p1, v28

    .line 5014
    .local v24, "x7i":D
    add-int/lit8 v28, p2, 0x2

    aput-wide v26, p1, v28

    .line 5015
    add-int/lit8 v28, p2, 0x3

    aput-wide v24, p1, v28

    .line 5016
    add-int/lit8 v28, p2, 0x4

    aput-wide v10, p1, v28

    .line 5017
    add-int/lit8 v28, p2, 0x5

    aput-wide v8, p1, v28

    .line 5018
    add-int/lit8 v28, p2, 0x6

    aput-wide v18, p1, v28

    .line 5019
    add-int/lit8 v28, p2, 0x7

    aput-wide v16, p1, v28

    .line 5020
    add-int/lit8 v28, p2, 0x8

    aput-wide v2, p1, v28

    .line 5021
    add-int/lit8 v28, p2, 0x9

    aput-wide v0, p1, v28

    .line 5022
    add-int/lit8 v28, p2, 0xa

    aput-wide v22, p1, v28

    .line 5023
    add-int/lit8 v28, p2, 0xb

    aput-wide v20, p1, v28

    .line 5024
    add-int/lit8 v28, p2, 0xc

    aput-wide v6, p1, v28

    .line 5025
    add-int/lit8 v28, p2, 0xd

    aput-wide v4, p1, v28

    .line 5026
    add-int/lit8 v28, p2, 0xe

    aput-wide v14, p1, v28

    .line 5027
    add-int/lit8 v28, p2, 0xf

    aput-wide v12, p1, v28

    .line 5028
    return-void
.end method

.method private bitrv216([DI)V
    .registers 52
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .prologue
    .line 4861
    add-int/lit8 v48, p2, 0x2

    aget-wide v22, p1, v48

    .line 4862
    .local v22, "x1r":D
    add-int/lit8 v48, p2, 0x3

    aget-wide v20, p1, v48

    .line 4863
    .local v20, "x1i":D
    add-int/lit8 v48, p2, 0x4

    aget-wide v26, p1, v48

    .line 4864
    .local v26, "x2r":D
    add-int/lit8 v48, p2, 0x5

    aget-wide v24, p1, v48

    .line 4865
    .local v24, "x2i":D
    add-int/lit8 v48, p2, 0x6

    aget-wide v30, p1, v48

    .line 4866
    .local v30, "x3r":D
    add-int/lit8 v48, p2, 0x7

    aget-wide v28, p1, v48

    .line 4867
    .local v28, "x3i":D
    add-int/lit8 v48, p2, 0x8

    aget-wide v34, p1, v48

    .line 4868
    .local v34, "x4r":D
    add-int/lit8 v48, p2, 0x9

    aget-wide v32, p1, v48

    .line 4869
    .local v32, "x4i":D
    add-int/lit8 v48, p2, 0xa

    aget-wide v38, p1, v48

    .line 4870
    .local v38, "x5r":D
    add-int/lit8 v48, p2, 0xb

    aget-wide v36, p1, v48

    .line 4871
    .local v36, "x5i":D
    add-int/lit8 v48, p2, 0xe

    aget-wide v42, p1, v48

    .line 4872
    .local v42, "x7r":D
    add-int/lit8 v48, p2, 0xf

    aget-wide v40, p1, v48

    .line 4873
    .local v40, "x7i":D
    add-int/lit8 v48, p2, 0x10

    aget-wide v46, p1, v48

    .line 4874
    .local v46, "x8r":D
    add-int/lit8 v48, p2, 0x11

    aget-wide v44, p1, v48

    .line 4875
    .local v44, "x8i":D
    add-int/lit8 v48, p2, 0x14

    aget-wide v2, p1, v48

    .line 4876
    .local v2, "x10r":D
    add-int/lit8 v48, p2, 0x15

    aget-wide v0, p1, v48

    .line 4877
    .local v0, "x10i":D
    add-int/lit8 v48, p2, 0x16

    aget-wide v6, p1, v48

    .line 4878
    .local v6, "x11r":D
    add-int/lit8 v48, p2, 0x17

    aget-wide v4, p1, v48

    .line 4879
    .local v4, "x11i":D
    add-int/lit8 v48, p2, 0x18

    aget-wide v10, p1, v48

    .line 4880
    .local v10, "x12r":D
    add-int/lit8 v48, p2, 0x19

    aget-wide v8, p1, v48

    .line 4881
    .local v8, "x12i":D
    add-int/lit8 v48, p2, 0x1a

    aget-wide v14, p1, v48

    .line 4882
    .local v14, "x13r":D
    add-int/lit8 v48, p2, 0x1b

    aget-wide v12, p1, v48

    .line 4883
    .local v12, "x13i":D
    add-int/lit8 v48, p2, 0x1c

    aget-wide v18, p1, v48

    .line 4884
    .local v18, "x14r":D
    add-int/lit8 v48, p2, 0x1d

    aget-wide v16, p1, v48

    .line 4885
    .local v16, "x14i":D
    add-int/lit8 v48, p2, 0x2

    aput-wide v46, p1, v48

    .line 4886
    add-int/lit8 v48, p2, 0x3

    aput-wide v44, p1, v48

    .line 4887
    add-int/lit8 v48, p2, 0x4

    aput-wide v34, p1, v48

    .line 4888
    add-int/lit8 v48, p2, 0x5

    aput-wide v32, p1, v48

    .line 4889
    add-int/lit8 v48, p2, 0x6

    aput-wide v10, p1, v48

    .line 4890
    add-int/lit8 v48, p2, 0x7

    aput-wide v8, p1, v48

    .line 4891
    add-int/lit8 v48, p2, 0x8

    aput-wide v26, p1, v48

    .line 4892
    add-int/lit8 v48, p2, 0x9

    aput-wide v24, p1, v48

    .line 4893
    add-int/lit8 v48, p2, 0xa

    aput-wide v2, p1, v48

    .line 4894
    add-int/lit8 v48, p2, 0xb

    aput-wide v0, p1, v48

    .line 4895
    add-int/lit8 v48, p2, 0xe

    aput-wide v18, p1, v48

    .line 4896
    add-int/lit8 v48, p2, 0xf

    aput-wide v16, p1, v48

    .line 4897
    add-int/lit8 v48, p2, 0x10

    aput-wide v22, p1, v48

    .line 4898
    add-int/lit8 v48, p2, 0x11

    aput-wide v20, p1, v48

    .line 4899
    add-int/lit8 v48, p2, 0x14

    aput-wide v38, p1, v48

    .line 4900
    add-int/lit8 v48, p2, 0x15

    aput-wide v36, p1, v48

    .line 4901
    add-int/lit8 v48, p2, 0x16

    aput-wide v14, p1, v48

    .line 4902
    add-int/lit8 v48, p2, 0x17

    aput-wide v12, p1, v48

    .line 4903
    add-int/lit8 v48, p2, 0x18

    aput-wide v30, p1, v48

    .line 4904
    add-int/lit8 v48, p2, 0x19

    aput-wide v28, p1, v48

    .line 4905
    add-int/lit8 v48, p2, 0x1a

    aput-wide v6, p1, v48

    .line 4906
    add-int/lit8 v48, p2, 0x1b

    aput-wide v4, p1, v48

    .line 4907
    add-int/lit8 v48, p2, 0x1c

    aput-wide v42, p1, v48

    .line 4908
    add-int/lit8 v48, p2, 0x1d

    aput-wide v40, p1, v48

    .line 4909
    return-void
.end method

.method private bitrv216neg([DI)V
    .registers 64
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .prologue
    .line 4914
    add-int/lit8 v60, p2, 0x2

    aget-wide v26, p1, v60

    .line 4915
    .local v26, "x1r":D
    add-int/lit8 v60, p2, 0x3

    aget-wide v24, p1, v60

    .line 4916
    .local v24, "x1i":D
    add-int/lit8 v60, p2, 0x4

    aget-wide v30, p1, v60

    .line 4917
    .local v30, "x2r":D
    add-int/lit8 v60, p2, 0x5

    aget-wide v28, p1, v60

    .line 4918
    .local v28, "x2i":D
    add-int/lit8 v60, p2, 0x6

    aget-wide v34, p1, v60

    .line 4919
    .local v34, "x3r":D
    add-int/lit8 v60, p2, 0x7

    aget-wide v32, p1, v60

    .line 4920
    .local v32, "x3i":D
    add-int/lit8 v60, p2, 0x8

    aget-wide v38, p1, v60

    .line 4921
    .local v38, "x4r":D
    add-int/lit8 v60, p2, 0x9

    aget-wide v36, p1, v60

    .line 4922
    .local v36, "x4i":D
    add-int/lit8 v60, p2, 0xa

    aget-wide v42, p1, v60

    .line 4923
    .local v42, "x5r":D
    add-int/lit8 v60, p2, 0xb

    aget-wide v40, p1, v60

    .line 4924
    .local v40, "x5i":D
    add-int/lit8 v60, p2, 0xc

    aget-wide v46, p1, v60

    .line 4925
    .local v46, "x6r":D
    add-int/lit8 v60, p2, 0xd

    aget-wide v44, p1, v60

    .line 4926
    .local v44, "x6i":D
    add-int/lit8 v60, p2, 0xe

    aget-wide v50, p1, v60

    .line 4927
    .local v50, "x7r":D
    add-int/lit8 v60, p2, 0xf

    aget-wide v48, p1, v60

    .line 4928
    .local v48, "x7i":D
    add-int/lit8 v60, p2, 0x10

    aget-wide v54, p1, v60

    .line 4929
    .local v54, "x8r":D
    add-int/lit8 v60, p2, 0x11

    aget-wide v52, p1, v60

    .line 4930
    .local v52, "x8i":D
    add-int/lit8 v60, p2, 0x12

    aget-wide v58, p1, v60

    .line 4931
    .local v58, "x9r":D
    add-int/lit8 v60, p2, 0x13

    aget-wide v56, p1, v60

    .line 4932
    .local v56, "x9i":D
    add-int/lit8 v60, p2, 0x14

    aget-wide v2, p1, v60

    .line 4933
    .local v2, "x10r":D
    add-int/lit8 v60, p2, 0x15

    aget-wide v0, p1, v60

    .line 4934
    .local v0, "x10i":D
    add-int/lit8 v60, p2, 0x16

    aget-wide v6, p1, v60

    .line 4935
    .local v6, "x11r":D
    add-int/lit8 v60, p2, 0x17

    aget-wide v4, p1, v60

    .line 4936
    .local v4, "x11i":D
    add-int/lit8 v60, p2, 0x18

    aget-wide v10, p1, v60

    .line 4937
    .local v10, "x12r":D
    add-int/lit8 v60, p2, 0x19

    aget-wide v8, p1, v60

    .line 4938
    .local v8, "x12i":D
    add-int/lit8 v60, p2, 0x1a

    aget-wide v14, p1, v60

    .line 4939
    .local v14, "x13r":D
    add-int/lit8 v60, p2, 0x1b

    aget-wide v12, p1, v60

    .line 4940
    .local v12, "x13i":D
    add-int/lit8 v60, p2, 0x1c

    aget-wide v18, p1, v60

    .line 4941
    .local v18, "x14r":D
    add-int/lit8 v60, p2, 0x1d

    aget-wide v16, p1, v60

    .line 4942
    .local v16, "x14i":D
    add-int/lit8 v60, p2, 0x1e

    aget-wide v22, p1, v60

    .line 4943
    .local v22, "x15r":D
    add-int/lit8 v60, p2, 0x1f

    aget-wide v20, p1, v60

    .line 4944
    .local v20, "x15i":D
    add-int/lit8 v60, p2, 0x2

    aput-wide v22, p1, v60

    .line 4945
    add-int/lit8 v60, p2, 0x3

    aput-wide v20, p1, v60

    .line 4946
    add-int/lit8 v60, p2, 0x4

    aput-wide v50, p1, v60

    .line 4947
    add-int/lit8 v60, p2, 0x5

    aput-wide v48, p1, v60

    .line 4948
    add-int/lit8 v60, p2, 0x6

    aput-wide v6, p1, v60

    .line 4949
    add-int/lit8 v60, p2, 0x7

    aput-wide v4, p1, v60

    .line 4950
    add-int/lit8 v60, p2, 0x8

    aput-wide v34, p1, v60

    .line 4951
    add-int/lit8 v60, p2, 0x9

    aput-wide v32, p1, v60

    .line 4952
    add-int/lit8 v60, p2, 0xa

    aput-wide v14, p1, v60

    .line 4953
    add-int/lit8 v60, p2, 0xb

    aput-wide v12, p1, v60

    .line 4954
    add-int/lit8 v60, p2, 0xc

    aput-wide v42, p1, v60

    .line 4955
    add-int/lit8 v60, p2, 0xd

    aput-wide v40, p1, v60

    .line 4956
    add-int/lit8 v60, p2, 0xe

    aput-wide v58, p1, v60

    .line 4957
    add-int/lit8 v60, p2, 0xf

    aput-wide v56, p1, v60

    .line 4958
    add-int/lit8 v60, p2, 0x10

    aput-wide v26, p1, v60

    .line 4959
    add-int/lit8 v60, p2, 0x11

    aput-wide v24, p1, v60

    .line 4960
    add-int/lit8 v60, p2, 0x12

    aput-wide v18, p1, v60

    .line 4961
    add-int/lit8 v60, p2, 0x13

    aput-wide v16, p1, v60

    .line 4962
    add-int/lit8 v60, p2, 0x14

    aput-wide v46, p1, v60

    .line 4963
    add-int/lit8 v60, p2, 0x15

    aput-wide v44, p1, v60

    .line 4964
    add-int/lit8 v60, p2, 0x16

    aput-wide v2, p1, v60

    .line 4965
    add-int/lit8 v60, p2, 0x17

    aput-wide v0, p1, v60

    .line 4966
    add-int/lit8 v60, p2, 0x18

    aput-wide v30, p1, v60

    .line 4967
    add-int/lit8 v60, p2, 0x19

    aput-wide v28, p1, v60

    .line 4968
    add-int/lit8 v60, p2, 0x1a

    aput-wide v10, p1, v60

    .line 4969
    add-int/lit8 v60, p2, 0x1b

    aput-wide v8, p1, v60

    .line 4970
    add-int/lit8 v60, p2, 0x1c

    aput-wide v38, p1, v60

    .line 4971
    add-int/lit8 v60, p2, 0x1d

    aput-wide v36, p1, v60

    .line 4972
    add-int/lit8 v60, p2, 0x1e

    aput-wide v54, p1, v60

    .line 4973
    add-int/lit8 v60, p2, 0x1f

    aput-wide v52, p1, v60

    .line 4974
    return-void
.end method

.method private bitrv2conj(I[I[DI)V
    .registers 29
    .param p1, "n"    # I
    .param p2, "ip"    # [I
    .param p3, "a"    # [D
    .param p4, "offa"    # I

    .prologue
    .line 4443
    const/4 v10, 0x1

    .line 4444
    .local v10, "m":I
    shr-int/lit8 v9, p1, 0x2

    .local v9, "l":I
    :goto_3
    const/16 v13, 0x8

    if-le v9, v13, :cond_c

    .line 4445
    shl-int/lit8 v10, v10, 0x1

    .line 4444
    shr-int/lit8 v9, v9, 0x2

    goto :goto_3

    .line 4447
    :cond_c
    shr-int/lit8 v11, p1, 0x1

    .line 4448
    .local v11, "nh":I
    mul-int/lit8 v12, v10, 0x4

    .line 4449
    .local v12, "nm":I
    const/16 v13, 0x8

    if-ne v9, v13, :cond_3d5

    .line 4450
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_15
    if-ge v7, v10, :cond_5ab

    .line 4451
    mul-int/lit8 v2, v7, 0x4

    .line 4452
    .local v2, "idx0":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1a
    if-ge v5, v7, :cond_2a3

    .line 4453
    mul-int/lit8 v13, v5, 0x4

    add-int v22, v10, v7

    aget v22, p2, v22

    mul-int/lit8 v22, v22, 0x2

    add-int v6, v13, v22

    .line 4454
    .local v6, "j1":I
    add-int v13, v10, v5

    aget v13, p2, v13

    mul-int/lit8 v13, v13, 0x2

    add-int v8, v2, v13

    .line 4455
    .local v8, "k1":I
    add-int v3, p4, v6

    .line 4456
    .local v3, "idx1":I
    add-int v4, p4, v8

    .line 4457
    .local v4, "idx2":I
    aget-wide v16, p3, v3

    .line 4458
    .local v16, "xr":D
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4459
    .local v14, "xi":D
    aget-wide v20, p3, v4

    .line 4460
    .local v20, "yr":D
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4461
    .local v18, "yi":D
    aput-wide v20, p3, v3

    .line 4462
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4463
    aput-wide v16, p3, v4

    .line 4464
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4465
    add-int/2addr v6, v12

    .line 4466
    mul-int/lit8 v13, v12, 0x2

    add-int/2addr v8, v13

    .line 4467
    add-int v3, p4, v6

    .line 4468
    add-int v4, p4, v8

    .line 4469
    aget-wide v16, p3, v3

    .line 4470
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4471
    aget-wide v20, p3, v4

    .line 4472
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4473
    aput-wide v20, p3, v3

    .line 4474
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4475
    aput-wide v16, p3, v4

    .line 4476
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4477
    add-int/2addr v6, v12

    .line 4478
    sub-int/2addr v8, v12

    .line 4479
    add-int v3, p4, v6

    .line 4480
    add-int v4, p4, v8

    .line 4481
    aget-wide v16, p3, v3

    .line 4482
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4483
    aget-wide v20, p3, v4

    .line 4484
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4485
    aput-wide v20, p3, v3

    .line 4486
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4487
    aput-wide v16, p3, v4

    .line 4488
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4489
    add-int/2addr v6, v12

    .line 4490
    mul-int/lit8 v13, v12, 0x2

    add-int/2addr v8, v13

    .line 4491
    add-int v3, p4, v6

    .line 4492
    add-int v4, p4, v8

    .line 4493
    aget-wide v16, p3, v3

    .line 4494
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4495
    aget-wide v20, p3, v4

    .line 4496
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4497
    aput-wide v20, p3, v3

    .line 4498
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4499
    aput-wide v16, p3, v4

    .line 4500
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4501
    add-int/2addr v6, v11

    .line 4502
    add-int/lit8 v8, v8, 0x2

    .line 4503
    add-int v3, p4, v6

    .line 4504
    add-int v4, p4, v8

    .line 4505
    aget-wide v16, p3, v3

    .line 4506
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4507
    aget-wide v20, p3, v4

    .line 4508
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4509
    aput-wide v20, p3, v3

    .line 4510
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4511
    aput-wide v16, p3, v4

    .line 4512
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4513
    sub-int/2addr v6, v12

    .line 4514
    mul-int/lit8 v13, v12, 0x2

    sub-int/2addr v8, v13

    .line 4515
    add-int v3, p4, v6

    .line 4516
    add-int v4, p4, v8

    .line 4517
    aget-wide v16, p3, v3

    .line 4518
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4519
    aget-wide v20, p3, v4

    .line 4520
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4521
    aput-wide v20, p3, v3

    .line 4522
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4523
    aput-wide v16, p3, v4

    .line 4524
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4525
    sub-int/2addr v6, v12

    .line 4526
    add-int/2addr v8, v12

    .line 4527
    add-int v3, p4, v6

    .line 4528
    add-int v4, p4, v8

    .line 4529
    aget-wide v16, p3, v3

    .line 4530
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4531
    aget-wide v20, p3, v4

    .line 4532
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4533
    aput-wide v20, p3, v3

    .line 4534
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4535
    aput-wide v16, p3, v4

    .line 4536
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4537
    sub-int/2addr v6, v12

    .line 4538
    mul-int/lit8 v13, v12, 0x2

    sub-int/2addr v8, v13

    .line 4539
    add-int v3, p4, v6

    .line 4540
    add-int v4, p4, v8

    .line 4541
    aget-wide v16, p3, v3

    .line 4542
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4543
    aget-wide v20, p3, v4

    .line 4544
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4545
    aput-wide v20, p3, v3

    .line 4546
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4547
    aput-wide v16, p3, v4

    .line 4548
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4549
    add-int/lit8 v6, v6, 0x2

    .line 4550
    add-int/2addr v8, v11

    .line 4551
    add-int v3, p4, v6

    .line 4552
    add-int v4, p4, v8

    .line 4553
    aget-wide v16, p3, v3

    .line 4554
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4555
    aget-wide v20, p3, v4

    .line 4556
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4557
    aput-wide v20, p3, v3

    .line 4558
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4559
    aput-wide v16, p3, v4

    .line 4560
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4561
    add-int/2addr v6, v12

    .line 4562
    mul-int/lit8 v13, v12, 0x2

    add-int/2addr v8, v13

    .line 4563
    add-int v3, p4, v6

    .line 4564
    add-int v4, p4, v8

    .line 4565
    aget-wide v16, p3, v3

    .line 4566
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4567
    aget-wide v20, p3, v4

    .line 4568
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4569
    aput-wide v20, p3, v3

    .line 4570
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4571
    aput-wide v16, p3, v4

    .line 4572
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4573
    add-int/2addr v6, v12

    .line 4574
    sub-int/2addr v8, v12

    .line 4575
    add-int v3, p4, v6

    .line 4576
    add-int v4, p4, v8

    .line 4577
    aget-wide v16, p3, v3

    .line 4578
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4579
    aget-wide v20, p3, v4

    .line 4580
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4581
    aput-wide v20, p3, v3

    .line 4582
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4583
    aput-wide v16, p3, v4

    .line 4584
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4585
    add-int/2addr v6, v12

    .line 4586
    mul-int/lit8 v13, v12, 0x2

    add-int/2addr v8, v13

    .line 4587
    add-int v3, p4, v6

    .line 4588
    add-int v4, p4, v8

    .line 4589
    aget-wide v16, p3, v3

    .line 4590
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4591
    aget-wide v20, p3, v4

    .line 4592
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4593
    aput-wide v20, p3, v3

    .line 4594
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4595
    aput-wide v16, p3, v4

    .line 4596
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4597
    sub-int/2addr v6, v11

    .line 4598
    add-int/lit8 v8, v8, -0x2

    .line 4599
    add-int v3, p4, v6

    .line 4600
    add-int v4, p4, v8

    .line 4601
    aget-wide v16, p3, v3

    .line 4602
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4603
    aget-wide v20, p3, v4

    .line 4604
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4605
    aput-wide v20, p3, v3

    .line 4606
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4607
    aput-wide v16, p3, v4

    .line 4608
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4609
    sub-int/2addr v6, v12

    .line 4610
    mul-int/lit8 v13, v12, 0x2

    sub-int/2addr v8, v13

    .line 4611
    add-int v3, p4, v6

    .line 4612
    add-int v4, p4, v8

    .line 4613
    aget-wide v16, p3, v3

    .line 4614
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4615
    aget-wide v20, p3, v4

    .line 4616
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4617
    aput-wide v20, p3, v3

    .line 4618
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4619
    aput-wide v16, p3, v4

    .line 4620
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4621
    sub-int/2addr v6, v12

    .line 4622
    add-int/2addr v8, v12

    .line 4623
    add-int v3, p4, v6

    .line 4624
    add-int v4, p4, v8

    .line 4625
    aget-wide v16, p3, v3

    .line 4626
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4627
    aget-wide v20, p3, v4

    .line 4628
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4629
    aput-wide v20, p3, v3

    .line 4630
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4631
    aput-wide v16, p3, v4

    .line 4632
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4633
    sub-int/2addr v6, v12

    .line 4634
    mul-int/lit8 v13, v12, 0x2

    sub-int/2addr v8, v13

    .line 4635
    add-int v3, p4, v6

    .line 4636
    add-int v4, p4, v8

    .line 4637
    aget-wide v16, p3, v3

    .line 4638
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4639
    aget-wide v20, p3, v4

    .line 4640
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4641
    aput-wide v20, p3, v3

    .line 4642
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4643
    aput-wide v16, p3, v4

    .line 4644
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4452
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1a

    .line 4646
    .end local v3    # "idx1":I
    .end local v4    # "idx2":I
    .end local v6    # "j1":I
    .end local v8    # "k1":I
    .end local v14    # "xi":D
    .end local v16    # "xr":D
    .end local v18    # "yi":D
    .end local v20    # "yr":D
    :cond_2a3
    add-int v13, v10, v7

    aget v13, p2, v13

    mul-int/lit8 v13, v13, 0x2

    add-int v8, v2, v13

    .line 4647
    .restart local v8    # "k1":I
    add-int/lit8 v6, v8, 0x2

    .line 4648
    .restart local v6    # "j1":I
    add-int/2addr v8, v11

    .line 4649
    add-int v3, p4, v6

    .line 4650
    .restart local v3    # "idx1":I
    add-int v4, p4, v8

    .line 4651
    .restart local v4    # "idx2":I
    add-int/lit8 v13, v3, -0x1

    add-int/lit8 v22, v3, -0x1

    aget-wide v22, p3, v22

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, p3, v13

    .line 4652
    aget-wide v16, p3, v3

    .line 4653
    .restart local v16    # "xr":D
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4654
    .restart local v14    # "xi":D
    aget-wide v20, p3, v4

    .line 4655
    .restart local v20    # "yr":D
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4656
    .restart local v18    # "yi":D
    aput-wide v20, p3, v3

    .line 4657
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4658
    aput-wide v16, p3, v4

    .line 4659
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4660
    add-int/lit8 v13, v4, 0x3

    add-int/lit8 v22, v4, 0x3

    aget-wide v22, p3, v22

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, p3, v13

    .line 4661
    add-int/2addr v6, v12

    .line 4662
    mul-int/lit8 v13, v12, 0x2

    add-int/2addr v8, v13

    .line 4663
    add-int v3, p4, v6

    .line 4664
    add-int v4, p4, v8

    .line 4665
    aget-wide v16, p3, v3

    .line 4666
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4667
    aget-wide v20, p3, v4

    .line 4668
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4669
    aput-wide v20, p3, v3

    .line 4670
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4671
    aput-wide v16, p3, v4

    .line 4672
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4673
    add-int/2addr v6, v12

    .line 4674
    sub-int/2addr v8, v12

    .line 4675
    add-int v3, p4, v6

    .line 4676
    add-int v4, p4, v8

    .line 4677
    aget-wide v16, p3, v3

    .line 4678
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4679
    aget-wide v20, p3, v4

    .line 4680
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4681
    aput-wide v20, p3, v3

    .line 4682
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4683
    aput-wide v16, p3, v4

    .line 4684
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4685
    add-int/lit8 v6, v6, -0x2

    .line 4686
    sub-int/2addr v8, v11

    .line 4687
    add-int v3, p4, v6

    .line 4688
    add-int v4, p4, v8

    .line 4689
    aget-wide v16, p3, v3

    .line 4690
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4691
    aget-wide v20, p3, v4

    .line 4692
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4693
    aput-wide v20, p3, v3

    .line 4694
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4695
    aput-wide v16, p3, v4

    .line 4696
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4697
    add-int/lit8 v13, v11, 0x2

    add-int/2addr v6, v13

    .line 4698
    add-int/lit8 v13, v11, 0x2

    add-int/2addr v8, v13

    .line 4699
    add-int v3, p4, v6

    .line 4700
    add-int v4, p4, v8

    .line 4701
    aget-wide v16, p3, v3

    .line 4702
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4703
    aget-wide v20, p3, v4

    .line 4704
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4705
    aput-wide v20, p3, v3

    .line 4706
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4707
    aput-wide v16, p3, v4

    .line 4708
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4709
    sub-int v13, v11, v12

    sub-int/2addr v6, v13

    .line 4710
    mul-int/lit8 v13, v12, 0x2

    add-int/lit8 v13, v13, -0x2

    add-int/2addr v8, v13

    .line 4711
    add-int v3, p4, v6

    .line 4712
    add-int v4, p4, v8

    .line 4713
    add-int/lit8 v13, v3, -0x1

    add-int/lit8 v22, v3, -0x1

    aget-wide v22, p3, v22

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, p3, v13

    .line 4714
    aget-wide v16, p3, v3

    .line 4715
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4716
    aget-wide v20, p3, v4

    .line 4717
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4718
    aput-wide v20, p3, v3

    .line 4719
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4720
    aput-wide v16, p3, v4

    .line 4721
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4722
    add-int/lit8 v13, v4, 0x3

    add-int/lit8 v22, v4, 0x3

    aget-wide v22, p3, v22

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, p3, v13

    .line 4450
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_15

    .line 4725
    .end local v2    # "idx0":I
    .end local v3    # "idx1":I
    .end local v4    # "idx2":I
    .end local v5    # "j":I
    .end local v6    # "j1":I
    .end local v7    # "k":I
    .end local v8    # "k1":I
    .end local v14    # "xi":D
    .end local v16    # "xr":D
    .end local v18    # "yi":D
    .end local v20    # "yr":D
    :cond_3d5
    const/4 v7, 0x0

    .restart local v7    # "k":I
    :goto_3d6
    if-ge v7, v10, :cond_5ab

    .line 4726
    mul-int/lit8 v2, v7, 0x4

    .line 4727
    .restart local v2    # "idx0":I
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_3db
    if-ge v5, v7, :cond_520

    .line 4728
    mul-int/lit8 v13, v5, 0x4

    add-int v22, v10, v7

    aget v22, p2, v22

    add-int v6, v13, v22

    .line 4729
    .restart local v6    # "j1":I
    add-int v13, v10, v5

    aget v13, p2, v13

    add-int v8, v2, v13

    .line 4730
    .restart local v8    # "k1":I
    add-int v3, p4, v6

    .line 4731
    .restart local v3    # "idx1":I
    add-int v4, p4, v8

    .line 4732
    .restart local v4    # "idx2":I
    aget-wide v16, p3, v3

    .line 4733
    .restart local v16    # "xr":D
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4734
    .restart local v14    # "xi":D
    aget-wide v20, p3, v4

    .line 4735
    .restart local v20    # "yr":D
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4736
    .restart local v18    # "yi":D
    aput-wide v20, p3, v3

    .line 4737
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4738
    aput-wide v16, p3, v4

    .line 4739
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4740
    add-int/2addr v6, v12

    .line 4741
    add-int/2addr v8, v12

    .line 4742
    add-int v3, p4, v6

    .line 4743
    add-int v4, p4, v8

    .line 4744
    aget-wide v16, p3, v3

    .line 4745
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4746
    aget-wide v20, p3, v4

    .line 4747
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4748
    aput-wide v20, p3, v3

    .line 4749
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4750
    aput-wide v16, p3, v4

    .line 4751
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4752
    add-int/2addr v6, v11

    .line 4753
    add-int/lit8 v8, v8, 0x2

    .line 4754
    add-int v3, p4, v6

    .line 4755
    add-int v4, p4, v8

    .line 4756
    aget-wide v16, p3, v3

    .line 4757
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4758
    aget-wide v20, p3, v4

    .line 4759
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4760
    aput-wide v20, p3, v3

    .line 4761
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4762
    aput-wide v16, p3, v4

    .line 4763
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4764
    sub-int/2addr v6, v12

    .line 4765
    sub-int/2addr v8, v12

    .line 4766
    add-int v3, p4, v6

    .line 4767
    add-int v4, p4, v8

    .line 4768
    aget-wide v16, p3, v3

    .line 4769
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4770
    aget-wide v20, p3, v4

    .line 4771
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4772
    aput-wide v20, p3, v3

    .line 4773
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4774
    aput-wide v16, p3, v4

    .line 4775
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4776
    add-int/lit8 v6, v6, 0x2

    .line 4777
    add-int/2addr v8, v11

    .line 4778
    add-int v3, p4, v6

    .line 4779
    add-int v4, p4, v8

    .line 4780
    aget-wide v16, p3, v3

    .line 4781
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4782
    aget-wide v20, p3, v4

    .line 4783
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4784
    aput-wide v20, p3, v3

    .line 4785
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4786
    aput-wide v16, p3, v4

    .line 4787
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4788
    add-int/2addr v6, v12

    .line 4789
    add-int/2addr v8, v12

    .line 4790
    add-int v3, p4, v6

    .line 4791
    add-int v4, p4, v8

    .line 4792
    aget-wide v16, p3, v3

    .line 4793
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4794
    aget-wide v20, p3, v4

    .line 4795
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4796
    aput-wide v20, p3, v3

    .line 4797
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4798
    aput-wide v16, p3, v4

    .line 4799
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4800
    sub-int/2addr v6, v11

    .line 4801
    add-int/lit8 v8, v8, -0x2

    .line 4802
    add-int v3, p4, v6

    .line 4803
    add-int v4, p4, v8

    .line 4804
    aget-wide v16, p3, v3

    .line 4805
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4806
    aget-wide v20, p3, v4

    .line 4807
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4808
    aput-wide v20, p3, v3

    .line 4809
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4810
    aput-wide v16, p3, v4

    .line 4811
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4812
    sub-int/2addr v6, v12

    .line 4813
    sub-int/2addr v8, v12

    .line 4814
    add-int v3, p4, v6

    .line 4815
    add-int v4, p4, v8

    .line 4816
    aget-wide v16, p3, v3

    .line 4817
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4818
    aget-wide v20, p3, v4

    .line 4819
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4820
    aput-wide v20, p3, v3

    .line 4821
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4822
    aput-wide v16, p3, v4

    .line 4823
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4727
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3db

    .line 4825
    .end local v3    # "idx1":I
    .end local v4    # "idx2":I
    .end local v6    # "j1":I
    .end local v8    # "k1":I
    .end local v14    # "xi":D
    .end local v16    # "xr":D
    .end local v18    # "yi":D
    .end local v20    # "yr":D
    :cond_520
    add-int v13, v10, v7

    aget v13, p2, v13

    add-int v8, v2, v13

    .line 4826
    .restart local v8    # "k1":I
    add-int/lit8 v6, v8, 0x2

    .line 4827
    .restart local v6    # "j1":I
    add-int/2addr v8, v11

    .line 4828
    add-int v3, p4, v6

    .line 4829
    .restart local v3    # "idx1":I
    add-int v4, p4, v8

    .line 4830
    .restart local v4    # "idx2":I
    add-int/lit8 v13, v3, -0x1

    add-int/lit8 v22, v3, -0x1

    aget-wide v22, p3, v22

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, p3, v13

    .line 4831
    aget-wide v16, p3, v3

    .line 4832
    .restart local v16    # "xr":D
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4833
    .restart local v14    # "xi":D
    aget-wide v20, p3, v4

    .line 4834
    .restart local v20    # "yr":D
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4835
    .restart local v18    # "yi":D
    aput-wide v20, p3, v3

    .line 4836
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4837
    aput-wide v16, p3, v4

    .line 4838
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4839
    add-int/lit8 v13, v4, 0x3

    add-int/lit8 v22, v4, 0x3

    aget-wide v22, p3, v22

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, p3, v13

    .line 4840
    add-int/2addr v6, v12

    .line 4841
    add-int/2addr v8, v12

    .line 4842
    add-int v3, p4, v6

    .line 4843
    add-int v4, p4, v8

    .line 4844
    add-int/lit8 v13, v3, -0x1

    add-int/lit8 v22, v3, -0x1

    aget-wide v22, p3, v22

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, p3, v13

    .line 4845
    aget-wide v16, p3, v3

    .line 4846
    add-int/lit8 v13, v3, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v14, v0

    .line 4847
    aget-wide v20, p3, v4

    .line 4848
    add-int/lit8 v13, v4, 0x1

    aget-wide v22, p3, v13

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 4849
    aput-wide v20, p3, v3

    .line 4850
    add-int/lit8 v13, v3, 0x1

    aput-wide v18, p3, v13

    .line 4851
    aput-wide v16, p3, v4

    .line 4852
    add-int/lit8 v13, v4, 0x1

    aput-wide v14, p3, v13

    .line 4853
    add-int/lit8 v13, v4, 0x3

    add-int/lit8 v22, v4, 0x3

    aget-wide v22, p3, v22

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, p3, v13

    .line 4725
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3d6

    .line 4856
    .end local v2    # "idx0":I
    .end local v3    # "idx1":I
    .end local v4    # "idx2":I
    .end local v5    # "j":I
    .end local v6    # "j1":I
    .end local v8    # "k1":I
    .end local v14    # "xi":D
    .end local v16    # "xr":D
    .end local v18    # "yi":D
    .end local v20    # "yr":D
    :cond_5ab
    return-void
.end method

.method private bluestein_complex([DII)V
    .registers 32
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "isign"    # I

    .prologue
    .line 1063
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v2, v2, 0x2

    new-array v8, v2, [D

    .line 1064
    .local v8, "ak":[D
    const/16 v26, 0x1

    .line 1065
    .local v26, "nthreads":I
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v27

    .line 1066
    .local v27, "threads":I
    const/4 v2, 0x1

    move/from16 v0, v27

    if-le v0, v2, :cond_10c

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v3

    if-le v2, v3, :cond_10c

    .line 1067
    const/16 v26, 0x2

    .line 1068
    const/4 v2, 0x4

    move/from16 v0, v27

    if-lt v0, v2, :cond_30

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v3

    if-le v2, v3, :cond_30

    .line 1069
    const/16 v26, 0x4

    .line 1071
    :cond_30
    move/from16 v0, v26

    new-array v0, v0, [Ljava/util/concurrent/Future;

    move-object/from16 v17, v0

    .line 1072
    .local v17, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v23, v2, v26

    .line 1073
    .local v23, "k":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_3e
    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_69

    .line 1074
    mul-int v5, v18, v23

    .line 1075
    .local v5, "firstIdx":I
    add-int/lit8 v2, v26, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_66

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    .line 1076
    .local v6, "lastIdx":I
    :goto_50
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;

    move-object/from16 v3, p0

    move/from16 v4, p3

    move/from16 v7, p2

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v17, v18

    .line 1073
    add-int/lit8 v18, v18, 0x1

    goto :goto_3e

    .line 1075
    .end local v6    # "lastIdx":I
    :cond_66
    add-int v6, v5, v23

    .restart local v6    # "lastIdx":I
    goto :goto_50

    .line 1100
    .end local v5    # "firstIdx":I
    .end local v6    # "lastIdx":I
    :cond_69
    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1102
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v10, v2, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object v11, v8

    invoke-direct/range {v9 .. v15}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 1104
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int v23, v2, v26

    .line 1105
    const/16 v18, 0x0

    :goto_8d
    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_b5

    .line 1106
    mul-int v5, v18, v23

    .line 1107
    .restart local v5    # "firstIdx":I
    add-int/lit8 v2, v26, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_b2

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    .line 1108
    .restart local v6    # "lastIdx":I
    :goto_9f
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;

    move-object/from16 v3, p0

    move/from16 v4, p3

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v17, v18

    .line 1105
    add-int/lit8 v18, v18, 0x1

    goto :goto_8d

    .line 1107
    .end local v6    # "lastIdx":I
    :cond_b2
    add-int v6, v5, v23

    .restart local v6    # "lastIdx":I
    goto :goto_9f

    .line 1130
    .end local v5    # "firstIdx":I
    .end local v6    # "lastIdx":I
    :cond_b5
    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1132
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v10, v2, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object v11, v8

    invoke-direct/range {v9 .. v15}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 1134
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v23, v2, v26

    .line 1135
    const/16 v18, 0x0

    :goto_d9
    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_108

    .line 1136
    mul-int v5, v18, v23

    .line 1137
    .restart local v5    # "firstIdx":I
    add-int/lit8 v2, v26, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_105

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    .line 1138
    .restart local v6    # "lastIdx":I
    :goto_eb
    new-instance v9, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;

    move-object/from16 v10, p0

    move/from16 v11, p3

    move v12, v5

    move v13, v6

    move/from16 v14, p2

    move-object/from16 v15, p1

    move-object/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V

    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v17, v18

    .line 1135
    add-int/lit8 v18, v18, 0x1

    goto :goto_d9

    .line 1137
    .end local v6    # "lastIdx":I
    :cond_105
    add-int v6, v5, v23

    .restart local v6    # "lastIdx":I
    goto :goto_eb

    .line 1162
    .end local v5    # "firstIdx":I
    .end local v6    # "lastIdx":I
    :cond_108
    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1225
    .end local v17    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v23    # "k":I
    :cond_10b
    return-void

    .line 1164
    .end local v18    # "i":I
    :cond_10c
    if-lez p3, :cond_14d

    .line 1165
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_110
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_18d

    .line 1166
    mul-int/lit8 v19, v18, 0x2

    .line 1167
    .local v19, "idx1":I
    add-int/lit8 v20, v19, 0x1

    .line 1168
    .local v20, "idx2":I
    add-int v21, p2, v19

    .line 1169
    .local v21, "idx3":I
    add-int v22, p2, v20

    .line 1170
    .local v22, "idx4":I
    aget-wide v2, p1, v21

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v4, v19

    mul-double/2addr v2, v10

    aget-wide v10, p1, v22

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v4, v20

    mul-double/2addr v10, v12

    sub-double/2addr v2, v10

    aput-wide v2, v8, v19

    .line 1171
    aget-wide v2, p1, v21

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v4, v20

    mul-double/2addr v2, v10

    aget-wide v10, p1, v22

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v4, v19

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    aput-wide v2, v8, v20

    .line 1165
    add-int/lit8 v18, v18, 0x1

    goto :goto_110

    .line 1174
    .end local v18    # "i":I
    .end local v19    # "idx1":I
    .end local v20    # "idx2":I
    .end local v21    # "idx3":I
    .end local v22    # "idx4":I
    :cond_14d
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_14f
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_18d

    .line 1175
    mul-int/lit8 v19, v18, 0x2

    .line 1176
    .restart local v19    # "idx1":I
    add-int/lit8 v20, v19, 0x1

    .line 1177
    .restart local v20    # "idx2":I
    add-int v21, p2, v19

    .line 1178
    .restart local v21    # "idx3":I
    add-int v22, p2, v20

    .line 1179
    .restart local v22    # "idx4":I
    aget-wide v2, p1, v21

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v4, v19

    mul-double/2addr v2, v10

    aget-wide v10, p1, v22

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v4, v20

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    aput-wide v2, v8, v19

    .line 1180
    aget-wide v2, p1, v21

    neg-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v4, v20

    mul-double/2addr v2, v10

    aget-wide v10, p1, v22

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v4, v19

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    aput-wide v2, v8, v20

    .line 1174
    add-int/lit8 v18, v18, 0x1

    goto :goto_14f

    .line 1184
    .end local v19    # "idx1":I
    .end local v20    # "idx2":I
    .end local v21    # "idx3":I
    .end local v22    # "idx4":I
    :cond_18d
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v10, v2, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object v11, v8

    invoke-direct/range {v9 .. v15}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 1186
    if-lez p3, :cond_1e5

    .line 1187
    const/16 v18, 0x0

    :goto_1aa
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_221

    .line 1188
    mul-int/lit8 v19, v18, 0x2

    .line 1189
    .restart local v19    # "idx1":I
    add-int/lit8 v20, v19, 0x1

    .line 1190
    .restart local v20    # "idx2":I
    aget-wide v2, v8, v19

    neg-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v4, v20

    mul-double/2addr v2, v10

    aget-wide v10, v8, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v4, v19

    mul-double/2addr v10, v12

    add-double v24, v2, v10

    .line 1191
    .local v24, "im":D
    aget-wide v2, v8, v19

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v4, v19

    mul-double/2addr v2, v10

    aget-wide v10, v8, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v4, v20

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    aput-wide v2, v8, v19

    .line 1192
    aput-wide v24, v8, v20

    .line 1187
    add-int/lit8 v18, v18, 0x1

    goto :goto_1aa

    .line 1195
    .end local v19    # "idx1":I
    .end local v20    # "idx2":I
    .end local v24    # "im":D
    :cond_1e5
    const/16 v18, 0x0

    :goto_1e7
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_221

    .line 1196
    mul-int/lit8 v19, v18, 0x2

    .line 1197
    .restart local v19    # "idx1":I
    add-int/lit8 v20, v19, 0x1

    .line 1198
    .restart local v20    # "idx2":I
    aget-wide v2, v8, v19

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v4, v20

    mul-double/2addr v2, v10

    aget-wide v10, v8, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v4, v19

    mul-double/2addr v10, v12

    add-double v24, v2, v10

    .line 1199
    .restart local v24    # "im":D
    aget-wide v2, v8, v19

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v4, v19

    mul-double/2addr v2, v10

    aget-wide v10, v8, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v4, v20

    mul-double/2addr v10, v12

    sub-double/2addr v2, v10

    aput-wide v2, v8, v19

    .line 1200
    aput-wide v24, v8, v20

    .line 1195
    add-int/lit8 v18, v18, 0x1

    goto :goto_1e7

    .line 1204
    .end local v19    # "idx1":I
    .end local v20    # "idx2":I
    .end local v24    # "im":D
    :cond_221
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v10, v2, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object v11, v8

    invoke-direct/range {v9 .. v15}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 1205
    if-lez p3, :cond_27b

    .line 1206
    const/16 v18, 0x0

    :goto_23e
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_10b

    .line 1207
    mul-int/lit8 v19, v18, 0x2

    .line 1208
    .restart local v19    # "idx1":I
    add-int/lit8 v20, v19, 0x1

    .line 1209
    .restart local v20    # "idx2":I
    add-int v21, p2, v19

    .line 1210
    .restart local v21    # "idx3":I
    add-int v22, p2, v20

    .line 1211
    .restart local v22    # "idx4":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v2, v19

    aget-wide v10, v8, v19

    mul-double/2addr v2, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v4, v20

    aget-wide v12, v8, v20

    mul-double/2addr v10, v12

    sub-double/2addr v2, v10

    aput-wide v2, p1, v21

    .line 1212
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v2, v20

    aget-wide v10, v8, v19

    mul-double/2addr v2, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v4, v19

    aget-wide v12, v8, v20

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    aput-wide v2, p1, v22

    .line 1206
    add-int/lit8 v18, v18, 0x1

    goto :goto_23e

    .line 1215
    .end local v19    # "idx1":I
    .end local v20    # "idx2":I
    .end local v21    # "idx3":I
    .end local v22    # "idx4":I
    :cond_27b
    const/16 v18, 0x0

    :goto_27d
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_10b

    .line 1216
    mul-int/lit8 v19, v18, 0x2

    .line 1217
    .restart local v19    # "idx1":I
    add-int/lit8 v20, v19, 0x1

    .line 1218
    .restart local v20    # "idx2":I
    add-int v21, p2, v19

    .line 1219
    .restart local v21    # "idx3":I
    add-int v22, p2, v20

    .line 1220
    .restart local v22    # "idx4":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v2, v19

    aget-wide v10, v8, v19

    mul-double/2addr v2, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v4, v20

    aget-wide v12, v8, v20

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    aput-wide v2, p1, v21

    .line 1221
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v2, v20

    neg-double v2, v2

    aget-wide v10, v8, v19

    mul-double/2addr v2, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v4, v19

    aget-wide v12, v8, v20

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    aput-wide v2, p1, v22

    .line 1215
    add-int/lit8 v18, v18, 0x1

    goto :goto_27d
.end method

.method private bluestein_real_forward([DI)V
    .registers 28
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .prologue
    .line 1382
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v2, v2, 0x2

    new-array v7, v2, [D

    .line 1383
    .local v7, "ak":[D
    const/16 v23, 0x1

    .line 1384
    .local v23, "nthreads":I
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v24

    .line 1385
    .local v24, "threads":I
    const/4 v2, 0x1

    move/from16 v0, v24

    if-le v0, v2, :cond_158

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v3

    if-le v2, v3, :cond_158

    .line 1386
    const/16 v23, 0x2

    .line 1387
    const/4 v2, 0x4

    move/from16 v0, v24

    if-lt v0, v2, :cond_30

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v3

    if-le v2, v3, :cond_30

    .line 1388
    const/16 v23, 0x4

    .line 1390
    :cond_30
    move/from16 v0, v23

    new-array v15, v0, [Ljava/util/concurrent/Future;

    .line 1391
    .local v15, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v22, v2, v23

    .line 1392
    .local v22, "k":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3c
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_65

    .line 1393
    mul-int v4, v16, v22

    .line 1394
    .local v4, "firstIdx":I
    add-int/lit8 v2, v23, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_62

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    .line 1395
    .local v5, "lastIdx":I
    :goto_4e
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;

    move-object/from16 v3, p0

    move/from16 v6, p2

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[D)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v15, v16

    .line 1392
    add-int/lit8 v16, v16, 0x1

    goto :goto_3c

    .line 1394
    .end local v5    # "lastIdx":I
    :cond_62
    add-int v5, v4, v22

    .restart local v5    # "lastIdx":I
    goto :goto_4e

    .line 1407
    .end local v4    # "firstIdx":I
    .end local v5    # "lastIdx":I
    :cond_65
    invoke-static {v15}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1409
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v9, v2, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object v10, v7

    invoke-direct/range {v8 .. v14}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 1411
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int v22, v2, v23

    .line 1412
    const/16 v16, 0x0

    :goto_89
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_ae

    .line 1413
    mul-int v4, v16, v22

    .line 1414
    .restart local v4    # "firstIdx":I
    add-int/lit8 v2, v23, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_ab

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    .line 1415
    .restart local v5    # "lastIdx":I
    :goto_9b
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v5, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$10;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[D)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v15, v16

    .line 1412
    add-int/lit8 v16, v16, 0x1

    goto :goto_89

    .line 1414
    .end local v5    # "lastIdx":I
    :cond_ab
    add-int v5, v4, v22

    .restart local v5    # "lastIdx":I
    goto :goto_9b

    .line 1427
    .end local v4    # "firstIdx":I
    .end local v5    # "lastIdx":I
    :cond_ae
    invoke-static {v15}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1450
    .end local v15    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v22    # "k":I
    :cond_b1
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v9, v2, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object v10, v7

    invoke-direct/range {v8 .. v14}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 1452
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1d7

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const/4 v6, 0x0

    aget-wide v8, v7, v6

    mul-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v8, 0x1

    aget-wide v8, v6, v8

    const/4 v6, 0x1

    aget-wide v10, v7, v6

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    aput-wide v2, p1, p2

    .line 1454
    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v8, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v10, v7, v3

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v6, v6, 0x1

    aget-wide v10, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v3, v3, 0x1

    aget-wide v12, v7, v3

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, p1, v2

    .line 1455
    const/16 v16, 0x1

    :goto_118
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v16

    if-ge v0, v2, :cond_291

    .line 1456
    mul-int/lit8 v17, v16, 0x2

    .line 1457
    .local v17, "idx1":I
    add-int/lit8 v18, v17, 0x1

    .line 1458
    .local v18, "idx2":I
    add-int v2, p2, v17

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v3, v17

    aget-wide v10, v7, v17

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v3, v18

    aget-wide v12, v7, v18

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, p1, v2

    .line 1459
    add-int v2, p2, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v3, v18

    neg-double v8, v8

    aget-wide v10, v7, v17

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v3, v17

    aget-wide v12, v7, v18

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, p1, v2

    .line 1455
    add-int/lit8 v16, v16, 0x1

    goto :goto_118

    .line 1431
    .end local v16    # "i":I
    .end local v17    # "idx1":I
    .end local v18    # "idx2":I
    :cond_158
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_15a
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_182

    .line 1432
    mul-int/lit8 v17, v16, 0x2

    .line 1433
    .restart local v17    # "idx1":I
    add-int/lit8 v18, v17, 0x1

    .line 1434
    .restart local v18    # "idx2":I
    add-int v19, p2, v16

    .line 1435
    .local v19, "idx3":I
    aget-wide v2, p1, v19

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v6, v17

    mul-double/2addr v2, v8

    aput-wide v2, v7, v17

    .line 1436
    aget-wide v2, p1, v19

    neg-double v2, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v6, v18

    mul-double/2addr v2, v8

    aput-wide v2, v7, v18

    .line 1431
    add-int/lit8 v16, v16, 0x1

    goto :goto_15a

    .line 1439
    .end local v17    # "idx1":I
    .end local v18    # "idx2":I
    .end local v19    # "idx3":I
    :cond_182
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v9, v2, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object v10, v7

    invoke-direct/range {v8 .. v14}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 1441
    const/16 v16, 0x0

    :goto_19d
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_b1

    .line 1442
    mul-int/lit8 v17, v16, 0x2

    .line 1443
    .restart local v17    # "idx1":I
    add-int/lit8 v18, v17, 0x1

    .line 1444
    .restart local v18    # "idx2":I
    aget-wide v2, v7, v17

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v8, v6, v18

    mul-double/2addr v2, v8

    aget-wide v8, v7, v18

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v6, v17

    mul-double/2addr v8, v10

    add-double v20, v2, v8

    .line 1445
    .local v20, "im":D
    aget-wide v2, v7, v17

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v8, v6, v17

    mul-double/2addr v2, v8

    aget-wide v8, v7, v18

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v6, v18

    mul-double/2addr v8, v10

    sub-double/2addr v2, v8

    aput-wide v2, v7, v17

    .line 1446
    aput-wide v20, v7, v18

    .line 1441
    add-int/lit8 v16, v16, 0x1

    goto :goto_19d

    .line 1462
    .end local v17    # "idx1":I
    .end local v18    # "idx2":I
    .end local v20    # "im":D
    :cond_1d7
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const/4 v6, 0x0

    aget-wide v8, v7, v6

    mul-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v8, 0x1

    aget-wide v8, v6, v8

    const/4 v6, 0x1

    aget-wide v10, v7, v6

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    aput-wide v2, p1, p2

    .line 1463
    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v8, v3, v6

    neg-double v8, v8

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v10, v7, v3

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v6, v6, -0x1

    aget-wide v10, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v12, v7, v3

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, p1, v2

    .line 1464
    const/16 v16, 0x1

    :goto_21e
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v16

    if-ge v0, v2, :cond_260

    .line 1465
    mul-int/lit8 v17, v16, 0x2

    .line 1466
    .restart local v17    # "idx1":I
    add-int/lit8 v18, v17, 0x1

    .line 1467
    .restart local v18    # "idx2":I
    add-int v2, p2, v17

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v3, v17

    aget-wide v10, v7, v17

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v3, v18

    aget-wide v12, v7, v18

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, p1, v2

    .line 1468
    add-int v2, p2, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v3, v18

    neg-double v8, v8

    aget-wide v10, v7, v17

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v3, v17

    aget-wide v12, v7, v18

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, p1, v2

    .line 1464
    add-int/lit8 v16, v16, 0x1

    goto :goto_21e

    .line 1470
    .end local v17    # "idx1":I
    .end local v18    # "idx2":I
    :cond_260
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v2, v2, p2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v6, v6, -0x1

    aget-wide v8, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v10, v7, v3

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v10, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v12, v7, v3

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, p1, v2

    .line 1473
    :cond_291
    return-void
.end method

.method private bluestein_real_full([DII)V
    .registers 31
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "isign"    # I

    .prologue
    .line 1228
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v2, v2, 0x2

    new-array v8, v2, [D

    .line 1229
    .local v8, "ak":[D
    const/16 v25, 0x1

    .line 1230
    .local v25, "nthreads":I
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v26

    .line 1231
    .local v26, "threads":I
    const/4 v2, 0x1

    move/from16 v0, v26

    if-le v0, v2, :cond_10c

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v3

    if-le v2, v3, :cond_10c

    .line 1232
    const/16 v25, 0x2

    .line 1233
    const/4 v2, 0x4

    move/from16 v0, v26

    if-lt v0, v2, :cond_30

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v3

    if-le v2, v3, :cond_30

    .line 1234
    const/16 v25, 0x4

    .line 1236
    :cond_30
    move/from16 v0, v25

    new-array v0, v0, [Ljava/util/concurrent/Future;

    move-object/from16 v17, v0

    .line 1237
    .local v17, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v24, v2, v25

    .line 1238
    .local v24, "k":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_3e
    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_69

    .line 1239
    mul-int v5, v18, v24

    .line 1240
    .local v5, "firstIdx":I
    add-int/lit8 v2, v25, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_66

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    .line 1241
    .local v6, "lastIdx":I
    :goto_50
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;

    move-object/from16 v3, p0

    move/from16 v4, p3

    move/from16 v7, p2

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v17, v18

    .line 1238
    add-int/lit8 v18, v18, 0x1

    goto :goto_3e

    .line 1240
    .end local v6    # "lastIdx":I
    :cond_66
    add-int v6, v5, v24

    .restart local v6    # "lastIdx":I
    goto :goto_50

    .line 1263
    .end local v5    # "firstIdx":I
    .end local v6    # "lastIdx":I
    :cond_69
    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1265
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v10, v2, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object v11, v8

    invoke-direct/range {v9 .. v15}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 1267
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int v24, v2, v25

    .line 1268
    const/16 v18, 0x0

    :goto_8d
    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_b5

    .line 1269
    mul-int v5, v18, v24

    .line 1270
    .restart local v5    # "firstIdx":I
    add-int/lit8 v2, v25, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_b2

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    .line 1271
    .restart local v6    # "lastIdx":I
    :goto_9f
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;

    move-object/from16 v3, p0

    move/from16 v4, p3

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v17, v18

    .line 1268
    add-int/lit8 v18, v18, 0x1

    goto :goto_8d

    .line 1270
    .end local v6    # "lastIdx":I
    :cond_b2
    add-int v6, v5, v24

    .restart local v6    # "lastIdx":I
    goto :goto_9f

    .line 1293
    .end local v5    # "firstIdx":I
    .end local v6    # "lastIdx":I
    :cond_b5
    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1295
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v10, v2, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object v11, v8

    invoke-direct/range {v9 .. v15}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 1297
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v24, v2, v25

    .line 1298
    const/16 v18, 0x0

    :goto_d9
    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_108

    .line 1299
    mul-int v5, v18, v24

    .line 1300
    .restart local v5    # "firstIdx":I
    add-int/lit8 v2, v25, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_105

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    .line 1301
    .restart local v6    # "lastIdx":I
    :goto_eb
    new-instance v9, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;

    move-object/from16 v10, p0

    move/from16 v11, p3

    move v12, v5

    move v13, v6

    move-object/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[DI[D)V

    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v17, v18

    .line 1298
    add-int/lit8 v18, v18, 0x1

    goto :goto_d9

    .line 1300
    .end local v6    # "lastIdx":I
    :cond_105
    add-int v6, v5, v24

    .restart local v6    # "lastIdx":I
    goto :goto_eb

    .line 1321
    .end local v5    # "firstIdx":I
    .end local v6    # "lastIdx":I
    :cond_108
    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1379
    .end local v17    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v24    # "k":I
    :cond_10b
    return-void

    .line 1323
    .end local v18    # "i":I
    :cond_10c
    if-lez p3, :cond_137

    .line 1324
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_110
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_161

    .line 1325
    mul-int/lit8 v19, v18, 0x2

    .line 1326
    .local v19, "idx1":I
    add-int/lit8 v20, v19, 0x1

    .line 1327
    .local v20, "idx2":I
    add-int v21, p2, v18

    .line 1328
    .local v21, "idx3":I
    aget-wide v2, p1, v21

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v4, v19

    mul-double/2addr v2, v10

    aput-wide v2, v8, v19

    .line 1329
    aget-wide v2, p1, v21

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v4, v20

    mul-double/2addr v2, v10

    aput-wide v2, v8, v20

    .line 1324
    add-int/lit8 v18, v18, 0x1

    goto :goto_110

    .line 1332
    .end local v18    # "i":I
    .end local v19    # "idx1":I
    .end local v20    # "idx2":I
    .end local v21    # "idx3":I
    :cond_137
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_139
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_161

    .line 1333
    mul-int/lit8 v19, v18, 0x2

    .line 1334
    .restart local v19    # "idx1":I
    add-int/lit8 v20, v19, 0x1

    .line 1335
    .restart local v20    # "idx2":I
    add-int v21, p2, v18

    .line 1336
    .restart local v21    # "idx3":I
    aget-wide v2, p1, v21

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v4, v19

    mul-double/2addr v2, v10

    aput-wide v2, v8, v19

    .line 1337
    aget-wide v2, p1, v21

    neg-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v4, v20

    mul-double/2addr v2, v10

    aput-wide v2, v8, v20

    .line 1332
    add-int/lit8 v18, v18, 0x1

    goto :goto_139

    .line 1341
    .end local v19    # "idx1":I
    .end local v20    # "idx2":I
    .end local v21    # "idx3":I
    :cond_161
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v10, v2, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object v11, v8

    invoke-direct/range {v9 .. v15}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 1343
    if-lez p3, :cond_1b9

    .line 1344
    const/16 v18, 0x0

    :goto_17e
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_1f5

    .line 1345
    mul-int/lit8 v19, v18, 0x2

    .line 1346
    .restart local v19    # "idx1":I
    add-int/lit8 v20, v19, 0x1

    .line 1347
    .restart local v20    # "idx2":I
    aget-wide v2, v8, v19

    neg-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v4, v20

    mul-double/2addr v2, v10

    aget-wide v10, v8, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v4, v19

    mul-double/2addr v10, v12

    add-double v22, v2, v10

    .line 1348
    .local v22, "im":D
    aget-wide v2, v8, v19

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v4, v19

    mul-double/2addr v2, v10

    aget-wide v10, v8, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v4, v20

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    aput-wide v2, v8, v19

    .line 1349
    aput-wide v22, v8, v20

    .line 1344
    add-int/lit8 v18, v18, 0x1

    goto :goto_17e

    .line 1352
    .end local v19    # "idx1":I
    .end local v20    # "idx2":I
    .end local v22    # "im":D
    :cond_1b9
    const/16 v18, 0x0

    :goto_1bb
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_1f5

    .line 1353
    mul-int/lit8 v19, v18, 0x2

    .line 1354
    .restart local v19    # "idx1":I
    add-int/lit8 v20, v19, 0x1

    .line 1355
    .restart local v20    # "idx2":I
    aget-wide v2, v8, v19

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v4, v20

    mul-double/2addr v2, v10

    aget-wide v10, v8, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v4, v19

    mul-double/2addr v10, v12

    add-double v22, v2, v10

    .line 1356
    .restart local v22    # "im":D
    aget-wide v2, v8, v19

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v4, v19

    mul-double/2addr v2, v10

    aget-wide v10, v8, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v4, v20

    mul-double/2addr v10, v12

    sub-double/2addr v2, v10

    aput-wide v2, v8, v19

    .line 1357
    aput-wide v22, v8, v20

    .line 1352
    add-int/lit8 v18, v18, 0x1

    goto :goto_1bb

    .line 1361
    .end local v19    # "idx1":I
    .end local v20    # "idx2":I
    .end local v22    # "im":D
    :cond_1f5
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v10, v2, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object v11, v8

    invoke-direct/range {v9 .. v15}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 1363
    if-lez p3, :cond_24f

    .line 1364
    const/16 v18, 0x0

    :goto_212
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_10b

    .line 1365
    mul-int/lit8 v19, v18, 0x2

    .line 1366
    .restart local v19    # "idx1":I
    add-int/lit8 v20, v19, 0x1

    .line 1367
    .restart local v20    # "idx2":I
    add-int v2, p2, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v3, v19

    aget-wide v12, v8, v19

    mul-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v3, v20

    aget-wide v14, v8, v20

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    aput-wide v10, p1, v2

    .line 1368
    add-int v2, p2, v20

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v3, v20

    aget-wide v12, v8, v19

    mul-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v3, v19

    aget-wide v14, v8, v20

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    aput-wide v10, p1, v2

    .line 1364
    add-int/lit8 v18, v18, 0x1

    goto :goto_212

    .line 1371
    .end local v19    # "idx1":I
    .end local v20    # "idx2":I
    :cond_24f
    const/16 v18, 0x0

    :goto_251
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_10b

    .line 1372
    mul-int/lit8 v19, v18, 0x2

    .line 1373
    .restart local v19    # "idx1":I
    add-int/lit8 v20, v19, 0x1

    .line 1374
    .restart local v20    # "idx2":I
    add-int v2, p2, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v3, v19

    aget-wide v12, v8, v19

    mul-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v3, v20

    aget-wide v14, v8, v20

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    aput-wide v10, p1, v2

    .line 1375
    add-int v2, p2, v20

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v3, v20

    neg-double v10, v10

    aget-wide v12, v8, v19

    mul-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v3, v19

    aget-wide v14, v8, v20

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    aput-wide v10, p1, v2

    .line 1371
    add-int/lit8 v18, v18, 0x1

    goto :goto_251
.end method

.method private bluestein_real_inverse([DI)V
    .registers 30
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .prologue
    .line 1476
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v2, v2, 0x2

    new-array v4, v2, [D

    .line 1477
    .local v4, "ak":[D
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_e6

    .line 1478
    aget-wide v2, p1, p2

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v6, 0x0

    aget-wide v10, v5, v6

    mul-double/2addr v2, v10

    const/4 v5, 0x0

    aput-wide v2, v4, v5

    .line 1479
    aget-wide v2, p1, p2

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v6, 0x1

    aget-wide v10, v5, v6

    mul-double/2addr v2, v10

    const/4 v5, 0x1

    aput-wide v2, v4, v5

    .line 1481
    const/16 v17, 0x1

    .local v17, "i":I
    :goto_2c
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v17

    if-ge v0, v2, :cond_6b

    .line 1482
    mul-int/lit8 v18, v17, 0x2

    .line 1483
    .local v18, "idx1":I
    add-int/lit8 v19, v18, 0x1

    .line 1484
    .local v19, "idx2":I
    add-int v20, p2, v18

    .line 1485
    .local v20, "idx3":I
    add-int v21, p2, v19

    .line 1486
    .local v21, "idx4":I
    aget-wide v2, p1, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v5, v18

    mul-double/2addr v2, v10

    aget-wide v10, p1, v21

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v5, v19

    mul-double/2addr v10, v12

    sub-double/2addr v2, v10

    aput-wide v2, v4, v18

    .line 1487
    aget-wide v2, p1, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v5, v19

    mul-double/2addr v2, v10

    aget-wide v10, p1, v21

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v5, v18

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    aput-wide v2, v4, v19

    .line 1481
    add-int/lit8 v17, v17, 0x1

    goto :goto_2c

    .line 1490
    .end local v18    # "idx1":I
    .end local v19    # "idx2":I
    .end local v20    # "idx3":I
    .end local v21    # "idx4":I
    :cond_6b
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v3, p2, 0x1

    aget-wide v10, p1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v12, v3, v5

    mul-double/2addr v10, v12

    aput-wide v10, v4, v2

    .line 1491
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p2, 0x1

    aget-wide v10, p1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v5, v5, 0x1

    aget-wide v12, v3, v5

    mul-double/2addr v10, v12

    aput-wide v10, v4, v2

    .line 1493
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v17, v2, 0x1

    :goto_a1
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_250

    .line 1494
    mul-int/lit8 v18, v17, 0x2

    .line 1495
    .restart local v18    # "idx1":I
    add-int/lit8 v19, v18, 0x1

    .line 1496
    .restart local v19    # "idx2":I
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v2, v2, 0x2

    add-int v2, v2, p2

    sub-int v20, v2, v18

    .line 1497
    .restart local v20    # "idx3":I
    add-int/lit8 v21, v20, 0x1

    .line 1498
    .restart local v21    # "idx4":I
    aget-wide v2, p1, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v5, v18

    mul-double/2addr v2, v10

    aget-wide v10, p1, v21

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v5, v19

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    aput-wide v2, v4, v18

    .line 1499
    aget-wide v2, p1, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v5, v19

    mul-double/2addr v2, v10

    aget-wide v10, p1, v21

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v5, v18

    mul-double/2addr v10, v12

    sub-double/2addr v2, v10

    aput-wide v2, v4, v19

    .line 1493
    add-int/lit8 v17, v17, 0x1

    goto :goto_a1

    .line 1503
    .end local v17    # "i":I
    .end local v18    # "idx1":I
    .end local v19    # "idx2":I
    .end local v20    # "idx3":I
    .end local v21    # "idx4":I
    :cond_e6
    aget-wide v2, p1, p2

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v6, 0x0

    aget-wide v10, v5, v6

    mul-double/2addr v2, v10

    const/4 v5, 0x0

    aput-wide v2, v4, v5

    .line 1504
    aget-wide v2, p1, p2

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v6, 0x1

    aget-wide v10, v5, v6

    mul-double/2addr v2, v10

    const/4 v5, 0x1

    aput-wide v2, v4, v5

    .line 1506
    const/16 v17, 0x1

    .restart local v17    # "i":I
    :goto_102
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v17

    if-ge v0, v2, :cond_143

    .line 1507
    mul-int/lit8 v18, v17, 0x2

    .line 1508
    .restart local v18    # "idx1":I
    add-int/lit8 v19, v18, 0x1

    .line 1509
    .restart local v19    # "idx2":I
    add-int v20, p2, v18

    .line 1510
    .restart local v20    # "idx3":I
    add-int v21, p2, v19

    .line 1511
    .restart local v21    # "idx4":I
    aget-wide v2, p1, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v5, v18

    mul-double/2addr v2, v10

    aget-wide v10, p1, v21

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v5, v19

    mul-double/2addr v10, v12

    sub-double/2addr v2, v10

    aput-wide v2, v4, v18

    .line 1512
    aget-wide v2, p1, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v5, v19

    mul-double/2addr v2, v10

    aget-wide v10, p1, v21

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v5, v18

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    aput-wide v2, v4, v19

    .line 1506
    add-int/lit8 v17, v17, 0x1

    goto :goto_102

    .line 1515
    .end local v18    # "idx1":I
    .end local v19    # "idx2":I
    .end local v20    # "idx3":I
    .end local v21    # "idx4":I
    :cond_143
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v3, v3, p2

    add-int/lit8 v3, v3, -0x1

    aget-wide v10, p1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v5, v5, -0x1

    aget-wide v12, v3, v5

    mul-double/2addr v10, v12

    add-int/lit8 v3, p2, 0x1

    aget-wide v12, p1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v14, v3, v5

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    aput-wide v10, v4, v2

    .line 1516
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v3, v3, p2

    add-int/lit8 v3, v3, -0x1

    aget-wide v10, p1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v12, v3, v5

    mul-double/2addr v10, v12

    add-int/lit8 v3, p2, 0x1

    aget-wide v12, p1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v5, v5, -0x1

    aget-wide v14, v3, v5

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v4, v2

    .line 1518
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v3, v3, p2

    add-int/lit8 v3, v3, -0x1

    aget-wide v10, p1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v5, v5, 0x1

    aget-wide v12, v3, v5

    mul-double/2addr v10, v12

    add-int/lit8 v3, p2, 0x1

    aget-wide v12, p1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v5, v5, 0x2

    aget-wide v14, v3, v5

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v4, v2

    .line 1519
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v3, v3, p2

    add-int/lit8 v3, v3, -0x1

    aget-wide v10, p1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v5, v5, 0x2

    aget-wide v12, v3, v5

    mul-double/2addr v10, v12

    add-int/lit8 v3, p2, 0x1

    aget-wide v12, p1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v5, v5, 0x1

    aget-wide v14, v3, v5

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    aput-wide v10, v4, v2

    .line 1521
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v17, v2, 0x2

    :goto_20b
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_250

    .line 1522
    mul-int/lit8 v18, v17, 0x2

    .line 1523
    .restart local v18    # "idx1":I
    add-int/lit8 v19, v18, 0x1

    .line 1524
    .restart local v19    # "idx2":I
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v2, v2, 0x2

    add-int v2, v2, p2

    sub-int v20, v2, v18

    .line 1525
    .restart local v20    # "idx3":I
    add-int/lit8 v21, v20, 0x1

    .line 1526
    .restart local v21    # "idx4":I
    aget-wide v2, p1, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v5, v18

    mul-double/2addr v2, v10

    aget-wide v10, p1, v21

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v5, v19

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    aput-wide v2, v4, v18

    .line 1527
    aget-wide v2, p1, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v5, v19

    mul-double/2addr v2, v10

    aget-wide v10, p1, v21

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v5, v18

    mul-double/2addr v10, v12

    sub-double/2addr v2, v10

    aput-wide v2, v4, v19

    .line 1521
    add-int/lit8 v17, v17, 0x1

    goto :goto_20b

    .line 1531
    .end local v18    # "idx1":I
    .end local v19    # "idx2":I
    .end local v20    # "idx3":I
    .end local v21    # "idx4":I
    :cond_250
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v3, v2, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 1533
    const/16 v25, 0x1

    .line 1534
    .local v25, "nthreads":I
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v26

    .line 1535
    .local v26, "threads":I
    const/4 v2, 0x1

    move/from16 v0, v26

    if-le v0, v2, :cond_314

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v3

    if-le v2, v3, :cond_314

    .line 1536
    const/16 v25, 0x2

    .line 1537
    const/4 v2, 0x4

    move/from16 v0, v26

    if-lt v0, v2, :cond_290

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v3

    if-le v2, v3, :cond_290

    .line 1538
    const/16 v25, 0x4

    .line 1540
    :cond_290
    move/from16 v0, v25

    new-array v0, v0, [Ljava/util/concurrent/Future;

    move-object/from16 v16, v0

    .line 1541
    .local v16, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int v24, v2, v25

    .line 1542
    .local v24, "k":I
    const/16 v17, 0x0

    :goto_29e
    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_2c3

    .line 1543
    mul-int v7, v17, v24

    .line 1544
    .local v7, "firstIdx":I
    add-int/lit8 v2, v25, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_2c0

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    .line 1545
    .local v8, "lastIdx":I
    :goto_2b0
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$11;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7, v8, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$11;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[D)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v16, v17

    .line 1542
    add-int/lit8 v17, v17, 0x1

    goto :goto_29e

    .line 1544
    .end local v8    # "lastIdx":I
    :cond_2c0
    add-int v8, v7, v24

    .restart local v8    # "lastIdx":I
    goto :goto_2b0

    .line 1557
    .end local v7    # "firstIdx":I
    .end local v8    # "lastIdx":I
    :cond_2c3
    invoke-static/range {v16 .. v16}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1559
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v3, v2, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 1561
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v24, v2, v25

    .line 1562
    const/16 v17, 0x0

    :goto_2e6
    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_310

    .line 1563
    mul-int v7, v17, v24

    .line 1564
    .restart local v7    # "firstIdx":I
    add-int/lit8 v2, v25, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_30d

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    .line 1565
    .restart local v8    # "lastIdx":I
    :goto_2f8
    new-instance v5, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;

    move-object/from16 v6, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DI[D)V

    invoke-static {v5}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v16, v17

    .line 1562
    add-int/lit8 v17, v17, 0x1

    goto :goto_2e6

    .line 1564
    .end local v8    # "lastIdx":I
    :cond_30d
    add-int v8, v7, v24

    .restart local v8    # "lastIdx":I
    goto :goto_2f8

    .line 1575
    .end local v7    # "firstIdx":I
    .end local v8    # "lastIdx":I
    :cond_310
    invoke-static/range {v16 .. v16}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1595
    .end local v16    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v24    # "k":I
    :cond_313
    return-void

    .line 1579
    :cond_314
    const/16 v17, 0x0

    :goto_316
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_351

    .line 1580
    mul-int/lit8 v18, v17, 0x2

    .line 1581
    .restart local v18    # "idx1":I
    add-int/lit8 v19, v18, 0x1

    .line 1582
    .restart local v19    # "idx2":I
    aget-wide v2, v4, v18

    neg-double v2, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v5, v19

    mul-double/2addr v2, v10

    aget-wide v10, v4, v19

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v5, v18

    mul-double/2addr v10, v12

    add-double v22, v2, v10

    .line 1583
    .local v22, "im":D
    aget-wide v2, v4, v18

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v5, v18

    mul-double/2addr v2, v10

    aget-wide v10, v4, v19

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v5, v19

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    aput-wide v2, v4, v18

    .line 1584
    aput-wide v22, v4, v19

    .line 1579
    add-int/lit8 v17, v17, 0x1

    goto :goto_316

    .line 1587
    .end local v18    # "idx1":I
    .end local v19    # "idx2":I
    .end local v22    # "im":D
    :cond_351
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v10, v2, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object v11, v4

    invoke-direct/range {v9 .. v15}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 1589
    const/16 v17, 0x0

    :goto_36c
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_313

    .line 1590
    mul-int/lit8 v18, v17, 0x2

    .line 1591
    .restart local v18    # "idx1":I
    add-int/lit8 v19, v18, 0x1

    .line 1592
    .restart local v19    # "idx2":I
    add-int v2, p2, v17

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v3, v18

    aget-wide v12, v4, v18

    mul-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v3, v19

    aget-wide v14, v4, v19

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    aput-wide v10, p1, v2

    .line 1589
    add-int/lit8 v17, v17, 0x1

    goto :goto_36c
.end method

.method private bluestein_real_inverse2([DI)V
    .registers 28
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .prologue
    .line 1598
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v2, v2, 0x2

    new-array v7, v2, [D

    .line 1599
    .local v7, "ak":[D
    const/16 v23, 0x1

    .line 1600
    .local v23, "nthreads":I
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v24

    .line 1601
    .local v24, "threads":I
    const/4 v2, 0x1

    move/from16 v0, v24

    if-le v0, v2, :cond_157

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v3

    if-le v2, v3, :cond_157

    .line 1602
    const/16 v23, 0x2

    .line 1603
    const/4 v2, 0x4

    move/from16 v0, v24

    if-lt v0, v2, :cond_30

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v3

    if-le v2, v3, :cond_30

    .line 1604
    const/16 v23, 0x4

    .line 1606
    :cond_30
    move/from16 v0, v23

    new-array v15, v0, [Ljava/util/concurrent/Future;

    .line 1607
    .local v15, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v22, v2, v23

    .line 1608
    .local v22, "k":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3c
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_65

    .line 1609
    mul-int v4, v16, v22

    .line 1610
    .local v4, "firstIdx":I
    add-int/lit8 v2, v23, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_62

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    .line 1611
    .local v5, "lastIdx":I
    :goto_4e
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;

    move-object/from16 v3, p0

    move/from16 v6, p2

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[D)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v15, v16

    .line 1608
    add-int/lit8 v16, v16, 0x1

    goto :goto_3c

    .line 1610
    .end local v5    # "lastIdx":I
    :cond_62
    add-int v5, v4, v22

    .restart local v5    # "lastIdx":I
    goto :goto_4e

    .line 1623
    .end local v4    # "firstIdx":I
    .end local v5    # "lastIdx":I
    :cond_65
    invoke-static {v15}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1625
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v9, v2, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object v10, v7

    invoke-direct/range {v8 .. v14}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 1627
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int v22, v2, v23

    .line 1628
    const/16 v16, 0x0

    :goto_89
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_ae

    .line 1629
    mul-int v4, v16, v22

    .line 1630
    .restart local v4    # "firstIdx":I
    add-int/lit8 v2, v23, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_ab

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    .line 1631
    .restart local v5    # "lastIdx":I
    :goto_9b
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$14;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v5, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$14;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[D)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v15, v16

    .line 1628
    add-int/lit8 v16, v16, 0x1

    goto :goto_89

    .line 1630
    .end local v5    # "lastIdx":I
    :cond_ab
    add-int v5, v4, v22

    .restart local v5    # "lastIdx":I
    goto :goto_9b

    .line 1643
    .end local v4    # "firstIdx":I
    .end local v5    # "lastIdx":I
    :cond_ae
    invoke-static {v15}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1666
    .end local v15    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v22    # "k":I
    :cond_b1
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v9, v2, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object v10, v7

    invoke-direct/range {v8 .. v14}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 1668
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1d6

    .line 1669
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const/4 v6, 0x0

    aget-wide v8, v7, v6

    mul-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v8, 0x1

    aget-wide v8, v6, v8

    const/4 v6, 0x1

    aget-wide v10, v7, v6

    mul-double/2addr v8, v10

    sub-double/2addr v2, v8

    aput-wide v2, p1, p2

    .line 1670
    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v8, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v10, v7, v3

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v6, v6, 0x1

    aget-wide v10, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v3, v3, 0x1

    aget-wide v12, v7, v3

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, p1, v2

    .line 1671
    const/16 v16, 0x1

    :goto_118
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v16

    if-ge v0, v2, :cond_28e

    .line 1672
    mul-int/lit8 v17, v16, 0x2

    .line 1673
    .local v17, "idx1":I
    add-int/lit8 v18, v17, 0x1

    .line 1674
    .local v18, "idx2":I
    add-int v2, p2, v17

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v3, v17

    aget-wide v10, v7, v17

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v3, v18

    aget-wide v12, v7, v18

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, p1, v2

    .line 1675
    add-int v2, p2, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v3, v18

    aget-wide v10, v7, v17

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v3, v17

    aget-wide v12, v7, v18

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, p1, v2

    .line 1671
    add-int/lit8 v16, v16, 0x1

    goto :goto_118

    .line 1647
    .end local v16    # "i":I
    .end local v17    # "idx1":I
    .end local v18    # "idx2":I
    :cond_157
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_159
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_180

    .line 1648
    mul-int/lit8 v17, v16, 0x2

    .line 1649
    .restart local v17    # "idx1":I
    add-int/lit8 v18, v17, 0x1

    .line 1650
    .restart local v18    # "idx2":I
    add-int v19, p2, v16

    .line 1651
    .local v19, "idx3":I
    aget-wide v2, p1, v19

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v6, v17

    mul-double/2addr v2, v8

    aput-wide v2, v7, v17

    .line 1652
    aget-wide v2, p1, v19

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v6, v18

    mul-double/2addr v2, v8

    aput-wide v2, v7, v18

    .line 1647
    add-int/lit8 v16, v16, 0x1

    goto :goto_159

    .line 1655
    .end local v17    # "idx1":I
    .end local v18    # "idx2":I
    .end local v19    # "idx3":I
    :cond_180
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v9, v2, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object v10, v7

    invoke-direct/range {v8 .. v14}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 1657
    const/16 v16, 0x0

    :goto_19b
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_b1

    .line 1658
    mul-int/lit8 v17, v16, 0x2

    .line 1659
    .restart local v17    # "idx1":I
    add-int/lit8 v18, v17, 0x1

    .line 1660
    .restart local v18    # "idx2":I
    aget-wide v2, v7, v17

    neg-double v2, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v8, v6, v18

    mul-double/2addr v2, v8

    aget-wide v8, v7, v18

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v6, v17

    mul-double/2addr v8, v10

    add-double v20, v2, v8

    .line 1661
    .local v20, "im":D
    aget-wide v2, v7, v17

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v8, v6, v17

    mul-double/2addr v2, v8

    aget-wide v8, v7, v18

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v6, v18

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    aput-wide v2, v7, v17

    .line 1662
    aput-wide v20, v7, v18

    .line 1657
    add-int/lit8 v16, v16, 0x1

    goto :goto_19b

    .line 1678
    .end local v17    # "idx1":I
    .end local v18    # "idx2":I
    .end local v20    # "im":D
    :cond_1d6
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const/4 v6, 0x0

    aget-wide v8, v7, v6

    mul-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v8, 0x1

    aget-wide v8, v6, v8

    const/4 v6, 0x1

    aget-wide v10, v7, v6

    mul-double/2addr v8, v10

    sub-double/2addr v2, v8

    aput-wide v2, p1, p2

    .line 1679
    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v8, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v10, v7, v3

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v6, v6, -0x1

    aget-wide v10, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v12, v7, v3

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, p1, v2

    .line 1680
    const/16 v16, 0x1

    :goto_21c
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v16

    if-ge v0, v2, :cond_25d

    .line 1681
    mul-int/lit8 v17, v16, 0x2

    .line 1682
    .restart local v17    # "idx1":I
    add-int/lit8 v18, v17, 0x1

    .line 1683
    .restart local v18    # "idx2":I
    add-int v2, p2, v17

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v3, v17

    aget-wide v10, v7, v17

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v3, v18

    aget-wide v12, v7, v18

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, p1, v2

    .line 1684
    add-int v2, p2, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v3, v18

    aget-wide v10, v7, v17

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v3, v17

    aget-wide v12, v7, v18

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, p1, v2

    .line 1680
    add-int/lit8 v16, v16, 0x1

    goto :goto_21c

    .line 1686
    .end local v17    # "idx1":I
    .end local v18    # "idx2":I
    :cond_25d
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v2, v2, p2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v6, v6, -0x1

    aget-wide v8, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v10, v7, v3

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v10, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v12, v7, v3

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, p1, v2

    .line 1688
    :cond_28e
    return-void
.end method

.method private bluesteini()V
    .registers 19

    .prologue
    .line 937
    const/4 v12, 0x0

    .line 939
    .local v12, "k":I
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double v14, v4, v2

    .line 940
    .local v14, "pi_n":D
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    aput-wide v4, v2, v3

    .line 941
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    aput-wide v4, v2, v3

    .line 942
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_20
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v9, v2, :cond_5a

    .line 943
    mul-int/lit8 v2, v9, 0x2

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v12, v2

    .line 944
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v2, v2, 0x2

    if-lt v12, v2, :cond_3a

    .line 945
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v12, v2

    .line 946
    :cond_3a
    int-to-double v2, v12

    mul-double v10, v14, v2

    .line 947
    .local v10, "arg":D
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    mul-int/lit8 v3, v9, 0x2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    mul-int/lit8 v3, v9, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 942
    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    .line 950
    .end local v10    # "arg":D
    :cond_5a
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v16, v4, v2

    .line 951
    .local v16, "scale":D
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    mul-double v4, v4, v16

    const/4 v3, 0x0

    aput-wide v4, v2, v3

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v4, 0x1

    aget-wide v4, v3, v4

    mul-double v4, v4, v16

    const/4 v3, 0x1

    aput-wide v4, v2, v3

    .line 953
    const/4 v9, 0x2

    :goto_84
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v9, v2, :cond_d9

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v3, v9

    mul-double v4, v4, v16

    aput-wide v4, v2, v9

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    add-int/lit8 v3, v9, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    add-int/lit8 v5, v9, 0x1

    aget-wide v4, v4, v5

    mul-double v4, v4, v16

    aput-wide v4, v2, v3

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v4, v4, v9

    aput-wide v4, v2, v3

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v9

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    add-int/lit8 v5, v9, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    .line 953
    add-int/lit8 v9, v9, 0x2

    goto :goto_84

    .line 959
    :cond_d9
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v3, v2, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 960
    return-void
.end method

.method private cftb040([DI)V
    .registers 23
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .prologue
    .line 6405
    aget-wide v16, p1, p2

    add-int/lit8 v18, p2, 0x4

    aget-wide v18, p1, v18

    add-double v2, v16, v18

    .line 6406
    .local v2, "x0r":D
    add-int/lit8 v16, p2, 0x1

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0x5

    aget-wide v18, p1, v18

    add-double v0, v16, v18

    .line 6407
    .local v0, "x0i":D
    aget-wide v16, p1, p2

    add-int/lit8 v18, p2, 0x4

    aget-wide v18, p1, v18

    sub-double v6, v16, v18

    .line 6408
    .local v6, "x1r":D
    add-int/lit8 v16, p2, 0x1

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0x5

    aget-wide v18, p1, v18

    sub-double v4, v16, v18

    .line 6409
    .local v4, "x1i":D
    add-int/lit8 v16, p2, 0x2

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0x6

    aget-wide v18, p1, v18

    add-double v10, v16, v18

    .line 6410
    .local v10, "x2r":D
    add-int/lit8 v16, p2, 0x3

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0x7

    aget-wide v18, p1, v18

    add-double v8, v16, v18

    .line 6411
    .local v8, "x2i":D
    add-int/lit8 v16, p2, 0x2

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0x6

    aget-wide v18, p1, v18

    sub-double v14, v16, v18

    .line 6412
    .local v14, "x3r":D
    add-int/lit8 v16, p2, 0x3

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0x7

    aget-wide v18, p1, v18

    sub-double v12, v16, v18

    .line 6413
    .local v12, "x3i":D
    add-double v16, v2, v10

    aput-wide v16, p1, p2

    .line 6414
    add-int/lit8 v16, p2, 0x1

    add-double v18, v0, v8

    aput-wide v18, p1, v16

    .line 6415
    add-int/lit8 v16, p2, 0x2

    add-double v18, v6, v12

    aput-wide v18, p1, v16

    .line 6416
    add-int/lit8 v16, p2, 0x3

    sub-double v18, v4, v14

    aput-wide v18, p1, v16

    .line 6417
    add-int/lit8 v16, p2, 0x4

    sub-double v18, v2, v10

    aput-wide v18, p1, v16

    .line 6418
    add-int/lit8 v16, p2, 0x5

    sub-double v18, v0, v8

    aput-wide v18, p1, v16

    .line 6419
    add-int/lit8 v16, p2, 0x6

    sub-double v18, v6, v12

    aput-wide v18, p1, v16

    .line 6420
    add-int/lit8 v16, p2, 0x7

    add-double v18, v4, v14

    aput-wide v18, p1, v16

    .line 6421
    return-void
.end method

.method private cftb1st(I[DI[DI)V
    .registers 82
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "w"    # [D
    .param p5, "startw"    # I

    .prologue
    .line 5253
    shr-int/lit8 v19, p1, 0x3

    .line 5254
    .local v19, "mh":I
    mul-int/lit8 v18, v19, 0x2

    .line 5255
    .local v18, "m":I
    move/from16 v14, v18

    .line 5256
    .local v14, "j1":I
    add-int v15, v18, v18

    .line 5257
    .local v15, "j2":I
    add-int v16, v15, v18

    .line 5258
    .local v16, "j3":I
    add-int v7, p3, v18

    .line 5259
    .local v7, "idx1":I
    add-int v8, p3, v15

    .line 5260
    .local v8, "idx2":I
    add-int v9, p3, v16

    .line 5262
    .local v9, "idx3":I
    aget-wide v70, p2, p3

    aget-wide v72, p2, v8

    add-double v40, v70, v72

    .line 5263
    .local v40, "x0r":D
    add-int/lit8 v70, p3, 0x1

    aget-wide v70, p2, v70

    move-wide/from16 v0, v70

    neg-double v0, v0

    move-wide/from16 v70, v0

    add-int/lit8 v72, v8, 0x1

    aget-wide v72, p2, v72

    sub-double v38, v70, v72

    .line 5264
    .local v38, "x0i":D
    aget-wide v70, p2, p3

    aget-wide v72, p2, v8

    sub-double v44, v70, v72

    .line 5265
    .local v44, "x1r":D
    add-int/lit8 v70, p3, 0x1

    aget-wide v70, p2, v70

    move-wide/from16 v0, v70

    neg-double v0, v0

    move-wide/from16 v70, v0

    add-int/lit8 v72, v8, 0x1

    aget-wide v72, p2, v72

    add-double v42, v70, v72

    .line 5266
    .local v42, "x1i":D
    aget-wide v70, p2, v7

    aget-wide v72, p2, v9

    add-double v48, v70, v72

    .line 5267
    .local v48, "x2r":D
    add-int/lit8 v70, v7, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x1

    aget-wide v72, p2, v72

    add-double v46, v70, v72

    .line 5268
    .local v46, "x2i":D
    aget-wide v70, p2, v7

    aget-wide v72, p2, v9

    sub-double v52, v70, v72

    .line 5269
    .local v52, "x3r":D
    add-int/lit8 v70, v7, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x1

    aget-wide v72, p2, v72

    sub-double v50, v70, v72

    .line 5270
    .local v50, "x3i":D
    add-double v70, v40, v48

    aput-wide v70, p2, p3

    .line 5271
    add-int/lit8 v70, p3, 0x1

    sub-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5272
    sub-double v70, v40, v48

    aput-wide v70, p2, v7

    .line 5273
    add-int/lit8 v70, v7, 0x1

    add-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5274
    add-double v70, v44, v50

    aput-wide v70, p2, v8

    .line 5275
    add-int/lit8 v70, v8, 0x1

    add-double v72, v42, v52

    aput-wide v72, p2, v70

    .line 5276
    sub-double v70, v44, v50

    aput-wide v70, p2, v9

    .line 5277
    add-int/lit8 v70, v9, 0x1

    sub-double v72, v42, v52

    aput-wide v72, p2, v70

    .line 5278
    add-int/lit8 v70, p5, 0x1

    aget-wide v36, p4, v70

    .line 5279
    .local v36, "wn4r":D
    add-int/lit8 v70, p5, 0x2

    aget-wide v2, p4, v70

    .line 5280
    .local v2, "csc1":D
    add-int/lit8 v70, p5, 0x3

    aget-wide v4, p4, v70

    .line 5281
    .local v4, "csc3":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    .line 5282
    .local v22, "wd1r":D
    const-wide/16 v20, 0x0

    .line 5283
    .local v20, "wd1i":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    .line 5284
    .local v26, "wd3r":D
    const-wide/16 v24, 0x0

    .line 5285
    .local v24, "wd3i":D
    const/16 v17, 0x0

    .line 5286
    .local v17, "k":I
    const/4 v12, 0x2

    .local v12, "j":I
    :goto_99
    add-int/lit8 v70, v19, -0x2

    move/from16 v0, v70

    if-ge v12, v0, :cond_34b

    .line 5287
    add-int/lit8 v17, v17, 0x4

    .line 5288
    add-int v10, p5, v17

    .line 5289
    .local v10, "idx4":I
    aget-wide v70, p4, v10

    add-double v70, v70, v22

    mul-double v30, v2, v70

    .line 5290
    .local v30, "wk1r":D
    add-int/lit8 v70, v10, 0x1

    aget-wide v70, p4, v70

    add-double v70, v70, v20

    mul-double v28, v2, v70

    .line 5291
    .local v28, "wk1i":D
    add-int/lit8 v70, v10, 0x2

    aget-wide v70, p4, v70

    add-double v70, v70, v26

    mul-double v34, v4, v70

    .line 5292
    .local v34, "wk3r":D
    add-int/lit8 v70, v10, 0x3

    aget-wide v70, p4, v70

    add-double v70, v70, v24

    mul-double v32, v4, v70

    .line 5293
    .local v32, "wk3i":D
    aget-wide v22, p4, v10

    .line 5294
    add-int/lit8 v70, v10, 0x1

    aget-wide v20, p4, v70

    .line 5295
    add-int/lit8 v70, v10, 0x2

    aget-wide v26, p4, v70

    .line 5296
    add-int/lit8 v70, v10, 0x3

    aget-wide v24, p4, v70

    .line 5297
    add-int v14, v12, v18

    .line 5298
    add-int v15, v14, v18

    .line 5299
    add-int v16, v15, v18

    .line 5300
    add-int v7, p3, v14

    .line 5301
    add-int v8, p3, v15

    .line 5302
    add-int v9, p3, v16

    .line 5303
    add-int v11, p3, v12

    .line 5304
    .local v11, "idx5":I
    aget-wide v70, p2, v11

    aget-wide v72, p2, v8

    add-double v40, v70, v72

    .line 5305
    add-int/lit8 v70, v11, 0x1

    aget-wide v70, p2, v70

    move-wide/from16 v0, v70

    neg-double v0, v0

    move-wide/from16 v70, v0

    add-int/lit8 v72, v8, 0x1

    aget-wide v72, p2, v72

    sub-double v38, v70, v72

    .line 5306
    aget-wide v70, p2, v11

    add-int v72, p3, v15

    aget-wide v72, p2, v72

    sub-double v44, v70, v72

    .line 5307
    add-int/lit8 v70, v11, 0x1

    aget-wide v70, p2, v70

    move-wide/from16 v0, v70

    neg-double v0, v0

    move-wide/from16 v70, v0

    add-int/lit8 v72, v8, 0x1

    aget-wide v72, p2, v72

    add-double v42, v70, v72

    .line 5308
    add-int/lit8 v70, v11, 0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x2

    aget-wide v72, p2, v72

    add-double v56, v70, v72

    .line 5309
    .local v56, "y0r":D
    add-int/lit8 v70, v11, 0x3

    aget-wide v70, p2, v70

    move-wide/from16 v0, v70

    neg-double v0, v0

    move-wide/from16 v70, v0

    add-int/lit8 v72, v8, 0x3

    aget-wide v72, p2, v72

    sub-double v54, v70, v72

    .line 5310
    .local v54, "y0i":D
    add-int/lit8 v70, v11, 0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x2

    aget-wide v72, p2, v72

    sub-double v60, v70, v72

    .line 5311
    .local v60, "y1r":D
    add-int/lit8 v70, v11, 0x3

    aget-wide v70, p2, v70

    move-wide/from16 v0, v70

    neg-double v0, v0

    move-wide/from16 v70, v0

    add-int/lit8 v72, v8, 0x3

    aget-wide v72, p2, v72

    add-double v58, v70, v72

    .line 5312
    .local v58, "y1i":D
    aget-wide v70, p2, v7

    aget-wide v72, p2, v9

    add-double v48, v70, v72

    .line 5313
    add-int/lit8 v70, v7, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x1

    aget-wide v72, p2, v72

    add-double v46, v70, v72

    .line 5314
    aget-wide v70, p2, v7

    aget-wide v72, p2, v9

    sub-double v52, v70, v72

    .line 5315
    add-int/lit8 v70, v7, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x1

    aget-wide v72, p2, v72

    sub-double v50, v70, v72

    .line 5316
    add-int/lit8 v70, v7, 0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x2

    aget-wide v72, p2, v72

    add-double v64, v70, v72

    .line 5317
    .local v64, "y2r":D
    add-int/lit8 v70, v7, 0x3

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x3

    aget-wide v72, p2, v72

    add-double v62, v70, v72

    .line 5318
    .local v62, "y2i":D
    add-int/lit8 v70, v7, 0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x2

    aget-wide v72, p2, v72

    sub-double v68, v70, v72

    .line 5319
    .local v68, "y3r":D
    add-int/lit8 v70, v7, 0x3

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x3

    aget-wide v72, p2, v72

    sub-double v66, v70, v72

    .line 5320
    .local v66, "y3i":D
    add-double v70, v40, v48

    aput-wide v70, p2, v11

    .line 5321
    add-int/lit8 v70, v11, 0x1

    sub-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5322
    add-int/lit8 v70, v11, 0x2

    add-double v72, v56, v64

    aput-wide v72, p2, v70

    .line 5323
    add-int/lit8 v70, v11, 0x3

    sub-double v72, v54, v62

    aput-wide v72, p2, v70

    .line 5324
    sub-double v70, v40, v48

    aput-wide v70, p2, v7

    .line 5325
    add-int/lit8 v70, v7, 0x1

    add-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5326
    add-int/lit8 v70, v7, 0x2

    sub-double v72, v56, v64

    aput-wide v72, p2, v70

    .line 5327
    add-int/lit8 v70, v7, 0x3

    add-double v72, v54, v62

    aput-wide v72, p2, v70

    .line 5328
    add-double v40, v44, v50

    .line 5329
    add-double v38, v42, v52

    .line 5330
    mul-double v70, v30, v40

    mul-double v72, v28, v38

    sub-double v70, v70, v72

    aput-wide v70, p2, v8

    .line 5331
    add-int/lit8 v70, v8, 0x1

    mul-double v72, v30, v38

    mul-double v74, v28, v40

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5332
    add-double v40, v60, v66

    .line 5333
    add-double v38, v58, v68

    .line 5334
    add-int/lit8 v70, v8, 0x2

    mul-double v72, v22, v40

    mul-double v74, v20, v38

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5335
    add-int/lit8 v70, v8, 0x3

    mul-double v72, v22, v38

    mul-double v74, v20, v40

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5336
    sub-double v40, v44, v50

    .line 5337
    sub-double v38, v42, v52

    .line 5338
    mul-double v70, v34, v40

    mul-double v72, v32, v38

    add-double v70, v70, v72

    aput-wide v70, p2, v9

    .line 5339
    add-int/lit8 v70, v9, 0x1

    mul-double v72, v34, v38

    mul-double v74, v32, v40

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5340
    sub-double v40, v60, v66

    .line 5341
    sub-double v38, v58, v68

    .line 5342
    add-int/lit8 v70, v9, 0x2

    mul-double v72, v26, v40

    mul-double v74, v24, v38

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5343
    add-int/lit8 v70, v9, 0x3

    mul-double v72, v26, v38

    mul-double v74, v24, v40

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5344
    sub-int v13, v18, v12

    .line 5345
    .local v13, "j0":I
    add-int v14, v13, v18

    .line 5346
    add-int v15, v14, v18

    .line 5347
    add-int v16, v15, v18

    .line 5348
    add-int v6, p3, v13

    .line 5349
    .local v6, "idx0":I
    add-int v7, p3, v14

    .line 5350
    add-int v8, p3, v15

    .line 5351
    add-int v9, p3, v16

    .line 5352
    aget-wide v70, p2, v6

    aget-wide v72, p2, v8

    add-double v40, v70, v72

    .line 5353
    add-int/lit8 v70, v6, 0x1

    aget-wide v70, p2, v70

    move-wide/from16 v0, v70

    neg-double v0, v0

    move-wide/from16 v70, v0

    add-int/lit8 v72, v8, 0x1

    aget-wide v72, p2, v72

    sub-double v38, v70, v72

    .line 5354
    aget-wide v70, p2, v6

    aget-wide v72, p2, v8

    sub-double v44, v70, v72

    .line 5355
    add-int/lit8 v70, v6, 0x1

    aget-wide v70, p2, v70

    move-wide/from16 v0, v70

    neg-double v0, v0

    move-wide/from16 v70, v0

    add-int/lit8 v72, v8, 0x1

    aget-wide v72, p2, v72

    add-double v42, v70, v72

    .line 5356
    add-int/lit8 v70, v6, -0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, -0x2

    aget-wide v72, p2, v72

    add-double v56, v70, v72

    .line 5357
    add-int/lit8 v70, v6, -0x1

    aget-wide v70, p2, v70

    move-wide/from16 v0, v70

    neg-double v0, v0

    move-wide/from16 v70, v0

    add-int/lit8 v72, v8, -0x1

    aget-wide v72, p2, v72

    sub-double v54, v70, v72

    .line 5358
    add-int/lit8 v70, v6, -0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, -0x2

    aget-wide v72, p2, v72

    sub-double v60, v70, v72

    .line 5359
    add-int/lit8 v70, v6, -0x1

    aget-wide v70, p2, v70

    move-wide/from16 v0, v70

    neg-double v0, v0

    move-wide/from16 v70, v0

    add-int/lit8 v72, v8, -0x1

    aget-wide v72, p2, v72

    add-double v58, v70, v72

    .line 5360
    aget-wide v70, p2, v7

    aget-wide v72, p2, v9

    add-double v48, v70, v72

    .line 5361
    add-int/lit8 v70, v7, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x1

    aget-wide v72, p2, v72

    add-double v46, v70, v72

    .line 5362
    aget-wide v70, p2, v7

    aget-wide v72, p2, v9

    sub-double v52, v70, v72

    .line 5363
    add-int/lit8 v70, v7, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x1

    aget-wide v72, p2, v72

    sub-double v50, v70, v72

    .line 5364
    add-int/lit8 v70, v7, -0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, -0x2

    aget-wide v72, p2, v72

    add-double v64, v70, v72

    .line 5365
    add-int/lit8 v70, v7, -0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, -0x1

    aget-wide v72, p2, v72

    add-double v62, v70, v72

    .line 5366
    add-int/lit8 v70, v7, -0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, -0x2

    aget-wide v72, p2, v72

    sub-double v68, v70, v72

    .line 5367
    add-int/lit8 v70, v7, -0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, -0x1

    aget-wide v72, p2, v72

    sub-double v66, v70, v72

    .line 5368
    add-double v70, v40, v48

    aput-wide v70, p2, v6

    .line 5369
    add-int/lit8 v70, v6, 0x1

    sub-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5370
    add-int/lit8 v70, v6, -0x2

    add-double v72, v56, v64

    aput-wide v72, p2, v70

    .line 5371
    add-int/lit8 v70, v6, -0x1

    sub-double v72, v54, v62

    aput-wide v72, p2, v70

    .line 5372
    sub-double v70, v40, v48

    aput-wide v70, p2, v7

    .line 5373
    add-int/lit8 v70, v7, 0x1

    add-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5374
    add-int/lit8 v70, v7, -0x2

    sub-double v72, v56, v64

    aput-wide v72, p2, v70

    .line 5375
    add-int/lit8 v70, v7, -0x1

    add-double v72, v54, v62

    aput-wide v72, p2, v70

    .line 5376
    add-double v40, v44, v50

    .line 5377
    add-double v38, v42, v52

    .line 5378
    mul-double v70, v28, v40

    mul-double v72, v30, v38

    sub-double v70, v70, v72

    aput-wide v70, p2, v8

    .line 5379
    add-int/lit8 v70, v8, 0x1

    mul-double v72, v28, v38

    mul-double v74, v30, v40

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5380
    add-double v40, v60, v66

    .line 5381
    add-double v38, v58, v68

    .line 5382
    add-int/lit8 v70, v8, -0x2

    mul-double v72, v20, v40

    mul-double v74, v22, v38

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5383
    add-int/lit8 v70, v8, -0x1

    mul-double v72, v20, v38

    mul-double v74, v22, v40

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5384
    sub-double v40, v44, v50

    .line 5385
    sub-double v38, v42, v52

    .line 5386
    mul-double v70, v32, v40

    mul-double v72, v34, v38

    add-double v70, v70, v72

    aput-wide v70, p2, v9

    .line 5387
    add-int/lit8 v70, v9, 0x1

    mul-double v72, v32, v38

    mul-double v74, v34, v40

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5388
    sub-double v40, v60, v66

    .line 5389
    sub-double v38, v58, v68

    .line 5390
    add-int/lit8 v70, v9, -0x2

    mul-double v72, v24, v40

    mul-double v74, v26, v38

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5391
    add-int/lit8 v70, v9, -0x1

    mul-double v72, v24, v38

    mul-double v74, v26, v40

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5286
    add-int/lit8 v12, v12, 0x4

    goto/16 :goto_99

    .line 5393
    .end local v6    # "idx0":I
    .end local v10    # "idx4":I
    .end local v11    # "idx5":I
    .end local v13    # "j0":I
    .end local v28    # "wk1i":D
    .end local v30    # "wk1r":D
    .end local v32    # "wk3i":D
    .end local v34    # "wk3r":D
    .end local v54    # "y0i":D
    .end local v56    # "y0r":D
    .end local v58    # "y1i":D
    .end local v60    # "y1r":D
    .end local v62    # "y2i":D
    .end local v64    # "y2r":D
    .end local v66    # "y3i":D
    .end local v68    # "y3r":D
    :cond_34b
    add-double v70, v22, v36

    mul-double v30, v2, v70

    .line 5394
    .restart local v30    # "wk1r":D
    add-double v70, v20, v36

    mul-double v28, v2, v70

    .line 5395
    .restart local v28    # "wk1i":D
    sub-double v70, v26, v36

    mul-double v34, v4, v70

    .line 5396
    .restart local v34    # "wk3r":D
    sub-double v70, v24, v36

    mul-double v32, v4, v70

    .line 5397
    .restart local v32    # "wk3i":D
    move/from16 v13, v19

    .line 5398
    .restart local v13    # "j0":I
    add-int v14, v19, v18

    .line 5399
    add-int v15, v14, v18

    .line 5400
    add-int v16, v15, v18

    .line 5401
    add-int v6, p3, v19

    .line 5402
    .restart local v6    # "idx0":I
    add-int v7, p3, v14

    .line 5403
    add-int v8, p3, v15

    .line 5404
    add-int v9, p3, v16

    .line 5405
    add-int/lit8 v70, v6, -0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, -0x2

    aget-wide v72, p2, v72

    add-double v40, v70, v72

    .line 5406
    add-int/lit8 v70, v6, -0x1

    aget-wide v70, p2, v70

    move-wide/from16 v0, v70

    neg-double v0, v0

    move-wide/from16 v70, v0

    add-int/lit8 v72, v8, -0x1

    aget-wide v72, p2, v72

    sub-double v38, v70, v72

    .line 5407
    add-int/lit8 v70, v6, -0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, -0x2

    aget-wide v72, p2, v72

    sub-double v44, v70, v72

    .line 5408
    add-int/lit8 v70, v6, -0x1

    aget-wide v70, p2, v70

    move-wide/from16 v0, v70

    neg-double v0, v0

    move-wide/from16 v70, v0

    add-int/lit8 v72, v8, -0x1

    aget-wide v72, p2, v72

    add-double v42, v70, v72

    .line 5409
    add-int/lit8 v70, v7, -0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, -0x2

    aget-wide v72, p2, v72

    add-double v48, v70, v72

    .line 5410
    add-int/lit8 v70, v7, -0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, -0x1

    aget-wide v72, p2, v72

    add-double v46, v70, v72

    .line 5411
    add-int/lit8 v70, v7, -0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, -0x2

    aget-wide v72, p2, v72

    sub-double v52, v70, v72

    .line 5412
    add-int/lit8 v70, v7, -0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, -0x1

    aget-wide v72, p2, v72

    sub-double v50, v70, v72

    .line 5413
    add-int/lit8 v70, v6, -0x2

    add-double v72, v40, v48

    aput-wide v72, p2, v70

    .line 5414
    add-int/lit8 v70, v6, -0x1

    sub-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5415
    add-int/lit8 v70, v7, -0x2

    sub-double v72, v40, v48

    aput-wide v72, p2, v70

    .line 5416
    add-int/lit8 v70, v7, -0x1

    add-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5417
    add-double v40, v44, v50

    .line 5418
    add-double v38, v42, v52

    .line 5419
    add-int/lit8 v70, v8, -0x2

    mul-double v72, v30, v40

    mul-double v74, v28, v38

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5420
    add-int/lit8 v70, v8, -0x1

    mul-double v72, v30, v38

    mul-double v74, v28, v40

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5421
    sub-double v40, v44, v50

    .line 5422
    sub-double v38, v42, v52

    .line 5423
    add-int/lit8 v70, v9, -0x2

    mul-double v72, v34, v40

    mul-double v74, v32, v38

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5424
    add-int/lit8 v70, v9, -0x1

    mul-double v72, v34, v38

    mul-double v74, v32, v40

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5425
    aget-wide v70, p2, v6

    aget-wide v72, p2, v8

    add-double v40, v70, v72

    .line 5426
    add-int/lit8 v70, v6, 0x1

    aget-wide v70, p2, v70

    move-wide/from16 v0, v70

    neg-double v0, v0

    move-wide/from16 v70, v0

    add-int/lit8 v72, v8, 0x1

    aget-wide v72, p2, v72

    sub-double v38, v70, v72

    .line 5427
    aget-wide v70, p2, v6

    aget-wide v72, p2, v8

    sub-double v44, v70, v72

    .line 5428
    add-int/lit8 v70, v6, 0x1

    aget-wide v70, p2, v70

    move-wide/from16 v0, v70

    neg-double v0, v0

    move-wide/from16 v70, v0

    add-int/lit8 v72, v8, 0x1

    aget-wide v72, p2, v72

    add-double v42, v70, v72

    .line 5429
    aget-wide v70, p2, v7

    aget-wide v72, p2, v9

    add-double v48, v70, v72

    .line 5430
    add-int/lit8 v70, v7, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x1

    aget-wide v72, p2, v72

    add-double v46, v70, v72

    .line 5431
    aget-wide v70, p2, v7

    aget-wide v72, p2, v9

    sub-double v52, v70, v72

    .line 5432
    add-int/lit8 v70, v7, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x1

    aget-wide v72, p2, v72

    sub-double v50, v70, v72

    .line 5433
    add-double v70, v40, v48

    aput-wide v70, p2, v6

    .line 5434
    add-int/lit8 v70, v6, 0x1

    sub-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5435
    sub-double v70, v40, v48

    aput-wide v70, p2, v7

    .line 5436
    add-int/lit8 v70, v7, 0x1

    add-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5437
    add-double v40, v44, v50

    .line 5438
    add-double v38, v42, v52

    .line 5439
    sub-double v70, v40, v38

    mul-double v70, v70, v36

    aput-wide v70, p2, v8

    .line 5440
    add-int/lit8 v70, v8, 0x1

    add-double v72, v38, v40

    mul-double v72, v72, v36

    aput-wide v72, p2, v70

    .line 5441
    sub-double v40, v44, v50

    .line 5442
    sub-double v38, v42, v52

    .line 5443
    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v70, v0

    add-double v72, v40, v38

    mul-double v70, v70, v72

    aput-wide v70, p2, v9

    .line 5444
    add-int/lit8 v70, v9, 0x1

    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v72, v0

    sub-double v74, v38, v40

    mul-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5445
    add-int/lit8 v70, v6, 0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x2

    aget-wide v72, p2, v72

    add-double v40, v70, v72

    .line 5446
    add-int/lit8 v70, v6, 0x3

    aget-wide v70, p2, v70

    move-wide/from16 v0, v70

    neg-double v0, v0

    move-wide/from16 v70, v0

    add-int/lit8 v72, v8, 0x3

    aget-wide v72, p2, v72

    sub-double v38, v70, v72

    .line 5447
    add-int/lit8 v70, v6, 0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x2

    aget-wide v72, p2, v72

    sub-double v44, v70, v72

    .line 5448
    add-int/lit8 v70, v6, 0x3

    aget-wide v70, p2, v70

    move-wide/from16 v0, v70

    neg-double v0, v0

    move-wide/from16 v70, v0

    add-int/lit8 v72, v8, 0x3

    aget-wide v72, p2, v72

    add-double v42, v70, v72

    .line 5449
    add-int/lit8 v70, v7, 0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x2

    aget-wide v72, p2, v72

    add-double v48, v70, v72

    .line 5450
    add-int/lit8 v70, v7, 0x3

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x3

    aget-wide v72, p2, v72

    add-double v46, v70, v72

    .line 5451
    add-int/lit8 v70, v7, 0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x2

    aget-wide v72, p2, v72

    sub-double v52, v70, v72

    .line 5452
    add-int/lit8 v70, v7, 0x3

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x3

    aget-wide v72, p2, v72

    sub-double v50, v70, v72

    .line 5453
    add-int/lit8 v70, v6, 0x2

    add-double v72, v40, v48

    aput-wide v72, p2, v70

    .line 5454
    add-int/lit8 v70, v6, 0x3

    sub-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5455
    add-int/lit8 v70, v7, 0x2

    sub-double v72, v40, v48

    aput-wide v72, p2, v70

    .line 5456
    add-int/lit8 v70, v7, 0x3

    add-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5457
    add-double v40, v44, v50

    .line 5458
    add-double v38, v42, v52

    .line 5459
    add-int/lit8 v70, v8, 0x2

    mul-double v72, v28, v40

    mul-double v74, v30, v38

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5460
    add-int/lit8 v70, v8, 0x3

    mul-double v72, v28, v38

    mul-double v74, v30, v40

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5461
    sub-double v40, v44, v50

    .line 5462
    sub-double v38, v42, v52

    .line 5463
    add-int/lit8 v70, v9, 0x2

    mul-double v72, v32, v40

    mul-double v74, v34, v38

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5464
    add-int/lit8 v70, v9, 0x3

    mul-double v72, v32, v38

    mul-double v74, v34, v40

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5465
    return-void
.end method

.method private cftbsub(I[DI[II[D)V
    .registers 14
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "ip"    # [I
    .param p5, "nw"    # I
    .param p6, "w"    # [D

    .prologue
    const/16 v1, 0x20

    const/16 v0, 0x8

    const/4 v6, 0x1

    .line 3999
    if-le p1, v0, :cond_68

    .line 4000
    if-le p1, v1, :cond_55

    .line 4001
    shr-int/lit8 v0, p1, 0x2

    sub-int v5, p5, v0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftb1st(I[DI[DI)V

    .line 4002
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    if-le v0, v6, :cond_2e

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v0

    if-le p1, v0, :cond_2e

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    .line 4003
    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4_th(I[DII[D)V

    .line 4011
    :goto_2a
    invoke-direct {p0, p1, p4, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv2conj(I[I[DI)V

    .line 4024
    :cond_2d
    :goto_2d
    return-void

    .line 4004
    :cond_2e
    const/16 v0, 0x200

    if-le p1, v0, :cond_3c

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    .line 4005
    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4(I[DII[D)V

    goto :goto_2a

    .line 4006
    :cond_3c
    const/16 v0, 0x80

    if-le p1, v0, :cond_4b

    move-object v0, p0

    move v1, p1

    move v2, v6

    move-object v3, p2

    move v4, p3

    move v5, p5

    move-object v6, p6

    .line 4007
    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    goto :goto_2a

    :cond_4b
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    .line 4009
    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfx41(I[DII[D)V

    goto :goto_2a

    .line 4012
    :cond_55
    if-ne p1, v1, :cond_60

    .line 4013
    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 4014
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv216neg([DI)V

    goto :goto_2d

    .line 4016
    :cond_60
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    .line 4017
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv208neg([DI)V

    goto :goto_2d

    .line 4019
    :cond_68
    if-ne p1, v0, :cond_6e

    .line 4020
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftb040([DI)V

    goto :goto_2d

    .line 4021
    :cond_6e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2d

    .line 4022
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftxb020([DI)V

    goto :goto_2d
.end method

.method private cftf040([DI)V
    .registers 23
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .prologue
    .line 6384
    aget-wide v16, p1, p2

    add-int/lit8 v18, p2, 0x4

    aget-wide v18, p1, v18

    add-double v2, v16, v18

    .line 6385
    .local v2, "x0r":D
    add-int/lit8 v16, p2, 0x1

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0x5

    aget-wide v18, p1, v18

    add-double v0, v16, v18

    .line 6386
    .local v0, "x0i":D
    aget-wide v16, p1, p2

    add-int/lit8 v18, p2, 0x4

    aget-wide v18, p1, v18

    sub-double v6, v16, v18

    .line 6387
    .local v6, "x1r":D
    add-int/lit8 v16, p2, 0x1

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0x5

    aget-wide v18, p1, v18

    sub-double v4, v16, v18

    .line 6388
    .local v4, "x1i":D
    add-int/lit8 v16, p2, 0x2

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0x6

    aget-wide v18, p1, v18

    add-double v10, v16, v18

    .line 6389
    .local v10, "x2r":D
    add-int/lit8 v16, p2, 0x3

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0x7

    aget-wide v18, p1, v18

    add-double v8, v16, v18

    .line 6390
    .local v8, "x2i":D
    add-int/lit8 v16, p2, 0x2

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0x6

    aget-wide v18, p1, v18

    sub-double v14, v16, v18

    .line 6391
    .local v14, "x3r":D
    add-int/lit8 v16, p2, 0x3

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0x7

    aget-wide v18, p1, v18

    sub-double v12, v16, v18

    .line 6392
    .local v12, "x3i":D
    add-double v16, v2, v10

    aput-wide v16, p1, p2

    .line 6393
    add-int/lit8 v16, p2, 0x1

    add-double v18, v0, v8

    aput-wide v18, p1, v16

    .line 6394
    add-int/lit8 v16, p2, 0x2

    sub-double v18, v6, v12

    aput-wide v18, p1, v16

    .line 6395
    add-int/lit8 v16, p2, 0x3

    add-double v18, v4, v14

    aput-wide v18, p1, v16

    .line 6396
    add-int/lit8 v16, p2, 0x4

    sub-double v18, v2, v10

    aput-wide v18, p1, v16

    .line 6397
    add-int/lit8 v16, p2, 0x5

    sub-double v18, v0, v8

    aput-wide v18, p1, v16

    .line 6398
    add-int/lit8 v16, p2, 0x6

    add-double v18, v6, v12

    aput-wide v18, p1, v16

    .line 6399
    add-int/lit8 v16, p2, 0x7

    sub-double v18, v4, v14

    aput-wide v18, p1, v16

    .line 6400
    return-void
.end method

.method private cftf081([DI[DI)V
    .registers 59
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "w"    # [D
    .param p4, "startw"    # I

    .prologue
    .line 6258
    add-int/lit8 v50, p4, 0x1

    aget-wide v0, p3, v50

    .line 6259
    .local v0, "wn4r":D
    aget-wide v50, p1, p2

    add-int/lit8 v52, p2, 0x8

    aget-wide v52, p1, v52

    add-double v4, v50, v52

    .line 6260
    .local v4, "x0r":D
    add-int/lit8 v50, p2, 0x1

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0x9

    aget-wide v52, p1, v52

    add-double v2, v50, v52

    .line 6261
    .local v2, "x0i":D
    aget-wide v50, p1, p2

    add-int/lit8 v52, p2, 0x8

    aget-wide v52, p1, v52

    sub-double v8, v50, v52

    .line 6262
    .local v8, "x1r":D
    add-int/lit8 v50, p2, 0x1

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0x9

    aget-wide v52, p1, v52

    sub-double v6, v50, v52

    .line 6263
    .local v6, "x1i":D
    add-int/lit8 v50, p2, 0x4

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0xc

    aget-wide v52, p1, v52

    add-double v12, v50, v52

    .line 6264
    .local v12, "x2r":D
    add-int/lit8 v50, p2, 0x5

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0xd

    aget-wide v52, p1, v52

    add-double v10, v50, v52

    .line 6265
    .local v10, "x2i":D
    add-int/lit8 v50, p2, 0x4

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0xc

    aget-wide v52, p1, v52

    sub-double v16, v50, v52

    .line 6266
    .local v16, "x3r":D
    add-int/lit8 v50, p2, 0x5

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0xd

    aget-wide v52, p1, v52

    sub-double v14, v50, v52

    .line 6267
    .local v14, "x3i":D
    add-double v20, v4, v12

    .line 6268
    .local v20, "y0r":D
    add-double v18, v2, v10

    .line 6269
    .local v18, "y0i":D
    sub-double v28, v4, v12

    .line 6270
    .local v28, "y2r":D
    sub-double v26, v2, v10

    .line 6271
    .local v26, "y2i":D
    sub-double v24, v8, v14

    .line 6272
    .local v24, "y1r":D
    add-double v22, v6, v16

    .line 6273
    .local v22, "y1i":D
    add-double v32, v8, v14

    .line 6274
    .local v32, "y3r":D
    sub-double v30, v6, v16

    .line 6275
    .local v30, "y3i":D
    add-int/lit8 v50, p2, 0x2

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0xa

    aget-wide v52, p1, v52

    add-double v4, v50, v52

    .line 6276
    add-int/lit8 v50, p2, 0x3

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0xb

    aget-wide v52, p1, v52

    add-double v2, v50, v52

    .line 6277
    add-int/lit8 v50, p2, 0x2

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0xa

    aget-wide v52, p1, v52

    sub-double v8, v50, v52

    .line 6278
    add-int/lit8 v50, p2, 0x3

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0xb

    aget-wide v52, p1, v52

    sub-double v6, v50, v52

    .line 6279
    add-int/lit8 v50, p2, 0x6

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0xe

    aget-wide v52, p1, v52

    add-double v12, v50, v52

    .line 6280
    add-int/lit8 v50, p2, 0x7

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0xf

    aget-wide v52, p1, v52

    add-double v10, v50, v52

    .line 6281
    add-int/lit8 v50, p2, 0x6

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0xe

    aget-wide v52, p1, v52

    sub-double v16, v50, v52

    .line 6282
    add-int/lit8 v50, p2, 0x7

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0xf

    aget-wide v52, p1, v52

    sub-double v14, v50, v52

    .line 6283
    add-double v36, v4, v12

    .line 6284
    .local v36, "y4r":D
    add-double v34, v2, v10

    .line 6285
    .local v34, "y4i":D
    sub-double v44, v4, v12

    .line 6286
    .local v44, "y6r":D
    sub-double v42, v2, v10

    .line 6287
    .local v42, "y6i":D
    sub-double v4, v8, v14

    .line 6288
    add-double v2, v6, v16

    .line 6289
    add-double v12, v8, v14

    .line 6290
    sub-double v10, v6, v16

    .line 6291
    sub-double v50, v4, v2

    mul-double v40, v0, v50

    .line 6292
    .local v40, "y5r":D
    add-double v50, v4, v2

    mul-double v38, v0, v50

    .line 6293
    .local v38, "y5i":D
    sub-double v50, v12, v10

    mul-double v48, v0, v50

    .line 6294
    .local v48, "y7r":D
    add-double v50, v12, v10

    mul-double v46, v0, v50

    .line 6295
    .local v46, "y7i":D
    add-int/lit8 v50, p2, 0x8

    add-double v52, v24, v40

    aput-wide v52, p1, v50

    .line 6296
    add-int/lit8 v50, p2, 0x9

    add-double v52, v22, v38

    aput-wide v52, p1, v50

    .line 6297
    add-int/lit8 v50, p2, 0xa

    sub-double v52, v24, v40

    aput-wide v52, p1, v50

    .line 6298
    add-int/lit8 v50, p2, 0xb

    sub-double v52, v22, v38

    aput-wide v52, p1, v50

    .line 6299
    add-int/lit8 v50, p2, 0xc

    sub-double v52, v32, v46

    aput-wide v52, p1, v50

    .line 6300
    add-int/lit8 v50, p2, 0xd

    add-double v52, v30, v48

    aput-wide v52, p1, v50

    .line 6301
    add-int/lit8 v50, p2, 0xe

    add-double v52, v32, v46

    aput-wide v52, p1, v50

    .line 6302
    add-int/lit8 v50, p2, 0xf

    sub-double v52, v30, v48

    aput-wide v52, p1, v50

    .line 6303
    add-double v50, v20, v36

    aput-wide v50, p1, p2

    .line 6304
    add-int/lit8 v50, p2, 0x1

    add-double v52, v18, v34

    aput-wide v52, p1, v50

    .line 6305
    add-int/lit8 v50, p2, 0x2

    sub-double v52, v20, v36

    aput-wide v52, p1, v50

    .line 6306
    add-int/lit8 v50, p2, 0x3

    sub-double v52, v18, v34

    aput-wide v52, p1, v50

    .line 6307
    add-int/lit8 v50, p2, 0x4

    sub-double v52, v28, v42

    aput-wide v52, p1, v50

    .line 6308
    add-int/lit8 v50, p2, 0x5

    add-double v52, v26, v44

    aput-wide v52, p1, v50

    .line 6309
    add-int/lit8 v50, p2, 0x6

    add-double v52, v28, v42

    aput-wide v52, p1, v50

    .line 6310
    add-int/lit8 v50, p2, 0x7

    sub-double v52, v26, v44

    aput-wide v52, p1, v50

    .line 6311
    return-void
.end method

.method private cftf082([DI[DI)V
    .registers 55
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "w"    # [D
    .param p4, "startw"    # I

    .prologue
    .line 6316
    add-int/lit8 v46, p4, 0x1

    aget-wide v4, p3, v46

    .line 6317
    .local v4, "wn4r":D
    add-int/lit8 v46, p4, 0x2

    aget-wide v2, p3, v46

    .line 6318
    .local v2, "wk1r":D
    add-int/lit8 v46, p4, 0x3

    aget-wide v0, p3, v46

    .line 6319
    .local v0, "wk1i":D
    aget-wide v46, p1, p2

    add-int/lit8 v48, p2, 0x9

    aget-wide v48, p1, v48

    sub-double v16, v46, v48

    .line 6320
    .local v16, "y0r":D
    add-int/lit8 v46, p2, 0x1

    aget-wide v46, p1, v46

    add-int/lit8 v48, p2, 0x8

    aget-wide v48, p1, v48

    add-double v14, v46, v48

    .line 6321
    .local v14, "y0i":D
    aget-wide v46, p1, p2

    add-int/lit8 v48, p2, 0x9

    aget-wide v48, p1, v48

    add-double v20, v46, v48

    .line 6322
    .local v20, "y1r":D
    add-int/lit8 v46, p2, 0x1

    aget-wide v46, p1, v46

    add-int/lit8 v48, p2, 0x8

    aget-wide v48, p1, v48

    sub-double v18, v46, v48

    .line 6323
    .local v18, "y1i":D
    add-int/lit8 v46, p2, 0x4

    aget-wide v46, p1, v46

    add-int/lit8 v48, p2, 0xd

    aget-wide v48, p1, v48

    sub-double v8, v46, v48

    .line 6324
    .local v8, "x0r":D
    add-int/lit8 v46, p2, 0x5

    aget-wide v46, p1, v46

    add-int/lit8 v48, p2, 0xc

    aget-wide v48, p1, v48

    add-double v6, v46, v48

    .line 6325
    .local v6, "x0i":D
    sub-double v46, v8, v6

    mul-double v24, v4, v46

    .line 6326
    .local v24, "y2r":D
    add-double v46, v6, v8

    mul-double v22, v4, v46

    .line 6327
    .local v22, "y2i":D
    add-int/lit8 v46, p2, 0x4

    aget-wide v46, p1, v46

    add-int/lit8 v48, p2, 0xd

    aget-wide v48, p1, v48

    add-double v8, v46, v48

    .line 6328
    add-int/lit8 v46, p2, 0x5

    aget-wide v46, p1, v46

    add-int/lit8 v48, p2, 0xc

    aget-wide v48, p1, v48

    sub-double v6, v46, v48

    .line 6329
    sub-double v46, v8, v6

    mul-double v28, v4, v46

    .line 6330
    .local v28, "y3r":D
    add-double v46, v6, v8

    mul-double v26, v4, v46

    .line 6331
    .local v26, "y3i":D
    add-int/lit8 v46, p2, 0x2

    aget-wide v46, p1, v46

    add-int/lit8 v48, p2, 0xb

    aget-wide v48, p1, v48

    sub-double v8, v46, v48

    .line 6332
    add-int/lit8 v46, p2, 0x3

    aget-wide v46, p1, v46

    add-int/lit8 v48, p2, 0xa

    aget-wide v48, p1, v48

    add-double v6, v46, v48

    .line 6333
    mul-double v46, v2, v8

    mul-double v48, v0, v6

    sub-double v32, v46, v48

    .line 6334
    .local v32, "y4r":D
    mul-double v46, v2, v6

    mul-double v48, v0, v8

    add-double v30, v46, v48

    .line 6335
    .local v30, "y4i":D
    add-int/lit8 v46, p2, 0x2

    aget-wide v46, p1, v46

    add-int/lit8 v48, p2, 0xb

    aget-wide v48, p1, v48

    add-double v8, v46, v48

    .line 6336
    add-int/lit8 v46, p2, 0x3

    aget-wide v46, p1, v46

    add-int/lit8 v48, p2, 0xa

    aget-wide v48, p1, v48

    sub-double v6, v46, v48

    .line 6337
    mul-double v46, v0, v8

    mul-double v48, v2, v6

    sub-double v36, v46, v48

    .line 6338
    .local v36, "y5r":D
    mul-double v46, v0, v6

    mul-double v48, v2, v8

    add-double v34, v46, v48

    .line 6339
    .local v34, "y5i":D
    add-int/lit8 v46, p2, 0x6

    aget-wide v46, p1, v46

    add-int/lit8 v48, p2, 0xf

    aget-wide v48, p1, v48

    sub-double v8, v46, v48

    .line 6340
    add-int/lit8 v46, p2, 0x7

    aget-wide v46, p1, v46

    add-int/lit8 v48, p2, 0xe

    aget-wide v48, p1, v48

    add-double v6, v46, v48

    .line 6341
    mul-double v46, v0, v8

    mul-double v48, v2, v6

    sub-double v40, v46, v48

    .line 6342
    .local v40, "y6r":D
    mul-double v46, v0, v6

    mul-double v48, v2, v8

    add-double v38, v46, v48

    .line 6343
    .local v38, "y6i":D
    add-int/lit8 v46, p2, 0x6

    aget-wide v46, p1, v46

    add-int/lit8 v48, p2, 0xf

    aget-wide v48, p1, v48

    add-double v8, v46, v48

    .line 6344
    add-int/lit8 v46, p2, 0x7

    aget-wide v46, p1, v46

    add-int/lit8 v48, p2, 0xe

    aget-wide v48, p1, v48

    sub-double v6, v46, v48

    .line 6345
    mul-double v46, v2, v8

    mul-double v48, v0, v6

    sub-double v44, v46, v48

    .line 6346
    .local v44, "y7r":D
    mul-double v46, v2, v6

    mul-double v48, v0, v8

    add-double v42, v46, v48

    .line 6347
    .local v42, "y7i":D
    add-double v8, v16, v24

    .line 6348
    add-double v6, v14, v22

    .line 6349
    add-double v12, v32, v40

    .line 6350
    .local v12, "x1r":D
    add-double v10, v30, v38

    .line 6351
    .local v10, "x1i":D
    add-double v46, v8, v12

    aput-wide v46, p1, p2

    .line 6352
    add-int/lit8 v46, p2, 0x1

    add-double v48, v6, v10

    aput-wide v48, p1, v46

    .line 6353
    add-int/lit8 v46, p2, 0x2

    sub-double v48, v8, v12

    aput-wide v48, p1, v46

    .line 6354
    add-int/lit8 v46, p2, 0x3

    sub-double v48, v6, v10

    aput-wide v48, p1, v46

    .line 6355
    sub-double v8, v16, v24

    .line 6356
    sub-double v6, v14, v22

    .line 6357
    sub-double v12, v32, v40

    .line 6358
    sub-double v10, v30, v38

    .line 6359
    add-int/lit8 v46, p2, 0x4

    sub-double v48, v8, v10

    aput-wide v48, p1, v46

    .line 6360
    add-int/lit8 v46, p2, 0x5

    add-double v48, v6, v12

    aput-wide v48, p1, v46

    .line 6361
    add-int/lit8 v46, p2, 0x6

    add-double v48, v8, v10

    aput-wide v48, p1, v46

    .line 6362
    add-int/lit8 v46, p2, 0x7

    sub-double v48, v6, v12

    aput-wide v48, p1, v46

    .line 6363
    sub-double v8, v20, v26

    .line 6364
    add-double v6, v18, v28

    .line 6365
    sub-double v12, v36, v44

    .line 6366
    sub-double v10, v34, v42

    .line 6367
    add-int/lit8 v46, p2, 0x8

    add-double v48, v8, v12

    aput-wide v48, p1, v46

    .line 6368
    add-int/lit8 v46, p2, 0x9

    add-double v48, v6, v10

    aput-wide v48, p1, v46

    .line 6369
    add-int/lit8 v46, p2, 0xa

    sub-double v48, v8, v12

    aput-wide v48, p1, v46

    .line 6370
    add-int/lit8 v46, p2, 0xb

    sub-double v48, v6, v10

    aput-wide v48, p1, v46

    .line 6371
    add-double v8, v20, v26

    .line 6372
    sub-double v6, v18, v28

    .line 6373
    add-double v12, v36, v44

    .line 6374
    add-double v10, v34, v42

    .line 6375
    add-int/lit8 v46, p2, 0xc

    sub-double v48, v8, v10

    aput-wide v48, p1, v46

    .line 6376
    add-int/lit8 v46, p2, 0xd

    add-double v48, v6, v12

    aput-wide v48, p1, v46

    .line 6377
    add-int/lit8 v46, p2, 0xe

    add-double v48, v8, v10

    aput-wide v48, p1, v46

    .line 6378
    add-int/lit8 v46, p2, 0xf

    sub-double v48, v6, v12

    aput-wide v48, p1, v46

    .line 6379
    return-void
.end method

.method private cftf161([DI[DI)V
    .registers 95
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "w"    # [D
    .param p4, "startw"    # I

    .prologue
    .line 5929
    add-int/lit8 v86, p4, 0x1

    aget-wide v4, p3, v86

    .line 5930
    .local v4, "wn4r":D
    add-int/lit8 v86, p4, 0x2

    aget-wide v2, p3, v86

    .line 5931
    .local v2, "wk1r":D
    add-int/lit8 v86, p4, 0x3

    aget-wide v0, p3, v86

    .line 5933
    .local v0, "wk1i":D
    aget-wide v86, p1, p2

    add-int/lit8 v88, p2, 0x10

    aget-wide v88, p1, v88

    add-double v8, v86, v88

    .line 5934
    .local v8, "x0r":D
    add-int/lit8 v86, p2, 0x1

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x11

    aget-wide v88, p1, v88

    add-double v6, v86, v88

    .line 5935
    .local v6, "x0i":D
    aget-wide v86, p1, p2

    add-int/lit8 v88, p2, 0x10

    aget-wide v88, p1, v88

    sub-double v12, v86, v88

    .line 5936
    .local v12, "x1r":D
    add-int/lit8 v86, p2, 0x1

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x11

    aget-wide v88, p1, v88

    sub-double v10, v86, v88

    .line 5937
    .local v10, "x1i":D
    add-int/lit8 v86, p2, 0x8

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x18

    aget-wide v88, p1, v88

    add-double v16, v86, v88

    .line 5938
    .local v16, "x2r":D
    add-int/lit8 v86, p2, 0x9

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x19

    aget-wide v88, p1, v88

    add-double v14, v86, v88

    .line 5939
    .local v14, "x2i":D
    add-int/lit8 v86, p2, 0x8

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x18

    aget-wide v88, p1, v88

    sub-double v20, v86, v88

    .line 5940
    .local v20, "x3r":D
    add-int/lit8 v86, p2, 0x9

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x19

    aget-wide v88, p1, v88

    sub-double v18, v86, v88

    .line 5941
    .local v18, "x3i":D
    add-double v24, v8, v16

    .line 5942
    .local v24, "y0r":D
    add-double v22, v6, v14

    .line 5943
    .local v22, "y0i":D
    sub-double v64, v8, v16

    .line 5944
    .local v64, "y4r":D
    sub-double v62, v6, v14

    .line 5945
    .local v62, "y4i":D
    sub-double v80, v12, v18

    .line 5946
    .local v80, "y8r":D
    add-double v78, v10, v20

    .line 5947
    .local v78, "y8i":D
    add-double v36, v12, v18

    .line 5948
    .local v36, "y12r":D
    sub-double v34, v10, v20

    .line 5949
    .local v34, "y12i":D
    add-int/lit8 v86, p2, 0x2

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x12

    aget-wide v88, p1, v88

    add-double v8, v86, v88

    .line 5950
    add-int/lit8 v86, p2, 0x3

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x13

    aget-wide v88, p1, v88

    add-double v6, v86, v88

    .line 5951
    add-int/lit8 v86, p2, 0x2

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x12

    aget-wide v88, p1, v88

    sub-double v12, v86, v88

    .line 5952
    add-int/lit8 v86, p2, 0x3

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x13

    aget-wide v88, p1, v88

    sub-double v10, v86, v88

    .line 5953
    add-int/lit8 v86, p2, 0xa

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x1a

    aget-wide v88, p1, v88

    add-double v16, v86, v88

    .line 5954
    add-int/lit8 v86, p2, 0xb

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x1b

    aget-wide v88, p1, v88

    add-double v14, v86, v88

    .line 5955
    add-int/lit8 v86, p2, 0xa

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x1a

    aget-wide v88, p1, v88

    sub-double v20, v86, v88

    .line 5956
    add-int/lit8 v86, p2, 0xb

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x1b

    aget-wide v88, p1, v88

    sub-double v18, v86, v88

    .line 5957
    add-double v52, v8, v16

    .line 5958
    .local v52, "y1r":D
    add-double v50, v6, v14

    .line 5959
    .local v50, "y1i":D
    sub-double v68, v8, v16

    .line 5960
    .local v68, "y5r":D
    sub-double v66, v6, v14

    .line 5961
    .local v66, "y5i":D
    sub-double v8, v12, v18

    .line 5962
    add-double v6, v10, v20

    .line 5963
    mul-double v86, v2, v8

    mul-double v88, v0, v6

    sub-double v84, v86, v88

    .line 5964
    .local v84, "y9r":D
    mul-double v86, v2, v6

    mul-double v88, v0, v8

    add-double v82, v86, v88

    .line 5965
    .local v82, "y9i":D
    add-double v8, v12, v18

    .line 5966
    sub-double v6, v10, v20

    .line 5967
    mul-double v86, v0, v8

    mul-double v88, v2, v6

    sub-double v40, v86, v88

    .line 5968
    .local v40, "y13r":D
    mul-double v86, v0, v6

    mul-double v88, v2, v8

    add-double v38, v86, v88

    .line 5969
    .local v38, "y13i":D
    add-int/lit8 v86, p2, 0x4

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x14

    aget-wide v88, p1, v88

    add-double v8, v86, v88

    .line 5970
    add-int/lit8 v86, p2, 0x5

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x15

    aget-wide v88, p1, v88

    add-double v6, v86, v88

    .line 5971
    add-int/lit8 v86, p2, 0x4

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x14

    aget-wide v88, p1, v88

    sub-double v12, v86, v88

    .line 5972
    add-int/lit8 v86, p2, 0x5

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x15

    aget-wide v88, p1, v88

    sub-double v10, v86, v88

    .line 5973
    add-int/lit8 v86, p2, 0xc

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x1c

    aget-wide v88, p1, v88

    add-double v16, v86, v88

    .line 5974
    add-int/lit8 v86, p2, 0xd

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x1d

    aget-wide v88, p1, v88

    add-double v14, v86, v88

    .line 5975
    add-int/lit8 v86, p2, 0xc

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x1c

    aget-wide v88, p1, v88

    sub-double v20, v86, v88

    .line 5976
    add-int/lit8 v86, p2, 0xd

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x1d

    aget-wide v88, p1, v88

    sub-double v18, v86, v88

    .line 5977
    add-double v56, v8, v16

    .line 5978
    .local v56, "y2r":D
    add-double v54, v6, v14

    .line 5979
    .local v54, "y2i":D
    sub-double v72, v8, v16

    .line 5980
    .local v72, "y6r":D
    sub-double v70, v6, v14

    .line 5981
    .local v70, "y6i":D
    sub-double v8, v12, v18

    .line 5982
    add-double v6, v10, v20

    .line 5983
    sub-double v86, v8, v6

    mul-double v28, v4, v86

    .line 5984
    .local v28, "y10r":D
    add-double v86, v6, v8

    mul-double v26, v4, v86

    .line 5985
    .local v26, "y10i":D
    add-double v8, v12, v18

    .line 5986
    sub-double v6, v10, v20

    .line 5987
    add-double v86, v8, v6

    mul-double v44, v4, v86

    .line 5988
    .local v44, "y14r":D
    sub-double v86, v6, v8

    mul-double v42, v4, v86

    .line 5989
    .local v42, "y14i":D
    add-int/lit8 v86, p2, 0x6

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x16

    aget-wide v88, p1, v88

    add-double v8, v86, v88

    .line 5990
    add-int/lit8 v86, p2, 0x7

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x17

    aget-wide v88, p1, v88

    add-double v6, v86, v88

    .line 5991
    add-int/lit8 v86, p2, 0x6

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x16

    aget-wide v88, p1, v88

    sub-double v12, v86, v88

    .line 5992
    add-int/lit8 v86, p2, 0x7

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x17

    aget-wide v88, p1, v88

    sub-double v10, v86, v88

    .line 5993
    add-int/lit8 v86, p2, 0xe

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x1e

    aget-wide v88, p1, v88

    add-double v16, v86, v88

    .line 5994
    add-int/lit8 v86, p2, 0xf

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x1f

    aget-wide v88, p1, v88

    add-double v14, v86, v88

    .line 5995
    add-int/lit8 v86, p2, 0xe

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x1e

    aget-wide v88, p1, v88

    sub-double v20, v86, v88

    .line 5996
    add-int/lit8 v86, p2, 0xf

    aget-wide v86, p1, v86

    add-int/lit8 v88, p2, 0x1f

    aget-wide v88, p1, v88

    sub-double v18, v86, v88

    .line 5997
    add-double v60, v8, v16

    .line 5998
    .local v60, "y3r":D
    add-double v58, v6, v14

    .line 5999
    .local v58, "y3i":D
    sub-double v76, v8, v16

    .line 6000
    .local v76, "y7r":D
    sub-double v74, v6, v14

    .line 6001
    .local v74, "y7i":D
    sub-double v8, v12, v18

    .line 6002
    add-double v6, v10, v20

    .line 6003
    mul-double v86, v0, v8

    mul-double v88, v2, v6

    sub-double v32, v86, v88

    .line 6004
    .local v32, "y11r":D
    mul-double v86, v0, v6

    mul-double v88, v2, v8

    add-double v30, v86, v88

    .line 6005
    .local v30, "y11i":D
    add-double v8, v12, v18

    .line 6006
    sub-double v6, v10, v20

    .line 6007
    mul-double v86, v2, v8

    mul-double v88, v0, v6

    sub-double v48, v86, v88

    .line 6008
    .local v48, "y15r":D
    mul-double v86, v2, v6

    mul-double v88, v0, v8

    add-double v46, v86, v88

    .line 6009
    .local v46, "y15i":D
    sub-double v8, v36, v44

    .line 6010
    sub-double v6, v34, v42

    .line 6011
    add-double v12, v36, v44

    .line 6012
    add-double v10, v34, v42

    .line 6013
    sub-double v16, v40, v48

    .line 6014
    sub-double v14, v38, v46

    .line 6015
    add-double v20, v40, v48

    .line 6016
    add-double v18, v38, v46

    .line 6017
    add-int/lit8 v86, p2, 0x18

    add-double v88, v8, v16

    aput-wide v88, p1, v86

    .line 6018
    add-int/lit8 v86, p2, 0x19

    add-double v88, v6, v14

    aput-wide v88, p1, v86

    .line 6019
    add-int/lit8 v86, p2, 0x1a

    sub-double v88, v8, v16

    aput-wide v88, p1, v86

    .line 6020
    add-int/lit8 v86, p2, 0x1b

    sub-double v88, v6, v14

    aput-wide v88, p1, v86

    .line 6021
    add-int/lit8 v86, p2, 0x1c

    sub-double v88, v12, v18

    aput-wide v88, p1, v86

    .line 6022
    add-int/lit8 v86, p2, 0x1d

    add-double v88, v10, v20

    aput-wide v88, p1, v86

    .line 6023
    add-int/lit8 v86, p2, 0x1e

    add-double v88, v12, v18

    aput-wide v88, p1, v86

    .line 6024
    add-int/lit8 v86, p2, 0x1f

    sub-double v88, v10, v20

    aput-wide v88, p1, v86

    .line 6025
    add-double v8, v80, v28

    .line 6026
    add-double v6, v78, v26

    .line 6027
    sub-double v12, v80, v28

    .line 6028
    sub-double v10, v78, v26

    .line 6029
    add-double v16, v84, v32

    .line 6030
    add-double v14, v82, v30

    .line 6031
    sub-double v20, v84, v32

    .line 6032
    sub-double v18, v82, v30

    .line 6033
    add-int/lit8 v86, p2, 0x10

    add-double v88, v8, v16

    aput-wide v88, p1, v86

    .line 6034
    add-int/lit8 v86, p2, 0x11

    add-double v88, v6, v14

    aput-wide v88, p1, v86

    .line 6035
    add-int/lit8 v86, p2, 0x12

    sub-double v88, v8, v16

    aput-wide v88, p1, v86

    .line 6036
    add-int/lit8 v86, p2, 0x13

    sub-double v88, v6, v14

    aput-wide v88, p1, v86

    .line 6037
    add-int/lit8 v86, p2, 0x14

    sub-double v88, v12, v18

    aput-wide v88, p1, v86

    .line 6038
    add-int/lit8 v86, p2, 0x15

    add-double v88, v10, v20

    aput-wide v88, p1, v86

    .line 6039
    add-int/lit8 v86, p2, 0x16

    add-double v88, v12, v18

    aput-wide v88, p1, v86

    .line 6040
    add-int/lit8 v86, p2, 0x17

    sub-double v88, v10, v20

    aput-wide v88, p1, v86

    .line 6041
    sub-double v8, v68, v74

    .line 6042
    add-double v6, v66, v76

    .line 6043
    sub-double v86, v8, v6

    mul-double v16, v4, v86

    .line 6044
    add-double v86, v6, v8

    mul-double v14, v4, v86

    .line 6045
    add-double v8, v68, v74

    .line 6046
    sub-double v6, v66, v76

    .line 6047
    sub-double v86, v8, v6

    mul-double v20, v4, v86

    .line 6048
    add-double v86, v6, v8

    mul-double v18, v4, v86

    .line 6049
    sub-double v8, v64, v70

    .line 6050
    add-double v6, v62, v72

    .line 6051
    add-double v12, v64, v70

    .line 6052
    sub-double v10, v62, v72

    .line 6053
    add-int/lit8 v86, p2, 0x8

    add-double v88, v8, v16

    aput-wide v88, p1, v86

    .line 6054
    add-int/lit8 v86, p2, 0x9

    add-double v88, v6, v14

    aput-wide v88, p1, v86

    .line 6055
    add-int/lit8 v86, p2, 0xa

    sub-double v88, v8, v16

    aput-wide v88, p1, v86

    .line 6056
    add-int/lit8 v86, p2, 0xb

    sub-double v88, v6, v14

    aput-wide v88, p1, v86

    .line 6057
    add-int/lit8 v86, p2, 0xc

    sub-double v88, v12, v18

    aput-wide v88, p1, v86

    .line 6058
    add-int/lit8 v86, p2, 0xd

    add-double v88, v10, v20

    aput-wide v88, p1, v86

    .line 6059
    add-int/lit8 v86, p2, 0xe

    add-double v88, v12, v18

    aput-wide v88, p1, v86

    .line 6060
    add-int/lit8 v86, p2, 0xf

    sub-double v88, v10, v20

    aput-wide v88, p1, v86

    .line 6061
    add-double v8, v24, v56

    .line 6062
    add-double v6, v22, v54

    .line 6063
    sub-double v12, v24, v56

    .line 6064
    sub-double v10, v22, v54

    .line 6065
    add-double v16, v52, v60

    .line 6066
    add-double v14, v50, v58

    .line 6067
    sub-double v20, v52, v60

    .line 6068
    sub-double v18, v50, v58

    .line 6069
    add-double v86, v8, v16

    aput-wide v86, p1, p2

    .line 6070
    add-int/lit8 v86, p2, 0x1

    add-double v88, v6, v14

    aput-wide v88, p1, v86

    .line 6071
    add-int/lit8 v86, p2, 0x2

    sub-double v88, v8, v16

    aput-wide v88, p1, v86

    .line 6072
    add-int/lit8 v86, p2, 0x3

    sub-double v88, v6, v14

    aput-wide v88, p1, v86

    .line 6073
    add-int/lit8 v86, p2, 0x4

    sub-double v88, v12, v18

    aput-wide v88, p1, v86

    .line 6074
    add-int/lit8 v86, p2, 0x5

    add-double v88, v10, v20

    aput-wide v88, p1, v86

    .line 6075
    add-int/lit8 v86, p2, 0x6

    add-double v88, v12, v18

    aput-wide v88, p1, v86

    .line 6076
    add-int/lit8 v86, p2, 0x7

    sub-double v88, v10, v20

    aput-wide v88, p1, v86

    .line 6077
    return-void
.end method

.method private cftf162([DI[DI)V
    .registers 101
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "w"    # [D
    .param p4, "startw"    # I

    .prologue
    .line 6082
    add-int/lit8 v92, p4, 0x1

    aget-wide v14, p3, v92

    .line 6083
    .local v14, "wn4r":D
    add-int/lit8 v92, p4, 0x4

    aget-wide v4, p3, v92

    .line 6084
    .local v4, "wk1r":D
    add-int/lit8 v92, p4, 0x5

    aget-wide v2, p3, v92

    .line 6085
    .local v2, "wk1i":D
    add-int/lit8 v92, p4, 0x6

    aget-wide v12, p3, v92

    .line 6086
    .local v12, "wk3r":D
    add-int/lit8 v92, p4, 0x7

    aget-wide v92, p3, v92

    move-wide/from16 v0, v92

    neg-double v10, v0

    .line 6087
    .local v10, "wk3i":D
    add-int/lit8 v92, p4, 0x8

    aget-wide v8, p3, v92

    .line 6088
    .local v8, "wk2r":D
    add-int/lit8 v92, p4, 0x9

    aget-wide v6, p3, v92

    .line 6089
    .local v6, "wk2i":D
    aget-wide v92, p1, p2

    add-int/lit8 v94, p2, 0x11

    aget-wide v94, p1, v94

    sub-double v22, v92, v94

    .line 6090
    .local v22, "x1r":D
    add-int/lit8 v92, p2, 0x1

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x10

    aget-wide v94, p1, v94

    add-double v20, v92, v94

    .line 6091
    .local v20, "x1i":D
    add-int/lit8 v92, p2, 0x8

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x19

    aget-wide v94, p1, v94

    sub-double v18, v92, v94

    .line 6092
    .local v18, "x0r":D
    add-int/lit8 v92, p2, 0x9

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x18

    aget-wide v94, p1, v94

    add-double v16, v92, v94

    .line 6093
    .local v16, "x0i":D
    sub-double v92, v18, v16

    mul-double v26, v14, v92

    .line 6094
    .local v26, "x2r":D
    add-double v92, v16, v18

    mul-double v24, v14, v92

    .line 6095
    .local v24, "x2i":D
    add-double v30, v22, v26

    .line 6096
    .local v30, "y0r":D
    add-double v28, v20, v24

    .line 6097
    .local v28, "y0i":D
    sub-double v70, v22, v26

    .line 6098
    .local v70, "y4r":D
    sub-double v68, v20, v24

    .line 6099
    .local v68, "y4i":D
    aget-wide v92, p1, p2

    add-int/lit8 v94, p2, 0x11

    aget-wide v94, p1, v94

    add-double v22, v92, v94

    .line 6100
    add-int/lit8 v92, p2, 0x1

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x10

    aget-wide v94, p1, v94

    sub-double v20, v92, v94

    .line 6101
    add-int/lit8 v92, p2, 0x8

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x19

    aget-wide v94, p1, v94

    add-double v18, v92, v94

    .line 6102
    add-int/lit8 v92, p2, 0x9

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x18

    aget-wide v94, p1, v94

    sub-double v16, v92, v94

    .line 6103
    sub-double v92, v18, v16

    mul-double v26, v14, v92

    .line 6104
    add-double v92, v16, v18

    mul-double v24, v14, v92

    .line 6105
    sub-double v86, v22, v24

    .line 6106
    .local v86, "y8r":D
    add-double v84, v20, v26

    .line 6107
    .local v84, "y8i":D
    add-double v42, v22, v24

    .line 6108
    .local v42, "y12r":D
    sub-double v40, v20, v26

    .line 6109
    .local v40, "y12i":D
    add-int/lit8 v92, p2, 0x2

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x13

    aget-wide v94, p1, v94

    sub-double v18, v92, v94

    .line 6110
    add-int/lit8 v92, p2, 0x3

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x12

    aget-wide v94, p1, v94

    add-double v16, v92, v94

    .line 6111
    mul-double v92, v4, v18

    mul-double v94, v2, v16

    sub-double v22, v92, v94

    .line 6112
    mul-double v92, v4, v16

    mul-double v94, v2, v18

    add-double v20, v92, v94

    .line 6113
    add-int/lit8 v92, p2, 0xa

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x1b

    aget-wide v94, p1, v94

    sub-double v18, v92, v94

    .line 6114
    add-int/lit8 v92, p2, 0xb

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x1a

    aget-wide v94, p1, v94

    add-double v16, v92, v94

    .line 6115
    mul-double v92, v10, v18

    mul-double v94, v12, v16

    sub-double v26, v92, v94

    .line 6116
    mul-double v92, v10, v16

    mul-double v94, v12, v18

    add-double v24, v92, v94

    .line 6117
    add-double v58, v22, v26

    .line 6118
    .local v58, "y1r":D
    add-double v56, v20, v24

    .line 6119
    .local v56, "y1i":D
    sub-double v74, v22, v26

    .line 6120
    .local v74, "y5r":D
    sub-double v72, v20, v24

    .line 6121
    .local v72, "y5i":D
    add-int/lit8 v92, p2, 0x2

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x13

    aget-wide v94, p1, v94

    add-double v18, v92, v94

    .line 6122
    add-int/lit8 v92, p2, 0x3

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x12

    aget-wide v94, p1, v94

    sub-double v16, v92, v94

    .line 6123
    mul-double v92, v12, v18

    mul-double v94, v10, v16

    sub-double v22, v92, v94

    .line 6124
    mul-double v92, v12, v16

    mul-double v94, v10, v18

    add-double v20, v92, v94

    .line 6125
    add-int/lit8 v92, p2, 0xa

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x1b

    aget-wide v94, p1, v94

    add-double v18, v92, v94

    .line 6126
    add-int/lit8 v92, p2, 0xb

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x1a

    aget-wide v94, p1, v94

    sub-double v16, v92, v94

    .line 6127
    mul-double v92, v4, v18

    mul-double v94, v2, v16

    add-double v26, v92, v94

    .line 6128
    mul-double v92, v4, v16

    mul-double v94, v2, v18

    sub-double v24, v92, v94

    .line 6129
    sub-double v90, v22, v26

    .line 6130
    .local v90, "y9r":D
    sub-double v88, v20, v24

    .line 6131
    .local v88, "y9i":D
    add-double v46, v22, v26

    .line 6132
    .local v46, "y13r":D
    add-double v44, v20, v24

    .line 6133
    .local v44, "y13i":D
    add-int/lit8 v92, p2, 0x4

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x15

    aget-wide v94, p1, v94

    sub-double v18, v92, v94

    .line 6134
    add-int/lit8 v92, p2, 0x5

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x14

    aget-wide v94, p1, v94

    add-double v16, v92, v94

    .line 6135
    mul-double v92, v8, v18

    mul-double v94, v6, v16

    sub-double v22, v92, v94

    .line 6136
    mul-double v92, v8, v16

    mul-double v94, v6, v18

    add-double v20, v92, v94

    .line 6137
    add-int/lit8 v92, p2, 0xc

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x1d

    aget-wide v94, p1, v94

    sub-double v18, v92, v94

    .line 6138
    add-int/lit8 v92, p2, 0xd

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x1c

    aget-wide v94, p1, v94

    add-double v16, v92, v94

    .line 6139
    mul-double v92, v6, v18

    mul-double v94, v8, v16

    sub-double v26, v92, v94

    .line 6140
    mul-double v92, v6, v16

    mul-double v94, v8, v18

    add-double v24, v92, v94

    .line 6141
    add-double v62, v22, v26

    .line 6142
    .local v62, "y2r":D
    add-double v60, v20, v24

    .line 6143
    .local v60, "y2i":D
    sub-double v78, v22, v26

    .line 6144
    .local v78, "y6r":D
    sub-double v76, v20, v24

    .line 6145
    .local v76, "y6i":D
    add-int/lit8 v92, p2, 0x4

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x15

    aget-wide v94, p1, v94

    add-double v18, v92, v94

    .line 6146
    add-int/lit8 v92, p2, 0x5

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x14

    aget-wide v94, p1, v94

    sub-double v16, v92, v94

    .line 6147
    mul-double v92, v6, v18

    mul-double v94, v8, v16

    sub-double v22, v92, v94

    .line 6148
    mul-double v92, v6, v16

    mul-double v94, v8, v18

    add-double v20, v92, v94

    .line 6149
    add-int/lit8 v92, p2, 0xc

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x1d

    aget-wide v94, p1, v94

    add-double v18, v92, v94

    .line 6150
    add-int/lit8 v92, p2, 0xd

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x1c

    aget-wide v94, p1, v94

    sub-double v16, v92, v94

    .line 6151
    mul-double v92, v8, v18

    mul-double v94, v6, v16

    sub-double v26, v92, v94

    .line 6152
    mul-double v92, v8, v16

    mul-double v94, v6, v18

    add-double v24, v92, v94

    .line 6153
    sub-double v34, v22, v26

    .line 6154
    .local v34, "y10r":D
    sub-double v32, v20, v24

    .line 6155
    .local v32, "y10i":D
    add-double v50, v22, v26

    .line 6156
    .local v50, "y14r":D
    add-double v48, v20, v24

    .line 6157
    .local v48, "y14i":D
    add-int/lit8 v92, p2, 0x6

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x17

    aget-wide v94, p1, v94

    sub-double v18, v92, v94

    .line 6158
    add-int/lit8 v92, p2, 0x7

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x16

    aget-wide v94, p1, v94

    add-double v16, v92, v94

    .line 6159
    mul-double v92, v12, v18

    mul-double v94, v10, v16

    sub-double v22, v92, v94

    .line 6160
    mul-double v92, v12, v16

    mul-double v94, v10, v18

    add-double v20, v92, v94

    .line 6161
    add-int/lit8 v92, p2, 0xe

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x1f

    aget-wide v94, p1, v94

    sub-double v18, v92, v94

    .line 6162
    add-int/lit8 v92, p2, 0xf

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x1e

    aget-wide v94, p1, v94

    add-double v16, v92, v94

    .line 6163
    mul-double v92, v2, v18

    mul-double v94, v4, v16

    sub-double v26, v92, v94

    .line 6164
    mul-double v92, v2, v16

    mul-double v94, v4, v18

    add-double v24, v92, v94

    .line 6165
    add-double v66, v22, v26

    .line 6166
    .local v66, "y3r":D
    add-double v64, v20, v24

    .line 6167
    .local v64, "y3i":D
    sub-double v82, v22, v26

    .line 6168
    .local v82, "y7r":D
    sub-double v80, v20, v24

    .line 6169
    .local v80, "y7i":D
    add-int/lit8 v92, p2, 0x6

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x17

    aget-wide v94, p1, v94

    add-double v18, v92, v94

    .line 6170
    add-int/lit8 v92, p2, 0x7

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x16

    aget-wide v94, p1, v94

    sub-double v16, v92, v94

    .line 6171
    mul-double v92, v2, v18

    mul-double v94, v4, v16

    add-double v22, v92, v94

    .line 6172
    mul-double v92, v2, v16

    mul-double v94, v4, v18

    sub-double v20, v92, v94

    .line 6173
    add-int/lit8 v92, p2, 0xe

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x1f

    aget-wide v94, p1, v94

    add-double v18, v92, v94

    .line 6174
    add-int/lit8 v92, p2, 0xf

    aget-wide v92, p1, v92

    add-int/lit8 v94, p2, 0x1e

    aget-wide v94, p1, v94

    sub-double v16, v92, v94

    .line 6175
    mul-double v92, v10, v18

    mul-double v94, v12, v16

    sub-double v26, v92, v94

    .line 6176
    mul-double v92, v10, v16

    mul-double v94, v12, v18

    add-double v24, v92, v94

    .line 6177
    add-double v38, v22, v26

    .line 6178
    .local v38, "y11r":D
    add-double v36, v20, v24

    .line 6179
    .local v36, "y11i":D
    sub-double v54, v22, v26

    .line 6180
    .local v54, "y15r":D
    sub-double v52, v20, v24

    .line 6181
    .local v52, "y15i":D
    add-double v22, v30, v62

    .line 6182
    add-double v20, v28, v60

    .line 6183
    add-double v26, v58, v66

    .line 6184
    add-double v24, v56, v64

    .line 6185
    add-double v92, v22, v26

    aput-wide v92, p1, p2

    .line 6186
    add-int/lit8 v92, p2, 0x1

    add-double v94, v20, v24

    aput-wide v94, p1, v92

    .line 6187
    add-int/lit8 v92, p2, 0x2

    sub-double v94, v22, v26

    aput-wide v94, p1, v92

    .line 6188
    add-int/lit8 v92, p2, 0x3

    sub-double v94, v20, v24

    aput-wide v94, p1, v92

    .line 6189
    sub-double v22, v30, v62

    .line 6190
    sub-double v20, v28, v60

    .line 6191
    sub-double v26, v58, v66

    .line 6192
    sub-double v24, v56, v64

    .line 6193
    add-int/lit8 v92, p2, 0x4

    sub-double v94, v22, v24

    aput-wide v94, p1, v92

    .line 6194
    add-int/lit8 v92, p2, 0x5

    add-double v94, v20, v26

    aput-wide v94, p1, v92

    .line 6195
    add-int/lit8 v92, p2, 0x6

    add-double v94, v22, v24

    aput-wide v94, p1, v92

    .line 6196
    add-int/lit8 v92, p2, 0x7

    sub-double v94, v20, v26

    aput-wide v94, p1, v92

    .line 6197
    sub-double v22, v70, v76

    .line 6198
    add-double v20, v68, v78

    .line 6199
    sub-double v18, v74, v80

    .line 6200
    add-double v16, v72, v82

    .line 6201
    sub-double v92, v18, v16

    mul-double v26, v14, v92

    .line 6202
    add-double v92, v16, v18

    mul-double v24, v14, v92

    .line 6203
    add-int/lit8 v92, p2, 0x8

    add-double v94, v22, v26

    aput-wide v94, p1, v92

    .line 6204
    add-int/lit8 v92, p2, 0x9

    add-double v94, v20, v24

    aput-wide v94, p1, v92

    .line 6205
    add-int/lit8 v92, p2, 0xa

    sub-double v94, v22, v26

    aput-wide v94, p1, v92

    .line 6206
    add-int/lit8 v92, p2, 0xb

    sub-double v94, v20, v24

    aput-wide v94, p1, v92

    .line 6207
    add-double v22, v70, v76

    .line 6208
    sub-double v20, v68, v78

    .line 6209
    add-double v18, v74, v80

    .line 6210
    sub-double v16, v72, v82

    .line 6211
    sub-double v92, v18, v16

    mul-double v26, v14, v92

    .line 6212
    add-double v92, v16, v18

    mul-double v24, v14, v92

    .line 6213
    add-int/lit8 v92, p2, 0xc

    sub-double v94, v22, v24

    aput-wide v94, p1, v92

    .line 6214
    add-int/lit8 v92, p2, 0xd

    add-double v94, v20, v26

    aput-wide v94, p1, v92

    .line 6215
    add-int/lit8 v92, p2, 0xe

    add-double v94, v22, v24

    aput-wide v94, p1, v92

    .line 6216
    add-int/lit8 v92, p2, 0xf

    sub-double v94, v20, v26

    aput-wide v94, p1, v92

    .line 6217
    add-double v22, v86, v34

    .line 6218
    add-double v20, v84, v32

    .line 6219
    sub-double v26, v90, v38

    .line 6220
    sub-double v24, v88, v36

    .line 6221
    add-int/lit8 v92, p2, 0x10

    add-double v94, v22, v26

    aput-wide v94, p1, v92

    .line 6222
    add-int/lit8 v92, p2, 0x11

    add-double v94, v20, v24

    aput-wide v94, p1, v92

    .line 6223
    add-int/lit8 v92, p2, 0x12

    sub-double v94, v22, v26

    aput-wide v94, p1, v92

    .line 6224
    add-int/lit8 v92, p2, 0x13

    sub-double v94, v20, v24

    aput-wide v94, p1, v92

    .line 6225
    sub-double v22, v86, v34

    .line 6226
    sub-double v20, v84, v32

    .line 6227
    add-double v26, v90, v38

    .line 6228
    add-double v24, v88, v36

    .line 6229
    add-int/lit8 v92, p2, 0x14

    sub-double v94, v22, v24

    aput-wide v94, p1, v92

    .line 6230
    add-int/lit8 v92, p2, 0x15

    add-double v94, v20, v26

    aput-wide v94, p1, v92

    .line 6231
    add-int/lit8 v92, p2, 0x16

    add-double v94, v22, v24

    aput-wide v94, p1, v92

    .line 6232
    add-int/lit8 v92, p2, 0x17

    sub-double v94, v20, v26

    aput-wide v94, p1, v92

    .line 6233
    sub-double v22, v42, v48

    .line 6234
    add-double v20, v40, v50

    .line 6235
    add-double v18, v46, v52

    .line 6236
    sub-double v16, v44, v54

    .line 6237
    sub-double v92, v18, v16

    mul-double v26, v14, v92

    .line 6238
    add-double v92, v16, v18

    mul-double v24, v14, v92

    .line 6239
    add-int/lit8 v92, p2, 0x18

    add-double v94, v22, v26

    aput-wide v94, p1, v92

    .line 6240
    add-int/lit8 v92, p2, 0x19

    add-double v94, v20, v24

    aput-wide v94, p1, v92

    .line 6241
    add-int/lit8 v92, p2, 0x1a

    sub-double v94, v22, v26

    aput-wide v94, p1, v92

    .line 6242
    add-int/lit8 v92, p2, 0x1b

    sub-double v94, v20, v24

    aput-wide v94, p1, v92

    .line 6243
    add-double v22, v42, v48

    .line 6244
    sub-double v20, v40, v50

    .line 6245
    sub-double v18, v46, v52

    .line 6246
    add-double v16, v44, v54

    .line 6247
    sub-double v92, v18, v16

    mul-double v26, v14, v92

    .line 6248
    add-double v92, v16, v18

    mul-double v24, v14, v92

    .line 6249
    add-int/lit8 v92, p2, 0x1c

    sub-double v94, v22, v24

    aput-wide v94, p1, v92

    .line 6250
    add-int/lit8 v92, p2, 0x1d

    add-double v94, v20, v26

    aput-wide v94, p1, v92

    .line 6251
    add-int/lit8 v92, p2, 0x1e

    add-double v94, v22, v24

    aput-wide v94, p1, v92

    .line 6252
    add-int/lit8 v92, p2, 0x1f

    sub-double v94, v20, v26

    aput-wide v94, p1, v92

    .line 6253
    return-void
.end method

.method private cftf1st(I[DI[DI)V
    .registers 82
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "w"    # [D
    .param p5, "startw"    # I

    .prologue
    .line 5035
    shr-int/lit8 v19, p1, 0x3

    .line 5036
    .local v19, "mh":I
    mul-int/lit8 v18, v19, 0x2

    .line 5037
    .local v18, "m":I
    move/from16 v14, v18

    .line 5038
    .local v14, "j1":I
    add-int v15, v18, v18

    .line 5039
    .local v15, "j2":I
    add-int v16, v15, v18

    .line 5040
    .local v16, "j3":I
    add-int v7, p3, v18

    .line 5041
    .local v7, "idx1":I
    add-int v8, p3, v15

    .line 5042
    .local v8, "idx2":I
    add-int v9, p3, v16

    .line 5043
    .local v9, "idx3":I
    aget-wide v70, p2, p3

    aget-wide v72, p2, v8

    add-double v40, v70, v72

    .line 5044
    .local v40, "x0r":D
    add-int/lit8 v70, p3, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x1

    aget-wide v72, p2, v72

    add-double v38, v70, v72

    .line 5045
    .local v38, "x0i":D
    aget-wide v70, p2, p3

    aget-wide v72, p2, v8

    sub-double v44, v70, v72

    .line 5046
    .local v44, "x1r":D
    add-int/lit8 v70, p3, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x1

    aget-wide v72, p2, v72

    sub-double v42, v70, v72

    .line 5047
    .local v42, "x1i":D
    aget-wide v70, p2, v7

    aget-wide v72, p2, v9

    add-double v48, v70, v72

    .line 5048
    .local v48, "x2r":D
    add-int/lit8 v70, v7, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x1

    aget-wide v72, p2, v72

    add-double v46, v70, v72

    .line 5049
    .local v46, "x2i":D
    aget-wide v70, p2, v7

    aget-wide v72, p2, v9

    sub-double v52, v70, v72

    .line 5050
    .local v52, "x3r":D
    add-int/lit8 v70, v7, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x1

    aget-wide v72, p2, v72

    sub-double v50, v70, v72

    .line 5051
    .local v50, "x3i":D
    add-double v70, v40, v48

    aput-wide v70, p2, p3

    .line 5052
    add-int/lit8 v70, p3, 0x1

    add-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5053
    sub-double v70, v40, v48

    aput-wide v70, p2, v7

    .line 5054
    add-int/lit8 v70, v7, 0x1

    sub-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5055
    sub-double v70, v44, v50

    aput-wide v70, p2, v8

    .line 5056
    add-int/lit8 v70, v8, 0x1

    add-double v72, v42, v52

    aput-wide v72, p2, v70

    .line 5057
    add-double v70, v44, v50

    aput-wide v70, p2, v9

    .line 5058
    add-int/lit8 v70, v9, 0x1

    sub-double v72, v42, v52

    aput-wide v72, p2, v70

    .line 5059
    add-int/lit8 v70, p5, 0x1

    aget-wide v36, p4, v70

    .line 5060
    .local v36, "wn4r":D
    add-int/lit8 v70, p5, 0x2

    aget-wide v2, p4, v70

    .line 5061
    .local v2, "csc1":D
    add-int/lit8 v70, p5, 0x3

    aget-wide v4, p4, v70

    .line 5062
    .local v4, "csc3":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    .line 5063
    .local v22, "wd1r":D
    const-wide/16 v20, 0x0

    .line 5064
    .local v20, "wd1i":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    .line 5065
    .local v26, "wd3r":D
    const-wide/16 v24, 0x0

    .line 5066
    .local v24, "wd3i":D
    const/16 v17, 0x0

    .line 5067
    .local v17, "k":I
    const/4 v12, 0x2

    .local v12, "j":I
    :goto_8f
    add-int/lit8 v70, v19, -0x2

    move/from16 v0, v70

    if-ge v12, v0, :cond_31b

    .line 5068
    add-int/lit8 v17, v17, 0x4

    .line 5069
    add-int v10, p5, v17

    .line 5070
    .local v10, "idx4":I
    aget-wide v70, p4, v10

    add-double v70, v70, v22

    mul-double v30, v2, v70

    .line 5071
    .local v30, "wk1r":D
    add-int/lit8 v70, v10, 0x1

    aget-wide v70, p4, v70

    add-double v70, v70, v20

    mul-double v28, v2, v70

    .line 5072
    .local v28, "wk1i":D
    add-int/lit8 v70, v10, 0x2

    aget-wide v70, p4, v70

    add-double v70, v70, v26

    mul-double v34, v4, v70

    .line 5073
    .local v34, "wk3r":D
    add-int/lit8 v70, v10, 0x3

    aget-wide v70, p4, v70

    add-double v70, v70, v24

    mul-double v32, v4, v70

    .line 5074
    .local v32, "wk3i":D
    aget-wide v22, p4, v10

    .line 5075
    add-int/lit8 v70, v10, 0x1

    aget-wide v20, p4, v70

    .line 5076
    add-int/lit8 v70, v10, 0x2

    aget-wide v26, p4, v70

    .line 5077
    add-int/lit8 v70, v10, 0x3

    aget-wide v24, p4, v70

    .line 5078
    add-int v14, v12, v18

    .line 5079
    add-int v15, v14, v18

    .line 5080
    add-int v16, v15, v18

    .line 5081
    add-int v7, p3, v14

    .line 5082
    add-int v8, p3, v15

    .line 5083
    add-int v9, p3, v16

    .line 5084
    add-int v11, p3, v12

    .line 5085
    .local v11, "idx5":I
    aget-wide v70, p2, v11

    aget-wide v72, p2, v8

    add-double v40, v70, v72

    .line 5086
    add-int/lit8 v70, v11, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x1

    aget-wide v72, p2, v72

    add-double v38, v70, v72

    .line 5087
    aget-wide v70, p2, v11

    aget-wide v72, p2, v8

    sub-double v44, v70, v72

    .line 5088
    add-int/lit8 v70, v11, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x1

    aget-wide v72, p2, v72

    sub-double v42, v70, v72

    .line 5089
    add-int/lit8 v70, v11, 0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x2

    aget-wide v72, p2, v72

    add-double v56, v70, v72

    .line 5090
    .local v56, "y0r":D
    add-int/lit8 v70, v11, 0x3

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x3

    aget-wide v72, p2, v72

    add-double v54, v70, v72

    .line 5091
    .local v54, "y0i":D
    add-int/lit8 v70, v11, 0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x2

    aget-wide v72, p2, v72

    sub-double v60, v70, v72

    .line 5092
    .local v60, "y1r":D
    add-int/lit8 v70, v11, 0x3

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x3

    aget-wide v72, p2, v72

    sub-double v58, v70, v72

    .line 5093
    .local v58, "y1i":D
    aget-wide v70, p2, v7

    aget-wide v72, p2, v9

    add-double v48, v70, v72

    .line 5094
    add-int/lit8 v70, v7, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x1

    aget-wide v72, p2, v72

    add-double v46, v70, v72

    .line 5095
    aget-wide v70, p2, v7

    aget-wide v72, p2, v9

    sub-double v52, v70, v72

    .line 5096
    add-int/lit8 v70, v7, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x1

    aget-wide v72, p2, v72

    sub-double v50, v70, v72

    .line 5097
    add-int/lit8 v70, v7, 0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x2

    aget-wide v72, p2, v72

    add-double v64, v70, v72

    .line 5098
    .local v64, "y2r":D
    add-int/lit8 v70, v7, 0x3

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x3

    aget-wide v72, p2, v72

    add-double v62, v70, v72

    .line 5099
    .local v62, "y2i":D
    add-int/lit8 v70, v7, 0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x2

    aget-wide v72, p2, v72

    sub-double v68, v70, v72

    .line 5100
    .local v68, "y3r":D
    add-int/lit8 v70, v7, 0x3

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x3

    aget-wide v72, p2, v72

    sub-double v66, v70, v72

    .line 5101
    .local v66, "y3i":D
    add-double v70, v40, v48

    aput-wide v70, p2, v11

    .line 5102
    add-int/lit8 v70, v11, 0x1

    add-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5103
    add-int/lit8 v70, v11, 0x2

    add-double v72, v56, v64

    aput-wide v72, p2, v70

    .line 5104
    add-int/lit8 v70, v11, 0x3

    add-double v72, v54, v62

    aput-wide v72, p2, v70

    .line 5105
    sub-double v70, v40, v48

    aput-wide v70, p2, v7

    .line 5106
    add-int/lit8 v70, v7, 0x1

    sub-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5107
    add-int/lit8 v70, v7, 0x2

    sub-double v72, v56, v64

    aput-wide v72, p2, v70

    .line 5108
    add-int/lit8 v70, v7, 0x3

    sub-double v72, v54, v62

    aput-wide v72, p2, v70

    .line 5109
    sub-double v40, v44, v50

    .line 5110
    add-double v38, v42, v52

    .line 5111
    mul-double v70, v30, v40

    mul-double v72, v28, v38

    sub-double v70, v70, v72

    aput-wide v70, p2, v8

    .line 5112
    add-int/lit8 v70, v8, 0x1

    mul-double v72, v30, v38

    mul-double v74, v28, v40

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5113
    sub-double v40, v60, v66

    .line 5114
    add-double v38, v58, v68

    .line 5115
    add-int/lit8 v70, v8, 0x2

    mul-double v72, v22, v40

    mul-double v74, v20, v38

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5116
    add-int/lit8 v70, v8, 0x3

    mul-double v72, v22, v38

    mul-double v74, v20, v40

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5117
    add-double v40, v44, v50

    .line 5118
    sub-double v38, v42, v52

    .line 5119
    mul-double v70, v34, v40

    mul-double v72, v32, v38

    add-double v70, v70, v72

    aput-wide v70, p2, v9

    .line 5120
    add-int/lit8 v70, v9, 0x1

    mul-double v72, v34, v38

    mul-double v74, v32, v40

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5121
    add-double v40, v60, v66

    .line 5122
    sub-double v38, v58, v68

    .line 5123
    add-int/lit8 v70, v9, 0x2

    mul-double v72, v26, v40

    mul-double v74, v24, v38

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5124
    add-int/lit8 v70, v9, 0x3

    mul-double v72, v26, v38

    mul-double v74, v24, v40

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5125
    sub-int v13, v18, v12

    .line 5126
    .local v13, "j0":I
    add-int v14, v13, v18

    .line 5127
    add-int v15, v14, v18

    .line 5128
    add-int v16, v15, v18

    .line 5129
    add-int v6, p3, v13

    .line 5130
    .local v6, "idx0":I
    add-int v7, p3, v14

    .line 5131
    add-int v8, p3, v15

    .line 5132
    add-int v9, p3, v16

    .line 5133
    aget-wide v70, p2, v6

    aget-wide v72, p2, v8

    add-double v40, v70, v72

    .line 5134
    add-int/lit8 v70, v6, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x1

    aget-wide v72, p2, v72

    add-double v38, v70, v72

    .line 5135
    aget-wide v70, p2, v6

    aget-wide v72, p2, v8

    sub-double v44, v70, v72

    .line 5136
    add-int/lit8 v70, v6, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x1

    aget-wide v72, p2, v72

    sub-double v42, v70, v72

    .line 5137
    add-int/lit8 v70, v6, -0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, -0x2

    aget-wide v72, p2, v72

    add-double v56, v70, v72

    .line 5138
    add-int/lit8 v70, v6, -0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, -0x1

    aget-wide v72, p2, v72

    add-double v54, v70, v72

    .line 5139
    add-int/lit8 v70, v6, -0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, -0x2

    aget-wide v72, p2, v72

    sub-double v60, v70, v72

    .line 5140
    add-int/lit8 v70, v6, -0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, -0x1

    aget-wide v72, p2, v72

    sub-double v58, v70, v72

    .line 5141
    aget-wide v70, p2, v7

    aget-wide v72, p2, v9

    add-double v48, v70, v72

    .line 5142
    add-int/lit8 v70, v7, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x1

    aget-wide v72, p2, v72

    add-double v46, v70, v72

    .line 5143
    aget-wide v70, p2, v7

    aget-wide v72, p2, v9

    sub-double v52, v70, v72

    .line 5144
    add-int/lit8 v70, v7, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x1

    aget-wide v72, p2, v72

    sub-double v50, v70, v72

    .line 5145
    add-int/lit8 v70, v7, -0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, -0x2

    aget-wide v72, p2, v72

    add-double v64, v70, v72

    .line 5146
    add-int/lit8 v70, v7, -0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, -0x1

    aget-wide v72, p2, v72

    add-double v62, v70, v72

    .line 5147
    add-int/lit8 v70, v7, -0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, -0x2

    aget-wide v72, p2, v72

    sub-double v68, v70, v72

    .line 5148
    add-int/lit8 v70, v7, -0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, -0x1

    aget-wide v72, p2, v72

    sub-double v66, v70, v72

    .line 5149
    add-double v70, v40, v48

    aput-wide v70, p2, v6

    .line 5150
    add-int/lit8 v70, v6, 0x1

    add-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5151
    add-int/lit8 v70, v6, -0x2

    add-double v72, v56, v64

    aput-wide v72, p2, v70

    .line 5152
    add-int/lit8 v70, v6, -0x1

    add-double v72, v54, v62

    aput-wide v72, p2, v70

    .line 5153
    sub-double v70, v40, v48

    aput-wide v70, p2, v7

    .line 5154
    add-int/lit8 v70, v7, 0x1

    sub-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5155
    add-int/lit8 v70, v7, -0x2

    sub-double v72, v56, v64

    aput-wide v72, p2, v70

    .line 5156
    add-int/lit8 v70, v7, -0x1

    sub-double v72, v54, v62

    aput-wide v72, p2, v70

    .line 5157
    sub-double v40, v44, v50

    .line 5158
    add-double v38, v42, v52

    .line 5159
    mul-double v70, v28, v40

    mul-double v72, v30, v38

    sub-double v70, v70, v72

    aput-wide v70, p2, v8

    .line 5160
    add-int/lit8 v70, v8, 0x1

    mul-double v72, v28, v38

    mul-double v74, v30, v40

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5161
    sub-double v40, v60, v66

    .line 5162
    add-double v38, v58, v68

    .line 5163
    add-int/lit8 v70, v8, -0x2

    mul-double v72, v20, v40

    mul-double v74, v22, v38

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5164
    add-int/lit8 v70, v8, -0x1

    mul-double v72, v20, v38

    mul-double v74, v22, v40

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5165
    add-double v40, v44, v50

    .line 5166
    sub-double v38, v42, v52

    .line 5167
    mul-double v70, v32, v40

    mul-double v72, v34, v38

    add-double v70, v70, v72

    aput-wide v70, p2, v9

    .line 5168
    add-int/lit8 v70, v9, 0x1

    mul-double v72, v32, v38

    mul-double v74, v34, v40

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5169
    add-double v40, v60, v66

    .line 5170
    sub-double v38, v58, v68

    .line 5171
    add-int v70, p3, v16

    add-int/lit8 v70, v70, -0x2

    mul-double v72, v24, v40

    mul-double v74, v26, v38

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5172
    add-int v70, p3, v16

    add-int/lit8 v70, v70, -0x1

    mul-double v72, v24, v38

    mul-double v74, v26, v40

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5067
    add-int/lit8 v12, v12, 0x4

    goto/16 :goto_8f

    .line 5174
    .end local v6    # "idx0":I
    .end local v10    # "idx4":I
    .end local v11    # "idx5":I
    .end local v13    # "j0":I
    .end local v28    # "wk1i":D
    .end local v30    # "wk1r":D
    .end local v32    # "wk3i":D
    .end local v34    # "wk3r":D
    .end local v54    # "y0i":D
    .end local v56    # "y0r":D
    .end local v58    # "y1i":D
    .end local v60    # "y1r":D
    .end local v62    # "y2i":D
    .end local v64    # "y2r":D
    .end local v66    # "y3i":D
    .end local v68    # "y3r":D
    :cond_31b
    add-double v70, v22, v36

    mul-double v30, v2, v70

    .line 5175
    .restart local v30    # "wk1r":D
    add-double v70, v20, v36

    mul-double v28, v2, v70

    .line 5176
    .restart local v28    # "wk1i":D
    sub-double v70, v26, v36

    mul-double v34, v4, v70

    .line 5177
    .restart local v34    # "wk3r":D
    sub-double v70, v24, v36

    mul-double v32, v4, v70

    .line 5178
    .restart local v32    # "wk3i":D
    move/from16 v13, v19

    .line 5179
    .restart local v13    # "j0":I
    add-int v14, v19, v18

    .line 5180
    add-int v15, v14, v18

    .line 5181
    add-int v16, v15, v18

    .line 5182
    add-int v6, p3, v19

    .line 5183
    .restart local v6    # "idx0":I
    add-int v7, p3, v14

    .line 5184
    add-int v8, p3, v15

    .line 5185
    add-int v9, p3, v16

    .line 5186
    add-int/lit8 v70, v6, -0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, -0x2

    aget-wide v72, p2, v72

    add-double v40, v70, v72

    .line 5187
    add-int/lit8 v70, v6, -0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, -0x1

    aget-wide v72, p2, v72

    add-double v38, v70, v72

    .line 5188
    add-int/lit8 v70, v6, -0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, -0x2

    aget-wide v72, p2, v72

    sub-double v44, v70, v72

    .line 5189
    add-int/lit8 v70, v6, -0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, -0x1

    aget-wide v72, p2, v72

    sub-double v42, v70, v72

    .line 5190
    add-int/lit8 v70, v7, -0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, -0x2

    aget-wide v72, p2, v72

    add-double v48, v70, v72

    .line 5191
    add-int/lit8 v70, v7, -0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, -0x1

    aget-wide v72, p2, v72

    add-double v46, v70, v72

    .line 5192
    add-int/lit8 v70, v7, -0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, -0x2

    aget-wide v72, p2, v72

    sub-double v52, v70, v72

    .line 5193
    add-int/lit8 v70, v7, -0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, -0x1

    aget-wide v72, p2, v72

    sub-double v50, v70, v72

    .line 5194
    add-int/lit8 v70, v6, -0x2

    add-double v72, v40, v48

    aput-wide v72, p2, v70

    .line 5195
    add-int/lit8 v70, v6, -0x1

    add-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5196
    add-int/lit8 v70, v7, -0x2

    sub-double v72, v40, v48

    aput-wide v72, p2, v70

    .line 5197
    add-int/lit8 v70, v7, -0x1

    sub-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5198
    sub-double v40, v44, v50

    .line 5199
    add-double v38, v42, v52

    .line 5200
    add-int/lit8 v70, v8, -0x2

    mul-double v72, v30, v40

    mul-double v74, v28, v38

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5201
    add-int/lit8 v70, v8, -0x1

    mul-double v72, v30, v38

    mul-double v74, v28, v40

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5202
    add-double v40, v44, v50

    .line 5203
    sub-double v38, v42, v52

    .line 5204
    add-int/lit8 v70, v9, -0x2

    mul-double v72, v34, v40

    mul-double v74, v32, v38

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5205
    add-int/lit8 v70, v9, -0x1

    mul-double v72, v34, v38

    mul-double v74, v32, v40

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5206
    aget-wide v70, p2, v6

    aget-wide v72, p2, v8

    add-double v40, v70, v72

    .line 5207
    add-int/lit8 v70, v6, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x1

    aget-wide v72, p2, v72

    add-double v38, v70, v72

    .line 5208
    aget-wide v70, p2, v6

    aget-wide v72, p2, v8

    sub-double v44, v70, v72

    .line 5209
    add-int/lit8 v70, v6, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x1

    aget-wide v72, p2, v72

    sub-double v42, v70, v72

    .line 5210
    aget-wide v70, p2, v7

    aget-wide v72, p2, v9

    add-double v48, v70, v72

    .line 5211
    add-int/lit8 v70, v7, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x1

    aget-wide v72, p2, v72

    add-double v46, v70, v72

    .line 5212
    aget-wide v70, p2, v7

    aget-wide v72, p2, v9

    sub-double v52, v70, v72

    .line 5213
    add-int/lit8 v70, v7, 0x1

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x1

    aget-wide v72, p2, v72

    sub-double v50, v70, v72

    .line 5214
    add-double v70, v40, v48

    aput-wide v70, p2, v6

    .line 5215
    add-int/lit8 v70, v6, 0x1

    add-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5216
    sub-double v70, v40, v48

    aput-wide v70, p2, v7

    .line 5217
    add-int/lit8 v70, v7, 0x1

    sub-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5218
    sub-double v40, v44, v50

    .line 5219
    add-double v38, v42, v52

    .line 5220
    sub-double v70, v40, v38

    mul-double v70, v70, v36

    aput-wide v70, p2, v8

    .line 5221
    add-int/lit8 v70, v8, 0x1

    add-double v72, v38, v40

    mul-double v72, v72, v36

    aput-wide v72, p2, v70

    .line 5222
    add-double v40, v44, v50

    .line 5223
    sub-double v38, v42, v52

    .line 5224
    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v70, v0

    add-double v72, v40, v38

    mul-double v70, v70, v72

    aput-wide v70, p2, v9

    .line 5225
    add-int/lit8 v70, v9, 0x1

    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v72, v0

    sub-double v74, v38, v40

    mul-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5226
    add-int/lit8 v70, v6, 0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x2

    aget-wide v72, p2, v72

    add-double v40, v70, v72

    .line 5227
    add-int/lit8 v70, v6, 0x3

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x3

    aget-wide v72, p2, v72

    add-double v38, v70, v72

    .line 5228
    add-int/lit8 v70, v6, 0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x2

    aget-wide v72, p2, v72

    sub-double v44, v70, v72

    .line 5229
    add-int/lit8 v70, v6, 0x3

    aget-wide v70, p2, v70

    add-int/lit8 v72, v8, 0x3

    aget-wide v72, p2, v72

    sub-double v42, v70, v72

    .line 5230
    add-int/lit8 v70, v7, 0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x2

    aget-wide v72, p2, v72

    add-double v48, v70, v72

    .line 5231
    add-int/lit8 v70, v7, 0x3

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x3

    aget-wide v72, p2, v72

    add-double v46, v70, v72

    .line 5232
    add-int/lit8 v70, v7, 0x2

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x2

    aget-wide v72, p2, v72

    sub-double v52, v70, v72

    .line 5233
    add-int/lit8 v70, v7, 0x3

    aget-wide v70, p2, v70

    add-int/lit8 v72, v9, 0x3

    aget-wide v72, p2, v72

    sub-double v50, v70, v72

    .line 5234
    add-int/lit8 v70, v6, 0x2

    add-double v72, v40, v48

    aput-wide v72, p2, v70

    .line 5235
    add-int/lit8 v70, v6, 0x3

    add-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5236
    add-int/lit8 v70, v7, 0x2

    sub-double v72, v40, v48

    aput-wide v72, p2, v70

    .line 5237
    add-int/lit8 v70, v7, 0x3

    sub-double v72, v38, v46

    aput-wide v72, p2, v70

    .line 5238
    sub-double v40, v44, v50

    .line 5239
    add-double v38, v42, v52

    .line 5240
    add-int/lit8 v70, v8, 0x2

    mul-double v72, v28, v40

    mul-double v74, v30, v38

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5241
    add-int/lit8 v70, v8, 0x3

    mul-double v72, v28, v38

    mul-double v74, v30, v40

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5242
    add-double v40, v44, v50

    .line 5243
    sub-double v38, v42, v52

    .line 5244
    add-int/lit8 v70, v9, 0x2

    mul-double v72, v32, v40

    mul-double v74, v34, v38

    add-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5245
    add-int/lit8 v70, v9, 0x3

    mul-double v72, v32, v38

    mul-double v74, v34, v40

    sub-double v72, v72, v74

    aput-wide v72, p2, v70

    .line 5246
    return-void
.end method

.method private cftfsub(I[DI[II[D)V
    .registers 14
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "ip"    # [I
    .param p5, "nw"    # I
    .param p6, "w"    # [D

    .prologue
    const/16 v1, 0x20

    const/16 v0, 0x8

    const/4 v6, 0x1

    .line 3971
    if-le p1, v0, :cond_68

    .line 3972
    if-le p1, v1, :cond_55

    .line 3973
    shr-int/lit8 v0, p1, 0x2

    sub-int v5, p5, v0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf1st(I[DI[DI)V

    .line 3974
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    if-le v0, v6, :cond_2e

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v0

    if-le p1, v0, :cond_2e

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    .line 3975
    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4_th(I[DII[D)V

    .line 3983
    :goto_2a
    invoke-direct {p0, p1, p4, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv2(I[I[DI)V

    .line 3996
    :cond_2d
    :goto_2d
    return-void

    .line 3976
    :cond_2e
    const/16 v0, 0x200

    if-le p1, v0, :cond_3c

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    .line 3977
    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4(I[DII[D)V

    goto :goto_2a

    .line 3978
    :cond_3c
    const/16 v0, 0x80

    if-le p1, v0, :cond_4b

    move-object v0, p0

    move v1, p1

    move v2, v6

    move-object v3, p2

    move v4, p3

    move v5, p5

    move-object v6, p6

    .line 3979
    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    goto :goto_2a

    :cond_4b
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    .line 3981
    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfx41(I[DII[D)V

    goto :goto_2a

    .line 3984
    :cond_55
    if-ne p1, v1, :cond_60

    .line 3985
    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 3986
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv216([DI)V

    goto :goto_2d

    .line 3988
    :cond_60
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    .line 3989
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv208([DI)V

    goto :goto_2d

    .line 3991
    :cond_68
    if-ne p1, v0, :cond_6e

    .line 3992
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf040([DI)V

    goto :goto_2d

    .line 3993
    :cond_6e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2d

    .line 3994
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftxb020([DI)V

    goto :goto_2d
.end method

.method private cftfx41(I[DII[D)V
    .registers 8
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "nw"    # I
    .param p5, "w"    # [D

    .prologue
    .line 5913
    const/16 v0, 0x80

    if-ne p1, v0, :cond_1f

    .line 5914
    add-int/lit8 v0, p4, -0x8

    invoke-direct {p0, p2, p3, p5, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5915
    add-int/lit8 v0, p3, 0x20

    add-int/lit8 v1, p4, -0x20

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    .line 5916
    add-int/lit8 v0, p3, 0x40

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5917
    add-int/lit8 v0, p3, 0x60

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5924
    :goto_1e
    return-void

    .line 5919
    :cond_1f
    add-int/lit8 v0, p4, -0x8

    invoke-direct {p0, p2, p3, p5, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    .line 5920
    add-int/lit8 v0, p3, 0x10

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    .line 5921
    add-int/lit8 v0, p3, 0x20

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    .line 5922
    add-int/lit8 v0, p3, 0x30

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    goto :goto_1e
.end method

.method private cftleaf(II[DII[D)V
    .registers 14
    .param p1, "n"    # I
    .param p2, "isplt"    # I
    .param p3, "a"    # [D
    .param p4, "offa"    # I
    .param p5, "nw"    # I
    .param p6, "w"    # [D

    .prologue
    const/16 v1, 0x80

    const/16 v6, 0x40

    .line 5582
    const/16 v0, 0x200

    if-ne p1, v0, :cond_b2

    .line 5583
    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    .line 5584
    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p3, p4, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5585
    add-int/lit8 v0, p4, 0x20

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    .line 5586
    add-int/lit8 v0, p4, 0x40

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5587
    add-int/lit8 v0, p4, 0x60

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5588
    add-int/lit16 v3, p4, 0x80

    add-int/lit8 v5, p5, -0x80

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    .line 5589
    add-int/lit16 v0, p4, 0x80

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5590
    add-int/lit16 v0, p4, 0xa0

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    .line 5591
    add-int/lit16 v0, p4, 0xc0

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5592
    add-int/lit16 v0, p4, 0xe0

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    .line 5593
    add-int/lit16 v3, p4, 0x100

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    .line 5594
    add-int/lit16 v0, p4, 0x100

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5595
    add-int/lit16 v0, p4, 0x120

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    .line 5596
    add-int/lit16 v0, p4, 0x140

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5597
    add-int/lit16 v0, p4, 0x160

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5598
    if-eqz p2, :cond_a0

    .line 5599
    add-int/lit16 v3, p4, 0x180

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    .line 5600
    add-int/lit16 v0, p4, 0x1e0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5605
    :goto_8a
    add-int/lit16 v0, p4, 0x180

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5606
    add-int/lit16 v0, p4, 0x1a0

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    .line 5607
    add-int/lit16 v0, p4, 0x1c0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5635
    :goto_9f
    return-void

    .line 5602
    :cond_a0
    add-int/lit16 v3, p4, 0x180

    add-int/lit8 v5, p5, -0x80

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    .line 5603
    add-int/lit16 v0, p4, 0x1e0

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    goto :goto_8a

    .line 5609
    :cond_b2
    add-int/lit8 v5, p5, -0x20

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move v3, p4

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    .line 5610
    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p3, p4, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    .line 5611
    add-int/lit8 v0, p4, 0x10

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    .line 5612
    add-int/lit8 v0, p4, 0x20

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    .line 5613
    add-int/lit8 v0, p4, 0x30

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    .line 5614
    add-int/lit8 v3, p4, 0x40

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    .line 5615
    add-int/lit8 v0, p4, 0x40

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    .line 5616
    add-int/lit8 v0, p4, 0x50

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    .line 5617
    add-int/lit8 v0, p4, 0x60

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    .line 5618
    add-int/lit8 v0, p4, 0x70

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    .line 5619
    add-int/lit16 v3, p4, 0x80

    add-int/lit8 v5, p5, -0x20

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    .line 5620
    add-int/lit16 v0, p4, 0x80

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    .line 5621
    add-int/lit16 v0, p4, 0x90

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    .line 5622
    add-int/lit16 v0, p4, 0xa0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    .line 5623
    add-int/lit16 v0, p4, 0xb0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    .line 5624
    if-eqz p2, :cond_14f

    .line 5625
    add-int/lit16 v3, p4, 0xc0

    add-int/lit8 v5, p5, -0x20

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    .line 5626
    add-int/lit16 v0, p4, 0xf0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    .line 5631
    :goto_138
    add-int/lit16 v0, p4, 0xc0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    .line 5632
    add-int/lit16 v0, p4, 0xd0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    .line 5633
    add-int/lit16 v0, p4, 0xe0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    goto/16 :goto_9f

    .line 5628
    :cond_14f
    add-int/lit16 v3, p4, 0xc0

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    .line 5629
    add-int/lit16 v0, p4, 0xf0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    goto :goto_138
.end method

.method private cftmdl1(I[DI[DI)V
    .registers 54
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "w"    # [D
    .param p5, "startw"    # I

    .prologue
    .line 5643
    shr-int/lit8 v15, p1, 0x3

    .line 5644
    .local v15, "mh":I
    mul-int/lit8 v14, v15, 0x2

    .line 5645
    .local v14, "m":I
    move v10, v14

    .line 5646
    .local v10, "j1":I
    add-int v11, v14, v14

    .line 5647
    .local v11, "j2":I
    add-int v12, v11, v14

    .line 5648
    .local v12, "j3":I
    add-int v3, p3, v14

    .line 5649
    .local v3, "idx1":I
    add-int v4, p3, v11

    .line 5650
    .local v4, "idx2":I
    add-int v5, p3, v12

    .line 5651
    .local v5, "idx3":I
    aget-wide v42, p2, p3

    aget-wide v44, p2, v4

    add-double v28, v42, v44

    .line 5652
    .local v28, "x0r":D
    add-int/lit8 v42, p3, 0x1

    aget-wide v42, p2, v42

    add-int/lit8 v44, v4, 0x1

    aget-wide v44, p2, v44

    add-double v26, v42, v44

    .line 5653
    .local v26, "x0i":D
    aget-wide v42, p2, p3

    aget-wide v44, p2, v4

    sub-double v32, v42, v44

    .line 5654
    .local v32, "x1r":D
    add-int/lit8 v42, p3, 0x1

    aget-wide v42, p2, v42

    add-int/lit8 v44, v4, 0x1

    aget-wide v44, p2, v44

    sub-double v30, v42, v44

    .line 5655
    .local v30, "x1i":D
    aget-wide v42, p2, v3

    aget-wide v44, p2, v5

    add-double v36, v42, v44

    .line 5656
    .local v36, "x2r":D
    add-int/lit8 v42, v3, 0x1

    aget-wide v42, p2, v42

    add-int/lit8 v44, v5, 0x1

    aget-wide v44, p2, v44

    add-double v34, v42, v44

    .line 5657
    .local v34, "x2i":D
    aget-wide v42, p2, v3

    aget-wide v44, p2, v5

    sub-double v40, v42, v44

    .line 5658
    .local v40, "x3r":D
    add-int/lit8 v42, v3, 0x1

    aget-wide v42, p2, v42

    add-int/lit8 v44, v5, 0x1

    aget-wide v44, p2, v44

    sub-double v38, v42, v44

    .line 5659
    .local v38, "x3i":D
    add-double v42, v28, v36

    aput-wide v42, p2, p3

    .line 5660
    add-int/lit8 v42, p3, 0x1

    add-double v44, v26, v34

    aput-wide v44, p2, v42

    .line 5661
    sub-double v42, v28, v36

    aput-wide v42, p2, v3

    .line 5662
    add-int/lit8 v42, v3, 0x1

    sub-double v44, v26, v34

    aput-wide v44, p2, v42

    .line 5663
    sub-double v42, v32, v38

    aput-wide v42, p2, v4

    .line 5664
    add-int/lit8 v42, v4, 0x1

    add-double v44, v30, v40

    aput-wide v44, p2, v42

    .line 5665
    add-double v42, v32, v38

    aput-wide v42, p2, v5

    .line 5666
    add-int/lit8 v42, v5, 0x1

    sub-double v44, v30, v40

    aput-wide v44, p2, v42

    .line 5667
    add-int/lit8 v42, p5, 0x1

    aget-wide v24, p4, v42

    .line 5668
    .local v24, "wn4r":D
    const/4 v13, 0x0

    .line 5669
    .local v13, "k":I
    const/4 v8, 0x2

    .local v8, "j":I
    :goto_7d
    if-ge v8, v15, :cond_1b3

    .line 5670
    add-int/lit8 v13, v13, 0x4

    .line 5671
    add-int v6, p5, v13

    .line 5672
    .local v6, "idx4":I
    aget-wide v18, p4, v6

    .line 5673
    .local v18, "wk1r":D
    add-int/lit8 v42, v6, 0x1

    aget-wide v16, p4, v42

    .line 5674
    .local v16, "wk1i":D
    add-int/lit8 v42, v6, 0x2

    aget-wide v22, p4, v42

    .line 5675
    .local v22, "wk3r":D
    add-int/lit8 v42, v6, 0x3

    aget-wide v20, p4, v42

    .line 5676
    .local v20, "wk3i":D
    add-int v10, v8, v14

    .line 5677
    add-int v11, v10, v14

    .line 5678
    add-int v12, v11, v14

    .line 5679
    add-int v3, p3, v10

    .line 5680
    add-int v4, p3, v11

    .line 5681
    add-int v5, p3, v12

    .line 5682
    add-int v7, p3, v8

    .line 5683
    .local v7, "idx5":I
    aget-wide v42, p2, v7

    aget-wide v44, p2, v4

    add-double v28, v42, v44

    .line 5684
    add-int/lit8 v42, v7, 0x1

    aget-wide v42, p2, v42

    add-int/lit8 v44, v4, 0x1

    aget-wide v44, p2, v44

    add-double v26, v42, v44

    .line 5685
    aget-wide v42, p2, v7

    aget-wide v44, p2, v4

    sub-double v32, v42, v44

    .line 5686
    add-int/lit8 v42, v7, 0x1

    aget-wide v42, p2, v42

    add-int/lit8 v44, v4, 0x1

    aget-wide v44, p2, v44

    sub-double v30, v42, v44

    .line 5687
    aget-wide v42, p2, v3

    aget-wide v44, p2, v5

    add-double v36, v42, v44

    .line 5688
    add-int/lit8 v42, v3, 0x1

    aget-wide v42, p2, v42

    add-int/lit8 v44, v5, 0x1

    aget-wide v44, p2, v44

    add-double v34, v42, v44

    .line 5689
    aget-wide v42, p2, v3

    aget-wide v44, p2, v5

    sub-double v40, v42, v44

    .line 5690
    add-int/lit8 v42, v3, 0x1

    aget-wide v42, p2, v42

    add-int/lit8 v44, v5, 0x1

    aget-wide v44, p2, v44

    sub-double v38, v42, v44

    .line 5691
    add-double v42, v28, v36

    aput-wide v42, p2, v7

    .line 5692
    add-int/lit8 v42, v7, 0x1

    add-double v44, v26, v34

    aput-wide v44, p2, v42

    .line 5693
    sub-double v42, v28, v36

    aput-wide v42, p2, v3

    .line 5694
    add-int/lit8 v42, v3, 0x1

    sub-double v44, v26, v34

    aput-wide v44, p2, v42

    .line 5695
    sub-double v28, v32, v38

    .line 5696
    add-double v26, v30, v40

    .line 5697
    mul-double v42, v18, v28

    mul-double v44, v16, v26

    sub-double v42, v42, v44

    aput-wide v42, p2, v4

    .line 5698
    add-int/lit8 v42, v4, 0x1

    mul-double v44, v18, v26

    mul-double v46, v16, v28

    add-double v44, v44, v46

    aput-wide v44, p2, v42

    .line 5699
    add-double v28, v32, v38

    .line 5700
    sub-double v26, v30, v40

    .line 5701
    mul-double v42, v22, v28

    mul-double v44, v20, v26

    add-double v42, v42, v44

    aput-wide v42, p2, v5

    .line 5702
    add-int/lit8 v42, v5, 0x1

    mul-double v44, v22, v26

    mul-double v46, v20, v28

    sub-double v44, v44, v46

    aput-wide v44, p2, v42

    .line 5703
    sub-int v9, v14, v8

    .line 5704
    .local v9, "j0":I
    add-int v10, v9, v14

    .line 5705
    add-int v11, v10, v14

    .line 5706
    add-int v12, v11, v14

    .line 5707
    add-int v2, p3, v9

    .line 5708
    .local v2, "idx0":I
    add-int v3, p3, v10

    .line 5709
    add-int v4, p3, v11

    .line 5710
    add-int v5, p3, v12

    .line 5711
    aget-wide v42, p2, v2

    aget-wide v44, p2, v4

    add-double v28, v42, v44

    .line 5712
    add-int/lit8 v42, v2, 0x1

    aget-wide v42, p2, v42

    add-int/lit8 v44, v4, 0x1

    aget-wide v44, p2, v44

    add-double v26, v42, v44

    .line 5713
    aget-wide v42, p2, v2

    aget-wide v44, p2, v4

    sub-double v32, v42, v44

    .line 5714
    add-int/lit8 v42, v2, 0x1

    aget-wide v42, p2, v42

    add-int/lit8 v44, v4, 0x1

    aget-wide v44, p2, v44

    sub-double v30, v42, v44

    .line 5715
    aget-wide v42, p2, v3

    aget-wide v44, p2, v5

    add-double v36, v42, v44

    .line 5716
    add-int/lit8 v42, v3, 0x1

    aget-wide v42, p2, v42

    add-int/lit8 v44, v5, 0x1

    aget-wide v44, p2, v44

    add-double v34, v42, v44

    .line 5717
    aget-wide v42, p2, v3

    aget-wide v44, p2, v5

    sub-double v40, v42, v44

    .line 5718
    add-int/lit8 v42, v3, 0x1

    aget-wide v42, p2, v42

    add-int/lit8 v44, v5, 0x1

    aget-wide v44, p2, v44

    sub-double v38, v42, v44

    .line 5719
    add-double v42, v28, v36

    aput-wide v42, p2, v2

    .line 5720
    add-int/lit8 v42, v2, 0x1

    add-double v44, v26, v34

    aput-wide v44, p2, v42

    .line 5721
    sub-double v42, v28, v36

    aput-wide v42, p2, v3

    .line 5722
    add-int/lit8 v42, v3, 0x1

    sub-double v44, v26, v34

    aput-wide v44, p2, v42

    .line 5723
    sub-double v28, v32, v38

    .line 5724
    add-double v26, v30, v40

    .line 5725
    mul-double v42, v16, v28

    mul-double v44, v18, v26

    sub-double v42, v42, v44

    aput-wide v42, p2, v4

    .line 5726
    add-int/lit8 v42, v4, 0x1

    mul-double v44, v16, v26

    mul-double v46, v18, v28

    add-double v44, v44, v46

    aput-wide v44, p2, v42

    .line 5727
    add-double v28, v32, v38

    .line 5728
    sub-double v26, v30, v40

    .line 5729
    mul-double v42, v20, v28

    mul-double v44, v22, v26

    add-double v42, v42, v44

    aput-wide v42, p2, v5

    .line 5730
    add-int/lit8 v42, v5, 0x1

    mul-double v44, v20, v26

    mul-double v46, v22, v28

    sub-double v44, v44, v46

    aput-wide v44, p2, v42

    .line 5669
    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_7d

    .line 5732
    .end local v2    # "idx0":I
    .end local v6    # "idx4":I
    .end local v7    # "idx5":I
    .end local v9    # "j0":I
    .end local v16    # "wk1i":D
    .end local v18    # "wk1r":D
    .end local v20    # "wk3i":D
    .end local v22    # "wk3r":D
    :cond_1b3
    move v9, v15

    .line 5733
    .restart local v9    # "j0":I
    add-int v10, v15, v14

    .line 5734
    add-int v11, v10, v14

    .line 5735
    add-int v12, v11, v14

    .line 5736
    add-int v2, p3, v15

    .line 5737
    .restart local v2    # "idx0":I
    add-int v3, p3, v10

    .line 5738
    add-int v4, p3, v11

    .line 5739
    add-int v5, p3, v12

    .line 5740
    aget-wide v42, p2, v2

    aget-wide v44, p2, v4

    add-double v28, v42, v44

    .line 5741
    add-int/lit8 v42, v2, 0x1

    aget-wide v42, p2, v42

    add-int/lit8 v44, v4, 0x1

    aget-wide v44, p2, v44

    add-double v26, v42, v44

    .line 5742
    aget-wide v42, p2, v2

    aget-wide v44, p2, v4

    sub-double v32, v42, v44

    .line 5743
    add-int/lit8 v42, v2, 0x1

    aget-wide v42, p2, v42

    add-int/lit8 v44, v4, 0x1

    aget-wide v44, p2, v44

    sub-double v30, v42, v44

    .line 5744
    aget-wide v42, p2, v3

    aget-wide v44, p2, v5

    add-double v36, v42, v44

    .line 5745
    add-int/lit8 v42, v3, 0x1

    aget-wide v42, p2, v42

    add-int/lit8 v44, v5, 0x1

    aget-wide v44, p2, v44

    add-double v34, v42, v44

    .line 5746
    aget-wide v42, p2, v3

    aget-wide v44, p2, v5

    sub-double v40, v42, v44

    .line 5747
    add-int/lit8 v42, v3, 0x1

    aget-wide v42, p2, v42

    add-int/lit8 v44, v5, 0x1

    aget-wide v44, p2, v44

    sub-double v38, v42, v44

    .line 5748
    add-double v42, v28, v36

    aput-wide v42, p2, v2

    .line 5749
    add-int/lit8 v42, v2, 0x1

    add-double v44, v26, v34

    aput-wide v44, p2, v42

    .line 5750
    sub-double v42, v28, v36

    aput-wide v42, p2, v3

    .line 5751
    add-int/lit8 v42, v3, 0x1

    sub-double v44, v26, v34

    aput-wide v44, p2, v42

    .line 5752
    sub-double v28, v32, v38

    .line 5753
    add-double v26, v30, v40

    .line 5754
    sub-double v42, v28, v26

    mul-double v42, v42, v24

    aput-wide v42, p2, v4

    .line 5755
    add-int/lit8 v42, v4, 0x1

    add-double v44, v26, v28

    mul-double v44, v44, v24

    aput-wide v44, p2, v42

    .line 5756
    add-double v28, v32, v38

    .line 5757
    sub-double v26, v30, v40

    .line 5758
    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v42, v0

    add-double v44, v28, v26

    mul-double v42, v42, v44

    aput-wide v42, p2, v5

    .line 5759
    add-int/lit8 v42, v5, 0x1

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v44, v0

    sub-double v46, v26, v28

    mul-double v44, v44, v46

    aput-wide v44, p2, v42

    .line 5760
    return-void
.end method

.method private cftmdl2(I[DI[DI)V
    .registers 68
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "w"    # [D
    .param p5, "startw"    # I

    .prologue
    .line 5768
    shr-int/lit8 v15, p1, 0x3

    .line 5769
    .local v15, "mh":I
    mul-int/lit8 v14, v15, 0x2

    .line 5770
    .local v14, "m":I
    add-int/lit8 v58, p5, 0x1

    aget-wide v32, p4, v58

    .line 5771
    .local v32, "wn4r":D
    move v9, v14

    .line 5772
    .local v9, "j1":I
    add-int v10, v14, v14

    .line 5773
    .local v10, "j2":I
    add-int v11, v10, v14

    .line 5774
    .local v11, "j3":I
    add-int v1, p3, v14

    .line 5775
    .local v1, "idx1":I
    add-int v2, p3, v10

    .line 5776
    .local v2, "idx2":I
    add-int v3, p3, v11

    .line 5777
    .local v3, "idx3":I
    aget-wide v58, p2, p3

    add-int/lit8 v60, v2, 0x1

    aget-wide v60, p2, v60

    sub-double v36, v58, v60

    .line 5778
    .local v36, "x0r":D
    add-int/lit8 v58, p3, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v2

    add-double v34, v58, v60

    .line 5779
    .local v34, "x0i":D
    aget-wide v58, p2, p3

    add-int/lit8 v60, v2, 0x1

    aget-wide v60, p2, v60

    add-double v40, v58, v60

    .line 5780
    .local v40, "x1r":D
    add-int/lit8 v58, p3, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v2

    sub-double v38, v58, v60

    .line 5781
    .local v38, "x1i":D
    aget-wide v58, p2, v1

    add-int/lit8 v60, v3, 0x1

    aget-wide v60, p2, v60

    sub-double v44, v58, v60

    .line 5782
    .local v44, "x2r":D
    add-int/lit8 v58, v1, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v3

    add-double v42, v58, v60

    .line 5783
    .local v42, "x2i":D
    aget-wide v58, p2, v1

    add-int/lit8 v60, v3, 0x1

    aget-wide v60, p2, v60

    add-double v48, v58, v60

    .line 5784
    .local v48, "x3r":D
    add-int/lit8 v58, v1, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v3

    sub-double v46, v58, v60

    .line 5785
    .local v46, "x3i":D
    sub-double v58, v44, v42

    mul-double v52, v32, v58

    .line 5786
    .local v52, "y0r":D
    add-double v58, v42, v44

    mul-double v50, v32, v58

    .line 5787
    .local v50, "y0i":D
    add-double v58, v36, v52

    aput-wide v58, p2, p3

    .line 5788
    add-int/lit8 v58, p3, 0x1

    add-double v60, v34, v50

    aput-wide v60, p2, v58

    .line 5789
    sub-double v58, v36, v52

    aput-wide v58, p2, v1

    .line 5790
    add-int/lit8 v58, v1, 0x1

    sub-double v60, v34, v50

    aput-wide v60, p2, v58

    .line 5791
    sub-double v58, v48, v46

    mul-double v52, v32, v58

    .line 5792
    add-double v58, v46, v48

    mul-double v50, v32, v58

    .line 5793
    sub-double v58, v40, v50

    aput-wide v58, p2, v2

    .line 5794
    add-int/lit8 v58, v2, 0x1

    add-double v60, v38, v52

    aput-wide v60, p2, v58

    .line 5795
    add-double v58, v40, v50

    aput-wide v58, p2, v3

    .line 5796
    add-int/lit8 v58, v3, 0x1

    sub-double v60, v38, v52

    aput-wide v60, p2, v58

    .line 5797
    const/4 v12, 0x0

    .line 5798
    .local v12, "k":I
    mul-int/lit8 v13, v14, 0x2

    .line 5799
    .local v13, "kr":I
    const/4 v7, 0x2

    .local v7, "j":I
    :goto_8f
    if-ge v7, v15, :cond_207

    .line 5800
    add-int/lit8 v12, v12, 0x4

    .line 5801
    add-int v4, p5, v12

    .line 5802
    .local v4, "idx4":I
    aget-wide v26, p4, v4

    .line 5803
    .local v26, "wk1r":D
    add-int/lit8 v58, v4, 0x1

    aget-wide v24, p4, v58

    .line 5804
    .local v24, "wk1i":D
    add-int/lit8 v58, v4, 0x2

    aget-wide v30, p4, v58

    .line 5805
    .local v30, "wk3r":D
    add-int/lit8 v58, v4, 0x3

    aget-wide v28, p4, v58

    .line 5806
    .local v28, "wk3i":D
    add-int/lit8 v13, v13, -0x4

    .line 5807
    add-int v5, p5, v13

    .line 5808
    .local v5, "idx5":I
    aget-wide v16, p4, v5

    .line 5809
    .local v16, "wd1i":D
    add-int/lit8 v58, v5, 0x1

    aget-wide v18, p4, v58

    .line 5810
    .local v18, "wd1r":D
    add-int/lit8 v58, v5, 0x2

    aget-wide v20, p4, v58

    .line 5811
    .local v20, "wd3i":D
    add-int/lit8 v58, v5, 0x3

    aget-wide v22, p4, v58

    .line 5812
    .local v22, "wd3r":D
    add-int v9, v7, v14

    .line 5813
    add-int v10, v9, v14

    .line 5814
    add-int v11, v10, v14

    .line 5815
    add-int v1, p3, v9

    .line 5816
    add-int v2, p3, v10

    .line 5817
    add-int v3, p3, v11

    .line 5818
    add-int v6, p3, v7

    .line 5819
    .local v6, "idx6":I
    aget-wide v58, p2, v6

    add-int/lit8 v60, v2, 0x1

    aget-wide v60, p2, v60

    sub-double v36, v58, v60

    .line 5820
    add-int/lit8 v58, v6, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v2

    add-double v34, v58, v60

    .line 5821
    aget-wide v58, p2, v6

    add-int/lit8 v60, v2, 0x1

    aget-wide v60, p2, v60

    add-double v40, v58, v60

    .line 5822
    add-int/lit8 v58, v6, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v2

    sub-double v38, v58, v60

    .line 5823
    aget-wide v58, p2, v1

    add-int/lit8 v60, v3, 0x1

    aget-wide v60, p2, v60

    sub-double v44, v58, v60

    .line 5824
    add-int/lit8 v58, v1, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v3

    add-double v42, v58, v60

    .line 5825
    aget-wide v58, p2, v1

    add-int/lit8 v60, v3, 0x1

    aget-wide v60, p2, v60

    add-double v48, v58, v60

    .line 5826
    add-int/lit8 v58, v1, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v3

    sub-double v46, v58, v60

    .line 5827
    mul-double v58, v26, v36

    mul-double v60, v24, v34

    sub-double v52, v58, v60

    .line 5828
    mul-double v58, v26, v34

    mul-double v60, v24, v36

    add-double v50, v58, v60

    .line 5829
    mul-double v58, v18, v44

    mul-double v60, v16, v42

    sub-double v56, v58, v60

    .line 5830
    .local v56, "y2r":D
    mul-double v58, v18, v42

    mul-double v60, v16, v44

    add-double v54, v58, v60

    .line 5831
    .local v54, "y2i":D
    add-double v58, v52, v56

    aput-wide v58, p2, v6

    .line 5832
    add-int/lit8 v58, v6, 0x1

    add-double v60, v50, v54

    aput-wide v60, p2, v58

    .line 5833
    sub-double v58, v52, v56

    aput-wide v58, p2, v1

    .line 5834
    add-int/lit8 v58, v1, 0x1

    sub-double v60, v50, v54

    aput-wide v60, p2, v58

    .line 5835
    mul-double v58, v30, v40

    mul-double v60, v28, v38

    add-double v52, v58, v60

    .line 5836
    mul-double v58, v30, v38

    mul-double v60, v28, v40

    sub-double v50, v58, v60

    .line 5837
    mul-double v58, v22, v48

    mul-double v60, v20, v46

    add-double v56, v58, v60

    .line 5838
    mul-double v58, v22, v46

    mul-double v60, v20, v48

    sub-double v54, v58, v60

    .line 5839
    add-double v58, v52, v56

    aput-wide v58, p2, v2

    .line 5840
    add-int/lit8 v58, v2, 0x1

    add-double v60, v50, v54

    aput-wide v60, p2, v58

    .line 5841
    sub-double v58, v52, v56

    aput-wide v58, p2, v3

    .line 5842
    add-int/lit8 v58, v3, 0x1

    sub-double v60, v50, v54

    aput-wide v60, p2, v58

    .line 5843
    sub-int v8, v14, v7

    .line 5844
    .local v8, "j0":I
    add-int v9, v8, v14

    .line 5845
    add-int v10, v9, v14

    .line 5846
    add-int v11, v10, v14

    .line 5847
    add-int v0, p3, v8

    .line 5848
    .local v0, "idx0":I
    add-int v1, p3, v9

    .line 5849
    add-int v2, p3, v10

    .line 5850
    add-int v3, p3, v11

    .line 5851
    aget-wide v58, p2, v0

    add-int/lit8 v60, v2, 0x1

    aget-wide v60, p2, v60

    sub-double v36, v58, v60

    .line 5852
    add-int/lit8 v58, v0, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v2

    add-double v34, v58, v60

    .line 5853
    aget-wide v58, p2, v0

    add-int/lit8 v60, v2, 0x1

    aget-wide v60, p2, v60

    add-double v40, v58, v60

    .line 5854
    add-int/lit8 v58, v0, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v2

    sub-double v38, v58, v60

    .line 5855
    aget-wide v58, p2, v1

    add-int/lit8 v60, v3, 0x1

    aget-wide v60, p2, v60

    sub-double v44, v58, v60

    .line 5856
    add-int/lit8 v58, v1, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v3

    add-double v42, v58, v60

    .line 5857
    aget-wide v58, p2, v1

    add-int/lit8 v60, v3, 0x1

    aget-wide v60, p2, v60

    add-double v48, v58, v60

    .line 5858
    add-int/lit8 v58, v1, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v3

    sub-double v46, v58, v60

    .line 5859
    mul-double v58, v16, v36

    mul-double v60, v18, v34

    sub-double v52, v58, v60

    .line 5860
    mul-double v58, v16, v34

    mul-double v60, v18, v36

    add-double v50, v58, v60

    .line 5861
    mul-double v58, v24, v44

    mul-double v60, v26, v42

    sub-double v56, v58, v60

    .line 5862
    mul-double v58, v24, v42

    mul-double v60, v26, v44

    add-double v54, v58, v60

    .line 5863
    add-double v58, v52, v56

    aput-wide v58, p2, v0

    .line 5864
    add-int/lit8 v58, v0, 0x1

    add-double v60, v50, v54

    aput-wide v60, p2, v58

    .line 5865
    sub-double v58, v52, v56

    aput-wide v58, p2, v1

    .line 5866
    add-int/lit8 v58, v1, 0x1

    sub-double v60, v50, v54

    aput-wide v60, p2, v58

    .line 5867
    mul-double v58, v20, v40

    mul-double v60, v22, v38

    add-double v52, v58, v60

    .line 5868
    mul-double v58, v20, v38

    mul-double v60, v22, v40

    sub-double v50, v58, v60

    .line 5869
    mul-double v58, v28, v48

    mul-double v60, v30, v46

    add-double v56, v58, v60

    .line 5870
    mul-double v58, v28, v46

    mul-double v60, v30, v48

    sub-double v54, v58, v60

    .line 5871
    add-double v58, v52, v56

    aput-wide v58, p2, v2

    .line 5872
    add-int/lit8 v58, v2, 0x1

    add-double v60, v50, v54

    aput-wide v60, p2, v58

    .line 5873
    sub-double v58, v52, v56

    aput-wide v58, p2, v3

    .line 5874
    add-int/lit8 v58, v3, 0x1

    sub-double v60, v50, v54

    aput-wide v60, p2, v58

    .line 5799
    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_8f

    .line 5876
    .end local v0    # "idx0":I
    .end local v4    # "idx4":I
    .end local v5    # "idx5":I
    .end local v6    # "idx6":I
    .end local v8    # "j0":I
    .end local v16    # "wd1i":D
    .end local v18    # "wd1r":D
    .end local v20    # "wd3i":D
    .end local v22    # "wd3r":D
    .end local v24    # "wk1i":D
    .end local v26    # "wk1r":D
    .end local v28    # "wk3i":D
    .end local v30    # "wk3r":D
    .end local v54    # "y2i":D
    .end local v56    # "y2r":D
    :cond_207
    add-int v58, p5, v14

    aget-wide v26, p4, v58

    .line 5877
    .restart local v26    # "wk1r":D
    add-int v58, p5, v14

    add-int/lit8 v58, v58, 0x1

    aget-wide v24, p4, v58

    .line 5878
    .restart local v24    # "wk1i":D
    move v8, v15

    .line 5879
    .restart local v8    # "j0":I
    add-int v9, v15, v14

    .line 5880
    add-int v10, v9, v14

    .line 5881
    add-int v11, v10, v14

    .line 5882
    add-int v0, p3, v15

    .line 5883
    .restart local v0    # "idx0":I
    add-int v1, p3, v9

    .line 5884
    add-int v2, p3, v10

    .line 5885
    add-int v3, p3, v11

    .line 5886
    aget-wide v58, p2, v0

    add-int/lit8 v60, v2, 0x1

    aget-wide v60, p2, v60

    sub-double v36, v58, v60

    .line 5887
    add-int/lit8 v58, v0, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v2

    add-double v34, v58, v60

    .line 5888
    aget-wide v58, p2, v0

    add-int/lit8 v60, v2, 0x1

    aget-wide v60, p2, v60

    add-double v40, v58, v60

    .line 5889
    add-int/lit8 v58, v0, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v2

    sub-double v38, v58, v60

    .line 5890
    aget-wide v58, p2, v1

    add-int/lit8 v60, v3, 0x1

    aget-wide v60, p2, v60

    sub-double v44, v58, v60

    .line 5891
    add-int/lit8 v58, v1, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v3

    add-double v42, v58, v60

    .line 5892
    aget-wide v58, p2, v1

    add-int/lit8 v60, v3, 0x1

    aget-wide v60, p2, v60

    add-double v48, v58, v60

    .line 5893
    add-int/lit8 v58, v1, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v3

    sub-double v46, v58, v60

    .line 5894
    mul-double v58, v26, v36

    mul-double v60, v24, v34

    sub-double v52, v58, v60

    .line 5895
    mul-double v58, v26, v34

    mul-double v60, v24, v36

    add-double v50, v58, v60

    .line 5896
    mul-double v58, v24, v44

    mul-double v60, v26, v42

    sub-double v56, v58, v60

    .line 5897
    .restart local v56    # "y2r":D
    mul-double v58, v24, v42

    mul-double v60, v26, v44

    add-double v54, v58, v60

    .line 5898
    .restart local v54    # "y2i":D
    add-double v58, v52, v56

    aput-wide v58, p2, v0

    .line 5899
    add-int/lit8 v58, v0, 0x1

    add-double v60, v50, v54

    aput-wide v60, p2, v58

    .line 5900
    sub-double v58, v52, v56

    aput-wide v58, p2, v1

    .line 5901
    add-int/lit8 v58, v1, 0x1

    sub-double v60, v50, v54

    aput-wide v60, p2, v58

    .line 5902
    mul-double v58, v24, v40

    mul-double v60, v26, v38

    sub-double v52, v58, v60

    .line 5903
    mul-double v58, v24, v38

    mul-double v60, v26, v40

    add-double v50, v58, v60

    .line 5904
    mul-double v58, v26, v48

    mul-double v60, v24, v46

    sub-double v56, v58, v60

    .line 5905
    mul-double v58, v26, v46

    mul-double v60, v24, v48

    add-double v54, v58, v60

    .line 5906
    sub-double v58, v52, v56

    aput-wide v58, p2, v2

    .line 5907
    add-int/lit8 v58, v2, 0x1

    sub-double v60, v50, v54

    aput-wide v60, p2, v58

    .line 5908
    add-double v58, v52, v56

    aput-wide v58, p2, v3

    .line 5909
    add-int/lit8 v58, v3, 0x1

    add-double v60, v50, v54

    aput-wide v60, p2, v58

    .line 5910
    return-void
.end method

.method private cftrec4(I[DII[D)V
    .registers 19
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "nw"    # I
    .param p5, "w"    # [D

    .prologue
    .line 5533
    move v1, p1

    .line 5534
    .local v1, "m":I
    add-int v11, p3, p1

    .line 5535
    .local v11, "idx1":I
    :goto_3
    const/16 v0, 0x200

    if-le v1, v0, :cond_17

    .line 5536
    shr-int/lit8 v1, v1, 0x2

    .line 5537
    sub-int v3, v11, v1

    shr-int/lit8 v0, v1, 0x1

    sub-int v5, p4, v0

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    goto :goto_3

    .line 5539
    :cond_17
    sub-int v4, v11, v1

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    .line 5540
    const/4 v3, 0x0

    .line 5541
    .local v3, "k":I
    sub-int v12, p3, v1

    .line 5542
    .local v12, "idx2":I
    sub-int v2, p1, v1

    .local v2, "j":I
    :goto_28
    if-lez v2, :cond_46

    .line 5543
    add-int/lit8 v3, v3, 0x1

    move-object v0, p0

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    .line 5544
    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfttree(III[DII[D)I

    move-result v6

    .line 5545
    .local v6, "isplt":I
    add-int v8, v12, v2

    move-object v4, p0

    move v5, v1

    move-object v7, p2

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    .line 5542
    sub-int/2addr v2, v1

    goto :goto_28

    .line 5547
    .end local v6    # "isplt":I
    :cond_46
    return-void
.end method

.method private cftrec4_th(I[DII[D)V
    .registers 22
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "nw"    # I
    .param p5, "w"    # [D

    .prologue
    .line 5470
    const/4 v12, 0x0

    .line 5471
    .local v12, "idx":I
    const/4 v15, 0x2

    .line 5472
    .local v15, "nthreads":I
    const/4 v11, 0x0

    .line 5473
    .local v11, "idiv4":I
    shr-int/lit8 v14, p1, 0x1

    .line 5474
    .local v14, "m":I
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v1

    move/from16 v0, p1

    if-le v0, v1, :cond_11

    .line 5475
    const/4 v15, 0x4

    .line 5476
    const/4 v11, 0x1

    .line 5477
    shr-int/lit8 v14, v14, 0x1

    .line 5479
    :cond_11
    new-array v9, v15, [Ljava/util/concurrent/Future;

    .line 5480
    .local v9, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    move v4, v14

    .line 5481
    .local v4, "mf":I
    const/4 v10, 0x0

    .local v10, "i":I
    move v13, v12

    .end local v12    # "idx":I
    .local v13, "idx":I
    :goto_16
    if-ge v10, v15, :cond_51

    .line 5482
    mul-int v1, v10, v14

    add-int v3, p3, v1

    .line 5483
    .local v3, "firstIdx":I
    if-eq v10, v11, :cond_39

    .line 5484
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "idx":I
    .restart local v12    # "idx":I
    new-instance v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;

    move-object/from16 v2, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    move/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[DI)V

    invoke-static {v1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v9, v13

    .line 5481
    :goto_35
    add-int/lit8 v10, v10, 0x1

    move v13, v12

    .end local v12    # "idx":I
    .restart local v13    # "idx":I
    goto :goto_16

    .line 5504
    :cond_39
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "idx":I
    .restart local v12    # "idx":I
    new-instance v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;

    move-object/from16 v2, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    move/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[DI)V

    invoke-static {v1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v9, v13

    goto :goto_35

    .line 5527
    .end local v3    # "firstIdx":I
    .end local v12    # "idx":I
    .restart local v13    # "idx":I
    :cond_51
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 5528
    return-void
.end method

.method private cfttree(III[DII[D)I
    .registers 18
    .param p1, "n"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "a"    # [D
    .param p5, "offa"    # I
    .param p6, "nw"    # I
    .param p7, "w"    # [D

    .prologue
    .line 5551
    sub-int v7, p5, p1

    .line 5552
    .local v7, "idx1":I
    and-int/lit8 v0, p3, 0x3

    if-eqz v0, :cond_26

    .line 5553
    and-int/lit8 v9, p3, 0x1

    .line 5554
    .local v9, "isplt":I
    if-eqz v9, :cond_19

    .line 5555
    add-int v3, v7, p2

    shr-int/lit8 v0, p1, 0x1

    sub-int v5, p6, v0

    move-object v0, p0

    move v1, p1

    move-object v2, p4

    move-object/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    .line 5578
    :cond_18
    :goto_18
    return v9

    .line 5557
    :cond_19
    add-int v3, v7, p2

    sub-int v5, p6, p1

    move-object v0, p0

    move v1, p1

    move-object v2, p4

    move-object/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    goto :goto_18

    .line 5560
    .end local v9    # "isplt":I
    :cond_26
    move v1, p1

    .line 5561
    .local v1, "m":I
    move v6, p3

    .local v6, "i":I
    :goto_28
    and-int/lit8 v0, v6, 0x3

    if-nez v0, :cond_31

    .line 5562
    shl-int/lit8 v1, v1, 0x2

    .line 5561
    shr-int/lit8 v6, v6, 0x2

    goto :goto_28

    .line 5564
    :cond_31
    and-int/lit8 v9, v6, 0x1

    .line 5565
    .restart local v9    # "isplt":I
    add-int v8, p5, p2

    .line 5566
    .local v8, "idx2":I
    if-eqz v9, :cond_4b

    .line 5567
    :goto_37
    const/16 v0, 0x80

    if-le v1, v0, :cond_18

    .line 5568
    sub-int v3, v8, v1

    shr-int/lit8 v0, v1, 0x1

    sub-int v5, p6, v0

    move-object v0, p0

    move-object v2, p4

    move-object/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    .line 5569
    shr-int/lit8 v1, v1, 0x2

    goto :goto_37

    .line 5572
    :cond_4b
    :goto_4b
    const/16 v0, 0x80

    if-le v1, v0, :cond_18

    .line 5573
    sub-int v3, v8, v1

    sub-int v5, p6, v1

    move-object v0, p0

    move-object v2, p4

    move-object/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    .line 5574
    shr-int/lit8 v1, v1, 0x2

    goto :goto_4b
.end method

.method private cftx020([DI)V
    .registers 13
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .prologue
    .line 6425
    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x2

    aget-wide v6, p1, v6

    sub-double v2, v4, v6

    .line 6426
    .local v2, "x0r":D
    add-int/lit8 v4, p2, 0x1

    aget-wide v4, p1, v4

    neg-double v4, v4

    add-int/lit8 v6, p2, 0x3

    aget-wide v6, p1, v6

    add-double v0, v4, v6

    .line 6427
    .local v0, "x0i":D
    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x2

    aget-wide v6, p1, v6

    add-double/2addr v4, v6

    aput-wide v4, p1, p2

    .line 6428
    add-int/lit8 v4, p2, 0x1

    aget-wide v6, p1, v4

    add-int/lit8 v5, p2, 0x3

    aget-wide v8, p1, v5

    add-double/2addr v6, v8

    aput-wide v6, p1, v4

    .line 6429
    add-int/lit8 v4, p2, 0x2

    aput-wide v2, p1, v4

    .line 6430
    add-int/lit8 v4, p2, 0x3

    aput-wide v0, p1, v4

    .line 6431
    return-void
.end method

.method private cftxb020([DI)V
    .registers 13
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .prologue
    .line 6436
    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x2

    aget-wide v6, p1, v6

    sub-double v2, v4, v6

    .line 6437
    .local v2, "x0r":D
    add-int/lit8 v4, p2, 0x1

    aget-wide v4, p1, v4

    add-int/lit8 v6, p2, 0x3

    aget-wide v6, p1, v6

    sub-double v0, v4, v6

    .line 6438
    .local v0, "x0i":D
    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x2

    aget-wide v6, p1, v6

    add-double/2addr v4, v6

    aput-wide v4, p1, p2

    .line 6439
    add-int/lit8 v4, p2, 0x1

    aget-wide v6, p1, v4

    add-int/lit8 v5, p2, 0x3

    aget-wide v8, p1, v5

    add-double/2addr v6, v8

    aput-wide v6, p1, v4

    .line 6440
    add-int/lit8 v4, p2, 0x2

    aput-wide v2, p1, v4

    .line 6441
    add-int/lit8 v4, p2, 0x3

    aput-wide v0, p1, v4

    .line 6442
    return-void
.end method

.method private cftxc020([DI)V
    .registers 13
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .prologue
    .line 6446
    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x2

    aget-wide v6, p1, v6

    sub-double v2, v4, v6

    .line 6447
    .local v2, "x0r":D
    add-int/lit8 v4, p2, 0x1

    aget-wide v4, p1, v4

    add-int/lit8 v6, p2, 0x3

    aget-wide v6, p1, v6

    add-double v0, v4, v6

    .line 6448
    .local v0, "x0i":D
    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x2

    aget-wide v6, p1, v6

    add-double/2addr v4, v6

    aput-wide v4, p1, p2

    .line 6449
    add-int/lit8 v4, p2, 0x1

    aget-wide v6, p1, v4

    add-int/lit8 v5, p2, 0x3

    aget-wide v8, p1, v5

    sub-double/2addr v6, v8

    aput-wide v6, p1, v4

    .line 6450
    add-int/lit8 v4, p2, 0x2

    aput-wide v2, p1, v4

    .line 6451
    add-int/lit8 v4, p2, 0x3

    aput-wide v0, p1, v4

    .line 6452
    return-void
.end method

.method private static getReminder(I[I)I
    .registers 7
    .param p0, "n"    # I
    .param p1, "factors"    # [I

    .prologue
    .line 127
    move v2, p0

    .line 129
    .local v2, "reminder":I
    if-gtz p0, :cond_c

    .line 130
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "n must be positive integer"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    array-length v3, p1

    if-ge v1, v3, :cond_1e

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1e

    .line 134
    aget v0, p1, v1

    .line 135
    .local v0, "factor":I
    :goto_15
    rem-int v3, v2, v0

    if-nez v3, :cond_1b

    .line 136
    div-int/2addr v2, v0

    goto :goto_15

    .line 133
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 139
    .end local v0    # "factor":I
    :cond_1e
    return v2
.end method

.method private makect(I[DI)V
    .registers 16
    .param p1, "nc"    # I
    .param p2, "c"    # [D
    .param p3, "startc"    # I

    .prologue
    const/4 v7, 0x1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 1048
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aput p1, v6, v7

    .line 1049
    if-le p1, v7, :cond_3e

    .line 1050
    shr-int/lit8 v5, p1, 0x1

    .line 1051
    .local v5, "nch":I
    int-to-double v6, v5

    const-wide v8, 0x3fe921fb54442d18L    # 0.7853981633974483

    div-double v0, v8, v6

    .line 1052
    .local v0, "delta":D
    int-to-double v6, v5

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    aput-wide v6, p2, p3

    .line 1053
    add-int v6, p3, v5

    aget-wide v8, p2, p3

    mul-double/2addr v8, v10

    aput-wide v8, p2, v6

    .line 1054
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_23
    if-ge v4, v5, :cond_3e

    .line 1055
    int-to-double v6, v4

    mul-double v2, v0, v6

    .line 1056
    .local v2, "deltaj":D
    add-int v6, p3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v10

    aput-wide v8, p2, v6

    .line 1057
    add-int v6, p3, p1

    sub-int/2addr v6, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v10

    aput-wide v8, p2, v6

    .line 1054
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 1060
    .end local v0    # "delta":D
    .end local v2    # "deltaj":D
    .end local v4    # "j":I
    .end local v5    # "nch":I
    :cond_3e
    return-void
.end method

.method private makeipt(I)V
    .registers 11
    .param p1, "nw"    # I

    .prologue
    .line 1029
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    const/4 v7, 0x0

    const/4 v8, 0x2

    aput v7, v6, v8

    .line 1030
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    const/16 v7, 0x10

    const/4 v8, 0x3

    aput v7, v6, v8

    .line 1031
    const/4 v2, 0x2

    .line 1032
    .local v2, "m":I
    move v1, p1

    .local v1, "l":I
    :goto_f
    const/16 v6, 0x20

    if-le v1, v6, :cond_35

    .line 1033
    shl-int/lit8 v3, v2, 0x1

    .line 1034
    .local v3, "m2":I
    shl-int/lit8 v5, v3, 0x3

    .line 1035
    .local v5, "q":I
    move v0, v2

    .local v0, "j":I
    :goto_18
    if-ge v0, v3, :cond_31

    .line 1036
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v6, v6, v0

    shl-int/lit8 v4, v6, 0x2

    .line 1037
    .local v4, "p":I
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    add-int v7, v2, v0

    aput v4, v6, v7

    .line 1038
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    add-int v7, v3, v0

    add-int v8, v4, v5

    aput v8, v6, v7

    .line 1035
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1040
    .end local v4    # "p":I
    :cond_31
    move v2, v3

    .line 1032
    shr-int/lit8 v1, v1, 0x2

    goto :goto_f

    .line 1042
    .end local v0    # "j":I
    .end local v3    # "m2":I
    .end local v5    # "q":I
    :cond_35
    return-void
.end method

.method private makewt(I)V
    .registers 34
    .param p1, "nw"    # I

    .prologue
    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput p1, v26, v27

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x1

    aput v27, v26, v28

    .line 969
    const/16 v26, 0x2

    move/from16 v0, p1

    move/from16 v1, v26

    if-le v0, v1, :cond_1c7

    .line 970
    shr-int/lit8 v15, p1, 0x1

    .line 971
    .local v15, "nwh":I
    int-to-double v0, v15

    move-wide/from16 v26, v0

    const-wide v28, 0x3fe921fb54442d18L    # 0.7853981633974483

    div-double v2, v28, v26

    .line 972
    .local v2, "delta":D
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v4, v2, v26

    .line 973
    .local v4, "delta2":D
    int-to-double v0, v15

    move-wide/from16 v26, v0

    mul-double v26, v26, v2

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    .line 974
    .local v24, "wn4r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    const/16 v27, 0x0

    aput-wide v28, v26, v27

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aput-wide v24, v26, v27

    .line 976
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ne v15, v0, :cond_be

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    const/16 v27, 0x2

    aput-wide v28, v26, v27

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    const/16 v27, 0x3

    aput-wide v28, v26, v27

    .line 992
    :cond_6f
    const/4 v13, 0x0

    .line 993
    .local v13, "nw0":I
    :goto_70
    const/16 v26, 0x2

    move/from16 v0, v26

    if-le v15, v0, :cond_1c7

    .line 994
    add-int v14, v13, v15

    .line 995
    .local v14, "nw1":I
    shr-int/lit8 v15, v15, 0x1

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    aput-wide v28, v26, v14

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v14, 0x1

    aput-wide v24, v26, v27

    .line 998
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ne v15, v0, :cond_139

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x4

    aget-wide v18, v26, v27

    .line 1000
    .local v18, "wk1r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x5

    aget-wide v16, v26, v27

    .line 1001
    .local v16, "wk1i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v14, 0x2

    aput-wide v18, v26, v27

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v14, 0x3

    aput-wide v16, v26, v27

    .line 1021
    .end local v16    # "wk1i":D
    .end local v18    # "wk1r":D
    :cond_bc
    move v13, v14

    goto :goto_70

    .line 979
    .end local v13    # "nw0":I
    .end local v14    # "nw1":I
    :cond_be
    const/16 v26, 0x4

    move/from16 v0, v26

    if-le v15, v0, :cond_6f

    .line 980
    invoke-direct/range {p0 .. p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makeipt(I)V

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    div-double v28, v30, v28

    const/16 v27, 0x2

    aput-wide v28, v26, v27

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    const-wide/high16 v28, 0x4018000000000000L    # 6.0

    mul-double v28, v28, v2

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    div-double v28, v30, v28

    const/16 v27, 0x3

    aput-wide v28, v26, v27

    .line 983
    const/4 v12, 0x4

    .local v12, "j":I
    :goto_f0
    if-ge v12, v15, :cond_6f

    .line 984
    int-to-double v0, v12

    move-wide/from16 v26, v0

    mul-double v6, v2, v26

    .line 985
    .local v6, "deltaj":D
    const-wide/high16 v26, 0x4008000000000000L    # 3.0

    mul-double v8, v26, v6

    .line 986
    .local v8, "deltaj3":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    aput-wide v28, v26, v12

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v12, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    aput-wide v28, v26, v27

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v12, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    aput-wide v28, v26, v27

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v12, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    aput-wide v28, v26, v27

    .line 983
    add-int/lit8 v12, v12, 0x4

    goto :goto_f0

    .line 1003
    .end local v6    # "deltaj":D
    .end local v8    # "deltaj3":D
    .end local v12    # "j":I
    .restart local v13    # "nw0":I
    .restart local v14    # "nw1":I
    :cond_139
    const/16 v26, 0x4

    move/from16 v0, v26

    if-le v15, v0, :cond_bc

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x4

    aget-wide v18, v26, v27

    .line 1005
    .restart local v18    # "wk1r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x6

    aget-wide v22, v26, v27

    .line 1006
    .local v22, "wk3r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v14, 0x2

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    div-double v28, v28, v18

    aput-wide v28, v26, v27

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v14, 0x3

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    div-double v28, v28, v22

    aput-wide v28, v26, v27

    .line 1008
    const/4 v12, 0x4

    .restart local v12    # "j":I
    :goto_170
    if-ge v12, v15, :cond_bc

    .line 1009
    mul-int/lit8 v26, v12, 0x2

    add-int v10, v13, v26

    .line 1010
    .local v10, "idx1":I
    add-int v11, v14, v12

    .line 1011
    .local v11, "idx2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    aget-wide v18, v26, v10

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v10, 0x1

    aget-wide v16, v26, v27

    .line 1013
    .restart local v16    # "wk1i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v10, 0x2

    aget-wide v22, v26, v27

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v10, 0x3

    aget-wide v20, v26, v27

    .line 1015
    .local v20, "wk3i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    aput-wide v18, v26, v11

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v11, 0x1

    aput-wide v16, v26, v27

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v11, 0x2

    aput-wide v22, v26, v27

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v11, 0x3

    aput-wide v20, v26, v27

    .line 1008
    add-int/lit8 v12, v12, 0x4

    goto :goto_170

    .line 1024
    .end local v2    # "delta":D
    .end local v4    # "delta2":D
    .end local v10    # "idx1":I
    .end local v11    # "idx2":I
    .end local v12    # "j":I
    .end local v13    # "nw0":I
    .end local v14    # "nw1":I
    .end local v15    # "nwh":I
    .end local v16    # "wk1i":D
    .end local v18    # "wk1r":D
    .end local v20    # "wk3i":D
    .end local v22    # "wk3r":D
    .end local v24    # "wn4r":D
    :cond_1c7
    return-void
.end method

.method private rftbsub(I[DII[DI)V
    .registers 31
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "nc"    # I
    .param p5, "c"    # [D
    .param p6, "startc"    # I

    .prologue
    .line 6486
    shr-int/lit8 v6, p1, 0x1

    .line 6487
    .local v6, "m":I
    mul-int/lit8 v7, p4, 0x2

    div-int v5, v7, v6

    .line 6488
    .local v5, "ks":I
    const/4 v4, 0x0

    .line 6489
    .local v4, "kk":I
    const/4 v2, 0x2

    .local v2, "j":I
    :goto_8
    if-ge v2, v6, :cond_59

    .line 6490
    sub-int v3, p1, v2

    .line 6491
    .local v3, "k":I
    add-int/2addr v4, v5

    .line 6492
    add-int v7, p6, p4

    sub-int/2addr v7, v4

    aget-wide v20, p5, v7

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    sub-double v10, v22, v20

    .line 6493
    .local v10, "wkr":D
    add-int v7, p6, v4

    aget-wide v8, p5, v7

    .line 6494
    .local v8, "wki":D
    add-int v0, p3, v2

    .line 6495
    .local v0, "idx1":I
    add-int v1, p3, v3

    .line 6496
    .local v1, "idx2":I
    aget-wide v20, p2, v0

    aget-wide v22, p2, v1

    sub-double v14, v20, v22

    .line 6497
    .local v14, "xr":D
    add-int/lit8 v7, v0, 0x1

    aget-wide v20, p2, v7

    add-int/lit8 v7, v1, 0x1

    aget-wide v22, p2, v7

    add-double v12, v20, v22

    .line 6498
    .local v12, "xi":D
    mul-double v20, v10, v14

    mul-double v22, v8, v12

    sub-double v18, v20, v22

    .line 6499
    .local v18, "yr":D
    mul-double v20, v10, v12

    mul-double v22, v8, v14

    add-double v16, v20, v22

    .line 6500
    .local v16, "yi":D
    aget-wide v20, p2, v0

    sub-double v20, v20, v18

    aput-wide v20, p2, v0

    .line 6501
    add-int/lit8 v7, v0, 0x1

    aget-wide v20, p2, v7

    sub-double v20, v20, v16

    aput-wide v20, p2, v7

    .line 6502
    aget-wide v20, p2, v1

    add-double v20, v20, v18

    aput-wide v20, p2, v1

    .line 6503
    add-int/lit8 v7, v1, 0x1

    aget-wide v20, p2, v7

    sub-double v20, v20, v16

    aput-wide v20, p2, v7

    .line 6489
    add-int/lit8 v2, v2, 0x2

    goto :goto_8

    .line 6505
    .end local v0    # "idx1":I
    .end local v1    # "idx2":I
    .end local v3    # "k":I
    .end local v8    # "wki":D
    .end local v10    # "wkr":D
    .end local v12    # "xi":D
    .end local v14    # "xr":D
    .end local v16    # "yi":D
    .end local v18    # "yr":D
    :cond_59
    return-void
.end method

.method private rftfsub(I[DII[DI)V
    .registers 33
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "nc"    # I
    .param p5, "c"    # [D
    .param p6, "startc"    # I

    .prologue
    .line 6459
    shr-int/lit8 v8, p1, 0x1

    .line 6460
    .local v8, "m":I
    mul-int/lit8 v9, p4, 0x2

    div-int v7, v9, v8

    .line 6461
    .local v7, "ks":I
    const/4 v6, 0x0

    .line 6462
    .local v6, "kk":I
    const/4 v4, 0x2

    .local v4, "j":I
    :goto_8
    if-ge v4, v8, :cond_5d

    .line 6463
    sub-int v5, p1, v4

    .line 6464
    .local v5, "k":I
    add-int/2addr v6, v7

    .line 6465
    add-int v9, p6, p4

    sub-int/2addr v9, v6

    aget-wide v22, p5, v9

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    sub-double v12, v24, v22

    .line 6466
    .local v12, "wkr":D
    add-int v9, p6, v6

    aget-wide v10, p5, v9

    .line 6467
    .local v10, "wki":D
    add-int v2, p3, v4

    .line 6468
    .local v2, "idx1":I
    add-int v3, p3, v5

    .line 6469
    .local v3, "idx2":I
    aget-wide v22, p2, v2

    aget-wide v24, p2, v3

    sub-double v16, v22, v24

    .line 6470
    .local v16, "xr":D
    add-int/lit8 v9, v2, 0x1

    aget-wide v22, p2, v9

    add-int/lit8 v9, v3, 0x1

    aget-wide v24, p2, v9

    add-double v14, v22, v24

    .line 6471
    .local v14, "xi":D
    mul-double v22, v12, v16

    mul-double v24, v10, v14

    sub-double v20, v22, v24

    .line 6472
    .local v20, "yr":D
    mul-double v22, v12, v14

    mul-double v24, v10, v16

    add-double v18, v22, v24

    .line 6473
    .local v18, "yi":D
    aget-wide v22, p2, v2

    sub-double v22, v22, v20

    aput-wide v22, p2, v2

    .line 6474
    add-int/lit8 v9, v2, 0x1

    add-int/lit8 v22, v2, 0x1

    aget-wide v22, p2, v22

    sub-double v22, v18, v22

    aput-wide v22, p2, v9

    .line 6475
    aget-wide v22, p2, v3

    add-double v22, v22, v20

    aput-wide v22, p2, v3

    .line 6476
    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v22, v3, 0x1

    aget-wide v22, p2, v22

    sub-double v22, v18, v22

    aput-wide v22, p2, v9

    .line 6462
    add-int/lit8 v4, v4, 0x2

    goto :goto_8

    .line 6478
    .end local v2    # "idx1":I
    .end local v3    # "idx2":I
    .end local v5    # "k":I
    .end local v10    # "wki":D
    .end local v12    # "wkr":D
    .end local v14    # "xi":D
    .end local v16    # "xr":D
    .end local v18    # "yi":D
    .end local v20    # "yr":D
    :cond_5d
    add-int v9, p3, v8

    add-int/lit8 v9, v9, 0x1

    add-int v22, p3, v8

    add-int/lit8 v22, v22, 0x1

    aget-wide v22, p2, v22

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, p2, v9

    .line 6479
    return-void
.end method

.method private scale(D[DIZ)V
    .registers 21
    .param p1, "m"    # D
    .param p3, "a"    # [D
    .param p4, "offa"    # I
    .param p5, "complex"    # Z

    .prologue
    .line 6508
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double v6, v12, p1

    .line 6510
    .local v6, "norm":D
    if-eqz p5, :cond_39

    .line 6511
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v10, v1, 0x2

    .line 6515
    .local v10, "n2":I
    :goto_a
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 6516
    .local v11, "nthreads":I
    const/4 v1, 0x1

    if-le v11, v1, :cond_43

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-lt v10, v1, :cond_43

    .line 6517
    div-int v9, v10, v11

    .line 6518
    .local v9, "k":I
    new-array v0, v11, [Ljava/util/concurrent/Future;

    .line 6519
    .local v0, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1c
    if-ge v8, v11, :cond_3f

    .line 6520
    mul-int v1, v8, v9

    add-int v3, p4, v1

    .line 6521
    .local v3, "firstIdx":I
    add-int/lit8 v1, v11, -0x1

    if-ne v8, v1, :cond_3c

    add-int v4, p4, v10

    .line 6522
    .local v4, "lastIdx":I
    :goto_28
    new-instance v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;

    move-object v2, p0

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DD)V

    invoke-static {v1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v0, v8

    .line 6519
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    .line 6513
    .end local v0    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v3    # "firstIdx":I
    .end local v4    # "lastIdx":I
    .end local v8    # "i":I
    .end local v9    # "k":I
    .end local v10    # "n2":I
    .end local v11    # "nthreads":I
    :cond_39
    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    .restart local v10    # "n2":I
    goto :goto_a

    .line 6521
    .restart local v0    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .restart local v3    # "firstIdx":I
    .restart local v8    # "i":I
    .restart local v9    # "k":I
    .restart local v11    # "nthreads":I
    :cond_3c
    add-int v4, v3, v9

    .restart local v4    # "lastIdx":I
    goto :goto_28

    .line 6531
    .end local v3    # "firstIdx":I
    .end local v4    # "lastIdx":I
    :cond_3f
    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 6538
    .end local v0    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v9    # "k":I
    :cond_42
    return-void

    .line 6533
    .end local v8    # "i":I
    :cond_43
    move/from16 v8, p4

    .restart local v8    # "i":I
    :goto_45
    add-int v1, p4, v10

    if-ge v8, v1, :cond_42

    .line 6534
    aget-wide v12, p3, v8

    mul-double/2addr v12, v6

    aput-wide v12, p3, v8

    .line 6533
    add-int/lit8 v8, v8, 0x1

    goto :goto_45
.end method


# virtual methods
.method cfftf([DII)V
    .registers 38
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "isign"    # I

    .prologue
    .line 3293
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v31, v0

    .line 3294
    .local v31, "nac":[I
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v33, v4, 0x2

    .line 3297
    .local v33, "twon":I
    move/from16 v0, v33

    new-array v9, v0, [D

    .line 3299
    .local v9, "ch":[D
    move/from16 v26, v33

    .line 3300
    .local v26, "iw1":I
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v27, v4, 0x4

    .line 3301
    .local v27, "iw2":I
    const/4 v4, 0x0

    const/4 v7, 0x0

    aput v4, v31, v7

    .line 3302
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v7, v27, 0x1

    aget-wide v12, v4, v7

    double-to-int v0, v12

    move/from16 v32, v0

    .line 3303
    .local v32, "nf":I
    const/16 v30, 0x0

    .line 3304
    .local v30, "na":I
    const/4 v6, 0x1

    .line 3305
    .local v6, "l1":I
    move/from16 v11, v33

    .line 3306
    .local v11, "iw":I
    const/16 v28, 0x2

    .local v28, "k1":I
    :goto_2d
    add-int/lit8 v4, v32, 0x1

    move/from16 v0, v28

    if-gt v0, v4, :cond_122

    .line 3307
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v7, v28, v27

    aget-wide v12, v4, v7

    double-to-int v0, v12

    move/from16 v25, v0

    .line 3308
    .local v25, "ip":I
    mul-int v29, v25, v6

    .line 3309
    .local v29, "l2":I
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v24, v4, v29

    .line 3310
    .local v24, "ido":I
    add-int v5, v24, v24

    .line 3311
    .local v5, "idot":I
    mul-int v17, v5, v6

    .line 3312
    .local v17, "idl1":I
    packed-switch v25, :pswitch_data_130

    .line 3346
    if-nez v30, :cond_108

    .line 3347
    const/16 v21, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, v31

    move v14, v5

    move/from16 v15, v25

    move/from16 v16, v6

    move-object/from16 v18, p1

    move/from16 v19, p2

    move-object/from16 v20, v9

    move/from16 v22, v11

    move/from16 v23, p3

    invoke-virtual/range {v12 .. v23}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passfg([IIIII[DI[DIII)V

    .line 3351
    :goto_67
    const/4 v4, 0x0

    aget v4, v31, v4

    if-eqz v4, :cond_6e

    .line 3352
    rsub-int/lit8 v30, v30, 0x1

    .line 3355
    .end local v17    # "idl1":I
    :cond_6e
    :goto_6e
    move/from16 v6, v29

    .line 3356
    add-int/lit8 v4, v25, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v11, v4

    .line 3306
    add-int/lit8 v28, v28, 0x1

    goto :goto_2d

    .line 3314
    .restart local v17    # "idl1":I
    :pswitch_77
    if-nez v30, :cond_88

    .line 3315
    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v12, p3

    invoke-virtual/range {v4 .. v12}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf4(II[DI[DIII)V

    .line 3319
    .end local v17    # "idl1":I
    :goto_85
    rsub-int/lit8 v30, v30, 0x1

    .line 3320
    goto :goto_6e

    .line 3317
    .restart local v17    # "idl1":I
    :cond_88
    const/16 v16, 0x0

    move-object/from16 v12, p0

    move v13, v5

    move v14, v6

    move-object v15, v9

    move-object/from16 v17, p1

    move/from16 v18, p2

    move/from16 v19, v11

    move/from16 v20, p3

    invoke-virtual/range {v12 .. v20}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf4(II[DI[DIII)V

    goto :goto_85

    .line 3322
    :pswitch_9b
    if-nez v30, :cond_ac

    .line 3323
    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v12, p3

    invoke-virtual/range {v4 .. v12}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf2(II[DI[DIII)V

    .line 3327
    .end local v17    # "idl1":I
    :goto_a9
    rsub-int/lit8 v30, v30, 0x1

    .line 3328
    goto :goto_6e

    .line 3325
    .restart local v17    # "idl1":I
    :cond_ac
    const/16 v16, 0x0

    move-object/from16 v12, p0

    move v13, v5

    move v14, v6

    move-object v15, v9

    move-object/from16 v17, p1

    move/from16 v18, p2

    move/from16 v19, v11

    move/from16 v20, p3

    invoke-virtual/range {v12 .. v20}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf2(II[DI[DIII)V

    goto :goto_a9

    .line 3330
    :pswitch_bf
    if-nez v30, :cond_d0

    .line 3331
    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v12, p3

    invoke-virtual/range {v4 .. v12}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf3(II[DI[DIII)V

    .line 3335
    .end local v17    # "idl1":I
    :goto_cd
    rsub-int/lit8 v30, v30, 0x1

    .line 3336
    goto :goto_6e

    .line 3333
    .restart local v17    # "idl1":I
    :cond_d0
    const/16 v16, 0x0

    move-object/from16 v12, p0

    move v13, v5

    move v14, v6

    move-object v15, v9

    move-object/from16 v17, p1

    move/from16 v18, p2

    move/from16 v19, v11

    move/from16 v20, p3

    invoke-virtual/range {v12 .. v20}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf3(II[DI[DIII)V

    goto :goto_cd

    .line 3338
    :pswitch_e3
    if-nez v30, :cond_f5

    .line 3339
    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v12, p3

    invoke-virtual/range {v4 .. v12}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf5(II[DI[DIII)V

    .line 3343
    .end local v17    # "idl1":I
    :goto_f1
    rsub-int/lit8 v30, v30, 0x1

    .line 3344
    goto/16 :goto_6e

    .line 3341
    .restart local v17    # "idl1":I
    :cond_f5
    const/16 v16, 0x0

    move-object/from16 v12, p0

    move v13, v5

    move v14, v6

    move-object v15, v9

    move-object/from16 v17, p1

    move/from16 v18, p2

    move/from16 v19, v11

    move/from16 v20, p3

    invoke-virtual/range {v12 .. v20}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf5(II[DI[DIII)V

    goto :goto_f1

    .line 3349
    :cond_108
    const/16 v19, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, v31

    move v14, v5

    move/from16 v15, v25

    move/from16 v16, v6

    move-object/from16 v18, v9

    move-object/from16 v20, p1

    move/from16 v21, p2

    move/from16 v22, v11

    move/from16 v23, p3

    invoke-virtual/range {v12 .. v23}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passfg([IIIII[DI[DIII)V

    goto/16 :goto_67

    .line 3358
    .end local v5    # "idot":I
    .end local v17    # "idl1":I
    .end local v24    # "ido":I
    .end local v25    # "ip":I
    .end local v29    # "l2":I
    :cond_122
    if-nez v30, :cond_125

    .line 3359
    return-void

    .line 3360
    :cond_125
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v33

    invoke-static {v9, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 3362
    return-void

    .line 3312
    :pswitch_data_130
    .packed-switch 0x2
        :pswitch_9b
        :pswitch_bf
        :pswitch_77
        :pswitch_e3
    .end packed-switch
.end method

.method cffti()V
    .registers 39

    .prologue
    .line 773
    move-object/from16 v0, p0

    iget v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_f

    .line 774
    return-void

    .line 776
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v33, v0

    mul-int/lit8 v32, v33, 0x2

    .line 777
    .local v32, "twon":I
    move-object/from16 v0, p0

    iget v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v33, v0

    mul-int/lit8 v10, v33, 0x4

    .line 779
    .local v10, "fourn":I
    const/16 v31, 0x0

    .line 787
    .local v31, "ntry":I
    move-object/from16 v0, p0

    iget v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v28, v0

    .line 788
    .local v28, "nl":I
    const/16 v27, 0x0

    .line 789
    .local v27, "nf":I
    const/16 v22, 0x0

    .line 793
    .local v22, "j":I
    :cond_2b
    add-int/lit8 v22, v22, 0x1

    .line 794
    const/16 v33, 0x4

    move/from16 v0, v22

    move/from16 v1, v33

    if-gt v0, v1, :cond_88

    .line 795
    sget-object v33, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    add-int/lit8 v34, v22, -0x1

    aget v31, v33, v34

    .line 799
    :cond_3b
    :goto_3b
    div-int v29, v28, v31

    .line 800
    .local v29, "nq":I
    mul-int v33, v31, v29

    sub-int v30, v28, v33

    .line 801
    .local v30, "nr":I
    if-nez v30, :cond_2b

    .line 803
    add-int/lit8 v27, v27, 0x1

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int/lit8 v34, v27, 0x1

    add-int v34, v34, v10

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v36, v0

    aput-wide v36, v33, v34

    .line 805
    move/from16 v28, v29

    .line 806
    const/16 v33, 0x2

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_97

    const/16 v33, 0x1

    move/from16 v0, v27

    move/from16 v1, v33

    if-eq v0, v1, :cond_97

    .line 807
    const/4 v11, 0x2

    .local v11, "i":I
    :goto_69
    move/from16 v0, v27

    if-gt v11, v0, :cond_8b

    .line 808
    sub-int v33, v27, v11

    add-int/lit8 v13, v33, 0x2

    .line 809
    .local v13, "ib":I
    add-int v16, v13, v10

    .line 810
    .local v16, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int/lit8 v34, v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v35, v0

    aget-wide v36, v35, v16

    aput-wide v36, v33, v34

    .line 807
    add-int/lit8 v11, v11, 0x1

    goto :goto_69

    .line 797
    .end local v11    # "i":I
    .end local v13    # "ib":I
    .end local v16    # "idx":I
    .end local v29    # "nq":I
    .end local v30    # "nr":I
    :cond_88
    add-int/lit8 v31, v31, 0x2

    goto :goto_3b

    .line 812
    .restart local v11    # "i":I
    .restart local v29    # "nq":I
    .restart local v30    # "nr":I
    :cond_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int/lit8 v34, v10, 0x2

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    aput-wide v36, v33, v34

    .line 814
    .end local v11    # "i":I
    :cond_97
    const/16 v33, 0x1

    move/from16 v0, v29

    move/from16 v1, v33

    if-ne v0, v1, :cond_3b

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    aput-wide v34, v33, v10

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int/lit8 v34, v10, 0x1

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v36, v0

    aput-wide v36, v33, v34

    .line 819
    move-object/from16 v0, p0

    iget v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x401921fb54442d18L    # 6.283185307179586

    div-double v4, v36, v34

    .line 820
    .local v4, "argh":D
    const/4 v11, 0x1

    .line 821
    .restart local v11    # "i":I
    const/16 v24, 0x1

    .line 822
    .local v24, "l1":I
    const/16 v23, 0x1

    .local v23, "k1":I
    :goto_d8
    move/from16 v0, v23

    move/from16 v1, v27

    if-gt v0, v1, :cond_196

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int/lit8 v34, v23, 0x1

    add-int v34, v34, v10

    aget-wide v34, v33, v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v20, v0

    .line 824
    .local v20, "ip":I
    const/16 v26, 0x0

    .line 825
    .local v26, "ld":I
    mul-int v25, v24, v20

    .line 826
    .local v25, "l2":I
    move-object/from16 v0, p0

    iget v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v33, v0

    div-int v14, v33, v25

    .line 827
    .local v14, "ido":I
    add-int v33, v14, v14

    add-int/lit8 v15, v33, 0x2

    .line 828
    .local v15, "idot":I
    add-int/lit8 v21, v20, -0x1

    .line 829
    .local v21, "ipm":I
    const/16 v22, 0x1

    :goto_103
    move/from16 v0, v22

    move/from16 v1, v21

    if-gt v0, v1, :cond_190

    .line 830
    move v12, v11

    .line 831
    .local v12, "i1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int/lit8 v34, v11, -0x1

    add-int v34, v34, v32

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    aput-wide v36, v33, v34

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int v34, v11, v32

    const-wide/16 v36, 0x0

    aput-wide v36, v33, v34

    .line 833
    add-int v26, v26, v24

    .line 834
    const-wide/16 v8, 0x0

    .line 835
    .local v8, "fi":D
    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v6, v34, v4

    .line 836
    .local v6, "argld":D
    const/16 v19, 0x4

    .local v19, "ii":I
    :goto_131
    move/from16 v0, v19

    if-gt v0, v15, :cond_15c

    .line 837
    add-int/lit8 v11, v11, 0x2

    .line 838
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    add-double v8, v8, v34

    .line 839
    mul-double v2, v8, v6

    .line 840
    .local v2, "arg":D
    add-int v16, v11, v32

    .line 841
    .restart local v16    # "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int/lit8 v34, v16, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    aput-wide v36, v33, v34

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    aput-wide v34, v33, v16

    .line 836
    add-int/lit8 v19, v19, 0x2

    goto :goto_131

    .line 844
    .end local v2    # "arg":D
    .end local v16    # "idx":I
    :cond_15c
    const/16 v33, 0x5

    move/from16 v0, v20

    move/from16 v1, v33

    if-le v0, v1, :cond_18c

    .line 845
    add-int v17, v12, v32

    .line 846
    .local v17, "idx1":I
    add-int v18, v11, v32

    .line 847
    .local v18, "idx2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int/lit8 v34, v17, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v35, v0

    add-int/lit8 v36, v18, -0x1

    aget-wide v36, v35, v36

    aput-wide v36, v33, v34

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v34, v0

    aget-wide v34, v34, v18

    aput-wide v34, v33, v17

    .line 829
    .end local v17    # "idx1":I
    .end local v18    # "idx2":I
    :cond_18c
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_103

    .line 851
    .end local v6    # "argld":D
    .end local v8    # "fi":D
    .end local v12    # "i1":I
    .end local v19    # "ii":I
    :cond_190
    move/from16 v24, v25

    .line 822
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_d8

    .line 854
    .end local v14    # "ido":I
    .end local v15    # "idot":I
    .end local v20    # "ip":I
    .end local v21    # "ipm":I
    .end local v25    # "l2":I
    .end local v26    # "ld":I
    :cond_196
    return-void
.end method

.method cffti(II)V
    .registers 41
    .param p1, "n"    # I
    .param p2, "offw"    # I

    .prologue
    .line 683
    const/16 v33, 0x1

    move/from16 v0, p1

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    .line 684
    return-void

    .line 686
    :cond_9
    mul-int/lit8 v32, p1, 0x2

    .line 687
    .local v32, "twon":I
    mul-int/lit8 v10, p1, 0x4

    .line 689
    .local v10, "fourn":I
    const/16 v31, 0x0

    .line 697
    .local v31, "ntry":I
    move/from16 v28, p1

    .line 698
    .local v28, "nl":I
    const/16 v27, 0x0

    .line 699
    .local v27, "nf":I
    const/16 v22, 0x0

    .line 703
    .local v22, "j":I
    :cond_15
    add-int/lit8 v22, v22, 0x1

    .line 704
    const/16 v33, 0x4

    move/from16 v0, v22

    move/from16 v1, v33

    if-gt v0, v1, :cond_78

    .line 705
    sget-object v33, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    add-int/lit8 v34, v22, -0x1

    aget v31, v33, v34

    .line 709
    :cond_25
    :goto_25
    div-int v29, v28, v31

    .line 710
    .local v29, "nq":I
    mul-int v33, v31, v29

    sub-int v30, v28, v33

    .line 711
    .local v30, "nr":I
    if-nez v30, :cond_15

    .line 713
    add-int/lit8 v27, v27, 0x1

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int v34, p2, v27

    add-int/lit8 v34, v34, 0x1

    add-int v34, v34, v10

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v36, v0

    aput-wide v36, v33, v34

    .line 715
    move/from16 v28, v29

    .line 716
    const/16 v33, 0x2

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_89

    const/16 v33, 0x1

    move/from16 v0, v27

    move/from16 v1, v33

    if-eq v0, v1, :cond_89

    .line 717
    const/4 v11, 0x2

    .local v11, "i":I
    :goto_55
    move/from16 v0, v27

    if-gt v11, v0, :cond_7b

    .line 718
    sub-int v33, v27, v11

    add-int/lit8 v13, v33, 0x2

    .line 719
    .local v13, "ib":I
    add-int v16, v13, v10

    .line 720
    .local v16, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int v34, p2, v16

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v35, v0

    add-int v36, p2, v16

    aget-wide v36, v35, v36

    aput-wide v36, v33, v34

    .line 717
    add-int/lit8 v11, v11, 0x1

    goto :goto_55

    .line 707
    .end local v11    # "i":I
    .end local v13    # "ib":I
    .end local v16    # "idx":I
    .end local v29    # "nq":I
    .end local v30    # "nr":I
    :cond_78
    add-int/lit8 v31, v31, 0x2

    goto :goto_25

    .line 722
    .restart local v11    # "i":I
    .restart local v29    # "nq":I
    .restart local v30    # "nr":I
    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int/lit8 v34, p2, 0x2

    add-int v34, v34, v10

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    aput-wide v36, v33, v34

    .line 724
    .end local v11    # "i":I
    :cond_89
    const/16 v33, 0x1

    move/from16 v0, v29

    move/from16 v1, v33

    if-ne v0, v1, :cond_25

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int v34, p2, v10

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v36, v0

    aput-wide v36, v33, v34

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int/lit8 v34, p2, 0x1

    add-int v34, v34, v10

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v36, v0

    aput-wide v36, v33, v34

    .line 729
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x401921fb54442d18L    # 6.283185307179586

    div-double v4, v36, v34

    .line 730
    .local v4, "argh":D
    const/4 v11, 0x1

    .line 731
    .restart local v11    # "i":I
    const/16 v24, 0x1

    .line 732
    .local v24, "l1":I
    const/16 v23, 0x1

    .local v23, "k1":I
    :goto_c2
    move/from16 v0, v23

    move/from16 v1, v27

    if-gt v0, v1, :cond_18c

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int v34, p2, v23

    add-int/lit8 v34, v34, 0x1

    add-int v34, v34, v10

    aget-wide v34, v33, v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v20, v0

    .line 734
    .local v20, "ip":I
    const/16 v26, 0x0

    .line 735
    .local v26, "ld":I
    mul-int v25, v24, v20

    .line 736
    .local v25, "l2":I
    div-int v14, p1, v25

    .line 737
    .local v14, "ido":I
    add-int v33, v14, v14

    add-int/lit8 v15, v33, 0x2

    .line 738
    .local v15, "idot":I
    add-int/lit8 v21, v20, -0x1

    .line 739
    .local v21, "ipm":I
    const/16 v22, 0x1

    :goto_e9
    move/from16 v0, v22

    move/from16 v1, v21

    if-gt v0, v1, :cond_186

    .line 740
    move v12, v11

    .line 741
    .local v12, "i1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int v34, p2, v11

    add-int/lit8 v34, v34, -0x1

    add-int v34, v34, v32

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    aput-wide v36, v33, v34

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int v34, p2, v11

    add-int v34, v34, v32

    const-wide/16 v36, 0x0

    aput-wide v36, v33, v34

    .line 743
    add-int v26, v26, v24

    .line 744
    const-wide/16 v8, 0x0

    .line 745
    .local v8, "fi":D
    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v6, v34, v4

    .line 746
    .local v6, "argld":D
    const/16 v19, 0x4

    .local v19, "ii":I
    :goto_11b
    move/from16 v0, v19

    if-gt v0, v15, :cond_14a

    .line 747
    add-int/lit8 v11, v11, 0x2

    .line 748
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    add-double v8, v8, v34

    .line 749
    mul-double v2, v8, v6

    .line 750
    .local v2, "arg":D
    add-int v16, v11, v32

    .line 751
    .restart local v16    # "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int v34, p2, v16

    add-int/lit8 v34, v34, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    aput-wide v36, v33, v34

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int v34, p2, v16

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    aput-wide v36, v33, v34

    .line 746
    add-int/lit8 v19, v19, 0x2

    goto :goto_11b

    .line 754
    .end local v2    # "arg":D
    .end local v16    # "idx":I
    :cond_14a
    const/16 v33, 0x5

    move/from16 v0, v20

    move/from16 v1, v33

    if-le v0, v1, :cond_182

    .line 755
    add-int v17, v12, v32

    .line 756
    .local v17, "idx1":I
    add-int v18, v11, v32

    .line 757
    .local v18, "idx2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int v34, p2, v17

    add-int/lit8 v34, v34, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v35, v0

    add-int v36, p2, v18

    add-int/lit8 v36, v36, -0x1

    aget-wide v36, v35, v36

    aput-wide v36, v33, v34

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v33, v0

    add-int v34, p2, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v35, v0

    add-int v36, p2, v18

    aget-wide v36, v35, v36

    aput-wide v36, v33, v34

    .line 739
    .end local v17    # "idx1":I
    .end local v18    # "idx2":I
    :cond_182
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_e9

    .line 761
    .end local v6    # "argld":D
    .end local v8    # "fi":D
    .end local v12    # "i1":I
    .end local v19    # "ii":I
    :cond_186
    move/from16 v24, v25

    .line 732
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_c2

    .line 764
    .end local v14    # "ido":I
    .end local v15    # "idot":I
    .end local v20    # "ip":I
    .end local v21    # "ipm":I
    .end local v25    # "l2":I
    .end local v26    # "ld":I
    :cond_18c
    return-void
.end method

.method public complexForward([D)V
    .registers 3
    .param p1, "a"    # [D

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 158
    return-void
.end method

.method public complexForward([DI)V
    .registers 10
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .prologue
    const/4 v2, -0x1

    .line 176
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 177
    return-void

    .line 178
    :cond_7
    invoke-static {}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-getedu-emory-mathcs-jtransforms-fft-DoubleFFT_1D$PlansSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 189
    :goto_16
    return-void

    .line 180
    :pswitch_17
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    goto :goto_16

    .line 183
    :pswitch_28
    invoke-virtual {p0, p1, p2, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfftf([DII)V

    goto :goto_16

    .line 186
    :pswitch_2c
    invoke-direct {p0, p1, p2, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_complex([DII)V

    goto :goto_16

    .line 178
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_28
        :pswitch_17
    .end packed-switch
.end method

.method public complexInverse([DIZ)V
    .registers 12
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "scale"    # Z

    .prologue
    const/4 v7, 0x1

    .line 227
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ne v0, v7, :cond_6

    .line 228
    return-void

    .line 229
    :cond_6
    invoke-static {}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-getedu-emory-mathcs-jtransforms-fft-DoubleFFT_1D$PlansSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    .line 240
    :goto_15
    if-eqz p3, :cond_21

    .line 241
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v2, v0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, v7

    invoke-direct/range {v1 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    .line 243
    :cond_21
    return-void

    .line 231
    :pswitch_22
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    goto :goto_15

    .line 234
    :pswitch_33
    invoke-virtual {p0, p1, p2, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfftf([DII)V

    goto :goto_15

    .line 237
    :pswitch_37
    invoke-direct {p0, p1, p2, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_complex([DII)V

    goto :goto_15

    .line 229
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_37
        :pswitch_33
        :pswitch_22
    .end packed-switch
.end method

.method public complexInverse([DZ)V
    .registers 4
    .param p1, "a"    # [D
    .param p2, "scale"    # Z

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 208
    return-void
.end method

.method passf2(II[DI[DIII)V
    .registers 51
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I
    .param p8, "isign"    # I

    .prologue
    .line 3367
    move/from16 v23, p7

    .line 3368
    .local v23, "iw1":I
    mul-int v11, p1, p2

    .line 3369
    .local v11, "idx":I
    const/16 v36, 0x2

    move/from16 v0, p1

    move/from16 v1, v36

    if-gt v0, v1, :cond_43

    .line 3370
    const/16 v24, 0x0

    .local v24, "k":I
    :goto_e
    move/from16 v0, v24

    move/from16 v1, p2

    if-ge v0, v1, :cond_af

    .line 3371
    mul-int v20, v24, p1

    .line 3372
    .local v20, "idx0":I
    mul-int/lit8 v36, v20, 0x2

    add-int v21, p4, v36

    .line 3373
    .local v21, "iidx1":I
    add-int v22, v21, p1

    .line 3374
    .local v22, "iidx2":I
    aget-wide v4, p3, v21

    .line 3375
    .local v4, "a1r":D
    add-int/lit8 v36, v21, 0x1

    aget-wide v2, p3, v36

    .line 3376
    .local v2, "a1i":D
    aget-wide v8, p3, v22

    .line 3377
    .local v8, "a2r":D
    add-int/lit8 v36, v22, 0x1

    aget-wide v6, p3, v36

    .line 3379
    .local v6, "a2i":D
    add-int v25, p6, v20

    .line 3380
    .local v25, "oidx1":I
    add-int v26, v25, v11

    .line 3381
    .local v26, "oidx2":I
    add-double v36, v4, v8

    aput-wide v36, p5, v25

    .line 3382
    add-int/lit8 v36, v25, 0x1

    add-double v38, v2, v6

    aput-wide v38, p5, v36

    .line 3383
    sub-double v36, v4, v8

    aput-wide v36, p5, v26

    .line 3384
    add-int/lit8 v36, v26, 0x1

    sub-double v38, v2, v6

    aput-wide v38, p5, v36

    .line 3370
    add-int/lit8 v24, v24, 0x1

    goto :goto_e

    .line 3387
    .end local v2    # "a1i":D
    .end local v4    # "a1r":D
    .end local v6    # "a2i":D
    .end local v8    # "a2r":D
    .end local v20    # "idx0":I
    .end local v21    # "iidx1":I
    .end local v22    # "iidx2":I
    .end local v24    # "k":I
    .end local v25    # "oidx1":I
    .end local v26    # "oidx2":I
    :cond_43
    const/16 v24, 0x0

    .restart local v24    # "k":I
    :goto_45
    move/from16 v0, v24

    move/from16 v1, p2

    if-ge v0, v1, :cond_af

    .line 3388
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4c
    add-int/lit8 v36, p1, -0x1

    move/from16 v0, v36

    if-ge v10, v0, :cond_ac

    .line 3389
    mul-int v20, v24, p1

    .line 3390
    .restart local v20    # "idx0":I
    add-int v36, p4, v10

    mul-int/lit8 v37, v20, 0x2

    add-int v21, v36, v37

    .line 3391
    .restart local v21    # "iidx1":I
    add-int v22, v21, p1

    .line 3392
    .restart local v22    # "iidx2":I
    aget-wide v14, p3, v21

    .line 3393
    .local v14, "i1r":D
    add-int/lit8 v36, v21, 0x1

    aget-wide v12, p3, v36

    .line 3394
    .local v12, "i1i":D
    aget-wide v18, p3, v22

    .line 3395
    .local v18, "i2r":D
    add-int/lit8 v36, v22, 0x1

    aget-wide v16, p3, v36

    .line 3397
    .local v16, "i2i":D
    add-int v27, v10, p7

    .line 3398
    .local v27, "widx1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v36, v0

    aget-wide v34, v36, v27

    .line 3399
    .local v34, "w1r":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v38, v0

    add-int/lit8 v39, v27, 0x1

    aget-wide v38, v38, v39

    mul-double v32, v36, v38

    .line 3401
    .local v32, "w1i":D
    sub-double v30, v14, v18

    .line 3402
    .local v30, "t1r":D
    sub-double v28, v12, v16

    .line 3404
    .local v28, "t1i":D
    add-int v36, p6, v10

    add-int v25, v36, v20

    .line 3405
    .restart local v25    # "oidx1":I
    add-int v26, v25, v11

    .line 3406
    .restart local v26    # "oidx2":I
    add-double v36, v14, v18

    aput-wide v36, p5, v25

    .line 3407
    add-int/lit8 v36, v25, 0x1

    add-double v38, v12, v16

    aput-wide v38, p5, v36

    .line 3408
    mul-double v36, v34, v30

    mul-double v38, v32, v28

    sub-double v36, v36, v38

    aput-wide v36, p5, v26

    .line 3409
    add-int/lit8 v36, v26, 0x1

    mul-double v38, v34, v28

    mul-double v40, v32, v30

    add-double v38, v38, v40

    aput-wide v38, p5, v36

    .line 3388
    add-int/lit8 v10, v10, 0x2

    goto :goto_4c

    .line 3387
    .end local v12    # "i1i":D
    .end local v14    # "i1r":D
    .end local v16    # "i2i":D
    .end local v18    # "i2r":D
    .end local v20    # "idx0":I
    .end local v21    # "iidx1":I
    .end local v22    # "iidx2":I
    .end local v25    # "oidx1":I
    .end local v26    # "oidx2":I
    .end local v27    # "widx1":I
    .end local v28    # "t1i":D
    .end local v30    # "t1r":D
    .end local v32    # "w1i":D
    .end local v34    # "w1r":D
    :cond_ac
    add-int/lit8 v24, v24, 0x1

    goto :goto_45

    .line 3413
    .end local v10    # "i":I
    :cond_af
    return-void
.end method

.method passf3(II[DI[DIII)V
    .registers 87
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I
    .param p8, "isign"    # I

    .prologue
    .line 3425
    const-wide/high16 v58, -0x4020000000000000L    # -0.5

    .line 3426
    .local v58, "taur":D
    const-wide v56, 0x3febb67ae8584cabL    # 0.8660254037844387

    .line 3430
    .local v56, "taui":D
    move/from16 v49, p7

    .line 3431
    .local v49, "iw1":I
    add-int v50, p7, p1

    .line 3433
    .local v50, "iw2":I
    mul-int v45, p2, p1

    .line 3435
    .local v45, "idxt":I
    const/16 v73, 0x2

    move/from16 v0, p1

    move/from16 v1, v73

    if-ne v0, v1, :cond_98

    .line 3436
    const/16 v51, 0x1

    .local v51, "k":I
    :goto_17
    move/from16 v0, v51

    move/from16 v1, p2

    if-gt v0, v1, :cond_17a

    .line 3437
    mul-int/lit8 v73, v51, 0x3

    add-int/lit8 v73, v73, -0x2

    mul-int v73, v73, p1

    add-int v46, p4, v73

    .line 3438
    .local v46, "iidx1":I
    add-int v47, v46, p1

    .line 3439
    .local v47, "iidx2":I
    sub-int v48, v46, p1

    .line 3440
    .local v48, "iidx3":I
    aget-wide v34, p3, v46

    .line 3441
    .local v34, "i1r":D
    add-int/lit8 v73, v46, 0x1

    aget-wide v32, p3, v73

    .line 3442
    .local v32, "i1i":D
    aget-wide v38, p3, v47

    .line 3443
    .local v38, "i2r":D
    add-int/lit8 v73, v47, 0x1

    aget-wide v36, p3, v73

    .line 3444
    .local v36, "i2i":D
    aget-wide v42, p3, v48

    .line 3445
    .local v42, "i3r":D
    add-int/lit8 v73, v48, 0x1

    aget-wide v40, p3, v73

    .line 3447
    .local v40, "i3i":D
    add-double v62, v34, v38

    .line 3448
    .local v62, "tr2":D
    const-wide/high16 v74, -0x4020000000000000L    # -0.5

    mul-double v74, v74, v62

    add-double v18, v42, v74

    .line 3449
    .local v18, "cr2":D
    add-double v60, v32, v36

    .line 3450
    .local v60, "ti2":D
    const-wide/high16 v74, -0x4020000000000000L    # -0.5

    mul-double v74, v74, v60

    add-double v14, v40, v74

    .line 3451
    .local v14, "ci2":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v74, v0

    const-wide v76, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v74, v74, v76

    sub-double v76, v34, v38

    mul-double v20, v74, v76

    .line 3452
    .local v20, "cr3":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v74, v0

    const-wide v76, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v74, v74, v76

    sub-double v76, v32, v36

    mul-double v16, v74, v76

    .line 3454
    .local v16, "ci3":D
    add-int/lit8 v73, v51, -0x1

    mul-int v73, v73, p1

    add-int v52, p6, v73

    .line 3455
    .local v52, "oidx1":I
    add-int v53, v52, v45

    .line 3456
    .local v53, "oidx2":I
    add-int v54, v53, v45

    .line 3457
    .local v54, "oidx3":I
    aget-wide v74, p3, v48

    add-double v74, v74, v62

    aput-wide v74, p5, v52

    .line 3458
    add-int/lit8 v73, v52, 0x1

    add-double v74, v40, v60

    aput-wide v74, p5, v73

    .line 3459
    sub-double v74, v18, v16

    aput-wide v74, p5, v53

    .line 3460
    add-int/lit8 v73, v53, 0x1

    add-double v74, v14, v20

    aput-wide v74, p5, v73

    .line 3461
    add-double v74, v18, v16

    aput-wide v74, p5, v54

    .line 3462
    add-int/lit8 v73, v54, 0x1

    sub-double v74, v14, v20

    aput-wide v74, p5, v73

    .line 3436
    add-int/lit8 v51, v51, 0x1

    goto :goto_17

    .line 3465
    .end local v14    # "ci2":D
    .end local v16    # "ci3":D
    .end local v18    # "cr2":D
    .end local v20    # "cr3":D
    .end local v32    # "i1i":D
    .end local v34    # "i1r":D
    .end local v36    # "i2i":D
    .end local v38    # "i2r":D
    .end local v40    # "i3i":D
    .end local v42    # "i3r":D
    .end local v46    # "iidx1":I
    .end local v47    # "iidx2":I
    .end local v48    # "iidx3":I
    .end local v51    # "k":I
    .end local v52    # "oidx1":I
    .end local v53    # "oidx2":I
    .end local v54    # "oidx3":I
    .end local v60    # "ti2":D
    .end local v62    # "tr2":D
    :cond_98
    const/16 v51, 0x1

    .restart local v51    # "k":I
    :goto_9a
    move/from16 v0, v51

    move/from16 v1, p2

    if-gt v0, v1, :cond_17a

    .line 3466
    mul-int/lit8 v73, v51, 0x3

    add-int/lit8 v73, v73, -0x2

    mul-int v73, v73, p1

    add-int v31, p4, v73

    .line 3467
    .local v31, "idx1":I
    add-int/lit8 v73, v51, -0x1

    mul-int v73, v73, p1

    add-int v44, p6, v73

    .line 3468
    .local v44, "idx2":I
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_b0
    add-int/lit8 v73, p1, -0x1

    move/from16 v0, v30

    move/from16 v1, v73

    if-ge v0, v1, :cond_176

    .line 3469
    add-int v46, v30, v31

    .line 3470
    .restart local v46    # "iidx1":I
    add-int v47, v46, p1

    .line 3471
    .restart local v47    # "iidx2":I
    sub-int v48, v46, p1

    .line 3472
    .restart local v48    # "iidx3":I
    aget-wide v4, p3, v46

    .line 3473
    .local v4, "a1r":D
    add-int/lit8 v73, v46, 0x1

    aget-wide v2, p3, v73

    .line 3474
    .local v2, "a1i":D
    aget-wide v8, p3, v47

    .line 3475
    .local v8, "a2r":D
    add-int/lit8 v73, v47, 0x1

    aget-wide v6, p3, v73

    .line 3476
    .local v6, "a2i":D
    aget-wide v12, p3, v48

    .line 3477
    .local v12, "a3r":D
    add-int/lit8 v73, v48, 0x1

    aget-wide v10, p3, v73

    .line 3479
    .local v10, "a3i":D
    add-double v62, v4, v8

    .line 3480
    .restart local v62    # "tr2":D
    const-wide/high16 v74, -0x4020000000000000L    # -0.5

    mul-double v74, v74, v62

    add-double v18, v12, v74

    .line 3481
    .restart local v18    # "cr2":D
    add-double v60, v2, v6

    .line 3482
    .restart local v60    # "ti2":D
    const-wide/high16 v74, -0x4020000000000000L    # -0.5

    mul-double v74, v74, v60

    add-double v14, v10, v74

    .line 3483
    .restart local v14    # "ci2":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v74, v0

    const-wide v76, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v74, v74, v76

    sub-double v76, v4, v8

    mul-double v20, v74, v76

    .line 3484
    .restart local v20    # "cr3":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v74, v0

    const-wide v76, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v74, v74, v76

    sub-double v76, v2, v6

    mul-double v16, v74, v76

    .line 3485
    .restart local v16    # "ci3":D
    sub-double v26, v18, v16

    .line 3486
    .local v26, "dr2":D
    add-double v28, v18, v16

    .line 3487
    .local v28, "dr3":D
    add-double v22, v14, v20

    .line 3488
    .local v22, "di2":D
    sub-double v24, v14, v20

    .line 3490
    .local v24, "di3":D
    add-int v55, v30, p7

    .line 3491
    .local v55, "widx1":I
    add-int v72, v30, v50

    .line 3492
    .local v72, "widx2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v73, v0

    aget-wide v66, v73, v55

    .line 3493
    .local v66, "w1r":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v74, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v73, v0

    add-int/lit8 v76, v55, 0x1

    aget-wide v76, v73, v76

    mul-double v64, v74, v76

    .line 3494
    .local v64, "w1i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v73, v0

    aget-wide v70, v73, v72

    .line 3495
    .local v70, "w2r":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v74, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v73, v0

    add-int/lit8 v76, v72, 0x1

    aget-wide v76, v73, v76

    mul-double v68, v74, v76

    .line 3497
    .local v68, "w2i":D
    add-int v52, v30, v44

    .line 3498
    .restart local v52    # "oidx1":I
    add-int v53, v52, v45

    .line 3499
    .restart local v53    # "oidx2":I
    add-int v54, v53, v45

    .line 3500
    .restart local v54    # "oidx3":I
    add-double v74, v12, v62

    aput-wide v74, p5, v52

    .line 3501
    add-int/lit8 v73, v52, 0x1

    add-double v74, v10, v60

    aput-wide v74, p5, v73

    .line 3502
    mul-double v74, v66, v26

    mul-double v76, v64, v22

    sub-double v74, v74, v76

    aput-wide v74, p5, v53

    .line 3503
    add-int/lit8 v73, v53, 0x1

    mul-double v74, v66, v22

    mul-double v76, v64, v26

    add-double v74, v74, v76

    aput-wide v74, p5, v73

    .line 3504
    mul-double v74, v70, v28

    mul-double v76, v68, v24

    sub-double v74, v74, v76

    aput-wide v74, p5, v54

    .line 3505
    add-int/lit8 v73, v54, 0x1

    mul-double v74, v70, v24

    mul-double v76, v68, v28

    add-double v74, v74, v76

    aput-wide v74, p5, v73

    .line 3468
    add-int/lit8 v30, v30, 0x2

    goto/16 :goto_b0

    .line 3465
    .end local v2    # "a1i":D
    .end local v4    # "a1r":D
    .end local v6    # "a2i":D
    .end local v8    # "a2r":D
    .end local v10    # "a3i":D
    .end local v12    # "a3r":D
    .end local v14    # "ci2":D
    .end local v16    # "ci3":D
    .end local v18    # "cr2":D
    .end local v20    # "cr3":D
    .end local v22    # "di2":D
    .end local v24    # "di3":D
    .end local v26    # "dr2":D
    .end local v28    # "dr3":D
    .end local v46    # "iidx1":I
    .end local v47    # "iidx2":I
    .end local v48    # "iidx3":I
    .end local v52    # "oidx1":I
    .end local v53    # "oidx2":I
    .end local v54    # "oidx3":I
    .end local v55    # "widx1":I
    .end local v60    # "ti2":D
    .end local v62    # "tr2":D
    .end local v64    # "w1i":D
    .end local v66    # "w1r":D
    .end local v68    # "w2i":D
    .end local v70    # "w2r":D
    .end local v72    # "widx2":I
    :cond_176
    add-int/lit8 v51, v51, 0x1

    goto/16 :goto_9a

    .line 3509
    .end local v30    # "i":I
    .end local v31    # "idx1":I
    .end local v44    # "idx2":I
    :cond_17a
    return-void
.end method

.method passf4(II[DI[DIII)V
    .registers 93
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I
    .param p8, "isign"    # I

    .prologue
    .line 3518
    move/from16 v39, p7

    .line 3519
    .local v39, "iw1":I
    add-int v40, p7, p1

    .line 3520
    .local v40, "iw2":I
    add-int v41, v40, p1

    .line 3522
    .local v41, "iw3":I
    mul-int v15, p2, p1

    .line 3523
    .local v15, "idx0":I
    const/16 v78, 0x2

    move/from16 v0, p1

    move/from16 v1, v78

    if-ne v0, v1, :cond_9e

    .line 3524
    const/16 v42, 0x0

    .local v42, "k":I
    :goto_12
    move/from16 v0, v42

    move/from16 v1, p2

    if-ge v0, v1, :cond_1b0

    .line 3525
    mul-int v34, v42, p1

    .line 3526
    .local v34, "idxt1":I
    mul-int/lit8 v78, v34, 0x4

    add-int v78, v78, p4

    add-int/lit8 v35, v78, 0x1

    .line 3527
    .local v35, "iidx1":I
    add-int v36, v35, p1

    .line 3528
    .local v36, "iidx2":I
    add-int v37, v36, p1

    .line 3529
    .local v37, "iidx3":I
    add-int v38, v37, p1

    .line 3531
    .local v38, "iidx4":I
    add-int/lit8 v78, v35, -0x1

    aget-wide v16, p3, v78

    .line 3532
    .local v16, "i1i":D
    aget-wide v18, p3, v35

    .line 3533
    .local v18, "i1r":D
    add-int/lit8 v78, v36, -0x1

    aget-wide v20, p3, v78

    .line 3534
    .local v20, "i2i":D
    aget-wide v22, p3, v36

    .line 3535
    .local v22, "i2r":D
    add-int/lit8 v78, v37, -0x1

    aget-wide v24, p3, v78

    .line 3536
    .local v24, "i3i":D
    aget-wide v26, p3, v37

    .line 3537
    .local v26, "i3r":D
    add-int/lit8 v78, v38, -0x1

    aget-wide v28, p3, v78

    .line 3538
    .local v28, "i4i":D
    aget-wide v30, p3, v38

    .line 3540
    .local v30, "i4r":D
    sub-double v48, v18, v26

    .line 3541
    .local v48, "ti1":D
    add-double v50, v18, v26

    .line 3542
    .local v50, "ti2":D
    sub-double v62, v30, v22

    .line 3543
    .local v62, "tr4":D
    add-double v52, v22, v30

    .line 3544
    .local v52, "ti3":D
    sub-double v56, v16, v24

    .line 3545
    .local v56, "tr1":D
    add-double v58, v16, v24

    .line 3546
    .local v58, "tr2":D
    sub-double v54, v20, v28

    .line 3547
    .local v54, "ti4":D
    add-double v60, v20, v28

    .line 3549
    .local v60, "tr3":D
    add-int v43, p6, v34

    .line 3550
    .local v43, "oidx1":I
    add-int v44, v43, v15

    .line 3551
    .local v44, "oidx2":I
    add-int v45, v44, v15

    .line 3552
    .local v45, "oidx3":I
    add-int v46, v45, v15

    .line 3553
    .local v46, "oidx4":I
    add-double v78, v58, v60

    aput-wide v78, p5, v43

    .line 3554
    add-int/lit8 v78, v43, 0x1

    add-double v80, v50, v52

    aput-wide v80, p5, v78

    .line 3555
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v78, v0

    mul-double v78, v78, v62

    add-double v78, v78, v56

    aput-wide v78, p5, v44

    .line 3556
    add-int/lit8 v78, v44, 0x1

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v80, v0

    mul-double v80, v80, v54

    add-double v80, v80, v48

    aput-wide v80, p5, v78

    .line 3557
    sub-double v78, v58, v60

    aput-wide v78, p5, v45

    .line 3558
    add-int/lit8 v78, v45, 0x1

    sub-double v80, v50, v52

    aput-wide v80, p5, v78

    .line 3559
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v78, v0

    mul-double v78, v78, v62

    sub-double v78, v56, v78

    aput-wide v78, p5, v46

    .line 3560
    add-int/lit8 v78, v46, 0x1

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v80, v0

    mul-double v80, v80, v54

    sub-double v80, v48, v80

    aput-wide v80, p5, v78

    .line 3524
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_12

    .line 3563
    .end local v16    # "i1i":D
    .end local v18    # "i1r":D
    .end local v20    # "i2i":D
    .end local v22    # "i2r":D
    .end local v24    # "i3i":D
    .end local v26    # "i3r":D
    .end local v28    # "i4i":D
    .end local v30    # "i4r":D
    .end local v34    # "idxt1":I
    .end local v35    # "iidx1":I
    .end local v36    # "iidx2":I
    .end local v37    # "iidx3":I
    .end local v38    # "iidx4":I
    .end local v42    # "k":I
    .end local v43    # "oidx1":I
    .end local v44    # "oidx2":I
    .end local v45    # "oidx3":I
    .end local v46    # "oidx4":I
    .end local v48    # "ti1":D
    .end local v50    # "ti2":D
    .end local v52    # "ti3":D
    .end local v54    # "ti4":D
    .end local v56    # "tr1":D
    .end local v58    # "tr2":D
    .end local v60    # "tr3":D
    .end local v62    # "tr4":D
    :cond_9e
    const/16 v42, 0x0

    .restart local v42    # "k":I
    :goto_a0
    move/from16 v0, v42

    move/from16 v1, p2

    if-ge v0, v1, :cond_1b0

    .line 3564
    mul-int v32, v42, p1

    .line 3565
    .local v32, "idx1":I
    add-int/lit8 v78, p4, 0x1

    mul-int/lit8 v79, v32, 0x4

    add-int v33, v78, v79

    .line 3566
    .local v33, "idx2":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_af
    add-int/lit8 v78, p1, -0x1

    move/from16 v0, v78

    if-ge v14, v0, :cond_1ac

    .line 3567
    add-int v35, v14, v33

    .line 3568
    .restart local v35    # "iidx1":I
    add-int v36, v35, p1

    .line 3569
    .restart local v36    # "iidx2":I
    add-int v37, v36, p1

    .line 3570
    .restart local v37    # "iidx3":I
    add-int v38, v37, p1

    .line 3571
    .restart local v38    # "iidx4":I
    add-int/lit8 v78, v35, -0x1

    aget-wide v16, p3, v78

    .line 3572
    .restart local v16    # "i1i":D
    aget-wide v18, p3, v35

    .line 3573
    .restart local v18    # "i1r":D
    add-int/lit8 v78, v36, -0x1

    aget-wide v20, p3, v78

    .line 3574
    .restart local v20    # "i2i":D
    aget-wide v22, p3, v36

    .line 3575
    .restart local v22    # "i2r":D
    add-int/lit8 v78, v37, -0x1

    aget-wide v24, p3, v78

    .line 3576
    .restart local v24    # "i3i":D
    aget-wide v26, p3, v37

    .line 3577
    .restart local v26    # "i3r":D
    add-int/lit8 v78, v38, -0x1

    aget-wide v28, p3, v78

    .line 3578
    .restart local v28    # "i4i":D
    aget-wide v30, p3, v38

    .line 3580
    .restart local v30    # "i4r":D
    sub-double v48, v18, v26

    .line 3581
    .restart local v48    # "ti1":D
    add-double v50, v18, v26

    .line 3582
    .restart local v50    # "ti2":D
    add-double v52, v22, v30

    .line 3583
    .restart local v52    # "ti3":D
    sub-double v62, v30, v22

    .line 3584
    .restart local v62    # "tr4":D
    sub-double v56, v16, v24

    .line 3585
    .restart local v56    # "tr1":D
    add-double v58, v16, v24

    .line 3586
    .restart local v58    # "tr2":D
    sub-double v54, v20, v28

    .line 3587
    .restart local v54    # "ti4":D
    add-double v60, v20, v28

    .line 3588
    .restart local v60    # "tr3":D
    sub-double v10, v58, v60

    .line 3589
    .local v10, "cr3":D
    sub-double v4, v50, v52

    .line 3590
    .local v4, "ci3":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v78, v0

    mul-double v78, v78, v62

    add-double v8, v56, v78

    .line 3591
    .local v8, "cr2":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v78, v0

    mul-double v78, v78, v62

    sub-double v12, v56, v78

    .line 3592
    .local v12, "cr4":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v78, v0

    mul-double v78, v78, v54

    add-double v2, v48, v78

    .line 3593
    .local v2, "ci2":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v78, v0

    mul-double v78, v78, v54

    sub-double v6, v48, v78

    .line 3595
    .local v6, "ci4":D
    add-int v47, v14, p7

    .line 3596
    .local v47, "widx1":I
    add-int v76, v14, v40

    .line 3597
    .local v76, "widx2":I
    add-int v77, v14, v41

    .line 3598
    .local v77, "widx3":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v78, v0

    aget-wide v66, v78, v47

    .line 3599
    .local v66, "w1r":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v78, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v80, v0

    add-int/lit8 v81, v47, 0x1

    aget-wide v80, v80, v81

    mul-double v64, v78, v80

    .line 3600
    .local v64, "w1i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v78, v0

    aget-wide v70, v78, v76

    .line 3601
    .local v70, "w2r":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v78, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v80, v0

    add-int/lit8 v81, v76, 0x1

    aget-wide v80, v80, v81

    mul-double v68, v78, v80

    .line 3602
    .local v68, "w2i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v78, v0

    aget-wide v74, v78, v77

    .line 3603
    .local v74, "w3r":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v78, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v80, v0

    add-int/lit8 v81, v77, 0x1

    aget-wide v80, v80, v81

    mul-double v72, v78, v80

    .line 3605
    .local v72, "w3i":D
    add-int v78, p6, v14

    add-int v43, v78, v32

    .line 3606
    .restart local v43    # "oidx1":I
    add-int v44, v43, v15

    .line 3607
    .restart local v44    # "oidx2":I
    add-int v45, v44, v15

    .line 3608
    .restart local v45    # "oidx3":I
    add-int v46, v45, v15

    .line 3609
    .restart local v46    # "oidx4":I
    add-double v78, v58, v60

    aput-wide v78, p5, v43

    .line 3610
    add-int/lit8 v78, v43, 0x1

    add-double v80, v50, v52

    aput-wide v80, p5, v78

    .line 3611
    mul-double v78, v66, v8

    mul-double v80, v64, v2

    sub-double v78, v78, v80

    aput-wide v78, p5, v44

    .line 3612
    add-int/lit8 v78, v44, 0x1

    mul-double v80, v66, v2

    mul-double v82, v64, v8

    add-double v80, v80, v82

    aput-wide v80, p5, v78

    .line 3613
    mul-double v78, v70, v10

    mul-double v80, v68, v4

    sub-double v78, v78, v80

    aput-wide v78, p5, v45

    .line 3614
    add-int/lit8 v78, v45, 0x1

    mul-double v80, v70, v4

    mul-double v82, v68, v10

    add-double v80, v80, v82

    aput-wide v80, p5, v78

    .line 3615
    mul-double v78, v74, v12

    mul-double v80, v72, v6

    sub-double v78, v78, v80

    aput-wide v78, p5, v46

    .line 3616
    add-int/lit8 v78, v46, 0x1

    mul-double v80, v74, v6

    mul-double v82, v72, v12

    add-double v80, v80, v82

    aput-wide v80, p5, v78

    .line 3566
    add-int/lit8 v14, v14, 0x2

    goto/16 :goto_af

    .line 3563
    .end local v2    # "ci2":D
    .end local v4    # "ci3":D
    .end local v6    # "ci4":D
    .end local v8    # "cr2":D
    .end local v10    # "cr3":D
    .end local v12    # "cr4":D
    .end local v16    # "i1i":D
    .end local v18    # "i1r":D
    .end local v20    # "i2i":D
    .end local v22    # "i2r":D
    .end local v24    # "i3i":D
    .end local v26    # "i3r":D
    .end local v28    # "i4i":D
    .end local v30    # "i4r":D
    .end local v35    # "iidx1":I
    .end local v36    # "iidx2":I
    .end local v37    # "iidx3":I
    .end local v38    # "iidx4":I
    .end local v43    # "oidx1":I
    .end local v44    # "oidx2":I
    .end local v45    # "oidx3":I
    .end local v46    # "oidx4":I
    .end local v47    # "widx1":I
    .end local v48    # "ti1":D
    .end local v50    # "ti2":D
    .end local v52    # "ti3":D
    .end local v54    # "ti4":D
    .end local v56    # "tr1":D
    .end local v58    # "tr2":D
    .end local v60    # "tr3":D
    .end local v62    # "tr4":D
    .end local v64    # "w1i":D
    .end local v66    # "w1r":D
    .end local v68    # "w2i":D
    .end local v70    # "w2r":D
    .end local v72    # "w3i":D
    .end local v74    # "w3r":D
    .end local v76    # "widx2":I
    .end local v77    # "widx3":I
    :cond_1ac
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_a0

    .line 3620
    .end local v14    # "i":I
    .end local v32    # "idx1":I
    .end local v33    # "idx2":I
    :cond_1b0
    return-void
.end method

.method passf5(II[DI[DIII)V
    .registers 133
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I
    .param p8, "isign"    # I

    .prologue
    .line 3628
    const-wide v86, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    .line 3629
    .local v86, "tr11":D
    const-wide v74, 0x3fee6f0e134454ffL    # 0.9510565162951535

    .line 3630
    .local v74, "ti11":D
    const-wide v88, -0x40161c8864680b59L    # -0.8090169943749473

    .line 3631
    .local v88, "tr12":D
    const-wide v76, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    .line 3635
    .local v76, "ti12":D
    move/from16 v63, p7

    .line 3636
    .local v63, "iw1":I
    add-int v64, p7, p1

    .line 3637
    .local v64, "iw2":I
    add-int v65, v64, p1

    .line 3638
    .local v65, "iw3":I
    add-int v66, v65, p1

    .line 3640
    .local v66, "iw4":I
    mul-int v35, p2, p1

    .line 3642
    .local v35, "idx0":I
    const/16 v117, 0x2

    move/from16 v0, p1

    move/from16 v1, v117

    if-ne v0, v1, :cond_15a

    .line 3643
    const/16 v67, 0x1

    .local v67, "k":I
    :goto_28
    move/from16 v0, v67

    move/from16 v1, p2

    if-gt v0, v1, :cond_33c

    .line 3644
    mul-int/lit8 v117, v67, 0x5

    add-int/lit8 v117, v117, -0x4

    mul-int v117, v117, p1

    add-int v117, v117, p4

    add-int/lit8 v58, v117, 0x1

    .line 3645
    .local v58, "iidx1":I
    add-int v59, v58, p1

    .line 3646
    .local v59, "iidx2":I
    sub-int v60, v58, p1

    .line 3647
    .local v60, "iidx3":I
    add-int v61, v59, p1

    .line 3648
    .local v61, "iidx4":I
    add-int v62, v61, p1

    .line 3650
    .local v62, "iidx5":I
    add-int/lit8 v117, v58, -0x1

    aget-wide v36, p3, v117

    .line 3651
    .local v36, "i1i":D
    aget-wide v38, p3, v58

    .line 3652
    .local v38, "i1r":D
    add-int/lit8 v117, v59, -0x1

    aget-wide v40, p3, v117

    .line 3653
    .local v40, "i2i":D
    aget-wide v42, p3, v59

    .line 3654
    .local v42, "i2r":D
    add-int/lit8 v117, v60, -0x1

    aget-wide v44, p3, v117

    .line 3655
    .local v44, "i3i":D
    aget-wide v46, p3, v60

    .line 3656
    .local v46, "i3r":D
    add-int/lit8 v117, v61, -0x1

    aget-wide v48, p3, v117

    .line 3657
    .local v48, "i4i":D
    aget-wide v50, p3, v61

    .line 3658
    .local v50, "i4r":D
    add-int/lit8 v117, v62, -0x1

    aget-wide v52, p3, v117

    .line 3659
    .local v52, "i5i":D
    aget-wide v54, p3, v62

    .line 3661
    .local v54, "i5r":D
    sub-double v84, v38, v54

    .line 3662
    .local v84, "ti5":D
    add-double v78, v38, v54

    .line 3663
    .local v78, "ti2":D
    sub-double v82, v42, v50

    .line 3664
    .local v82, "ti4":D
    add-double v80, v42, v50

    .line 3665
    .local v80, "ti3":D
    sub-double v96, v36, v52

    .line 3666
    .local v96, "tr5":D
    add-double v90, v36, v52

    .line 3667
    .local v90, "tr2":D
    sub-double v94, v40, v48

    .line 3668
    .local v94, "tr4":D
    add-double v92, v40, v48

    .line 3669
    .local v92, "tr3":D
    const-wide v118, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v118, v118, v90

    add-double v118, v118, v44

    const-wide v120, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v120, v120, v92

    add-double v10, v118, v120

    .line 3670
    .local v10, "cr2":D
    const-wide v118, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v118, v118, v78

    add-double v118, v118, v46

    const-wide v120, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v120, v120, v80

    add-double v2, v118, v120

    .line 3671
    .local v2, "ci2":D
    const-wide v118, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v118, v118, v90

    add-double v118, v118, v44

    const-wide v120, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v120, v120, v92

    add-double v12, v118, v120

    .line 3672
    .local v12, "cr3":D
    const-wide v118, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v118, v118, v78

    add-double v118, v118, v46

    const-wide v120, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v120, v120, v80

    add-double v4, v118, v120

    .line 3673
    .local v4, "ci3":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v118, v0

    const-wide v120, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v120, v120, v96

    const-wide v122, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v122, v122, v94

    add-double v120, v120, v122

    mul-double v16, v118, v120

    .line 3674
    .local v16, "cr5":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v118, v0

    const-wide v120, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v120, v120, v84

    const-wide v122, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v122, v122, v82

    add-double v120, v120, v122

    mul-double v8, v118, v120

    .line 3675
    .local v8, "ci5":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v118, v0

    const-wide v120, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v120, v120, v96

    const-wide v122, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v122, v122, v94

    sub-double v120, v120, v122

    mul-double v14, v118, v120

    .line 3676
    .local v14, "cr4":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v118, v0

    const-wide v120, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v120, v120, v84

    const-wide v122, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v122, v122, v82

    sub-double v120, v120, v122

    mul-double v6, v118, v120

    .line 3678
    .local v6, "ci4":D
    add-int/lit8 v117, v67, -0x1

    mul-int v117, v117, p1

    add-int v68, p6, v117

    .line 3679
    .local v68, "oidx1":I
    add-int v69, v68, v35

    .line 3680
    .local v69, "oidx2":I
    add-int v70, v69, v35

    .line 3681
    .local v70, "oidx3":I
    add-int v71, v70, v35

    .line 3682
    .local v71, "oidx4":I
    add-int v72, v71, v35

    .line 3683
    .local v72, "oidx5":I
    add-double v118, v44, v90

    add-double v118, v118, v92

    aput-wide v118, p5, v68

    .line 3684
    add-int/lit8 v117, v68, 0x1

    add-double v118, v46, v78

    add-double v118, v118, v80

    aput-wide v118, p5, v117

    .line 3685
    sub-double v118, v10, v8

    aput-wide v118, p5, v69

    .line 3686
    add-int/lit8 v117, v69, 0x1

    add-double v118, v2, v16

    aput-wide v118, p5, v117

    .line 3687
    sub-double v118, v12, v6

    aput-wide v118, p5, v70

    .line 3688
    add-int/lit8 v117, v70, 0x1

    add-double v118, v4, v14

    aput-wide v118, p5, v117

    .line 3689
    add-double v118, v12, v6

    aput-wide v118, p5, v71

    .line 3690
    add-int/lit8 v117, v71, 0x1

    sub-double v118, v4, v14

    aput-wide v118, p5, v117

    .line 3691
    add-double v118, v10, v8

    aput-wide v118, p5, v72

    .line 3692
    add-int/lit8 v117, v72, 0x1

    sub-double v118, v2, v16

    aput-wide v118, p5, v117

    .line 3643
    add-int/lit8 v67, v67, 0x1

    goto/16 :goto_28

    .line 3695
    .end local v2    # "ci2":D
    .end local v4    # "ci3":D
    .end local v6    # "ci4":D
    .end local v8    # "ci5":D
    .end local v10    # "cr2":D
    .end local v12    # "cr3":D
    .end local v14    # "cr4":D
    .end local v16    # "cr5":D
    .end local v36    # "i1i":D
    .end local v38    # "i1r":D
    .end local v40    # "i2i":D
    .end local v42    # "i2r":D
    .end local v44    # "i3i":D
    .end local v46    # "i3r":D
    .end local v48    # "i4i":D
    .end local v50    # "i4r":D
    .end local v52    # "i5i":D
    .end local v54    # "i5r":D
    .end local v58    # "iidx1":I
    .end local v59    # "iidx2":I
    .end local v60    # "iidx3":I
    .end local v61    # "iidx4":I
    .end local v62    # "iidx5":I
    .end local v67    # "k":I
    .end local v68    # "oidx1":I
    .end local v69    # "oidx2":I
    .end local v70    # "oidx3":I
    .end local v71    # "oidx4":I
    .end local v72    # "oidx5":I
    .end local v78    # "ti2":D
    .end local v80    # "ti3":D
    .end local v82    # "ti4":D
    .end local v84    # "ti5":D
    .end local v90    # "tr2":D
    .end local v92    # "tr3":D
    .end local v94    # "tr4":D
    .end local v96    # "tr5":D
    :cond_15a
    const/16 v67, 0x1

    .restart local v67    # "k":I
    :goto_15c
    move/from16 v0, v67

    move/from16 v1, p2

    if-gt v0, v1, :cond_33c

    .line 3696
    add-int/lit8 v117, p4, 0x1

    mul-int/lit8 v118, v67, 0x5

    add-int/lit8 v118, v118, -0x4

    mul-int v118, v118, p1

    add-int v56, v117, v118

    .line 3697
    .local v56, "idx1":I
    add-int/lit8 v117, v67, -0x1

    mul-int v117, v117, p1

    add-int v57, p6, v117

    .line 3698
    .local v57, "idx2":I
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_174
    add-int/lit8 v117, p1, -0x1

    move/from16 v0, v34

    move/from16 v1, v117

    if-ge v0, v1, :cond_338

    .line 3699
    add-int v58, v34, v56

    .line 3700
    .restart local v58    # "iidx1":I
    add-int v59, v58, p1

    .line 3701
    .restart local v59    # "iidx2":I
    sub-int v60, v58, p1

    .line 3702
    .restart local v60    # "iidx3":I
    add-int v61, v59, p1

    .line 3703
    .restart local v61    # "iidx4":I
    add-int v62, v61, p1

    .line 3704
    .restart local v62    # "iidx5":I
    add-int/lit8 v117, v58, -0x1

    aget-wide v36, p3, v117

    .line 3705
    .restart local v36    # "i1i":D
    aget-wide v38, p3, v58

    .line 3706
    .restart local v38    # "i1r":D
    add-int/lit8 v117, v59, -0x1

    aget-wide v40, p3, v117

    .line 3707
    .restart local v40    # "i2i":D
    aget-wide v42, p3, v59

    .line 3708
    .restart local v42    # "i2r":D
    add-int/lit8 v117, v60, -0x1

    aget-wide v44, p3, v117

    .line 3709
    .restart local v44    # "i3i":D
    aget-wide v46, p3, v60

    .line 3710
    .restart local v46    # "i3r":D
    add-int/lit8 v117, v61, -0x1

    aget-wide v48, p3, v117

    .line 3711
    .restart local v48    # "i4i":D
    aget-wide v50, p3, v61

    .line 3712
    .restart local v50    # "i4r":D
    add-int/lit8 v117, v62, -0x1

    aget-wide v52, p3, v117

    .line 3713
    .restart local v52    # "i5i":D
    aget-wide v54, p3, v62

    .line 3715
    .restart local v54    # "i5r":D
    sub-double v84, v38, v54

    .line 3716
    .restart local v84    # "ti5":D
    add-double v78, v38, v54

    .line 3717
    .restart local v78    # "ti2":D
    sub-double v82, v42, v50

    .line 3718
    .restart local v82    # "ti4":D
    add-double v80, v42, v50

    .line 3719
    .restart local v80    # "ti3":D
    sub-double v96, v36, v52

    .line 3720
    .restart local v96    # "tr5":D
    add-double v90, v36, v52

    .line 3721
    .restart local v90    # "tr2":D
    sub-double v94, v40, v48

    .line 3722
    .restart local v94    # "tr4":D
    add-double v92, v40, v48

    .line 3723
    .restart local v92    # "tr3":D
    const-wide v118, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v118, v118, v90

    add-double v118, v118, v44

    const-wide v120, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v120, v120, v92

    add-double v10, v118, v120

    .line 3724
    .restart local v10    # "cr2":D
    const-wide v118, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v118, v118, v78

    add-double v118, v118, v46

    const-wide v120, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v120, v120, v80

    add-double v2, v118, v120

    .line 3725
    .restart local v2    # "ci2":D
    const-wide v118, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v118, v118, v90

    add-double v118, v118, v44

    const-wide v120, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v120, v120, v92

    add-double v12, v118, v120

    .line 3726
    .restart local v12    # "cr3":D
    const-wide v118, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v118, v118, v78

    add-double v118, v118, v46

    const-wide v120, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v120, v120, v80

    add-double v4, v118, v120

    .line 3727
    .restart local v4    # "ci3":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v118, v0

    const-wide v120, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v120, v120, v96

    const-wide v122, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v122, v122, v94

    add-double v120, v120, v122

    mul-double v16, v118, v120

    .line 3728
    .restart local v16    # "cr5":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v118, v0

    const-wide v120, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v120, v120, v84

    const-wide v122, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v122, v122, v82

    add-double v120, v120, v122

    mul-double v8, v118, v120

    .line 3729
    .restart local v8    # "ci5":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v118, v0

    const-wide v120, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v120, v120, v96

    const-wide v122, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v122, v122, v94

    sub-double v120, v120, v122

    mul-double v14, v118, v120

    .line 3730
    .restart local v14    # "cr4":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v118, v0

    const-wide v120, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v120, v120, v84

    const-wide v122, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v122, v122, v82

    sub-double v120, v120, v122

    mul-double v6, v118, v120

    .line 3731
    .restart local v6    # "ci4":D
    sub-double v28, v12, v6

    .line 3732
    .local v28, "dr3":D
    add-double v30, v12, v6

    .line 3733
    .local v30, "dr4":D
    add-double v20, v4, v14

    .line 3734
    .local v20, "di3":D
    sub-double v22, v4, v14

    .line 3735
    .local v22, "di4":D
    add-double v32, v10, v8

    .line 3736
    .local v32, "dr5":D
    sub-double v26, v10, v8

    .line 3737
    .local v26, "dr2":D
    sub-double v24, v2, v16

    .line 3738
    .local v24, "di5":D
    add-double v18, v2, v16

    .line 3740
    .local v18, "di2":D
    add-int v73, v34, p7

    .line 3741
    .local v73, "widx1":I
    add-int v114, v34, v64

    .line 3742
    .local v114, "widx2":I
    add-int v115, v34, v65

    .line 3743
    .local v115, "widx3":I
    add-int v116, v34, v66

    .line 3744
    .local v116, "widx4":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v117, v0

    aget-wide v100, v117, v73

    .line 3745
    .local v100, "w1r":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v118, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v117, v0

    add-int/lit8 v120, v73, 0x1

    aget-wide v120, v117, v120

    mul-double v98, v118, v120

    .line 3746
    .local v98, "w1i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v117, v0

    aget-wide v104, v117, v114

    .line 3747
    .local v104, "w2r":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v118, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v117, v0

    add-int/lit8 v120, v114, 0x1

    aget-wide v120, v117, v120

    mul-double v102, v118, v120

    .line 3748
    .local v102, "w2i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v117, v0

    aget-wide v108, v117, v115

    .line 3749
    .local v108, "w3r":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v118, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v117, v0

    add-int/lit8 v120, v115, 0x1

    aget-wide v120, v117, v120

    mul-double v106, v118, v120

    .line 3750
    .local v106, "w3i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v117, v0

    aget-wide v112, v117, v116

    .line 3751
    .local v112, "w4r":D
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v118, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v117, v0

    add-int/lit8 v120, v116, 0x1

    aget-wide v120, v117, v120

    mul-double v110, v118, v120

    .line 3753
    .local v110, "w4i":D
    add-int v68, v34, v57

    .line 3754
    .restart local v68    # "oidx1":I
    add-int v69, v68, v35

    .line 3755
    .restart local v69    # "oidx2":I
    add-int v70, v69, v35

    .line 3756
    .restart local v70    # "oidx3":I
    add-int v71, v70, v35

    .line 3757
    .restart local v71    # "oidx4":I
    add-int v72, v71, v35

    .line 3758
    .restart local v72    # "oidx5":I
    add-double v118, v44, v90

    add-double v118, v118, v92

    aput-wide v118, p5, v68

    .line 3759
    add-int/lit8 v117, v68, 0x1

    add-double v118, v46, v78

    add-double v118, v118, v80

    aput-wide v118, p5, v117

    .line 3760
    mul-double v118, v100, v26

    mul-double v120, v98, v18

    sub-double v118, v118, v120

    aput-wide v118, p5, v69

    .line 3761
    add-int/lit8 v117, v69, 0x1

    mul-double v118, v100, v18

    mul-double v120, v98, v26

    add-double v118, v118, v120

    aput-wide v118, p5, v117

    .line 3762
    mul-double v118, v104, v28

    mul-double v120, v102, v20

    sub-double v118, v118, v120

    aput-wide v118, p5, v70

    .line 3763
    add-int/lit8 v117, v70, 0x1

    mul-double v118, v104, v20

    mul-double v120, v102, v28

    add-double v118, v118, v120

    aput-wide v118, p5, v117

    .line 3764
    mul-double v118, v108, v30

    mul-double v120, v106, v22

    sub-double v118, v118, v120

    aput-wide v118, p5, v71

    .line 3765
    add-int/lit8 v117, v71, 0x1

    mul-double v118, v108, v22

    mul-double v120, v106, v30

    add-double v118, v118, v120

    aput-wide v118, p5, v117

    .line 3766
    mul-double v118, v112, v32

    mul-double v120, v110, v24

    sub-double v118, v118, v120

    aput-wide v118, p5, v72

    .line 3767
    add-int/lit8 v117, v72, 0x1

    mul-double v118, v112, v24

    mul-double v120, v110, v32

    add-double v118, v118, v120

    aput-wide v118, p5, v117

    .line 3698
    add-int/lit8 v34, v34, 0x2

    goto/16 :goto_174

    .line 3695
    .end local v2    # "ci2":D
    .end local v4    # "ci3":D
    .end local v6    # "ci4":D
    .end local v8    # "ci5":D
    .end local v10    # "cr2":D
    .end local v12    # "cr3":D
    .end local v14    # "cr4":D
    .end local v16    # "cr5":D
    .end local v18    # "di2":D
    .end local v20    # "di3":D
    .end local v22    # "di4":D
    .end local v24    # "di5":D
    .end local v26    # "dr2":D
    .end local v28    # "dr3":D
    .end local v30    # "dr4":D
    .end local v32    # "dr5":D
    .end local v36    # "i1i":D
    .end local v38    # "i1r":D
    .end local v40    # "i2i":D
    .end local v42    # "i2r":D
    .end local v44    # "i3i":D
    .end local v46    # "i3r":D
    .end local v48    # "i4i":D
    .end local v50    # "i4r":D
    .end local v52    # "i5i":D
    .end local v54    # "i5r":D
    .end local v58    # "iidx1":I
    .end local v59    # "iidx2":I
    .end local v60    # "iidx3":I
    .end local v61    # "iidx4":I
    .end local v62    # "iidx5":I
    .end local v68    # "oidx1":I
    .end local v69    # "oidx2":I
    .end local v70    # "oidx3":I
    .end local v71    # "oidx4":I
    .end local v72    # "oidx5":I
    .end local v73    # "widx1":I
    .end local v78    # "ti2":D
    .end local v80    # "ti3":D
    .end local v82    # "ti4":D
    .end local v84    # "ti5":D
    .end local v90    # "tr2":D
    .end local v92    # "tr3":D
    .end local v94    # "tr4":D
    .end local v96    # "tr5":D
    .end local v98    # "w1i":D
    .end local v100    # "w1r":D
    .end local v102    # "w2i":D
    .end local v104    # "w2r":D
    .end local v106    # "w3i":D
    .end local v108    # "w3r":D
    .end local v110    # "w4i":D
    .end local v112    # "w4r":D
    .end local v114    # "widx2":I
    .end local v115    # "widx3":I
    .end local v116    # "widx4":I
    :cond_338
    add-int/lit8 v67, v67, 0x1

    goto/16 :goto_15c

    .line 3771
    .end local v34    # "i":I
    .end local v56    # "idx1":I
    .end local v57    # "idx2":I
    :cond_33c
    return-void
.end method

.method passfg([IIIII[DI[DIII)V
    .registers 78
    .param p1, "nac"    # [I
    .param p2, "ido"    # I
    .param p3, "ip"    # I
    .param p4, "l1"    # I
    .param p5, "idl1"    # I
    .param p6, "in"    # [D
    .param p7, "in_off"    # I
    .param p8, "out"    # [D
    .param p9, "out_off"    # I
    .param p10, "offset"    # I
    .param p11, "isign"    # I

    .prologue
    .line 3782
    move/from16 v40, p10

    .line 3783
    .local v40, "iw1":I
    div-int/lit8 v19, p2, 0x2

    .line 3784
    .local v19, "idot":I
    add-int/lit8 v60, p3, 0x1

    div-int/lit8 v39, v60, 0x2

    .line 3785
    .local v39, "ipph":I
    mul-int v20, p3, p2

    .line 3786
    .local v20, "idp":I
    move/from16 v0, p2

    move/from16 v1, p4

    if-lt v0, v1, :cond_81

    .line 3787
    const/16 v41, 0x1

    .local v41, "j":I
    :goto_12
    move/from16 v0, v41

    move/from16 v1, v39

    if-ge v0, v1, :cond_5e

    .line 3788
    sub-int v42, p3, v41

    .line 3789
    .local v42, "jc":I
    mul-int v22, v41, p2

    .line 3790
    .local v22, "idx1":I
    mul-int v23, v42, p2

    .line 3791
    .local v23, "idx2":I
    const/16 v43, 0x0

    .local v43, "k":I
    :goto_20
    move/from16 v0, v43

    move/from16 v1, p4

    if-ge v0, v1, :cond_5b

    .line 3792
    mul-int v24, v43, p2

    .line 3793
    .local v24, "idx3":I
    mul-int v60, v22, p4

    add-int v25, v24, v60

    .line 3794
    .local v25, "idx4":I
    mul-int v60, v23, p4

    add-int v26, v24, v60

    .line 3795
    .local v26, "idx5":I
    mul-int v27, v24, p3

    .line 3796
    .local v27, "idx6":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_33
    move/from16 v0, p2

    if-ge v6, v0, :cond_58

    .line 3797
    add-int v50, p9, v6

    .line 3798
    .local v50, "oidx1":I
    add-int v60, p7, v6

    add-int v60, v60, v22

    add-int v60, v60, v27

    aget-wide v10, p6, v60

    .line 3799
    .local v10, "i1r":D
    add-int v60, p7, v6

    add-int v60, v60, v23

    add-int v60, v60, v27

    aget-wide v14, p6, v60

    .line 3800
    .local v14, "i2r":D
    add-int v60, v50, v25

    add-double v62, v10, v14

    aput-wide v62, p8, v60

    .line 3801
    add-int v60, v50, v26

    sub-double v62, v10, v14

    aput-wide v62, p8, v60

    .line 3796
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    .line 3791
    .end local v10    # "i1r":D
    .end local v14    # "i2r":D
    .end local v50    # "oidx1":I
    :cond_58
    add-int/lit8 v43, v43, 0x1

    goto :goto_20

    .line 3787
    .end local v6    # "i":I
    .end local v24    # "idx3":I
    .end local v25    # "idx4":I
    .end local v26    # "idx5":I
    .end local v27    # "idx6":I
    :cond_5b
    add-int/lit8 v41, v41, 0x1

    goto :goto_12

    .line 3805
    .end local v22    # "idx1":I
    .end local v23    # "idx2":I
    .end local v42    # "jc":I
    .end local v43    # "k":I
    :cond_5e
    const/16 v43, 0x0

    .restart local v43    # "k":I
    :goto_60
    move/from16 v0, v43

    move/from16 v1, p4

    if-ge v0, v1, :cond_f4

    .line 3806
    mul-int v29, v43, p2

    .line 3807
    .local v29, "idxt1":I
    mul-int v30, v29, p3

    .line 3808
    .local v30, "idxt2":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_6b
    move/from16 v0, p2

    if-ge v6, v0, :cond_7e

    .line 3809
    add-int v60, p9, v6

    add-int v60, v60, v29

    add-int v61, p7, v6

    add-int v61, v61, v30

    aget-wide v62, p6, v61

    aput-wide v62, p8, v60

    .line 3808
    add-int/lit8 v6, v6, 0x1

    goto :goto_6b

    .line 3805
    :cond_7e
    add-int/lit8 v43, v43, 0x1

    goto :goto_60

    .line 3813
    .end local v6    # "i":I
    .end local v29    # "idxt1":I
    .end local v30    # "idxt2":I
    .end local v41    # "j":I
    .end local v43    # "k":I
    :cond_81
    const/16 v41, 0x1

    .restart local v41    # "j":I
    :goto_83
    move/from16 v0, v41

    move/from16 v1, v39

    if-ge v0, v1, :cond_d1

    .line 3814
    sub-int v42, p3, v41

    .line 3815
    .restart local v42    # "jc":I
    mul-int v60, v41, p4

    mul-int v29, v60, p2

    .line 3816
    .restart local v29    # "idxt1":I
    mul-int v60, v42, p4

    mul-int v30, v60, p2

    .line 3817
    .restart local v30    # "idxt2":I
    mul-int v31, v41, p2

    .line 3818
    .local v31, "idxt3":I
    mul-int v32, v42, p2

    .line 3819
    .local v32, "idxt4":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_98
    move/from16 v0, p2

    if-ge v6, v0, :cond_ce

    .line 3820
    const/16 v43, 0x0

    .restart local v43    # "k":I
    :goto_9e
    move/from16 v0, v43

    move/from16 v1, p4

    if-ge v0, v1, :cond_cb

    .line 3821
    mul-int v22, v43, p2

    .line 3822
    .restart local v22    # "idx1":I
    mul-int v23, v22, p3

    .line 3823
    .restart local v23    # "idx2":I
    add-int v24, p9, v6

    .line 3824
    .restart local v24    # "idx3":I
    add-int v25, p7, v6

    .line 3825
    .restart local v25    # "idx4":I
    add-int v60, v25, v31

    add-int v60, v60, v23

    aget-wide v10, p6, v60

    .line 3826
    .restart local v10    # "i1r":D
    add-int v60, v25, v32

    add-int v60, v60, v23

    aget-wide v14, p6, v60

    .line 3827
    .restart local v14    # "i2r":D
    add-int v60, v24, v22

    add-int v60, v60, v29

    add-double v62, v10, v14

    aput-wide v62, p8, v60

    .line 3828
    add-int v60, v24, v22

    add-int v60, v60, v30

    sub-double v62, v10, v14

    aput-wide v62, p8, v60

    .line 3820
    add-int/lit8 v43, v43, 0x1

    goto :goto_9e

    .line 3819
    .end local v10    # "i1r":D
    .end local v14    # "i2r":D
    .end local v22    # "idx1":I
    .end local v23    # "idx2":I
    .end local v24    # "idx3":I
    .end local v25    # "idx4":I
    :cond_cb
    add-int/lit8 v6, v6, 0x1

    goto :goto_98

    .line 3813
    .end local v43    # "k":I
    :cond_ce
    add-int/lit8 v41, v41, 0x1

    goto :goto_83

    .line 3832
    .end local v6    # "i":I
    .end local v29    # "idxt1":I
    .end local v30    # "idxt2":I
    .end local v31    # "idxt3":I
    .end local v32    # "idxt4":I
    .end local v42    # "jc":I
    :cond_d1
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_d2
    move/from16 v0, p2

    if-ge v6, v0, :cond_f4

    .line 3833
    const/16 v43, 0x0

    .restart local v43    # "k":I
    :goto_d8
    move/from16 v0, v43

    move/from16 v1, p4

    if-ge v0, v1, :cond_f1

    .line 3834
    mul-int v22, v43, p2

    .line 3835
    .restart local v22    # "idx1":I
    add-int v60, p9, v6

    add-int v60, v60, v22

    add-int v61, p7, v6

    mul-int v62, v22, p3

    add-int v61, v61, v62

    aget-wide v62, p6, v61

    aput-wide v62, p8, v60

    .line 3833
    add-int/lit8 v43, v43, 0x1

    goto :goto_d8

    .line 3832
    .end local v22    # "idx1":I
    :cond_f1
    add-int/lit8 v6, v6, 0x1

    goto :goto_d2

    .line 3840
    .end local v6    # "i":I
    .end local v43    # "k":I
    :cond_f4
    rsub-int/lit8 v17, p2, 0x2

    .line 3841
    .local v17, "idl":I
    const/16 v38, 0x0

    .line 3842
    .local v38, "inc":I
    add-int/lit8 v60, p3, -0x1

    mul-int v28, v60, p5

    .line 3843
    .local v28, "idxt0":I
    const/16 v44, 0x1

    .local v44, "l":I
    :goto_fe
    move/from16 v0, v44

    move/from16 v1, v39

    if-ge v0, v1, :cond_1bb

    .line 3844
    sub-int v45, p3, v44

    .line 3845
    .local v45, "lc":I
    add-int v17, v17, p2

    .line 3846
    mul-int v29, v44, p5

    .line 3847
    .restart local v29    # "idxt1":I
    mul-int v30, v45, p5

    .line 3848
    .restart local v30    # "idxt2":I
    add-int v31, v17, p10

    .line 3849
    .restart local v31    # "idxt3":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v60, v0

    add-int/lit8 v61, v31, -0x2

    aget-wide v54, v60, v61

    .line 3850
    .local v54, "w1r":D
    move/from16 v0, p11

    int-to-double v0, v0

    move-wide/from16 v60, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v62, v0

    add-int/lit8 v63, v31, -0x1

    aget-wide v62, v62, v63

    mul-double v52, v60, v62

    .line 3851
    .local v52, "w1i":D
    const/16 v37, 0x0

    .local v37, "ik":I
    :goto_12b
    move/from16 v0, v37

    move/from16 v1, p5

    if-ge v0, v1, :cond_150

    .line 3852
    add-int v22, p7, v37

    .line 3853
    .restart local v22    # "idx1":I
    add-int v23, p9, v37

    .line 3854
    .restart local v23    # "idx2":I
    add-int v60, v22, v29

    aget-wide v62, p8, v23

    add-int v61, v23, p5

    aget-wide v64, p8, v61

    mul-double v64, v64, v54

    add-double v62, v62, v64

    aput-wide v62, p6, v60

    .line 3855
    add-int v60, v22, v30

    add-int v61, v23, v28

    aget-wide v62, p8, v61

    mul-double v62, v62, v52

    aput-wide v62, p6, v60

    .line 3851
    add-int/lit8 v37, v37, 0x1

    goto :goto_12b

    .line 3857
    .end local v22    # "idx1":I
    .end local v23    # "idx2":I
    :cond_150
    move/from16 v18, v17

    .line 3858
    .local v18, "idlj":I
    add-int v38, v38, p2

    .line 3859
    const/16 v41, 0x2

    :goto_156
    move/from16 v0, v41

    move/from16 v1, v39

    if-ge v0, v1, :cond_1b7

    .line 3860
    sub-int v42, p3, v41

    .line 3861
    .restart local v42    # "jc":I
    add-int v18, v18, v38

    .line 3862
    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_168

    .line 3863
    sub-int v18, v18, v20

    .line 3864
    :cond_168
    add-int v32, v18, p10

    .line 3865
    .restart local v32    # "idxt4":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v60, v0

    add-int/lit8 v61, v32, -0x2

    aget-wide v58, v60, v61

    .line 3866
    .local v58, "w2r":D
    move/from16 v0, p11

    int-to-double v0, v0

    move-wide/from16 v60, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v62, v0

    add-int/lit8 v63, v32, -0x1

    aget-wide v62, v62, v63

    mul-double v56, v60, v62

    .line 3867
    .local v56, "w2i":D
    mul-int v33, v41, p5

    .line 3868
    .local v33, "idxt5":I
    mul-int v34, v42, p5

    .line 3869
    .local v34, "idxt6":I
    const/16 v37, 0x0

    :goto_18b
    move/from16 v0, v37

    move/from16 v1, p5

    if-ge v0, v1, :cond_1b4

    .line 3870
    add-int v22, p7, v37

    .line 3871
    .restart local v22    # "idx1":I
    add-int v23, p9, v37

    .line 3872
    .restart local v23    # "idx2":I
    add-int v60, v22, v29

    aget-wide v62, p6, v60

    add-int v61, v23, v33

    aget-wide v64, p8, v61

    mul-double v64, v64, v58

    add-double v62, v62, v64

    aput-wide v62, p6, v60

    .line 3873
    add-int v60, v22, v30

    aget-wide v62, p6, v60

    add-int v61, v23, v34

    aget-wide v64, p8, v61

    mul-double v64, v64, v56

    add-double v62, v62, v64

    aput-wide v62, p6, v60

    .line 3869
    add-int/lit8 v37, v37, 0x1

    goto :goto_18b

    .line 3859
    .end local v22    # "idx1":I
    .end local v23    # "idx2":I
    :cond_1b4
    add-int/lit8 v41, v41, 0x1

    goto :goto_156

    .line 3843
    .end local v32    # "idxt4":I
    .end local v33    # "idxt5":I
    .end local v34    # "idxt6":I
    .end local v42    # "jc":I
    .end local v56    # "w2i":D
    .end local v58    # "w2r":D
    :cond_1b7
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_fe

    .line 3877
    .end local v18    # "idlj":I
    .end local v29    # "idxt1":I
    .end local v30    # "idxt2":I
    .end local v31    # "idxt3":I
    .end local v37    # "ik":I
    .end local v45    # "lc":I
    .end local v52    # "w1i":D
    .end local v54    # "w1r":D
    :cond_1bb
    const/16 v41, 0x1

    :goto_1bd
    move/from16 v0, v41

    move/from16 v1, v39

    if-ge v0, v1, :cond_1df

    .line 3878
    mul-int v29, v41, p5

    .line 3879
    .restart local v29    # "idxt1":I
    const/16 v37, 0x0

    .restart local v37    # "ik":I
    :goto_1c7
    move/from16 v0, v37

    move/from16 v1, p5

    if-ge v0, v1, :cond_1dc

    .line 3880
    add-int v22, p9, v37

    .line 3881
    .restart local v22    # "idx1":I
    aget-wide v60, p8, v22

    add-int v62, v22, v29

    aget-wide v62, p8, v62

    add-double v60, v60, v62

    aput-wide v60, p8, v22

    .line 3879
    add-int/lit8 v37, v37, 0x1

    goto :goto_1c7

    .line 3877
    .end local v22    # "idx1":I
    :cond_1dc
    add-int/lit8 v41, v41, 0x1

    goto :goto_1bd

    .line 3884
    .end local v29    # "idxt1":I
    .end local v37    # "ik":I
    :cond_1df
    const/16 v41, 0x1

    :goto_1e1
    move/from16 v0, v41

    move/from16 v1, v39

    if-ge v0, v1, :cond_227

    .line 3885
    sub-int v42, p3, v41

    .line 3886
    .restart local v42    # "jc":I
    mul-int v22, v41, p5

    .line 3887
    .restart local v22    # "idx1":I
    mul-int v23, v42, p5

    .line 3888
    .restart local v23    # "idx2":I
    const/16 v37, 0x1

    .restart local v37    # "ik":I
    :goto_1ef
    move/from16 v0, v37

    move/from16 v1, p5

    if-ge v0, v1, :cond_224

    .line 3889
    add-int v24, p9, v37

    .line 3890
    .restart local v24    # "idx3":I
    add-int v25, p7, v37

    .line 3891
    .restart local v25    # "idx4":I
    add-int v35, v25, v22

    .line 3892
    .local v35, "iidx1":I
    add-int v36, v25, v23

    .line 3893
    .local v36, "iidx2":I
    add-int/lit8 v60, v35, -0x1

    aget-wide v8, p6, v60

    .line 3894
    .local v8, "i1i":D
    aget-wide v10, p6, v35

    .line 3895
    .restart local v10    # "i1r":D
    add-int/lit8 v60, v36, -0x1

    aget-wide v12, p6, v60

    .line 3896
    .local v12, "i2i":D
    aget-wide v14, p6, v36

    .line 3898
    .restart local v14    # "i2r":D
    add-int v50, v24, v22

    .line 3899
    .restart local v50    # "oidx1":I
    add-int v51, v24, v23

    .line 3900
    .local v51, "oidx2":I
    add-int/lit8 v60, v50, -0x1

    sub-double v62, v8, v14

    aput-wide v62, p8, v60

    .line 3901
    add-int/lit8 v60, v51, -0x1

    add-double v62, v8, v14

    aput-wide v62, p8, v60

    .line 3902
    add-double v60, v10, v12

    aput-wide v60, p8, v50

    .line 3903
    sub-double v60, v10, v12

    aput-wide v60, p8, v51

    .line 3888
    add-int/lit8 v37, v37, 0x2

    goto :goto_1ef

    .line 3884
    .end local v8    # "i1i":D
    .end local v10    # "i1r":D
    .end local v12    # "i2i":D
    .end local v14    # "i2r":D
    .end local v24    # "idx3":I
    .end local v25    # "idx4":I
    .end local v35    # "iidx1":I
    .end local v36    # "iidx2":I
    .end local v50    # "oidx1":I
    .end local v51    # "oidx2":I
    :cond_224
    add-int/lit8 v41, v41, 0x1

    goto :goto_1e1

    .line 3906
    .end local v22    # "idx1":I
    .end local v23    # "idx2":I
    .end local v37    # "ik":I
    .end local v42    # "jc":I
    :cond_227
    const/16 v60, 0x1

    const/16 v61, 0x0

    aput v60, p1, v61

    .line 3907
    const/16 v60, 0x2

    move/from16 v0, p2

    move/from16 v1, v60

    if-ne v0, v1, :cond_236

    .line 3908
    return-void

    .line 3909
    :cond_236
    const/16 v60, 0x0

    const/16 v61, 0x0

    aput v60, p1, v61

    .line 3910
    move-object/from16 v0, p8

    move/from16 v1, p9

    move-object/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 3911
    mul-int v21, p4, p2

    .line 3912
    .local v21, "idx0":I
    const/16 v41, 0x1

    :goto_24d
    move/from16 v0, v41

    move/from16 v1, p3

    if-ge v0, v1, :cond_279

    .line 3913
    mul-int v22, v41, v21

    .line 3914
    .restart local v22    # "idx1":I
    const/16 v43, 0x0

    .restart local v43    # "k":I
    :goto_257
    move/from16 v0, v43

    move/from16 v1, p4

    if-ge v0, v1, :cond_276

    .line 3915
    mul-int v23, v43, p2

    .line 3916
    .restart local v23    # "idx2":I
    add-int v60, p9, v23

    add-int v50, v60, v22

    .line 3917
    .restart local v50    # "oidx1":I
    add-int v60, p7, v23

    add-int v35, v60, v22

    .line 3918
    .restart local v35    # "iidx1":I
    aget-wide v60, p8, v50

    aput-wide v60, p6, v35

    .line 3919
    add-int/lit8 v60, v35, 0x1

    add-int/lit8 v61, v50, 0x1

    aget-wide v62, p8, v61

    aput-wide v62, p6, v60

    .line 3914
    add-int/lit8 v43, v43, 0x1

    goto :goto_257

    .line 3912
    .end local v23    # "idx2":I
    .end local v35    # "iidx1":I
    .end local v50    # "oidx1":I
    :cond_276
    add-int/lit8 v41, v41, 0x1

    goto :goto_24d

    .line 3922
    .end local v22    # "idx1":I
    .end local v43    # "k":I
    :cond_279
    move/from16 v0, v19

    move/from16 v1, p4

    if-gt v0, v1, :cond_2e7

    .line 3923
    const/4 v7, 0x0

    .line 3924
    .local v7, "idij":I
    const/16 v41, 0x1

    :goto_282
    move/from16 v0, v41

    move/from16 v1, p3

    if-ge v0, v1, :cond_352

    .line 3925
    add-int/lit8 v7, v7, 0x2

    .line 3926
    mul-int v60, v41, p4

    mul-int v22, v60, p2

    .line 3927
    .restart local v22    # "idx1":I
    const/4 v6, 0x3

    .restart local v6    # "i":I
    :goto_28f
    move/from16 v0, p2

    if-ge v6, v0, :cond_2e4

    .line 3928
    add-int/lit8 v7, v7, 0x2

    .line 3929
    add-int v60, v7, p10

    add-int/lit8 v23, v60, -0x1

    .line 3930
    .restart local v23    # "idx2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v60, v0

    add-int/lit8 v61, v23, -0x1

    aget-wide v54, v60, v61

    .line 3931
    .restart local v54    # "w1r":D
    move/from16 v0, p11

    int-to-double v0, v0

    move-wide/from16 v60, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v62, v0

    aget-wide v62, v62, v23

    mul-double v52, v60, v62

    .line 3932
    .restart local v52    # "w1i":D
    add-int v24, p7, v6

    .line 3933
    .restart local v24    # "idx3":I
    add-int v25, p9, v6

    .line 3934
    .restart local v25    # "idx4":I
    const/16 v43, 0x0

    .restart local v43    # "k":I
    :goto_2b8
    move/from16 v0, v43

    move/from16 v1, p4

    if-ge v0, v1, :cond_2e1

    .line 3935
    mul-int v60, v43, p2

    add-int v26, v60, v22

    .line 3936
    .restart local v26    # "idx5":I
    add-int v35, v24, v26

    .line 3937
    .restart local v35    # "iidx1":I
    add-int v50, v25, v26

    .line 3938
    .restart local v50    # "oidx1":I
    add-int/lit8 v60, v50, -0x1

    aget-wide v46, p8, v60

    .line 3939
    .local v46, "o1i":D
    aget-wide v48, p8, v50

    .line 3940
    .local v48, "o1r":D
    add-int/lit8 v60, v35, -0x1

    mul-double v62, v54, v46

    mul-double v64, v52, v48

    sub-double v62, v62, v64

    aput-wide v62, p6, v60

    .line 3941
    mul-double v60, v54, v48

    mul-double v62, v52, v46

    add-double v60, v60, v62

    aput-wide v60, p6, v35

    .line 3934
    add-int/lit8 v43, v43, 0x1

    goto :goto_2b8

    .line 3927
    .end local v26    # "idx5":I
    .end local v35    # "iidx1":I
    .end local v46    # "o1i":D
    .end local v48    # "o1r":D
    .end local v50    # "oidx1":I
    :cond_2e1
    add-int/lit8 v6, v6, 0x2

    goto :goto_28f

    .line 3924
    .end local v23    # "idx2":I
    .end local v24    # "idx3":I
    .end local v25    # "idx4":I
    .end local v43    # "k":I
    .end local v52    # "w1i":D
    .end local v54    # "w1r":D
    :cond_2e4
    add-int/lit8 v41, v41, 0x1

    goto :goto_282

    .line 3946
    .end local v6    # "i":I
    .end local v7    # "idij":I
    .end local v22    # "idx1":I
    :cond_2e7
    rsub-int/lit8 v16, p2, 0x2

    .line 3947
    .local v16, "idj":I
    const/16 v41, 0x1

    :goto_2eb
    move/from16 v0, v41

    move/from16 v1, p3

    if-ge v0, v1, :cond_352

    .line 3948
    add-int v16, v16, p2

    .line 3949
    mul-int v60, v41, p4

    mul-int v22, v60, p2

    .line 3950
    .restart local v22    # "idx1":I
    const/16 v43, 0x0

    .restart local v43    # "k":I
    :goto_2f9
    move/from16 v0, v43

    move/from16 v1, p4

    if-ge v0, v1, :cond_34f

    .line 3951
    move/from16 v7, v16

    .line 3952
    .restart local v7    # "idij":I
    mul-int v60, v43, p2

    add-int v24, v60, v22

    .line 3953
    .restart local v24    # "idx3":I
    const/4 v6, 0x3

    .restart local v6    # "i":I
    :goto_306
    move/from16 v0, p2

    if-ge v6, v0, :cond_34c

    .line 3954
    add-int/lit8 v7, v7, 0x2

    .line 3955
    add-int/lit8 v60, v7, -0x1

    add-int v23, v60, p10

    .line 3956
    .restart local v23    # "idx2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v60, v0

    add-int/lit8 v61, v23, -0x1

    aget-wide v54, v60, v61

    .line 3957
    .restart local v54    # "w1r":D
    move/from16 v0, p11

    int-to-double v0, v0

    move-wide/from16 v60, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v62, v0

    aget-wide v62, v62, v23

    mul-double v52, v60, v62

    .line 3958
    .restart local v52    # "w1i":D
    add-int v60, p7, v6

    add-int v35, v60, v24

    .line 3959
    .restart local v35    # "iidx1":I
    add-int v60, p9, v6

    add-int v50, v60, v24

    .line 3960
    .restart local v50    # "oidx1":I
    add-int/lit8 v60, v50, -0x1

    aget-wide v46, p8, v60

    .line 3961
    .restart local v46    # "o1i":D
    aget-wide v48, p8, v50

    .line 3962
    .restart local v48    # "o1r":D
    add-int/lit8 v60, v35, -0x1

    mul-double v62, v54, v46

    mul-double v64, v52, v48

    sub-double v62, v62, v64

    aput-wide v62, p6, v60

    .line 3963
    mul-double v60, v54, v48

    mul-double v62, v52, v46

    add-double v60, v60, v62

    aput-wide v60, p6, v35

    .line 3953
    add-int/lit8 v6, v6, 0x2

    goto :goto_306

    .line 3950
    .end local v23    # "idx2":I
    .end local v35    # "iidx1":I
    .end local v46    # "o1i":D
    .end local v48    # "o1r":D
    .end local v50    # "oidx1":I
    .end local v52    # "w1i":D
    .end local v54    # "w1r":D
    :cond_34c
    add-int/lit8 v43, v43, 0x1

    goto :goto_2f9

    .line 3947
    .end local v6    # "i":I
    .end local v7    # "idij":I
    .end local v24    # "idx3":I
    :cond_34f
    add-int/lit8 v41, v41, 0x1

    goto :goto_2eb

    .line 3968
    .end local v16    # "idj":I
    .end local v22    # "idx1":I
    .end local v43    # "k":I
    :cond_352
    return-void
.end method

.method radb2(II[DI[DII)V
    .registers 48
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I

    .prologue
    .line 1906
    move/from16 v23, p7

    .line 1908
    .local v23, "iw1":I
    mul-int v12, p2, p1

    .line 1909
    .local v12, "idx0":I
    const/16 v24, 0x0

    .local v24, "k":I
    :goto_6
    move/from16 v0, v24

    move/from16 v1, p2

    if-ge v0, v1, :cond_2d

    .line 1910
    mul-int v13, v24, p1

    .line 1911
    .local v13, "idx1":I
    mul-int/lit8 v14, v13, 0x2

    .line 1912
    .local v14, "idx2":I
    add-int v15, v14, p1

    .line 1913
    .local v15, "idx3":I
    add-int v25, p6, v13

    .line 1914
    .local v25, "oidx1":I
    add-int v21, p4, v14

    .line 1915
    .local v21, "iidx1":I
    add-int v27, p4, p1

    add-int/lit8 v27, v27, -0x1

    add-int v22, v27, v15

    .line 1916
    .local v22, "iidx2":I
    aget-wide v6, p3, v21

    .line 1917
    .local v6, "i1r":D
    aget-wide v10, p3, v22

    .line 1918
    .local v10, "i2r":D
    add-double v36, v6, v10

    aput-wide v36, p5, v25

    .line 1919
    add-int v27, v25, v12

    sub-double v36, v6, v10

    aput-wide v36, p5, v27

    .line 1909
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 1921
    .end local v6    # "i1r":D
    .end local v10    # "i2r":D
    .end local v13    # "idx1":I
    .end local v14    # "idx2":I
    .end local v15    # "idx3":I
    .end local v21    # "iidx1":I
    .end local v22    # "iidx2":I
    .end local v25    # "oidx1":I
    :cond_2d
    const/16 v27, 0x2

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_36

    .line 1922
    return-void

    .line 1923
    :cond_36
    const/16 v27, 0x2

    move/from16 v0, p1

    move/from16 v1, v27

    if-eq v0, v1, :cond_c2

    .line 1924
    const/16 v24, 0x0

    :goto_40
    move/from16 v0, v24

    move/from16 v1, p2

    if-ge v0, v1, :cond_b7

    .line 1925
    mul-int v13, v24, p1

    .line 1926
    .restart local v13    # "idx1":I
    mul-int/lit8 v14, v13, 0x2

    .line 1927
    .restart local v14    # "idx2":I
    add-int v15, v14, p1

    .line 1928
    .restart local v15    # "idx3":I
    add-int v16, v13, v12

    .line 1929
    .local v16, "idx4":I
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_4f
    move/from16 v0, p1

    if-ge v2, v0, :cond_b4

    .line 1930
    sub-int v3, p1, v2

    .line 1931
    .local v3, "ic":I
    add-int/lit8 v27, v2, -0x1

    add-int v17, v27, p7

    .line 1932
    .local v17, "idx5":I
    add-int v18, p6, v2

    .line 1933
    .local v18, "idx6":I
    add-int v19, p4, v2

    .line 1934
    .local v19, "idx7":I
    add-int v20, p4, v3

    .line 1935
    .local v20, "idx8":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v27, v0

    add-int/lit8 v36, v17, -0x1

    aget-wide v34, v27, v36

    .line 1936
    .local v34, "w1r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v27, v0

    aget-wide v32, v27, v17

    .line 1937
    .local v32, "w1i":D
    add-int v21, v19, v14

    .line 1938
    .restart local v21    # "iidx1":I
    add-int v22, v20, v15

    .line 1939
    .restart local v22    # "iidx2":I
    add-int v25, v18, v13

    .line 1940
    .restart local v25    # "oidx1":I
    add-int v26, v18, v16

    .line 1941
    .local v26, "oidx2":I
    add-int/lit8 v27, v21, -0x1

    aget-wide v36, p3, v27

    add-int/lit8 v27, v22, -0x1

    aget-wide v38, p3, v27

    sub-double v30, v36, v38

    .line 1942
    .local v30, "t1r":D
    aget-wide v36, p3, v21

    aget-wide v38, p3, v22

    add-double v28, v36, v38

    .line 1943
    .local v28, "t1i":D
    aget-wide v4, p3, v21

    .line 1944
    .local v4, "i1i":D
    add-int/lit8 v27, v21, -0x1

    aget-wide v6, p3, v27

    .line 1945
    .restart local v6    # "i1r":D
    aget-wide v8, p3, v22

    .line 1946
    .local v8, "i2i":D
    add-int/lit8 v27, v22, -0x1

    aget-wide v10, p3, v27

    .line 1948
    .restart local v10    # "i2r":D
    add-int/lit8 v27, v25, -0x1

    add-double v36, v6, v10

    aput-wide v36, p5, v27

    .line 1949
    sub-double v36, v4, v8

    aput-wide v36, p5, v25

    .line 1950
    add-int/lit8 v27, v26, -0x1

    mul-double v36, v34, v30

    mul-double v38, v32, v28

    sub-double v36, v36, v38

    aput-wide v36, p5, v27

    .line 1951
    mul-double v36, v34, v28

    mul-double v38, v32, v30

    add-double v36, v36, v38

    aput-wide v36, p5, v26

    .line 1929
    add-int/lit8 v2, v2, 0x2

    goto :goto_4f

    .line 1924
    .end local v3    # "ic":I
    .end local v4    # "i1i":D
    .end local v6    # "i1r":D
    .end local v8    # "i2i":D
    .end local v10    # "i2r":D
    .end local v17    # "idx5":I
    .end local v18    # "idx6":I
    .end local v19    # "idx7":I
    .end local v20    # "idx8":I
    .end local v21    # "iidx1":I
    .end local v22    # "iidx2":I
    .end local v25    # "oidx1":I
    .end local v26    # "oidx2":I
    .end local v28    # "t1i":D
    .end local v30    # "t1r":D
    .end local v32    # "w1i":D
    .end local v34    # "w1r":D
    :cond_b4
    add-int/lit8 v24, v24, 0x1

    goto :goto_40

    .line 1954
    .end local v2    # "i":I
    .end local v13    # "idx1":I
    .end local v14    # "idx2":I
    .end local v15    # "idx3":I
    .end local v16    # "idx4":I
    :cond_b7
    rem-int/lit8 v27, p1, 0x2

    const/16 v36, 0x1

    move/from16 v0, v27

    move/from16 v1, v36

    if-ne v0, v1, :cond_c2

    .line 1955
    return-void

    .line 1957
    :cond_c2
    const/16 v24, 0x0

    :goto_c4
    move/from16 v0, v24

    move/from16 v1, p2

    if-ge v0, v1, :cond_ef

    .line 1958
    mul-int v13, v24, p1

    .line 1959
    .restart local v13    # "idx1":I
    mul-int/lit8 v14, v13, 0x2

    .line 1960
    .restart local v14    # "idx2":I
    add-int v27, p6, p1

    add-int/lit8 v27, v27, -0x1

    add-int v25, v27, v13

    .line 1961
    .restart local v25    # "oidx1":I
    add-int v27, p4, v14

    add-int v21, v27, p1

    .line 1962
    .restart local v21    # "iidx1":I
    add-int/lit8 v27, v21, -0x1

    aget-wide v36, p3, v27

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    mul-double v36, v36, v38

    aput-wide v36, p5, v25

    .line 1963
    add-int v27, v25, v12

    aget-wide v36, p3, v21

    const-wide/high16 v38, -0x4000000000000000L    # -2.0

    mul-double v36, v36, v38

    aput-wide v36, p5, v27

    .line 1957
    add-int/lit8 v24, v24, 0x1

    goto :goto_c4

    .line 1965
    .end local v13    # "idx1":I
    .end local v14    # "idx2":I
    .end local v21    # "iidx1":I
    .end local v25    # "oidx1":I
    :cond_ef
    return-void
.end method

.method radb3(II[DI[DII)V
    .registers 82
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I

    .prologue
    .line 2057
    const-wide/high16 v54, -0x4020000000000000L    # -0.5

    .line 2058
    .local v54, "taur":D
    const-wide v52, 0x3febb67ae8584cabL    # 0.8660254037844387

    .line 2062
    .local v52, "taui":D
    move/from16 v45, p7

    .line 2063
    .local v45, "iw1":I
    add-int v46, p7, p1

    .line 2065
    .local v46, "iw2":I
    const/16 v47, 0x0

    .local v47, "k":I
    :goto_d
    move/from16 v0, v47

    move/from16 v1, p2

    if-ge v0, v1, :cond_55

    .line 2066
    mul-int v33, v47, p1

    .line 2067
    .local v33, "idx1":I
    mul-int/lit8 v69, v33, 0x3

    add-int v42, p4, v69

    .line 2068
    .local v42, "iidx1":I
    mul-int/lit8 v69, p1, 0x2

    add-int v43, v42, v69

    .line 2069
    .local v43, "iidx2":I
    aget-wide v20, p3, v42

    .line 2071
    .local v20, "i1i":D
    add-int/lit8 v69, v43, -0x1

    aget-wide v70, p3, v69

    const-wide/high16 v72, 0x4000000000000000L    # 2.0

    mul-double v58, v72, v70

    .line 2072
    .local v58, "tr2":D
    const-wide/high16 v70, -0x4020000000000000L    # -0.5

    mul-double v70, v70, v58

    add-double v6, v20, v70

    .line 2073
    .local v6, "cr2":D
    aget-wide v70, p3, v43

    const-wide v72, 0x3ffbb67ae8584cabL    # 1.7320508075688774

    mul-double v4, v72, v70

    .line 2075
    .local v4, "ci3":D
    add-int v69, p6, v33

    add-double v70, v20, v58

    aput-wide v70, p5, v69

    .line 2076
    add-int v69, v47, p2

    mul-int v69, v69, p1

    add-int v69, v69, p6

    sub-double v70, v6, v4

    aput-wide v70, p5, v69

    .line 2077
    mul-int/lit8 v69, p2, 0x2

    add-int v69, v69, v47

    mul-int v69, v69, p1

    add-int v69, v69, p6

    add-double v70, v6, v4

    aput-wide v70, p5, v69

    .line 2065
    add-int/lit8 v47, v47, 0x1

    goto :goto_d

    .line 2079
    .end local v4    # "ci3":D
    .end local v6    # "cr2":D
    .end local v20    # "i1i":D
    .end local v33    # "idx1":I
    .end local v42    # "iidx1":I
    .end local v43    # "iidx2":I
    .end local v58    # "tr2":D
    :cond_55
    const/16 v69, 0x1

    move/from16 v0, p1

    move/from16 v1, v69

    if-ne v0, v1, :cond_5e

    .line 2080
    return-void

    .line 2081
    :cond_5e
    mul-int v32, p2, p1

    .line 2082
    .local v32, "idx0":I
    const/16 v47, 0x0

    :goto_62
    move/from16 v0, v47

    move/from16 v1, p2

    if-ge v0, v1, :cond_12e

    .line 2083
    mul-int v33, v47, p1

    .line 2084
    .restart local v33    # "idx1":I
    mul-int/lit8 v34, v33, 0x3

    .line 2085
    .local v34, "idx2":I
    add-int v35, v34, p1

    .line 2086
    .local v35, "idx3":I
    add-int v36, v35, p1

    .line 2087
    .local v36, "idx4":I
    add-int v37, v33, v32

    .line 2088
    .local v37, "idx5":I
    add-int v38, v37, v32

    .line 2089
    .local v38, "idx6":I
    const/16 v18, 0x2

    .local v18, "i":I
    :goto_76
    move/from16 v0, v18

    move/from16 v1, p1

    if-ge v0, v1, :cond_12a

    .line 2090
    sub-int v19, p1, v18

    .line 2091
    .local v19, "ic":I
    add-int v39, p4, v18

    .line 2092
    .local v39, "idx7":I
    add-int v40, p4, v19

    .line 2093
    .local v40, "idx8":I
    add-int v41, p6, v18

    .line 2094
    .local v41, "idx9":I
    add-int v42, v39, v34

    .line 2095
    .restart local v42    # "iidx1":I
    add-int v43, v39, v36

    .line 2096
    .restart local v43    # "iidx2":I
    add-int v44, v40, v35

    .line 2098
    .local v44, "iidx3":I
    add-int/lit8 v69, v42, -0x1

    aget-wide v20, p3, v69

    .line 2099
    .restart local v20    # "i1i":D
    aget-wide v22, p3, v42

    .line 2100
    .local v22, "i1r":D
    add-int/lit8 v69, v43, -0x1

    aget-wide v24, p3, v69

    .line 2101
    .local v24, "i2i":D
    aget-wide v26, p3, v43

    .line 2102
    .local v26, "i2r":D
    add-int/lit8 v69, v44, -0x1

    aget-wide v28, p3, v69

    .line 2103
    .local v28, "i3i":D
    aget-wide v30, p3, v44

    .line 2105
    .local v30, "i3r":D
    add-double v58, v24, v28

    .line 2106
    .restart local v58    # "tr2":D
    const-wide/high16 v70, -0x4020000000000000L    # -0.5

    mul-double v70, v70, v58

    add-double v6, v20, v70

    .line 2107
    .restart local v6    # "cr2":D
    sub-double v56, v26, v30

    .line 2108
    .local v56, "ti2":D
    const-wide/high16 v70, -0x4020000000000000L    # -0.5

    mul-double v70, v70, v56

    add-double v2, v22, v70

    .line 2109
    .local v2, "ci2":D
    sub-double v70, v24, v28

    const-wide v72, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v8, v72, v70

    .line 2110
    .local v8, "cr3":D
    add-double v70, v26, v30

    const-wide v72, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v4, v72, v70

    .line 2111
    .restart local v4    # "ci3":D
    sub-double v14, v6, v4

    .line 2112
    .local v14, "dr2":D
    add-double v16, v6, v4

    .line 2113
    .local v16, "dr3":D
    add-double v10, v2, v8

    .line 2114
    .local v10, "di2":D
    sub-double v12, v2, v8

    .line 2116
    .local v12, "di3":D
    add-int/lit8 v69, v18, -0x1

    add-int v51, v69, p7

    .line 2117
    .local v51, "widx1":I
    add-int/lit8 v69, v18, -0x1

    add-int v68, v69, v46

    .line 2119
    .local v68, "widx2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v69, v0

    add-int/lit8 v70, v51, -0x1

    aget-wide v62, v69, v70

    .line 2120
    .local v62, "w1r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v69, v0

    aget-wide v60, v69, v51

    .line 2121
    .local v60, "w1i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v69, v0

    add-int/lit8 v70, v68, -0x1

    aget-wide v66, v69, v70

    .line 2122
    .local v66, "w2r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v69, v0

    aget-wide v64, v69, v68

    .line 2124
    .local v64, "w2i":D
    add-int v48, v41, v33

    .line 2125
    .local v48, "oidx1":I
    add-int v49, v41, v37

    .line 2126
    .local v49, "oidx2":I
    add-int v50, v41, v38

    .line 2128
    .local v50, "oidx3":I
    add-int/lit8 v69, v48, -0x1

    add-double v70, v20, v58

    aput-wide v70, p5, v69

    .line 2129
    add-double v70, v22, v56

    aput-wide v70, p5, v48

    .line 2130
    add-int/lit8 v69, v49, -0x1

    mul-double v70, v62, v14

    mul-double v72, v60, v10

    sub-double v70, v70, v72

    aput-wide v70, p5, v69

    .line 2131
    mul-double v70, v62, v10

    mul-double v72, v60, v14

    add-double v70, v70, v72

    aput-wide v70, p5, v49

    .line 2132
    add-int/lit8 v69, v50, -0x1

    mul-double v70, v66, v16

    mul-double v72, v64, v12

    sub-double v70, v70, v72

    aput-wide v70, p5, v69

    .line 2133
    mul-double v70, v66, v12

    mul-double v72, v64, v16

    add-double v70, v70, v72

    aput-wide v70, p5, v50

    .line 2089
    add-int/lit8 v18, v18, 0x2

    goto/16 :goto_76

    .line 2082
    .end local v2    # "ci2":D
    .end local v4    # "ci3":D
    .end local v6    # "cr2":D
    .end local v8    # "cr3":D
    .end local v10    # "di2":D
    .end local v12    # "di3":D
    .end local v14    # "dr2":D
    .end local v16    # "dr3":D
    .end local v19    # "ic":I
    .end local v20    # "i1i":D
    .end local v22    # "i1r":D
    .end local v24    # "i2i":D
    .end local v26    # "i2r":D
    .end local v28    # "i3i":D
    .end local v30    # "i3r":D
    .end local v39    # "idx7":I
    .end local v40    # "idx8":I
    .end local v41    # "idx9":I
    .end local v42    # "iidx1":I
    .end local v43    # "iidx2":I
    .end local v44    # "iidx3":I
    .end local v48    # "oidx1":I
    .end local v49    # "oidx2":I
    .end local v50    # "oidx3":I
    .end local v51    # "widx1":I
    .end local v56    # "ti2":D
    .end local v58    # "tr2":D
    .end local v60    # "w1i":D
    .end local v62    # "w1r":D
    .end local v64    # "w2i":D
    .end local v66    # "w2r":D
    .end local v68    # "widx2":I
    :cond_12a
    add-int/lit8 v47, v47, 0x1

    goto/16 :goto_62

    .line 2136
    .end local v18    # "i":I
    .end local v33    # "idx1":I
    .end local v34    # "idx2":I
    .end local v35    # "idx3":I
    .end local v36    # "idx4":I
    .end local v37    # "idx5":I
    .end local v38    # "idx6":I
    :cond_12e
    return-void
.end method

.method radb4(II[DI[DII)V
    .registers 104
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I

    .prologue
    .line 2278
    const-wide v58, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    .line 2283
    .local v58, "sqrt2":D
    move/from16 v50, p7

    .line 2284
    .local v50, "iw1":I
    add-int v51, p7, p1

    .line 2285
    .local v51, "iw2":I
    add-int v52, v51, p1

    .line 2287
    .local v52, "iw3":I
    mul-int v32, p2, p1

    .line 2288
    .local v32, "idx0":I
    const/16 v53, 0x0

    .local v53, "k":I
    :goto_f
    move/from16 v0, v53

    move/from16 v1, p2

    if-ge v0, v1, :cond_60

    .line 2289
    mul-int v33, v53, p1

    .line 2290
    .local v33, "idx1":I
    mul-int/lit8 v38, v33, 0x4

    .line 2291
    .local v38, "idx2":I
    add-int v39, v33, v32

    .line 2292
    .local v39, "idx3":I
    add-int v40, v39, v32

    .line 2293
    .local v40, "idx4":I
    add-int v41, v40, v32

    .line 2294
    .local v41, "idx5":I
    add-int v42, v38, p1

    .line 2295
    .local v42, "idx6":I
    add-int v43, v42, p1

    .line 2296
    .local v43, "idx7":I
    add-int v44, v43, p1

    .line 2298
    .local v44, "idx8":I
    add-int v91, p4, v38

    aget-wide v18, p3, v91

    .line 2299
    .local v18, "i1r":D
    add-int v91, p4, v43

    aget-wide v22, p3, v91

    .line 2300
    .local v22, "i2r":D
    add-int v91, p4, p1

    add-int/lit8 v91, v91, -0x1

    add-int v91, v91, v44

    aget-wide v26, p3, v91

    .line 2301
    .local v26, "i3r":D
    add-int v91, p4, p1

    add-int/lit8 v91, v91, -0x1

    add-int v91, v91, v42

    aget-wide v30, p3, v91

    .line 2303
    .local v30, "i4r":D
    sub-double v68, v18, v26

    .line 2304
    .local v68, "tr1":D
    add-double v70, v18, v26

    .line 2305
    .local v70, "tr2":D
    add-double v72, v30, v30

    .line 2306
    .local v72, "tr3":D
    add-double v74, v22, v22

    .line 2308
    .local v74, "tr4":D
    add-int v91, p6, v33

    add-double v92, v70, v72

    aput-wide v92, p5, v91

    .line 2309
    add-int v91, p6, v39

    sub-double v92, v68, v74

    aput-wide v92, p5, v91

    .line 2310
    add-int v91, p6, v40

    sub-double v92, v70, v72

    aput-wide v92, p5, v91

    .line 2311
    add-int v91, p6, v41

    add-double v92, v68, v74

    aput-wide v92, p5, v91

    .line 2288
    add-int/lit8 v53, v53, 0x1

    goto :goto_f

    .line 2313
    .end local v18    # "i1r":D
    .end local v22    # "i2r":D
    .end local v26    # "i3r":D
    .end local v30    # "i4r":D
    .end local v33    # "idx1":I
    .end local v38    # "idx2":I
    .end local v39    # "idx3":I
    .end local v40    # "idx4":I
    .end local v41    # "idx5":I
    .end local v42    # "idx6":I
    .end local v43    # "idx7":I
    .end local v44    # "idx8":I
    .end local v68    # "tr1":D
    .end local v70    # "tr2":D
    .end local v72    # "tr3":D
    .end local v74    # "tr4":D
    :cond_60
    const/16 v91, 0x2

    move/from16 v0, p1

    move/from16 v1, v91

    if-ge v0, v1, :cond_69

    .line 2314
    return-void

    .line 2315
    :cond_69
    const/16 v91, 0x2

    move/from16 v0, p1

    move/from16 v1, v91

    if-eq v0, v1, :cond_16f

    .line 2316
    const/16 v53, 0x0

    :goto_73
    move/from16 v0, v53

    move/from16 v1, p2

    if-ge v0, v1, :cond_164

    .line 2317
    mul-int v33, v53, p1

    .line 2318
    .restart local v33    # "idx1":I
    add-int v38, v33, v32

    .line 2319
    .restart local v38    # "idx2":I
    add-int v39, v38, v32

    .line 2320
    .restart local v39    # "idx3":I
    add-int v40, v39, v32

    .line 2321
    .restart local v40    # "idx4":I
    mul-int/lit8 v41, v33, 0x4

    .line 2322
    .restart local v41    # "idx5":I
    add-int v42, v41, p1

    .line 2323
    .restart local v42    # "idx6":I
    add-int v43, v42, p1

    .line 2324
    .restart local v43    # "idx7":I
    add-int v44, v43, p1

    .line 2325
    .restart local v44    # "idx8":I
    const/4 v14, 0x2

    .local v14, "i":I
    :goto_8a
    move/from16 v0, p1

    if-ge v14, v0, :cond_160

    .line 2326
    sub-int v15, p1, v14

    .line 2327
    .local v15, "ic":I
    add-int/lit8 v91, v14, -0x1

    add-int v88, v91, p7

    .line 2328
    .local v88, "widx1":I
    add-int/lit8 v91, v14, -0x1

    add-int v89, v91, v51

    .line 2329
    .local v89, "widx2":I
    add-int/lit8 v91, v14, -0x1

    add-int v90, v91, v52

    .line 2330
    .local v90, "widx3":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v91, v0

    add-int/lit8 v92, v88, -0x1

    aget-wide v78, v91, v92

    .line 2331
    .local v78, "w1r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v91, v0

    aget-wide v76, v91, v88

    .line 2332
    .local v76, "w1i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v91, v0

    add-int/lit8 v92, v89, -0x1

    aget-wide v82, v91, v92

    .line 2333
    .local v82, "w2r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v91, v0

    aget-wide v80, v91, v89

    .line 2334
    .local v80, "w2i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v91, v0

    add-int/lit8 v92, v90, -0x1

    aget-wide v86, v91, v92

    .line 2335
    .local v86, "w3r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v91, v0

    aget-wide v84, v91, v90

    .line 2337
    .local v84, "w3i":D
    add-int v35, p4, v14

    .line 2338
    .local v35, "idx12":I
    add-int v36, p4, v15

    .line 2339
    .local v36, "idx13":I
    add-int v37, p6, v14

    .line 2341
    .local v37, "idx14":I
    add-int v46, v35, v41

    .line 2342
    .local v46, "iidx1":I
    add-int v47, v36, v42

    .line 2343
    .local v47, "iidx2":I
    add-int v48, v35, v43

    .line 2344
    .local v48, "iidx3":I
    add-int v49, v36, v44

    .line 2346
    .local v49, "iidx4":I
    add-int/lit8 v91, v46, -0x1

    aget-wide v16, p3, v91

    .line 2347
    .local v16, "i1i":D
    aget-wide v18, p3, v46

    .line 2348
    .restart local v18    # "i1r":D
    add-int/lit8 v91, v47, -0x1

    aget-wide v20, p3, v91

    .line 2349
    .local v20, "i2i":D
    aget-wide v22, p3, v47

    .line 2350
    .restart local v22    # "i2r":D
    add-int/lit8 v91, v48, -0x1

    aget-wide v24, p3, v91

    .line 2351
    .local v24, "i3i":D
    aget-wide v26, p3, v48

    .line 2352
    .restart local v26    # "i3r":D
    add-int/lit8 v91, v49, -0x1

    aget-wide v28, p3, v91

    .line 2353
    .local v28, "i4i":D
    aget-wide v30, p3, v49

    .line 2355
    .restart local v30    # "i4r":D
    add-double v60, v18, v30

    .line 2356
    .local v60, "ti1":D
    sub-double v62, v18, v30

    .line 2357
    .local v62, "ti2":D
    sub-double v64, v26, v22

    .line 2358
    .local v64, "ti3":D
    add-double v74, v26, v22

    .line 2359
    .restart local v74    # "tr4":D
    sub-double v68, v16, v28

    .line 2360
    .restart local v68    # "tr1":D
    add-double v70, v16, v28

    .line 2361
    .restart local v70    # "tr2":D
    sub-double v66, v24, v20

    .line 2362
    .local v66, "ti4":D
    add-double v72, v24, v20

    .line 2363
    .restart local v72    # "tr3":D
    sub-double v10, v70, v72

    .line 2364
    .local v10, "cr3":D
    sub-double v4, v62, v64

    .line 2365
    .local v4, "ci3":D
    sub-double v8, v68, v74

    .line 2366
    .local v8, "cr2":D
    add-double v12, v68, v74

    .line 2367
    .local v12, "cr4":D
    add-double v2, v60, v66

    .line 2368
    .local v2, "ci2":D
    sub-double v6, v60, v66

    .line 2370
    .local v6, "ci4":D
    add-int v54, v37, v33

    .line 2371
    .local v54, "oidx1":I
    add-int v55, v37, v38

    .line 2372
    .local v55, "oidx2":I
    add-int v56, v37, v39

    .line 2373
    .local v56, "oidx3":I
    add-int v57, v37, v40

    .line 2375
    .local v57, "oidx4":I
    add-int/lit8 v91, v54, -0x1

    add-double v92, v70, v72

    aput-wide v92, p5, v91

    .line 2376
    add-double v92, v62, v64

    aput-wide v92, p5, v54

    .line 2377
    add-int/lit8 v91, v55, -0x1

    mul-double v92, v78, v8

    mul-double v94, v76, v2

    sub-double v92, v92, v94

    aput-wide v92, p5, v91

    .line 2378
    mul-double v92, v78, v2

    mul-double v94, v76, v8

    add-double v92, v92, v94

    aput-wide v92, p5, v55

    .line 2379
    add-int/lit8 v91, v56, -0x1

    mul-double v92, v82, v10

    mul-double v94, v80, v4

    sub-double v92, v92, v94

    aput-wide v92, p5, v91

    .line 2380
    mul-double v92, v82, v4

    mul-double v94, v80, v10

    add-double v92, v92, v94

    aput-wide v92, p5, v56

    .line 2381
    add-int/lit8 v91, v57, -0x1

    mul-double v92, v86, v12

    mul-double v94, v84, v6

    sub-double v92, v92, v94

    aput-wide v92, p5, v91

    .line 2382
    mul-double v92, v86, v6

    mul-double v94, v84, v12

    add-double v92, v92, v94

    aput-wide v92, p5, v57

    .line 2325
    add-int/lit8 v14, v14, 0x2

    goto/16 :goto_8a

    .line 2316
    .end local v2    # "ci2":D
    .end local v4    # "ci3":D
    .end local v6    # "ci4":D
    .end local v8    # "cr2":D
    .end local v10    # "cr3":D
    .end local v12    # "cr4":D
    .end local v15    # "ic":I
    .end local v16    # "i1i":D
    .end local v18    # "i1r":D
    .end local v20    # "i2i":D
    .end local v22    # "i2r":D
    .end local v24    # "i3i":D
    .end local v26    # "i3r":D
    .end local v28    # "i4i":D
    .end local v30    # "i4r":D
    .end local v35    # "idx12":I
    .end local v36    # "idx13":I
    .end local v37    # "idx14":I
    .end local v46    # "iidx1":I
    .end local v47    # "iidx2":I
    .end local v48    # "iidx3":I
    .end local v49    # "iidx4":I
    .end local v54    # "oidx1":I
    .end local v55    # "oidx2":I
    .end local v56    # "oidx3":I
    .end local v57    # "oidx4":I
    .end local v60    # "ti1":D
    .end local v62    # "ti2":D
    .end local v64    # "ti3":D
    .end local v66    # "ti4":D
    .end local v68    # "tr1":D
    .end local v70    # "tr2":D
    .end local v72    # "tr3":D
    .end local v74    # "tr4":D
    .end local v76    # "w1i":D
    .end local v78    # "w1r":D
    .end local v80    # "w2i":D
    .end local v82    # "w2r":D
    .end local v84    # "w3i":D
    .end local v86    # "w3r":D
    .end local v88    # "widx1":I
    .end local v89    # "widx2":I
    .end local v90    # "widx3":I
    :cond_160
    add-int/lit8 v53, v53, 0x1

    goto/16 :goto_73

    .line 2385
    .end local v14    # "i":I
    .end local v33    # "idx1":I
    .end local v38    # "idx2":I
    .end local v39    # "idx3":I
    .end local v40    # "idx4":I
    .end local v41    # "idx5":I
    .end local v42    # "idx6":I
    .end local v43    # "idx7":I
    .end local v44    # "idx8":I
    :cond_164
    rem-int/lit8 v91, p1, 0x2

    const/16 v92, 0x1

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_16f

    .line 2386
    return-void

    .line 2388
    :cond_16f
    const/16 v53, 0x0

    :goto_171
    move/from16 v0, v53

    move/from16 v1, p2

    if-ge v0, v1, :cond_1d8

    .line 2389
    mul-int v33, v53, p1

    .line 2390
    .restart local v33    # "idx1":I
    mul-int/lit8 v38, v33, 0x4

    .line 2391
    .restart local v38    # "idx2":I
    add-int v39, v33, v32

    .line 2392
    .restart local v39    # "idx3":I
    add-int v40, v39, v32

    .line 2393
    .restart local v40    # "idx4":I
    add-int v41, v40, v32

    .line 2394
    .restart local v41    # "idx5":I
    add-int v42, v38, p1

    .line 2395
    .restart local v42    # "idx6":I
    add-int v43, v42, p1

    .line 2396
    .restart local v43    # "idx7":I
    add-int v44, v43, p1

    .line 2397
    .restart local v44    # "idx8":I
    add-int v45, p4, p1

    .line 2398
    .local v45, "idx9":I
    add-int v34, p6, p1

    .line 2400
    .local v34, "idx10":I
    add-int/lit8 v91, v45, -0x1

    add-int v91, v91, v38

    aget-wide v18, p3, v91

    .line 2401
    .restart local v18    # "i1r":D
    add-int/lit8 v91, v45, -0x1

    add-int v91, v91, v43

    aget-wide v22, p3, v91

    .line 2402
    .restart local v22    # "i2r":D
    add-int v91, p4, v42

    aget-wide v26, p3, v91

    .line 2403
    .restart local v26    # "i3r":D
    add-int v91, p4, v44

    aget-wide v30, p3, v91

    .line 2405
    .restart local v30    # "i4r":D
    add-double v60, v26, v30

    .line 2406
    .restart local v60    # "ti1":D
    sub-double v62, v30, v26

    .line 2407
    .restart local v62    # "ti2":D
    sub-double v68, v18, v22

    .line 2408
    .restart local v68    # "tr1":D
    add-double v70, v18, v22

    .line 2410
    .restart local v70    # "tr2":D
    add-int/lit8 v91, v34, -0x1

    add-int v91, v91, v33

    add-double v92, v70, v70

    aput-wide v92, p5, v91

    .line 2411
    add-int/lit8 v91, v34, -0x1

    add-int v91, v91, v39

    sub-double v92, v68, v60

    const-wide v94, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    mul-double v92, v92, v94

    aput-wide v92, p5, v91

    .line 2412
    add-int/lit8 v91, v34, -0x1

    add-int v91, v91, v40

    add-double v92, v62, v62

    aput-wide v92, p5, v91

    .line 2413
    add-int/lit8 v91, v34, -0x1

    add-int v91, v91, v41

    add-double v92, v68, v60

    const-wide v94, -0x40095f619980c433L    # -1.4142135623730951

    mul-double v92, v92, v94

    aput-wide v92, p5, v91

    .line 2388
    add-int/lit8 v53, v53, 0x1

    goto :goto_171

    .line 2415
    .end local v18    # "i1r":D
    .end local v22    # "i2r":D
    .end local v26    # "i3r":D
    .end local v30    # "i4r":D
    .end local v33    # "idx1":I
    .end local v34    # "idx10":I
    .end local v38    # "idx2":I
    .end local v39    # "idx3":I
    .end local v40    # "idx4":I
    .end local v41    # "idx5":I
    .end local v42    # "idx6":I
    .end local v43    # "idx7":I
    .end local v44    # "idx8":I
    .end local v45    # "idx9":I
    .end local v60    # "ti1":D
    .end local v62    # "ti2":D
    .end local v68    # "tr1":D
    .end local v70    # "tr2":D
    :cond_1d8
    return-void
.end method

.method radb5(II[DI[DII)V
    .registers 144
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I

    .prologue
    .line 2564
    const-wide v98, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    .line 2565
    .local v98, "tr11":D
    const-wide v86, 0x3fee6f0e134454ffL    # 0.9510565162951535

    .line 2566
    .local v86, "ti11":D
    const-wide v100, -0x40161c8864680b59L    # -0.8090169943749473

    .line 2567
    .local v100, "tr12":D
    const-wide v88, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    .line 2571
    .local v88, "ti12":D
    move/from16 v76, p7

    .line 2572
    .local v76, "iw1":I
    add-int v77, p7, p1

    .line 2573
    .local v77, "iw2":I
    add-int v78, v77, p1

    .line 2574
    .local v78, "iw3":I
    add-int v79, v78, p1

    .line 2576
    .local v79, "iw4":I
    mul-int v56, p2, p1

    .line 2577
    .local v56, "idx0":I
    const/16 v80, 0x0

    .local v80, "k":I
    :goto_20
    move/from16 v0, v80

    move/from16 v1, p2

    if-ge v0, v1, :cond_ca

    .line 2578
    mul-int v57, v80, p1

    .line 2579
    .local v57, "idx1":I
    mul-int/lit8 v63, v57, 0x5

    .line 2580
    .local v63, "idx2":I
    add-int v64, v63, p1

    .line 2581
    .local v64, "idx3":I
    add-int v65, v64, p1

    .line 2582
    .local v65, "idx4":I
    add-int v66, v65, p1

    .line 2583
    .local v66, "idx5":I
    add-int v67, v66, p1

    .line 2584
    .local v67, "idx6":I
    add-int v68, v57, v56

    .line 2585
    .local v68, "idx7":I
    add-int v69, v68, v56

    .line 2586
    .local v69, "idx8":I
    add-int v70, v69, v56

    .line 2587
    .local v70, "idx9":I
    add-int v58, v70, v56

    .line 2588
    .local v58, "idx10":I
    add-int v130, p4, p1

    add-int/lit8 v59, v130, -0x1

    .line 2590
    .local v59, "idx11":I
    add-int v130, p4, v63

    aget-wide v38, p3, v130

    .line 2592
    .local v38, "i1r":D
    add-int v130, p4, v65

    aget-wide v130, p3, v130

    const-wide/high16 v132, 0x4000000000000000L    # 2.0

    mul-double v96, v132, v130

    .line 2593
    .local v96, "ti5":D
    add-int v130, p4, v67

    aget-wide v130, p3, v130

    const-wide/high16 v132, 0x4000000000000000L    # 2.0

    mul-double v94, v132, v130

    .line 2594
    .local v94, "ti4":D
    add-int v130, v59, v64

    aget-wide v130, p3, v130

    const-wide/high16 v132, 0x4000000000000000L    # 2.0

    mul-double v102, v132, v130

    .line 2595
    .local v102, "tr2":D
    add-int v130, v59, v66

    aget-wide v130, p3, v130

    const-wide/high16 v132, 0x4000000000000000L    # 2.0

    mul-double v104, v132, v130

    .line 2596
    .local v104, "tr3":D
    const-wide v130, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v130, v130, v102

    add-double v130, v130, v38

    const-wide v132, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v132, v132, v104

    add-double v10, v130, v132

    .line 2597
    .local v10, "cr2":D
    const-wide v130, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v130, v130, v102

    add-double v130, v130, v38

    const-wide v132, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v132, v132, v104

    add-double v12, v130, v132

    .line 2598
    .local v12, "cr3":D
    const-wide v130, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v130, v130, v96

    const-wide v132, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v132, v132, v94

    add-double v8, v130, v132

    .line 2599
    .local v8, "ci5":D
    const-wide v130, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v130, v130, v96

    const-wide v132, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v132, v132, v94

    sub-double v6, v130, v132

    .line 2601
    .local v6, "ci4":D
    add-int v130, p6, v57

    add-double v132, v38, v102

    add-double v132, v132, v104

    aput-wide v132, p5, v130

    .line 2602
    add-int v130, p6, v68

    sub-double v132, v10, v8

    aput-wide v132, p5, v130

    .line 2603
    add-int v130, p6, v69

    sub-double v132, v12, v6

    aput-wide v132, p5, v130

    .line 2604
    add-int v130, p6, v70

    add-double v132, v12, v6

    aput-wide v132, p5, v130

    .line 2605
    add-int v130, p6, v58

    add-double v132, v10, v8

    aput-wide v132, p5, v130

    .line 2577
    add-int/lit8 v80, v80, 0x1

    goto/16 :goto_20

    .line 2607
    .end local v6    # "ci4":D
    .end local v8    # "ci5":D
    .end local v10    # "cr2":D
    .end local v12    # "cr3":D
    .end local v38    # "i1r":D
    .end local v57    # "idx1":I
    .end local v58    # "idx10":I
    .end local v59    # "idx11":I
    .end local v63    # "idx2":I
    .end local v64    # "idx3":I
    .end local v65    # "idx4":I
    .end local v66    # "idx5":I
    .end local v67    # "idx6":I
    .end local v68    # "idx7":I
    .end local v69    # "idx8":I
    .end local v70    # "idx9":I
    .end local v94    # "ti4":D
    .end local v96    # "ti5":D
    .end local v102    # "tr2":D
    .end local v104    # "tr3":D
    :cond_ca
    const/16 v130, 0x1

    move/from16 v0, p1

    move/from16 v1, v130

    if-ne v0, v1, :cond_d3

    .line 2608
    return-void

    .line 2609
    :cond_d3
    const/16 v80, 0x0

    :goto_d5
    move/from16 v0, v80

    move/from16 v1, p2

    if-ge v0, v1, :cond_28f

    .line 2610
    mul-int v57, v80, p1

    .line 2611
    .restart local v57    # "idx1":I
    mul-int/lit8 v63, v57, 0x5

    .line 2612
    .restart local v63    # "idx2":I
    add-int v64, v63, p1

    .line 2613
    .restart local v64    # "idx3":I
    add-int v65, v64, p1

    .line 2614
    .restart local v65    # "idx4":I
    add-int v66, v65, p1

    .line 2615
    .restart local v66    # "idx5":I
    add-int v67, v66, p1

    .line 2616
    .restart local v67    # "idx6":I
    add-int v68, v57, v56

    .line 2617
    .restart local v68    # "idx7":I
    add-int v69, v68, v56

    .line 2618
    .restart local v69    # "idx8":I
    add-int v70, v69, v56

    .line 2619
    .restart local v70    # "idx9":I
    add-int v58, v70, v56

    .line 2620
    .restart local v58    # "idx10":I
    const/16 v34, 0x2

    .local v34, "i":I
    :goto_f1
    move/from16 v0, v34

    move/from16 v1, p1

    if-ge v0, v1, :cond_28b

    .line 2621
    sub-int v35, p1, v34

    .line 2622
    .local v35, "ic":I
    add-int/lit8 v130, v34, -0x1

    add-int v126, v130, p7

    .line 2623
    .local v126, "widx1":I
    add-int/lit8 v130, v34, -0x1

    add-int v127, v130, v77

    .line 2624
    .local v127, "widx2":I
    add-int/lit8 v130, v34, -0x1

    add-int v128, v130, v78

    .line 2625
    .local v128, "widx3":I
    add-int/lit8 v130, v34, -0x1

    add-int v129, v130, v79

    .line 2626
    .local v129, "widx4":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v130, v0

    add-int/lit8 v131, v126, -0x1

    aget-wide v112, v130, v131

    .line 2627
    .local v112, "w1r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v130, v0

    aget-wide v110, v130, v126

    .line 2628
    .local v110, "w1i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v130, v0

    add-int/lit8 v131, v127, -0x1

    aget-wide v116, v130, v131

    .line 2629
    .local v116, "w2r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v130, v0

    aget-wide v114, v130, v127

    .line 2630
    .local v114, "w2i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v130, v0

    add-int/lit8 v131, v128, -0x1

    aget-wide v120, v130, v131

    .line 2631
    .local v120, "w3r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v130, v0

    aget-wide v118, v130, v128

    .line 2632
    .local v118, "w3i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v130, v0

    add-int/lit8 v131, v129, -0x1

    aget-wide v124, v130, v131

    .line 2633
    .local v124, "w4r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v130, v0

    aget-wide v122, v130, v129

    .line 2635
    .local v122, "w4i":D
    add-int v60, p4, v34

    .line 2636
    .local v60, "idx15":I
    add-int v61, p4, v35

    .line 2637
    .local v61, "idx16":I
    add-int v62, p6, v34

    .line 2639
    .local v62, "idx17":I
    add-int v71, v60, v63

    .line 2640
    .local v71, "iidx1":I
    add-int v72, v61, v64

    .line 2641
    .local v72, "iidx2":I
    add-int v73, v60, v65

    .line 2642
    .local v73, "iidx3":I
    add-int v74, v61, v66

    .line 2643
    .local v74, "iidx4":I
    add-int v75, v60, v67

    .line 2645
    .local v75, "iidx5":I
    add-int/lit8 v130, v71, -0x1

    aget-wide v36, p3, v130

    .line 2646
    .local v36, "i1i":D
    aget-wide v38, p3, v71

    .line 2647
    .restart local v38    # "i1r":D
    add-int/lit8 v130, v72, -0x1

    aget-wide v40, p3, v130

    .line 2648
    .local v40, "i2i":D
    aget-wide v42, p3, v72

    .line 2649
    .local v42, "i2r":D
    add-int/lit8 v130, v73, -0x1

    aget-wide v44, p3, v130

    .line 2650
    .local v44, "i3i":D
    aget-wide v46, p3, v73

    .line 2651
    .local v46, "i3r":D
    add-int/lit8 v130, v74, -0x1

    aget-wide v48, p3, v130

    .line 2652
    .local v48, "i4i":D
    aget-wide v50, p3, v74

    .line 2653
    .local v50, "i4r":D
    add-int/lit8 v130, v75, -0x1

    aget-wide v52, p3, v130

    .line 2654
    .local v52, "i5i":D
    aget-wide v54, p3, v75

    .line 2656
    .local v54, "i5r":D
    add-double v96, v46, v42

    .line 2657
    .restart local v96    # "ti5":D
    sub-double v90, v46, v42

    .line 2658
    .local v90, "ti2":D
    add-double v94, v54, v50

    .line 2659
    .restart local v94    # "ti4":D
    sub-double v92, v54, v50

    .line 2660
    .local v92, "ti3":D
    sub-double v108, v44, v40

    .line 2661
    .local v108, "tr5":D
    add-double v102, v44, v40

    .line 2662
    .restart local v102    # "tr2":D
    sub-double v106, v52, v48

    .line 2663
    .local v106, "tr4":D
    add-double v104, v52, v48

    .line 2665
    .restart local v104    # "tr3":D
    const-wide v130, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v130, v130, v102

    add-double v130, v130, v36

    const-wide v132, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v132, v132, v104

    add-double v10, v130, v132

    .line 2666
    .restart local v10    # "cr2":D
    const-wide v130, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v130, v130, v90

    add-double v130, v130, v38

    const-wide v132, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v132, v132, v92

    add-double v2, v130, v132

    .line 2667
    .local v2, "ci2":D
    const-wide v130, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v130, v130, v102

    add-double v130, v130, v36

    const-wide v132, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v132, v132, v104

    add-double v12, v130, v132

    .line 2668
    .restart local v12    # "cr3":D
    const-wide v130, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v130, v130, v90

    add-double v130, v130, v38

    const-wide v132, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v132, v132, v92

    add-double v4, v130, v132

    .line 2669
    .local v4, "ci3":D
    const-wide v130, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v130, v130, v108

    const-wide v132, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v132, v132, v106

    add-double v16, v130, v132

    .line 2670
    .local v16, "cr5":D
    const-wide v130, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v130, v130, v96

    const-wide v132, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v132, v132, v94

    add-double v8, v130, v132

    .line 2671
    .restart local v8    # "ci5":D
    const-wide v130, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v130, v130, v108

    const-wide v132, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v132, v132, v106

    sub-double v14, v130, v132

    .line 2672
    .local v14, "cr4":D
    const-wide v130, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v130, v130, v96

    const-wide v132, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v132, v132, v94

    sub-double v6, v130, v132

    .line 2673
    .restart local v6    # "ci4":D
    sub-double v28, v12, v6

    .line 2674
    .local v28, "dr3":D
    add-double v30, v12, v6

    .line 2675
    .local v30, "dr4":D
    add-double v20, v4, v14

    .line 2676
    .local v20, "di3":D
    sub-double v22, v4, v14

    .line 2677
    .local v22, "di4":D
    add-double v32, v10, v8

    .line 2678
    .local v32, "dr5":D
    sub-double v26, v10, v8

    .line 2679
    .local v26, "dr2":D
    sub-double v24, v2, v16

    .line 2680
    .local v24, "di5":D
    add-double v18, v2, v16

    .line 2682
    .local v18, "di2":D
    add-int v81, v62, v57

    .line 2683
    .local v81, "oidx1":I
    add-int v82, v62, v68

    .line 2684
    .local v82, "oidx2":I
    add-int v83, v62, v69

    .line 2685
    .local v83, "oidx3":I
    add-int v84, v62, v70

    .line 2686
    .local v84, "oidx4":I
    add-int v85, v62, v58

    .line 2688
    .local v85, "oidx5":I
    add-int/lit8 v130, v81, -0x1

    add-double v132, v36, v102

    add-double v132, v132, v104

    aput-wide v132, p5, v130

    .line 2689
    add-double v130, v38, v90

    add-double v130, v130, v92

    aput-wide v130, p5, v81

    .line 2690
    add-int/lit8 v130, v82, -0x1

    mul-double v132, v112, v26

    mul-double v134, v110, v18

    sub-double v132, v132, v134

    aput-wide v132, p5, v130

    .line 2691
    mul-double v130, v112, v18

    mul-double v132, v110, v26

    add-double v130, v130, v132

    aput-wide v130, p5, v82

    .line 2692
    add-int/lit8 v130, v83, -0x1

    mul-double v132, v116, v28

    mul-double v134, v114, v20

    sub-double v132, v132, v134

    aput-wide v132, p5, v130

    .line 2693
    mul-double v130, v116, v20

    mul-double v132, v114, v28

    add-double v130, v130, v132

    aput-wide v130, p5, v83

    .line 2694
    add-int/lit8 v130, v84, -0x1

    mul-double v132, v120, v30

    mul-double v134, v118, v22

    sub-double v132, v132, v134

    aput-wide v132, p5, v130

    .line 2695
    mul-double v130, v120, v22

    mul-double v132, v118, v30

    add-double v130, v130, v132

    aput-wide v130, p5, v84

    .line 2696
    add-int/lit8 v130, v85, -0x1

    mul-double v132, v124, v32

    mul-double v134, v122, v24

    sub-double v132, v132, v134

    aput-wide v132, p5, v130

    .line 2697
    mul-double v130, v124, v24

    mul-double v132, v122, v32

    add-double v130, v130, v132

    aput-wide v130, p5, v85

    .line 2620
    add-int/lit8 v34, v34, 0x2

    goto/16 :goto_f1

    .line 2609
    .end local v2    # "ci2":D
    .end local v4    # "ci3":D
    .end local v6    # "ci4":D
    .end local v8    # "ci5":D
    .end local v10    # "cr2":D
    .end local v12    # "cr3":D
    .end local v14    # "cr4":D
    .end local v16    # "cr5":D
    .end local v18    # "di2":D
    .end local v20    # "di3":D
    .end local v22    # "di4":D
    .end local v24    # "di5":D
    .end local v26    # "dr2":D
    .end local v28    # "dr3":D
    .end local v30    # "dr4":D
    .end local v32    # "dr5":D
    .end local v35    # "ic":I
    .end local v36    # "i1i":D
    .end local v38    # "i1r":D
    .end local v40    # "i2i":D
    .end local v42    # "i2r":D
    .end local v44    # "i3i":D
    .end local v46    # "i3r":D
    .end local v48    # "i4i":D
    .end local v50    # "i4r":D
    .end local v52    # "i5i":D
    .end local v54    # "i5r":D
    .end local v60    # "idx15":I
    .end local v61    # "idx16":I
    .end local v62    # "idx17":I
    .end local v71    # "iidx1":I
    .end local v72    # "iidx2":I
    .end local v73    # "iidx3":I
    .end local v74    # "iidx4":I
    .end local v75    # "iidx5":I
    .end local v81    # "oidx1":I
    .end local v82    # "oidx2":I
    .end local v83    # "oidx3":I
    .end local v84    # "oidx4":I
    .end local v85    # "oidx5":I
    .end local v90    # "ti2":D
    .end local v92    # "ti3":D
    .end local v94    # "ti4":D
    .end local v96    # "ti5":D
    .end local v102    # "tr2":D
    .end local v104    # "tr3":D
    .end local v106    # "tr4":D
    .end local v108    # "tr5":D
    .end local v110    # "w1i":D
    .end local v112    # "w1r":D
    .end local v114    # "w2i":D
    .end local v116    # "w2r":D
    .end local v118    # "w3i":D
    .end local v120    # "w3r":D
    .end local v122    # "w4i":D
    .end local v124    # "w4r":D
    .end local v126    # "widx1":I
    .end local v127    # "widx2":I
    .end local v128    # "widx3":I
    .end local v129    # "widx4":I
    :cond_28b
    add-int/lit8 v80, v80, 0x1

    goto/16 :goto_d5

    .line 2700
    .end local v34    # "i":I
    .end local v57    # "idx1":I
    .end local v58    # "idx10":I
    .end local v63    # "idx2":I
    .end local v64    # "idx3":I
    .end local v65    # "idx4":I
    .end local v66    # "idx5":I
    .end local v67    # "idx6":I
    .end local v68    # "idx7":I
    .end local v69    # "idx8":I
    .end local v70    # "idx9":I
    :cond_28f
    return-void
.end method

.method radbg(IIII[DI[DII)V
    .registers 98
    .param p1, "ido"    # I
    .param p2, "ip"    # I
    .param p3, "l1"    # I
    .param p4, "idl1"    # I
    .param p5, "in"    # [D
    .param p6, "in_off"    # I
    .param p7, "out"    # [D
    .param p8, "out_off"    # I
    .param p9, "offset"    # I

    .prologue
    .line 2999
    move/from16 v64, p9

    .line 3001
    .local v64, "iw1":I
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v82, v0

    const-wide v84, 0x401921fb54442d18L    # 6.283185307179586

    div-double v26, v84, v82

    .line 3002
    .local v26, "arg":D
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    .line 3003
    .local v30, "dcp":D
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    .line 3004
    .local v34, "dsp":D
    add-int/lit8 v82, p1, -0x1

    div-int/lit8 v71, v82, 0x2

    .line 3005
    .local v71, "nbd":I
    add-int/lit8 v82, p2, 0x1

    div-int/lit8 v62, v82, 0x2

    .line 3006
    .local v62, "ipph":I
    mul-int v47, p2, p1

    .line 3007
    .local v47, "idx0":I
    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_4c

    .line 3008
    const/16 v68, 0x0

    .local v68, "k":I
    :goto_28
    move/from16 v0, v68

    move/from16 v1, p3

    if-ge v0, v1, :cond_72

    .line 3009
    mul-int v49, v68, p1

    .line 3010
    .local v49, "idx1":I
    mul-int v50, v68, v47

    .line 3011
    .local v50, "idx2":I
    const/16 v36, 0x0

    .local v36, "i":I
    :goto_34
    move/from16 v0, v36

    move/from16 v1, p1

    if-ge v0, v1, :cond_49

    .line 3012
    add-int v82, p8, v36

    add-int v82, v82, v49

    add-int v83, p6, v36

    add-int v83, v83, v50

    aget-wide v84, p5, v83

    aput-wide v84, p7, v82

    .line 3011
    add-int/lit8 v36, v36, 0x1

    goto :goto_34

    .line 3008
    :cond_49
    add-int/lit8 v68, v68, 0x1

    goto :goto_28

    .line 3016
    .end local v36    # "i":I
    .end local v49    # "idx1":I
    .end local v50    # "idx2":I
    .end local v68    # "k":I
    :cond_4c
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_4e
    move/from16 v0, v36

    move/from16 v1, p1

    if-ge v0, v1, :cond_72

    .line 3017
    add-int v49, p8, v36

    .line 3018
    .restart local v49    # "idx1":I
    add-int v50, p6, v36

    .line 3019
    .restart local v50    # "idx2":I
    const/16 v68, 0x0

    .restart local v68    # "k":I
    :goto_5a
    move/from16 v0, v68

    move/from16 v1, p3

    if-ge v0, v1, :cond_6f

    .line 3020
    mul-int v82, v68, p1

    add-int v82, v82, v49

    mul-int v83, v68, v47

    add-int v83, v83, v50

    aget-wide v84, p5, v83

    aput-wide v84, p7, v82

    .line 3019
    add-int/lit8 v68, v68, 0x1

    goto :goto_5a

    .line 3016
    :cond_6f
    add-int/lit8 v36, v36, 0x1

    goto :goto_4e

    .line 3024
    .end local v36    # "i":I
    .end local v49    # "idx1":I
    .end local v50    # "idx2":I
    .end local v68    # "k":I
    :cond_72
    add-int v82, p6, p1

    add-int/lit8 v58, v82, -0x1

    .line 3025
    .local v58, "iidx0":I
    const/16 v65, 0x1

    .local v65, "j":I
    :goto_78
    move/from16 v0, v65

    move/from16 v1, v62

    if-ge v0, v1, :cond_bc

    .line 3026
    sub-int v67, p2, v65

    .line 3027
    .local v67, "jc":I
    mul-int/lit8 v66, v65, 0x2

    .line 3028
    .local v66, "j2":I
    mul-int v82, v65, p3

    mul-int v49, v82, p1

    .line 3029
    .restart local v49    # "idx1":I
    mul-int v82, v67, p3

    mul-int v50, v82, p1

    .line 3030
    .restart local v50    # "idx2":I
    mul-int v51, v66, p1

    .line 3031
    .local v51, "idx3":I
    const/16 v68, 0x0

    .restart local v68    # "k":I
    :goto_8e
    move/from16 v0, v68

    move/from16 v1, p3

    if-ge v0, v1, :cond_b9

    .line 3032
    mul-int v52, v68, p1

    .line 3033
    .local v52, "idx4":I
    mul-int v53, v52, p2

    .line 3034
    .local v53, "idx5":I
    add-int v82, v58, v51

    add-int v82, v82, v53

    sub-int v59, v82, p1

    .line 3035
    .local v59, "iidx1":I
    add-int v82, p6, v51

    add-int v60, v82, v53

    .line 3036
    .local v60, "iidx2":I
    aget-wide v40, p5, v59

    .line 3037
    .local v40, "i1r":D
    aget-wide v44, p5, v60

    .line 3039
    .local v44, "i2r":D
    add-int v82, p8, v52

    add-int v82, v82, v49

    add-double v84, v40, v40

    aput-wide v84, p7, v82

    .line 3040
    add-int v82, p8, v52

    add-int v82, v82, v50

    add-double v84, v44, v44

    aput-wide v84, p7, v82

    .line 3031
    add-int/lit8 v68, v68, 0x1

    goto :goto_8e

    .line 3025
    .end local v40    # "i1r":D
    .end local v44    # "i2r":D
    .end local v52    # "idx4":I
    .end local v53    # "idx5":I
    .end local v59    # "iidx1":I
    .end local v60    # "iidx2":I
    :cond_b9
    add-int/lit8 v65, v65, 0x1

    goto :goto_78

    .line 3044
    .end local v49    # "idx1":I
    .end local v50    # "idx2":I
    .end local v51    # "idx3":I
    .end local v66    # "j2":I
    .end local v67    # "jc":I
    .end local v68    # "k":I
    :cond_bc
    const/16 v82, 0x1

    move/from16 v0, p1

    move/from16 v1, v82

    if-eq v0, v1, :cond_1a8

    .line 3045
    move/from16 v0, v71

    move/from16 v1, p3

    if-lt v0, v1, :cond_139

    .line 3046
    const/16 v65, 0x1

    :goto_cc
    move/from16 v0, v65

    move/from16 v1, v62

    if-ge v0, v1, :cond_1a8

    .line 3047
    sub-int v67, p2, v65

    .line 3048
    .restart local v67    # "jc":I
    mul-int v82, v65, p3

    mul-int v49, v82, p1

    .line 3049
    .restart local v49    # "idx1":I
    mul-int v82, v67, p3

    mul-int v50, v82, p1

    .line 3050
    .restart local v50    # "idx2":I
    mul-int/lit8 v82, v65, 0x2

    mul-int v51, v82, p1

    .line 3051
    .restart local v51    # "idx3":I
    const/16 v68, 0x0

    .restart local v68    # "k":I
    :goto_e2
    move/from16 v0, v68

    move/from16 v1, p3

    if-ge v0, v1, :cond_136

    .line 3052
    mul-int v82, v68, p1

    add-int v52, v82, v49

    .line 3053
    .restart local v52    # "idx4":I
    mul-int v82, v68, p1

    add-int v53, v82, v50

    .line 3054
    .restart local v53    # "idx5":I
    mul-int v82, v68, p2

    mul-int v82, v82, p1

    add-int v54, v82, v51

    .line 3055
    .local v54, "idx6":I
    const/16 v36, 0x2

    .restart local v36    # "i":I
    :goto_f8
    move/from16 v0, v36

    move/from16 v1, p1

    if-ge v0, v1, :cond_133

    .line 3056
    sub-int v37, p1, v36

    .line 3057
    .local v37, "ic":I
    add-int v55, p8, v36

    .line 3058
    .local v55, "idx7":I
    add-int v56, p6, v37

    .line 3059
    .local v56, "idx8":I
    add-int v57, p6, v36

    .line 3060
    .local v57, "idx9":I
    add-int v76, v55, v52

    .line 3061
    .local v76, "oidx1":I
    add-int v77, v55, v53

    .line 3062
    .local v77, "oidx2":I
    add-int v59, v57, v54

    .line 3063
    .restart local v59    # "iidx1":I
    add-int v82, v56, v54

    sub-int v60, v82, p1

    .line 3064
    .restart local v60    # "iidx2":I
    add-int/lit8 v82, v59, -0x1

    aget-wide v6, p5, v82

    .line 3065
    .local v6, "a1i":D
    aget-wide v8, p5, v59

    .line 3066
    .local v8, "a1r":D
    add-int/lit8 v82, v60, -0x1

    aget-wide v10, p5, v82

    .line 3067
    .local v10, "a2i":D
    aget-wide v12, p5, v60

    .line 3069
    .local v12, "a2r":D
    add-int/lit8 v82, v76, -0x1

    add-double v84, v6, v10

    aput-wide v84, p7, v82

    .line 3070
    add-int/lit8 v82, v77, -0x1

    sub-double v84, v6, v10

    aput-wide v84, p7, v82

    .line 3071
    sub-double v82, v8, v12

    aput-wide v82, p7, v76

    .line 3072
    add-double v82, v8, v12

    aput-wide v82, p7, v77

    .line 3055
    add-int/lit8 v36, v36, 0x2

    goto :goto_f8

    .line 3051
    .end local v6    # "a1i":D
    .end local v8    # "a1r":D
    .end local v10    # "a2i":D
    .end local v12    # "a2r":D
    .end local v37    # "ic":I
    .end local v55    # "idx7":I
    .end local v56    # "idx8":I
    .end local v57    # "idx9":I
    .end local v59    # "iidx1":I
    .end local v60    # "iidx2":I
    .end local v76    # "oidx1":I
    .end local v77    # "oidx2":I
    :cond_133
    add-int/lit8 v68, v68, 0x1

    goto :goto_e2

    .line 3046
    .end local v36    # "i":I
    .end local v52    # "idx4":I
    .end local v53    # "idx5":I
    .end local v54    # "idx6":I
    :cond_136
    add-int/lit8 v65, v65, 0x1

    goto :goto_cc

    .line 3077
    .end local v49    # "idx1":I
    .end local v50    # "idx2":I
    .end local v51    # "idx3":I
    .end local v67    # "jc":I
    .end local v68    # "k":I
    :cond_139
    const/16 v65, 0x1

    :goto_13b
    move/from16 v0, v65

    move/from16 v1, v62

    if-ge v0, v1, :cond_1a8

    .line 3078
    sub-int v67, p2, v65

    .line 3079
    .restart local v67    # "jc":I
    mul-int v82, v65, p3

    mul-int v49, v82, p1

    .line 3080
    .restart local v49    # "idx1":I
    mul-int v82, v67, p3

    mul-int v50, v82, p1

    .line 3081
    .restart local v50    # "idx2":I
    mul-int/lit8 v82, v65, 0x2

    mul-int v51, v82, p1

    .line 3082
    .restart local v51    # "idx3":I
    const/16 v36, 0x2

    .restart local v36    # "i":I
    :goto_151
    move/from16 v0, v36

    move/from16 v1, p1

    if-ge v0, v1, :cond_1a5

    .line 3083
    sub-int v37, p1, v36

    .line 3084
    .restart local v37    # "ic":I
    add-int v55, p8, v36

    .line 3085
    .restart local v55    # "idx7":I
    add-int v56, p6, v37

    .line 3086
    .restart local v56    # "idx8":I
    add-int v57, p6, v36

    .line 3087
    .restart local v57    # "idx9":I
    const/16 v68, 0x0

    .restart local v68    # "k":I
    :goto_161
    move/from16 v0, v68

    move/from16 v1, p3

    if-ge v0, v1, :cond_1a2

    .line 3088
    mul-int v82, v68, p1

    add-int v52, v82, v49

    .line 3089
    .restart local v52    # "idx4":I
    mul-int v82, v68, p1

    add-int v53, v82, v50

    .line 3090
    .restart local v53    # "idx5":I
    mul-int v82, v68, p2

    mul-int v82, v82, p1

    add-int v54, v82, v51

    .line 3091
    .restart local v54    # "idx6":I
    add-int v76, v55, v52

    .line 3092
    .restart local v76    # "oidx1":I
    add-int v77, v55, v53

    .line 3093
    .restart local v77    # "oidx2":I
    add-int v59, v57, v54

    .line 3094
    .restart local v59    # "iidx1":I
    add-int v82, v56, v54

    sub-int v60, v82, p1

    .line 3095
    .restart local v60    # "iidx2":I
    add-int/lit8 v82, v59, -0x1

    aget-wide v6, p5, v82

    .line 3096
    .restart local v6    # "a1i":D
    aget-wide v8, p5, v59

    .line 3097
    .restart local v8    # "a1r":D
    add-int/lit8 v82, v60, -0x1

    aget-wide v10, p5, v82

    .line 3098
    .restart local v10    # "a2i":D
    aget-wide v12, p5, v60

    .line 3100
    .restart local v12    # "a2r":D
    add-int/lit8 v82, v76, -0x1

    add-double v84, v6, v10

    aput-wide v84, p7, v82

    .line 3101
    add-int/lit8 v82, v77, -0x1

    sub-double v84, v6, v10

    aput-wide v84, p7, v82

    .line 3102
    sub-double v82, v8, v12

    aput-wide v82, p7, v76

    .line 3103
    add-double v82, v8, v12

    aput-wide v82, p7, v77

    .line 3087
    add-int/lit8 v68, v68, 0x1

    goto :goto_161

    .line 3082
    .end local v6    # "a1i":D
    .end local v8    # "a1r":D
    .end local v10    # "a2i":D
    .end local v12    # "a2r":D
    .end local v52    # "idx4":I
    .end local v53    # "idx5":I
    .end local v54    # "idx6":I
    .end local v59    # "iidx1":I
    .end local v60    # "iidx2":I
    .end local v76    # "oidx1":I
    .end local v77    # "oidx2":I
    :cond_1a2
    add-int/lit8 v36, v36, 0x2

    goto :goto_151

    .line 3077
    .end local v37    # "ic":I
    .end local v55    # "idx7":I
    .end local v56    # "idx8":I
    .end local v57    # "idx9":I
    .end local v68    # "k":I
    :cond_1a5
    add-int/lit8 v65, v65, 0x1

    goto :goto_13b

    .line 3110
    .end local v36    # "i":I
    .end local v49    # "idx1":I
    .end local v50    # "idx2":I
    .end local v51    # "idx3":I
    .end local v67    # "jc":I
    :cond_1a8
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 3111
    .local v18, "ar1":D
    const-wide/16 v14, 0x0

    .line 3112
    .local v14, "ai1":D
    add-int/lit8 v82, p2, -0x1

    mul-int v48, v82, p4

    .line 3113
    .local v48, "idx01":I
    const/16 v69, 0x1

    .local v69, "l":I
    :goto_1b2
    move/from16 v0, v69

    move/from16 v1, v62

    if-ge v0, v1, :cond_249

    .line 3114
    sub-int v70, p2, v69

    .line 3115
    .local v70, "lc":I
    mul-double v82, v30, v18

    mul-double v84, v34, v14

    sub-double v20, v82, v84

    .line 3116
    .local v20, "ar1h":D
    mul-double v82, v30, v14

    mul-double v84, v34, v18

    add-double v14, v82, v84

    .line 3117
    move-wide/from16 v18, v20

    .line 3118
    mul-int v49, v69, p4

    .line 3119
    .restart local v49    # "idx1":I
    mul-int v50, v70, p4

    .line 3120
    .restart local v50    # "idx2":I
    const/16 v61, 0x0

    .local v61, "ik":I
    :goto_1ce
    move/from16 v0, v61

    move/from16 v1, p4

    if-ge v0, v1, :cond_1f3

    .line 3121
    add-int v51, p6, v61

    .line 3122
    .restart local v51    # "idx3":I
    add-int v52, p8, v61

    .line 3123
    .restart local v52    # "idx4":I
    add-int v82, v51, v49

    aget-wide v84, p7, v52

    add-int v83, v52, p4

    aget-wide v86, p7, v83

    mul-double v86, v86, v20

    add-double v84, v84, v86

    aput-wide v84, p5, v82

    .line 3124
    add-int v82, v51, v50

    add-int v83, v52, v48

    aget-wide v84, p7, v83

    mul-double v84, v84, v14

    aput-wide v84, p5, v82

    .line 3120
    add-int/lit8 v61, v61, 0x1

    goto :goto_1ce

    .line 3126
    .end local v51    # "idx3":I
    .end local v52    # "idx4":I
    :cond_1f3
    move-wide/from16 v28, v20

    .line 3127
    .local v28, "dc2":D
    move-wide/from16 v32, v14

    .line 3128
    .local v32, "ds2":D
    move-wide/from16 v22, v20

    .line 3129
    .local v22, "ar2":D
    move-wide/from16 v16, v14

    .line 3130
    .local v16, "ai2":D
    const/16 v65, 0x2

    :goto_1fd
    move/from16 v0, v65

    move/from16 v1, v62

    if-ge v0, v1, :cond_245

    .line 3131
    sub-int v67, p2, v65

    .line 3132
    .restart local v67    # "jc":I
    mul-double v82, v20, v22

    mul-double v84, v14, v16

    sub-double v24, v82, v84

    .line 3133
    .local v24, "ar2h":D
    mul-double v82, v20, v16

    mul-double v84, v14, v22

    add-double v16, v82, v84

    .line 3134
    move-wide/from16 v22, v24

    .line 3135
    mul-int v53, v65, p4

    .line 3136
    .restart local v53    # "idx5":I
    mul-int v54, v67, p4

    .line 3137
    .restart local v54    # "idx6":I
    const/16 v61, 0x0

    :goto_219
    move/from16 v0, v61

    move/from16 v1, p4

    if-ge v0, v1, :cond_242

    .line 3138
    add-int v55, p6, v61

    .line 3139
    .restart local v55    # "idx7":I
    add-int v56, p8, v61

    .line 3140
    .restart local v56    # "idx8":I
    add-int v82, v55, v49

    aget-wide v84, p5, v82

    add-int v83, v56, v53

    aget-wide v86, p7, v83

    mul-double v86, v86, v24

    add-double v84, v84, v86

    aput-wide v84, p5, v82

    .line 3141
    add-int v82, v55, v50

    aget-wide v84, p5, v82

    add-int v83, v56, v54

    aget-wide v86, p7, v83

    mul-double v86, v86, v16

    add-double v84, v84, v86

    aput-wide v84, p5, v82

    .line 3137
    add-int/lit8 v61, v61, 0x1

    goto :goto_219

    .line 3130
    .end local v55    # "idx7":I
    .end local v56    # "idx8":I
    :cond_242
    add-int/lit8 v65, v65, 0x1

    goto :goto_1fd

    .line 3113
    .end local v24    # "ar2h":D
    .end local v53    # "idx5":I
    .end local v54    # "idx6":I
    .end local v67    # "jc":I
    :cond_245
    add-int/lit8 v69, v69, 0x1

    goto/16 :goto_1b2

    .line 3145
    .end local v16    # "ai2":D
    .end local v20    # "ar1h":D
    .end local v22    # "ar2":D
    .end local v28    # "dc2":D
    .end local v32    # "ds2":D
    .end local v49    # "idx1":I
    .end local v50    # "idx2":I
    .end local v61    # "ik":I
    .end local v70    # "lc":I
    :cond_249
    const/16 v65, 0x1

    :goto_24b
    move/from16 v0, v65

    move/from16 v1, v62

    if-ge v0, v1, :cond_26d

    .line 3146
    mul-int v49, v65, p4

    .line 3147
    .restart local v49    # "idx1":I
    const/16 v61, 0x0

    .restart local v61    # "ik":I
    :goto_255
    move/from16 v0, v61

    move/from16 v1, p4

    if-ge v0, v1, :cond_26a

    .line 3148
    add-int v50, p8, v61

    .line 3149
    .restart local v50    # "idx2":I
    aget-wide v82, p7, v50

    add-int v84, v50, v49

    aget-wide v84, p7, v84

    add-double v82, v82, v84

    aput-wide v82, p7, v50

    .line 3147
    add-int/lit8 v61, v61, 0x1

    goto :goto_255

    .line 3145
    .end local v50    # "idx2":I
    :cond_26a
    add-int/lit8 v65, v65, 0x1

    goto :goto_24b

    .line 3152
    .end local v49    # "idx1":I
    .end local v61    # "ik":I
    :cond_26d
    const/16 v65, 0x1

    :goto_26f
    move/from16 v0, v65

    move/from16 v1, v62

    if-ge v0, v1, :cond_2a9

    .line 3153
    sub-int v67, p2, v65

    .line 3154
    .restart local v67    # "jc":I
    mul-int v82, v65, p3

    mul-int v49, v82, p1

    .line 3155
    .restart local v49    # "idx1":I
    mul-int v82, v67, p3

    mul-int v50, v82, p1

    .line 3156
    .restart local v50    # "idx2":I
    const/16 v68, 0x0

    .restart local v68    # "k":I
    :goto_281
    move/from16 v0, v68

    move/from16 v1, p3

    if-ge v0, v1, :cond_2a6

    .line 3157
    mul-int v51, v68, p1

    .line 3158
    .restart local v51    # "idx3":I
    add-int v76, p8, v51

    .line 3159
    .restart local v76    # "oidx1":I
    add-int v82, p6, v51

    add-int v59, v82, v49

    .line 3160
    .restart local v59    # "iidx1":I
    add-int v82, p6, v51

    add-int v60, v82, v50

    .line 3161
    .restart local v60    # "iidx2":I
    aget-wide v40, p5, v59

    .line 3162
    .restart local v40    # "i1r":D
    aget-wide v44, p5, v60

    .line 3164
    .restart local v44    # "i2r":D
    add-int v82, v76, v49

    sub-double v84, v40, v44

    aput-wide v84, p7, v82

    .line 3165
    add-int v82, v76, v50

    add-double v84, v40, v44

    aput-wide v84, p7, v82

    .line 3156
    add-int/lit8 v68, v68, 0x1

    goto :goto_281

    .line 3152
    .end local v40    # "i1r":D
    .end local v44    # "i2r":D
    .end local v51    # "idx3":I
    .end local v59    # "iidx1":I
    .end local v60    # "iidx2":I
    .end local v76    # "oidx1":I
    :cond_2a6
    add-int/lit8 v65, v65, 0x1

    goto :goto_26f

    .line 3169
    .end local v49    # "idx1":I
    .end local v50    # "idx2":I
    .end local v67    # "jc":I
    .end local v68    # "k":I
    :cond_2a9
    const/16 v82, 0x1

    move/from16 v0, p1

    move/from16 v1, v82

    if-ne v0, v1, :cond_2b2

    .line 3170
    return-void

    .line 3171
    :cond_2b2
    move/from16 v0, v71

    move/from16 v1, p3

    if-lt v0, v1, :cond_319

    .line 3172
    const/16 v65, 0x1

    :goto_2ba
    move/from16 v0, v65

    move/from16 v1, v62

    if-ge v0, v1, :cond_37a

    .line 3173
    sub-int v67, p2, v65

    .line 3174
    .restart local v67    # "jc":I
    mul-int v82, v65, p3

    mul-int v49, v82, p1

    .line 3175
    .restart local v49    # "idx1":I
    mul-int v82, v67, p3

    mul-int v50, v82, p1

    .line 3176
    .restart local v50    # "idx2":I
    const/16 v68, 0x0

    .restart local v68    # "k":I
    :goto_2cc
    move/from16 v0, v68

    move/from16 v1, p3

    if-ge v0, v1, :cond_316

    .line 3177
    mul-int v51, v68, p1

    .line 3178
    .restart local v51    # "idx3":I
    const/16 v36, 0x2

    .restart local v36    # "i":I
    :goto_2d6
    move/from16 v0, v36

    move/from16 v1, p1

    if-ge v0, v1, :cond_313

    .line 3179
    add-int v52, p8, v36

    .line 3180
    .restart local v52    # "idx4":I
    add-int v53, p6, v36

    .line 3181
    .restart local v53    # "idx5":I
    add-int v82, v52, v51

    add-int v76, v82, v49

    .line 3182
    .restart local v76    # "oidx1":I
    add-int v82, v52, v51

    add-int v77, v82, v50

    .line 3183
    .restart local v77    # "oidx2":I
    add-int v82, v53, v51

    add-int v59, v82, v49

    .line 3184
    .restart local v59    # "iidx1":I
    add-int v82, v53, v51

    add-int v60, v82, v50

    .line 3185
    .restart local v60    # "iidx2":I
    add-int/lit8 v82, v59, -0x1

    aget-wide v38, p5, v82

    .line 3186
    .local v38, "i1i":D
    aget-wide v40, p5, v59

    .line 3187
    .restart local v40    # "i1r":D
    add-int/lit8 v82, v60, -0x1

    aget-wide v42, p5, v82

    .line 3188
    .local v42, "i2i":D
    aget-wide v44, p5, v60

    .line 3190
    .restart local v44    # "i2r":D
    add-int/lit8 v82, v76, -0x1

    sub-double v84, v38, v44

    aput-wide v84, p7, v82

    .line 3191
    add-int/lit8 v82, v77, -0x1

    add-double v84, v38, v44

    aput-wide v84, p7, v82

    .line 3192
    add-double v82, v40, v42

    aput-wide v82, p7, v76

    .line 3193
    sub-double v82, v40, v42

    aput-wide v82, p7, v77

    .line 3178
    add-int/lit8 v36, v36, 0x2

    goto :goto_2d6

    .line 3176
    .end local v38    # "i1i":D
    .end local v40    # "i1r":D
    .end local v42    # "i2i":D
    .end local v44    # "i2r":D
    .end local v52    # "idx4":I
    .end local v53    # "idx5":I
    .end local v59    # "iidx1":I
    .end local v60    # "iidx2":I
    .end local v76    # "oidx1":I
    .end local v77    # "oidx2":I
    :cond_313
    add-int/lit8 v68, v68, 0x1

    goto :goto_2cc

    .line 3172
    .end local v36    # "i":I
    .end local v51    # "idx3":I
    :cond_316
    add-int/lit8 v65, v65, 0x1

    goto :goto_2ba

    .line 3198
    .end local v49    # "idx1":I
    .end local v50    # "idx2":I
    .end local v67    # "jc":I
    .end local v68    # "k":I
    :cond_319
    const/16 v65, 0x1

    :goto_31b
    move/from16 v0, v65

    move/from16 v1, v62

    if-ge v0, v1, :cond_37a

    .line 3199
    sub-int v67, p2, v65

    .line 3200
    .restart local v67    # "jc":I
    mul-int v82, v65, p3

    mul-int v49, v82, p1

    .line 3201
    .restart local v49    # "idx1":I
    mul-int v82, v67, p3

    mul-int v50, v82, p1

    .line 3202
    .restart local v50    # "idx2":I
    const/16 v36, 0x2

    .restart local v36    # "i":I
    :goto_32d
    move/from16 v0, v36

    move/from16 v1, p1

    if-ge v0, v1, :cond_377

    .line 3203
    add-int v52, p8, v36

    .line 3204
    .restart local v52    # "idx4":I
    add-int v53, p6, v36

    .line 3205
    .restart local v53    # "idx5":I
    const/16 v68, 0x0

    .restart local v68    # "k":I
    :goto_339
    move/from16 v0, v68

    move/from16 v1, p3

    if-ge v0, v1, :cond_374

    .line 3206
    mul-int v51, v68, p1

    .line 3207
    .restart local v51    # "idx3":I
    add-int v82, v52, v51

    add-int v76, v82, v49

    .line 3208
    .restart local v76    # "oidx1":I
    add-int v82, v52, v51

    add-int v77, v82, v50

    .line 3209
    .restart local v77    # "oidx2":I
    add-int v82, v53, v51

    add-int v59, v82, v49

    .line 3210
    .restart local v59    # "iidx1":I
    add-int v82, v53, v51

    add-int v60, v82, v50

    .line 3211
    .restart local v60    # "iidx2":I
    add-int/lit8 v82, v59, -0x1

    aget-wide v38, p5, v82

    .line 3212
    .restart local v38    # "i1i":D
    aget-wide v40, p5, v59

    .line 3213
    .restart local v40    # "i1r":D
    add-int/lit8 v82, v60, -0x1

    aget-wide v42, p5, v82

    .line 3214
    .restart local v42    # "i2i":D
    aget-wide v44, p5, v60

    .line 3216
    .restart local v44    # "i2r":D
    add-int/lit8 v82, v76, -0x1

    sub-double v84, v38, v44

    aput-wide v84, p7, v82

    .line 3217
    add-int/lit8 v82, v77, -0x1

    add-double v84, v38, v44

    aput-wide v84, p7, v82

    .line 3218
    add-double v82, v40, v42

    aput-wide v82, p7, v76

    .line 3219
    sub-double v82, v40, v42

    aput-wide v82, p7, v77

    .line 3205
    add-int/lit8 v68, v68, 0x1

    goto :goto_339

    .line 3202
    .end local v38    # "i1i":D
    .end local v40    # "i1r":D
    .end local v42    # "i2i":D
    .end local v44    # "i2r":D
    .end local v51    # "idx3":I
    .end local v59    # "iidx1":I
    .end local v60    # "iidx2":I
    .end local v76    # "oidx1":I
    .end local v77    # "oidx2":I
    :cond_374
    add-int/lit8 v36, v36, 0x2

    goto :goto_32d

    .line 3198
    .end local v52    # "idx4":I
    .end local v53    # "idx5":I
    .end local v68    # "k":I
    :cond_377
    add-int/lit8 v65, v65, 0x1

    goto :goto_31b

    .line 3224
    .end local v36    # "i":I
    .end local v49    # "idx1":I
    .end local v50    # "idx2":I
    .end local v67    # "jc":I
    :cond_37a
    move-object/from16 v0, p7

    move/from16 v1, p8

    move-object/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 3225
    const/16 v65, 0x1

    :goto_389
    move/from16 v0, v65

    move/from16 v1, p2

    if-ge v0, v1, :cond_3ad

    .line 3226
    mul-int v82, v65, p3

    mul-int v49, v82, p1

    .line 3227
    .restart local v49    # "idx1":I
    const/16 v68, 0x0

    .restart local v68    # "k":I
    :goto_395
    move/from16 v0, v68

    move/from16 v1, p3

    if-ge v0, v1, :cond_3aa

    .line 3228
    mul-int v82, v68, p1

    add-int v50, v82, v49

    .line 3229
    .restart local v50    # "idx2":I
    add-int v82, p6, v50

    add-int v83, p8, v50

    aget-wide v84, p7, v83

    aput-wide v84, p5, v82

    .line 3227
    add-int/lit8 v68, v68, 0x1

    goto :goto_395

    .line 3225
    .end local v50    # "idx2":I
    :cond_3aa
    add-int/lit8 v65, v65, 0x1

    goto :goto_389

    .line 3232
    .end local v49    # "idx1":I
    .end local v68    # "k":I
    :cond_3ad
    move/from16 v0, v71

    move/from16 v1, p3

    if-gt v0, v1, :cond_41b

    .line 3233
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v63, v0

    .line 3234
    .local v63, "is":I
    const/16 v65, 0x1

    :goto_3ba
    move/from16 v0, v65

    move/from16 v1, p2

    if-ge v0, v1, :cond_483

    .line 3235
    add-int v63, v63, p1

    .line 3236
    add-int/lit8 v46, v63, -0x1

    .line 3237
    .local v46, "idij":I
    mul-int v82, v65, p3

    mul-int v49, v82, p1

    .line 3238
    .restart local v49    # "idx1":I
    const/16 v36, 0x2

    .restart local v36    # "i":I
    :goto_3ca
    move/from16 v0, v36

    move/from16 v1, p1

    if-ge v0, v1, :cond_418

    .line 3239
    add-int/lit8 v46, v46, 0x2

    .line 3240
    add-int v50, v46, p9

    .line 3241
    .restart local v50    # "idx2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v82, v0

    add-int/lit8 v83, v50, -0x1

    aget-wide v80, v82, v83

    .line 3242
    .local v80, "w1r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v82, v0

    aget-wide v78, v82, v50

    .line 3243
    .local v78, "w1i":D
    add-int v52, p6, v36

    .line 3244
    .restart local v52    # "idx4":I
    add-int v53, p8, v36

    .line 3245
    .restart local v53    # "idx5":I
    const/16 v68, 0x0

    .restart local v68    # "k":I
    :goto_3ec
    move/from16 v0, v68

    move/from16 v1, p3

    if-ge v0, v1, :cond_415

    .line 3246
    mul-int v82, v68, p1

    add-int v51, v82, v49

    .line 3247
    .restart local v51    # "idx3":I
    add-int v59, v52, v51

    .line 3248
    .restart local v59    # "iidx1":I
    add-int v76, v53, v51

    .line 3249
    .restart local v76    # "oidx1":I
    add-int/lit8 v82, v76, -0x1

    aget-wide v72, p7, v82

    .line 3250
    .local v72, "o1i":D
    aget-wide v74, p7, v76

    .line 3252
    .local v74, "o1r":D
    add-int/lit8 v82, v59, -0x1

    mul-double v84, v80, v72

    mul-double v86, v78, v74

    sub-double v84, v84, v86

    aput-wide v84, p5, v82

    .line 3253
    mul-double v82, v80, v74

    mul-double v84, v78, v72

    add-double v82, v82, v84

    aput-wide v82, p5, v59

    .line 3245
    add-int/lit8 v68, v68, 0x1

    goto :goto_3ec

    .line 3238
    .end local v51    # "idx3":I
    .end local v59    # "iidx1":I
    .end local v72    # "o1i":D
    .end local v74    # "o1r":D
    .end local v76    # "oidx1":I
    :cond_415
    add-int/lit8 v36, v36, 0x2

    goto :goto_3ca

    .line 3234
    .end local v50    # "idx2":I
    .end local v52    # "idx4":I
    .end local v53    # "idx5":I
    .end local v68    # "k":I
    .end local v78    # "w1i":D
    .end local v80    # "w1r":D
    :cond_418
    add-int/lit8 v65, v65, 0x1

    goto :goto_3ba

    .line 3258
    .end local v36    # "i":I
    .end local v46    # "idij":I
    .end local v49    # "idx1":I
    .end local v63    # "is":I
    :cond_41b
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v63, v0

    .line 3259
    .restart local v63    # "is":I
    const/16 v65, 0x1

    :goto_422
    move/from16 v0, v65

    move/from16 v1, p2

    if-ge v0, v1, :cond_483

    .line 3260
    add-int v63, v63, p1

    .line 3261
    mul-int v82, v65, p3

    mul-int v49, v82, p1

    .line 3262
    .restart local v49    # "idx1":I
    const/16 v68, 0x0

    .restart local v68    # "k":I
    :goto_430
    move/from16 v0, v68

    move/from16 v1, p3

    if-ge v0, v1, :cond_480

    .line 3263
    add-int/lit8 v46, v63, -0x1

    .line 3264
    .restart local v46    # "idij":I
    mul-int v82, v68, p1

    add-int v51, v82, v49

    .line 3265
    .restart local v51    # "idx3":I
    const/16 v36, 0x2

    .restart local v36    # "i":I
    :goto_43e
    move/from16 v0, v36

    move/from16 v1, p1

    if-ge v0, v1, :cond_47d

    .line 3266
    add-int/lit8 v46, v46, 0x2

    .line 3267
    add-int v50, v46, p9

    .line 3268
    .restart local v50    # "idx2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v82, v0

    add-int/lit8 v83, v50, -0x1

    aget-wide v80, v82, v83

    .line 3269
    .restart local v80    # "w1r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v82, v0

    aget-wide v78, v82, v50

    .line 3270
    .restart local v78    # "w1i":D
    add-int v52, p6, v36

    .line 3271
    .restart local v52    # "idx4":I
    add-int v53, p8, v36

    .line 3272
    .restart local v53    # "idx5":I
    add-int v59, v52, v51

    .line 3273
    .restart local v59    # "iidx1":I
    add-int v76, v53, v51

    .line 3274
    .restart local v76    # "oidx1":I
    add-int/lit8 v82, v76, -0x1

    aget-wide v72, p7, v82

    .line 3275
    .restart local v72    # "o1i":D
    aget-wide v74, p7, v76

    .line 3277
    .restart local v74    # "o1r":D
    add-int/lit8 v82, v59, -0x1

    mul-double v84, v80, v72

    mul-double v86, v78, v74

    sub-double v84, v84, v86

    aput-wide v84, p5, v82

    .line 3278
    mul-double v82, v80, v74

    mul-double v84, v78, v72

    add-double v82, v82, v84

    aput-wide v82, p5, v59

    .line 3265
    add-int/lit8 v36, v36, 0x2

    goto :goto_43e

    .line 3262
    .end local v50    # "idx2":I
    .end local v52    # "idx4":I
    .end local v53    # "idx5":I
    .end local v59    # "iidx1":I
    .end local v72    # "o1i":D
    .end local v74    # "o1r":D
    .end local v76    # "oidx1":I
    .end local v78    # "w1i":D
    .end local v80    # "w1r":D
    :cond_47d
    add-int/lit8 v68, v68, 0x1

    goto :goto_430

    .line 3259
    .end local v36    # "i":I
    .end local v46    # "idij":I
    .end local v51    # "idx3":I
    :cond_480
    add-int/lit8 v65, v65, 0x1

    goto :goto_422

    .line 3284
    .end local v49    # "idx1":I
    .end local v68    # "k":I
    :cond_483
    return-void
.end method

.method radf2(II[DI[DII)V
    .registers 48
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I

    .prologue
    .line 1837
    move/from16 v23, p7

    .line 1838
    .local v23, "iw1":I
    mul-int v16, p2, p1

    .line 1839
    .local v16, "idx0":I
    mul-int/lit8 v17, p1, 0x2

    .line 1840
    .local v17, "idx1":I
    const/16 v24, 0x0

    .local v24, "k":I
    :goto_8
    move/from16 v0, v24

    move/from16 v1, p2

    if-ge v0, v1, :cond_2b

    .line 1841
    mul-int v36, v24, v17

    add-int v25, p6, v36

    .line 1842
    .local v25, "oidx1":I
    add-int v36, v25, v17

    add-int/lit8 v26, v36, -0x1

    .line 1843
    .local v26, "oidx2":I
    mul-int v36, v24, p1

    add-int v21, p4, v36

    .line 1844
    .local v21, "iidx1":I
    add-int v22, v21, v16

    .line 1846
    .local v22, "iidx2":I
    aget-wide v12, p3, v21

    .line 1847
    .local v12, "i1r":D
    aget-wide v14, p3, v22

    .line 1849
    .local v14, "i2r":D
    add-double v36, v12, v14

    aput-wide v36, p5, v25

    .line 1850
    sub-double v36, v12, v14

    aput-wide v36, p5, v26

    .line 1840
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .line 1852
    .end local v12    # "i1r":D
    .end local v14    # "i2r":D
    .end local v21    # "iidx1":I
    .end local v22    # "iidx2":I
    .end local v25    # "oidx1":I
    .end local v26    # "oidx2":I
    :cond_2b
    const/16 v36, 0x2

    move/from16 v0, p1

    move/from16 v1, v36

    if-ge v0, v1, :cond_34

    .line 1853
    return-void

    .line 1854
    :cond_34
    const/16 v36, 0x2

    move/from16 v0, p1

    move/from16 v1, v36

    if-eq v0, v1, :cond_b6

    .line 1855
    const/16 v24, 0x0

    :goto_3e
    move/from16 v0, v24

    move/from16 v1, p2

    if-ge v0, v1, :cond_ab

    .line 1856
    mul-int v17, v24, p1

    .line 1857
    mul-int/lit8 v18, v17, 0x2

    .line 1858
    .local v18, "idx2":I
    add-int v19, v18, p1

    .line 1859
    .local v19, "idx3":I
    add-int v20, v17, v16

    .line 1860
    .local v20, "idx4":I
    const/4 v10, 0x2

    .local v10, "i":I
    :goto_4d
    move/from16 v0, p1

    if-ge v10, v0, :cond_a8

    .line 1861
    sub-int v11, p1, v10

    .line 1862
    .local v11, "ic":I
    add-int/lit8 v36, v10, -0x1

    add-int v27, v36, p7

    .line 1863
    .local v27, "widx1":I
    add-int v36, p6, v10

    add-int v25, v36, v18

    .line 1864
    .restart local v25    # "oidx1":I
    add-int v36, p6, v11

    add-int v26, v36, v19

    .line 1865
    .restart local v26    # "oidx2":I
    add-int v36, p4, v10

    add-int v21, v36, v17

    .line 1866
    .restart local v21    # "iidx1":I
    add-int v36, p4, v10

    add-int v22, v36, v20

    .line 1868
    .restart local v22    # "iidx2":I
    add-int/lit8 v36, v21, -0x1

    aget-wide v2, p3, v36

    .line 1869
    .local v2, "a1i":D
    aget-wide v4, p3, v21

    .line 1870
    .local v4, "a1r":D
    add-int/lit8 v36, v22, -0x1

    aget-wide v6, p3, v36

    .line 1871
    .local v6, "a2i":D
    aget-wide v8, p3, v22

    .line 1873
    .local v8, "a2r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v36, v0

    add-int/lit8 v37, v27, -0x1

    aget-wide v34, v36, v37

    .line 1874
    .local v34, "w1r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v36, v0

    aget-wide v32, v36, v27

    .line 1876
    .local v32, "w1i":D
    mul-double v36, v34, v6

    mul-double v38, v32, v8

    add-double v30, v36, v38

    .line 1877
    .local v30, "t1r":D
    mul-double v36, v34, v8

    mul-double v38, v32, v6

    sub-double v28, v36, v38

    .line 1879
    .local v28, "t1i":D
    add-double v36, v4, v28

    aput-wide v36, p5, v25

    .line 1880
    add-int/lit8 v36, v25, -0x1

    add-double v38, v2, v30

    aput-wide v38, p5, v36

    .line 1882
    sub-double v36, v28, v4

    aput-wide v36, p5, v26

    .line 1883
    add-int/lit8 v36, v26, -0x1

    sub-double v38, v2, v30

    aput-wide v38, p5, v36

    .line 1860
    add-int/lit8 v10, v10, 0x2

    goto :goto_4d

    .line 1855
    .end local v2    # "a1i":D
    .end local v4    # "a1r":D
    .end local v6    # "a2i":D
    .end local v8    # "a2r":D
    .end local v11    # "ic":I
    .end local v21    # "iidx1":I
    .end local v22    # "iidx2":I
    .end local v25    # "oidx1":I
    .end local v26    # "oidx2":I
    .end local v27    # "widx1":I
    .end local v28    # "t1i":D
    .end local v30    # "t1r":D
    .end local v32    # "w1i":D
    .end local v34    # "w1r":D
    :cond_a8
    add-int/lit8 v24, v24, 0x1

    goto :goto_3e

    .line 1886
    .end local v10    # "i":I
    .end local v18    # "idx2":I
    .end local v19    # "idx3":I
    .end local v20    # "idx4":I
    :cond_ab
    rem-int/lit8 v36, p1, 0x2

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_b6

    .line 1887
    return-void

    .line 1889
    :cond_b6
    mul-int/lit8 v18, v17, 0x2

    .line 1890
    .restart local v18    # "idx2":I
    const/16 v24, 0x0

    :goto_ba
    move/from16 v0, v24

    move/from16 v1, p2

    if-ge v0, v1, :cond_e0

    .line 1891
    mul-int v17, v24, p1

    .line 1892
    add-int v36, p6, v18

    add-int v25, v36, p1

    .line 1893
    .restart local v25    # "oidx1":I
    add-int v36, p4, p1

    add-int/lit8 v36, v36, -0x1

    add-int v21, v36, v17

    .line 1895
    .restart local v21    # "iidx1":I
    add-int v36, v21, v16

    aget-wide v36, p3, v36

    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v36, v0

    aput-wide v36, p5, v25

    .line 1896
    add-int/lit8 v36, v25, -0x1

    aget-wide v38, p3, v21

    aput-wide v38, p5, v36

    .line 1890
    add-int/lit8 v24, v24, 0x1

    goto :goto_ba

    .line 1898
    .end local v21    # "iidx1":I
    .end local v25    # "oidx1":I
    :cond_e0
    return-void
.end method

.method radf3(II[DI[DII)V
    .registers 84
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I

    .prologue
    .line 1971
    const-wide/high16 v50, -0x4020000000000000L    # -0.5

    .line 1972
    .local v50, "taur":D
    const-wide v48, 0x3febb67ae8584cabL    # 0.8660254037844387

    .line 1976
    .local v48, "taui":D
    move/from16 v42, p7

    .line 1977
    .local v42, "iw1":I
    add-int v43, p7, p1

    .line 1979
    .local v43, "iw2":I
    mul-int v28, p2, p1

    .line 1980
    .local v28, "idx0":I
    const/16 v44, 0x0

    .local v44, "k":I
    :goto_f
    move/from16 v0, v44

    move/from16 v1, p2

    if-ge v0, v1, :cond_55

    .line 1981
    mul-int v29, v44, p1

    .line 1982
    .local v29, "idx1":I
    mul-int/lit8 v32, v28, 0x2

    .line 1983
    .local v32, "idx3":I
    mul-int/lit8 v70, v44, 0x3

    add-int/lit8 v70, v70, 0x1

    mul-int v33, v70, p1

    .line 1984
    .local v33, "idx4":I
    add-int v39, p4, v29

    .line 1985
    .local v39, "iidx1":I
    add-int v40, v39, v28

    .line 1986
    .local v40, "iidx2":I
    add-int v41, v39, v32

    .line 1987
    .local v41, "iidx3":I
    aget-wide v18, p3, v39

    .line 1988
    .local v18, "i1r":D
    aget-wide v22, p3, v40

    .line 1989
    .local v22, "i2r":D
    aget-wide v26, p3, v41

    .line 1990
    .local v26, "i3r":D
    add-double v4, v22, v26

    .line 1991
    .local v4, "cr2":D
    mul-int/lit8 v70, v29, 0x3

    add-int v70, v70, p6

    add-double v72, v18, v4

    aput-wide v72, p5, v70

    .line 1992
    add-int v70, p6, v33

    add-int v70, v70, p1

    sub-double v72, v26, v22

    const-wide v74, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v72, v72, v74

    aput-wide v72, p5, v70

    .line 1993
    add-int v70, p6, p1

    add-int/lit8 v70, v70, -0x1

    add-int v70, v70, v33

    const-wide/high16 v72, -0x4020000000000000L    # -0.5

    mul-double v72, v72, v4

    add-double v72, v72, v18

    aput-wide v72, p5, v70

    .line 1980
    add-int/lit8 v44, v44, 0x1

    goto :goto_f

    .line 1995
    .end local v4    # "cr2":D
    .end local v18    # "i1r":D
    .end local v22    # "i2r":D
    .end local v26    # "i3r":D
    .end local v29    # "idx1":I
    .end local v32    # "idx3":I
    .end local v33    # "idx4":I
    .end local v39    # "iidx1":I
    .end local v40    # "iidx2":I
    .end local v41    # "iidx3":I
    :cond_55
    const/16 v70, 0x1

    move/from16 v0, p1

    move/from16 v1, v70

    if-ne v0, v1, :cond_5e

    .line 1996
    return-void

    .line 1997
    :cond_5e
    const/16 v44, 0x0

    :goto_60
    move/from16 v0, v44

    move/from16 v1, p2

    if-ge v0, v1, :cond_129

    .line 1998
    mul-int v32, v44, p1

    .line 1999
    .restart local v32    # "idx3":I
    mul-int/lit8 v33, v32, 0x3

    .line 2000
    .restart local v33    # "idx4":I
    add-int v34, v32, v28

    .line 2001
    .local v34, "idx5":I
    add-int v35, v34, v28

    .line 2002
    .local v35, "idx6":I
    add-int v36, v33, p1

    .line 2003
    .local v36, "idx7":I
    add-int v37, v36, p1

    .line 2004
    .local v37, "idx8":I
    const/4 v14, 0x2

    .local v14, "i":I
    :goto_73
    move/from16 v0, p1

    if-ge v14, v0, :cond_125

    .line 2005
    sub-int v15, p1, v14

    .line 2006
    .local v15, "ic":I
    add-int/lit8 v70, v14, -0x1

    add-int v68, v70, p7

    .line 2007
    .local v68, "widx1":I
    add-int/lit8 v70, v14, -0x1

    add-int v69, v70, v43

    .line 2009
    .local v69, "widx2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v70, v0

    add-int/lit8 v71, v68, -0x1

    aget-wide v62, v70, v71

    .line 2010
    .local v62, "w1r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v70, v0

    aget-wide v60, v70, v68

    .line 2011
    .local v60, "w1i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v70, v0

    add-int/lit8 v71, v69, -0x1

    aget-wide v66, v70, v71

    .line 2012
    .local v66, "w2r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v70, v0

    aget-wide v64, v70, v69

    .line 2014
    .local v64, "w2i":D
    add-int v38, p4, v14

    .line 2015
    .local v38, "idx9":I
    add-int v30, p6, v14

    .line 2016
    .local v30, "idx10":I
    add-int v31, p6, v15

    .line 2017
    .local v31, "idx11":I
    add-int v39, v38, v32

    .line 2018
    .restart local v39    # "iidx1":I
    add-int v40, v38, v34

    .line 2019
    .restart local v40    # "iidx2":I
    add-int v41, v38, v35

    .line 2021
    .restart local v41    # "iidx3":I
    add-int/lit8 v70, v39, -0x1

    aget-wide v16, p3, v70

    .line 2022
    .local v16, "i1i":D
    aget-wide v18, p3, v39

    .line 2023
    .restart local v18    # "i1r":D
    add-int/lit8 v70, v40, -0x1

    aget-wide v20, p3, v70

    .line 2024
    .local v20, "i2i":D
    aget-wide v22, p3, v40

    .line 2025
    .restart local v22    # "i2r":D
    add-int/lit8 v70, v41, -0x1

    aget-wide v24, p3, v70

    .line 2026
    .local v24, "i3i":D
    aget-wide v26, p3, v41

    .line 2028
    .restart local v26    # "i3r":D
    mul-double v70, v62, v20

    mul-double v72, v60, v22

    add-double v10, v70, v72

    .line 2029
    .local v10, "dr2":D
    mul-double v70, v62, v22

    mul-double v72, v60, v20

    sub-double v6, v70, v72

    .line 2030
    .local v6, "di2":D
    mul-double v70, v66, v24

    mul-double v72, v64, v26

    add-double v12, v70, v72

    .line 2031
    .local v12, "dr3":D
    mul-double v70, v66, v26

    mul-double v72, v64, v24

    sub-double v8, v70, v72

    .line 2032
    .local v8, "di3":D
    add-double v4, v10, v12

    .line 2033
    .restart local v4    # "cr2":D
    add-double v2, v6, v8

    .line 2034
    .local v2, "ci2":D
    const-wide/high16 v70, -0x4020000000000000L    # -0.5

    mul-double v70, v70, v4

    add-double v56, v16, v70

    .line 2035
    .local v56, "tr2":D
    const-wide/high16 v70, -0x4020000000000000L    # -0.5

    mul-double v70, v70, v2

    add-double v52, v18, v70

    .line 2036
    .local v52, "ti2":D
    sub-double v70, v6, v8

    const-wide v72, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v58, v72, v70

    .line 2037
    .local v58, "tr3":D
    sub-double v70, v12, v10

    const-wide v72, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v54, v72, v70

    .line 2039
    .local v54, "ti3":D
    add-int v45, v30, v33

    .line 2040
    .local v45, "oidx1":I
    add-int v46, v31, v36

    .line 2041
    .local v46, "oidx2":I
    add-int v47, v30, v37

    .line 2043
    .local v47, "oidx3":I
    add-int/lit8 v70, v45, -0x1

    add-double v72, v16, v4

    aput-wide v72, p5, v70

    .line 2044
    add-double v70, v18, v2

    aput-wide v70, p5, v45

    .line 2045
    add-int/lit8 v70, v46, -0x1

    sub-double v72, v56, v58

    aput-wide v72, p5, v70

    .line 2046
    sub-double v70, v54, v52

    aput-wide v70, p5, v46

    .line 2047
    add-int/lit8 v70, v47, -0x1

    add-double v72, v56, v58

    aput-wide v72, p5, v70

    .line 2048
    add-double v70, v52, v54

    aput-wide v70, p5, v47

    .line 2004
    add-int/lit8 v14, v14, 0x2

    goto/16 :goto_73

    .line 1997
    .end local v2    # "ci2":D
    .end local v4    # "cr2":D
    .end local v6    # "di2":D
    .end local v8    # "di3":D
    .end local v10    # "dr2":D
    .end local v12    # "dr3":D
    .end local v15    # "ic":I
    .end local v16    # "i1i":D
    .end local v18    # "i1r":D
    .end local v20    # "i2i":D
    .end local v22    # "i2r":D
    .end local v24    # "i3i":D
    .end local v26    # "i3r":D
    .end local v30    # "idx10":I
    .end local v31    # "idx11":I
    .end local v38    # "idx9":I
    .end local v39    # "iidx1":I
    .end local v40    # "iidx2":I
    .end local v41    # "iidx3":I
    .end local v45    # "oidx1":I
    .end local v46    # "oidx2":I
    .end local v47    # "oidx3":I
    .end local v52    # "ti2":D
    .end local v54    # "ti3":D
    .end local v56    # "tr2":D
    .end local v58    # "tr3":D
    .end local v60    # "w1i":D
    .end local v62    # "w1r":D
    .end local v64    # "w2i":D
    .end local v66    # "w2r":D
    .end local v68    # "widx1":I
    .end local v69    # "widx2":I
    :cond_125
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_60

    .line 2051
    .end local v14    # "i":I
    .end local v32    # "idx3":I
    .end local v33    # "idx4":I
    .end local v34    # "idx5":I
    .end local v35    # "idx6":I
    .end local v36    # "idx7":I
    .end local v37    # "idx8":I
    :cond_129
    return-void
.end method

.method radf4(II[DI[DII)V
    .registers 102
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I

    .prologue
    .line 2142
    const-wide v14, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    .line 2146
    .local v14, "hsqt2":D
    move/from16 v50, p7

    .line 2147
    .local v50, "iw1":I
    add-int v51, p7, p1

    .line 2148
    .local v51, "iw2":I
    add-int v52, v51, p1

    .line 2149
    .local v52, "iw3":I
    mul-int v34, p2, p1

    .line 2150
    .local v34, "idx0":I
    const/16 v53, 0x0

    .local v53, "k":I
    :goto_f
    move/from16 v0, v53

    move/from16 v1, p2

    if-ge v0, v1, :cond_56

    .line 2151
    mul-int v35, v53, p1

    .line 2152
    .local v35, "idx1":I
    mul-int/lit8 v38, v35, 0x4

    .line 2153
    .local v38, "idx2":I
    add-int v39, v35, v34

    .line 2154
    .local v39, "idx3":I
    add-int v40, v39, v34

    .line 2155
    .local v40, "idx4":I
    add-int v41, v40, v34

    .line 2156
    .local v41, "idx5":I
    add-int v42, v38, p1

    .line 2157
    .local v42, "idx6":I
    add-int v89, p4, v35

    aget-wide v20, p3, v89

    .line 2158
    .local v20, "i1r":D
    add-int v89, p4, v39

    aget-wide v24, p3, v89

    .line 2159
    .local v24, "i2r":D
    add-int v89, p4, v40

    aget-wide v28, p3, v89

    .line 2160
    .local v28, "i3r":D
    add-int v89, p4, v41

    aget-wide v32, p3, v89

    .line 2162
    .local v32, "i4r":D
    add-double v66, v24, v32

    .line 2163
    .local v66, "tr1":D
    add-double v68, v20, v28

    .line 2165
    .local v68, "tr2":D
    add-int v54, p6, v38

    .line 2166
    .local v54, "oidx1":I
    add-int v89, p6, v42

    add-int v55, v89, p1

    .line 2168
    .local v55, "oidx2":I
    add-double v90, v66, v68

    aput-wide v90, p5, v54

    .line 2169
    add-int/lit8 v89, v55, -0x1

    add-int v89, v89, p1

    add-int v89, v89, p1

    sub-double v90, v68, v66

    aput-wide v90, p5, v89

    .line 2170
    add-int/lit8 v89, v55, -0x1

    sub-double v90, v20, v28

    aput-wide v90, p5, v89

    .line 2171
    sub-double v90, v32, v24

    aput-wide v90, p5, v55

    .line 2150
    add-int/lit8 v53, v53, 0x1

    goto :goto_f

    .line 2173
    .end local v20    # "i1r":D
    .end local v24    # "i2r":D
    .end local v28    # "i3r":D
    .end local v32    # "i4r":D
    .end local v35    # "idx1":I
    .end local v38    # "idx2":I
    .end local v39    # "idx3":I
    .end local v40    # "idx4":I
    .end local v41    # "idx5":I
    .end local v42    # "idx6":I
    .end local v54    # "oidx1":I
    .end local v55    # "oidx2":I
    .end local v66    # "tr1":D
    .end local v68    # "tr2":D
    :cond_56
    const/16 v89, 0x2

    move/from16 v0, p1

    move/from16 v1, v89

    if-ge v0, v1, :cond_5f

    .line 2174
    return-void

    .line 2175
    :cond_5f
    const/16 v89, 0x2

    move/from16 v0, p1

    move/from16 v1, v89

    if-eq v0, v1, :cond_168

    .line 2176
    const/16 v53, 0x0

    :goto_69
    move/from16 v0, v53

    move/from16 v1, p2

    if-ge v0, v1, :cond_15d

    .line 2177
    mul-int v35, v53, p1

    .line 2178
    .restart local v35    # "idx1":I
    add-int v38, v35, v34

    .line 2179
    .restart local v38    # "idx2":I
    add-int v39, v38, v34

    .line 2180
    .restart local v39    # "idx3":I
    add-int v40, v39, v34

    .line 2181
    .restart local v40    # "idx4":I
    mul-int/lit8 v41, v35, 0x4

    .line 2182
    .restart local v41    # "idx5":I
    add-int v42, v41, p1

    .line 2183
    .restart local v42    # "idx6":I
    add-int v43, v42, p1

    .line 2184
    .local v43, "idx7":I
    add-int v44, v43, p1

    .line 2185
    .local v44, "idx8":I
    const/16 v16, 0x2

    .local v16, "i":I
    :goto_81
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_159

    .line 2186
    sub-int v17, p1, v16

    .line 2187
    .local v17, "ic":I
    add-int/lit8 v89, v16, -0x1

    add-int v86, v89, p7

    .line 2188
    .local v86, "widx1":I
    add-int/lit8 v89, v16, -0x1

    add-int v87, v89, v51

    .line 2189
    .local v87, "widx2":I
    add-int/lit8 v89, v16, -0x1

    add-int v88, v89, v52

    .line 2190
    .local v88, "widx3":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v89, v0

    add-int/lit8 v90, v86, -0x1

    aget-wide v76, v89, v90

    .line 2191
    .local v76, "w1r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v89, v0

    aget-wide v74, v89, v86

    .line 2192
    .local v74, "w1i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v89, v0

    add-int/lit8 v90, v87, -0x1

    aget-wide v80, v89, v90

    .line 2193
    .local v80, "w2r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v89, v0

    aget-wide v78, v89, v87

    .line 2194
    .local v78, "w2i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v89, v0

    add-int/lit8 v90, v88, -0x1

    aget-wide v84, v89, v90

    .line 2195
    .local v84, "w3r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v89, v0

    aget-wide v82, v89, v88

    .line 2197
    .local v82, "w3i":D
    add-int v45, p4, v16

    .line 2198
    .local v45, "idx9":I
    add-int v36, p6, v16

    .line 2199
    .local v36, "idx10":I
    add-int v37, p6, v17

    .line 2200
    .local v37, "idx11":I
    add-int v46, v45, v35

    .line 2201
    .local v46, "iidx1":I
    add-int v47, v45, v38

    .line 2202
    .local v47, "iidx2":I
    add-int v48, v45, v39

    .line 2203
    .local v48, "iidx3":I
    add-int v49, v45, v40

    .line 2205
    .local v49, "iidx4":I
    add-int/lit8 v89, v46, -0x1

    aget-wide v18, p3, v89

    .line 2206
    .local v18, "i1i":D
    aget-wide v20, p3, v46

    .line 2207
    .restart local v20    # "i1r":D
    add-int/lit8 v89, v47, -0x1

    aget-wide v22, p3, v89

    .line 2208
    .local v22, "i2i":D
    aget-wide v24, p3, v47

    .line 2209
    .restart local v24    # "i2r":D
    add-int/lit8 v89, v48, -0x1

    aget-wide v26, p3, v89

    .line 2210
    .local v26, "i3i":D
    aget-wide v28, p3, v48

    .line 2211
    .restart local v28    # "i3r":D
    add-int/lit8 v89, v49, -0x1

    aget-wide v30, p3, v89

    .line 2212
    .local v30, "i4i":D
    aget-wide v32, p3, v49

    .line 2214
    .restart local v32    # "i4r":D
    mul-double v90, v76, v22

    mul-double v92, v74, v24

    add-double v8, v90, v92

    .line 2215
    .local v8, "cr2":D
    mul-double v90, v76, v24

    mul-double v92, v74, v22

    sub-double v2, v90, v92

    .line 2216
    .local v2, "ci2":D
    mul-double v90, v80, v26

    mul-double v92, v78, v28

    add-double v10, v90, v92

    .line 2217
    .local v10, "cr3":D
    mul-double v90, v80, v28

    mul-double v92, v78, v26

    sub-double v4, v90, v92

    .line 2218
    .local v4, "ci3":D
    mul-double v90, v84, v30

    mul-double v92, v82, v32

    add-double v12, v90, v92

    .line 2219
    .local v12, "cr4":D
    mul-double v90, v84, v32

    mul-double v92, v82, v30

    sub-double v6, v90, v92

    .line 2220
    .local v6, "ci4":D
    add-double v66, v8, v12

    .line 2221
    .restart local v66    # "tr1":D
    sub-double v72, v12, v8

    .line 2222
    .local v72, "tr4":D
    add-double v58, v2, v6

    .line 2223
    .local v58, "ti1":D
    sub-double v64, v2, v6

    .line 2224
    .local v64, "ti4":D
    add-double v60, v20, v4

    .line 2225
    .local v60, "ti2":D
    sub-double v62, v20, v4

    .line 2226
    .local v62, "ti3":D
    add-double v68, v18, v10

    .line 2227
    .restart local v68    # "tr2":D
    sub-double v70, v18, v10

    .line 2229
    .local v70, "tr3":D
    add-int v54, v36, v41

    .line 2230
    .restart local v54    # "oidx1":I
    add-int v55, v37, v42

    .line 2231
    .restart local v55    # "oidx2":I
    add-int v56, v36, v43

    .line 2232
    .local v56, "oidx3":I
    add-int v57, v37, v44

    .line 2234
    .local v57, "oidx4":I
    add-int/lit8 v89, v54, -0x1

    add-double v90, v66, v68

    aput-wide v90, p5, v89

    .line 2235
    add-int/lit8 v89, v57, -0x1

    sub-double v90, v68, v66

    aput-wide v90, p5, v89

    .line 2236
    add-double v90, v58, v60

    aput-wide v90, p5, v54

    .line 2237
    sub-double v90, v58, v60

    aput-wide v90, p5, v57

    .line 2238
    add-int/lit8 v89, v56, -0x1

    add-double v90, v64, v70

    aput-wide v90, p5, v89

    .line 2239
    add-int/lit8 v89, v55, -0x1

    sub-double v90, v70, v64

    aput-wide v90, p5, v89

    .line 2240
    add-double v90, v72, v62

    aput-wide v90, p5, v56

    .line 2241
    sub-double v90, v72, v62

    aput-wide v90, p5, v55

    .line 2185
    add-int/lit8 v16, v16, 0x2

    goto/16 :goto_81

    .line 2176
    .end local v2    # "ci2":D
    .end local v4    # "ci3":D
    .end local v6    # "ci4":D
    .end local v8    # "cr2":D
    .end local v10    # "cr3":D
    .end local v12    # "cr4":D
    .end local v17    # "ic":I
    .end local v18    # "i1i":D
    .end local v20    # "i1r":D
    .end local v22    # "i2i":D
    .end local v24    # "i2r":D
    .end local v26    # "i3i":D
    .end local v28    # "i3r":D
    .end local v30    # "i4i":D
    .end local v32    # "i4r":D
    .end local v36    # "idx10":I
    .end local v37    # "idx11":I
    .end local v45    # "idx9":I
    .end local v46    # "iidx1":I
    .end local v47    # "iidx2":I
    .end local v48    # "iidx3":I
    .end local v49    # "iidx4":I
    .end local v54    # "oidx1":I
    .end local v55    # "oidx2":I
    .end local v56    # "oidx3":I
    .end local v57    # "oidx4":I
    .end local v58    # "ti1":D
    .end local v60    # "ti2":D
    .end local v62    # "ti3":D
    .end local v64    # "ti4":D
    .end local v66    # "tr1":D
    .end local v68    # "tr2":D
    .end local v70    # "tr3":D
    .end local v72    # "tr4":D
    .end local v74    # "w1i":D
    .end local v76    # "w1r":D
    .end local v78    # "w2i":D
    .end local v80    # "w2r":D
    .end local v82    # "w3i":D
    .end local v84    # "w3r":D
    .end local v86    # "widx1":I
    .end local v87    # "widx2":I
    .end local v88    # "widx3":I
    :cond_159
    add-int/lit8 v53, v53, 0x1

    goto/16 :goto_69

    .line 2244
    .end local v16    # "i":I
    .end local v35    # "idx1":I
    .end local v38    # "idx2":I
    .end local v39    # "idx3":I
    .end local v40    # "idx4":I
    .end local v41    # "idx5":I
    .end local v42    # "idx6":I
    .end local v43    # "idx7":I
    .end local v44    # "idx8":I
    :cond_15d
    rem-int/lit8 v89, p1, 0x2

    const/16 v90, 0x1

    move/from16 v0, v89

    move/from16 v1, v90

    if-ne v0, v1, :cond_168

    .line 2245
    return-void

    .line 2247
    :cond_168
    const/16 v53, 0x0

    :goto_16a
    move/from16 v0, v53

    move/from16 v1, p2

    if-ge v0, v1, :cond_1cd

    .line 2248
    mul-int v35, v53, p1

    .line 2249
    .restart local v35    # "idx1":I
    mul-int/lit8 v38, v35, 0x4

    .line 2250
    .restart local v38    # "idx2":I
    add-int v39, v35, v34

    .line 2251
    .restart local v39    # "idx3":I
    add-int v40, v39, v34

    .line 2252
    .restart local v40    # "idx4":I
    add-int v41, v40, v34

    .line 2253
    .restart local v41    # "idx5":I
    add-int v42, v38, p1

    .line 2254
    .restart local v42    # "idx6":I
    add-int v43, v42, p1

    .line 2255
    .restart local v43    # "idx7":I
    add-int v44, v43, p1

    .line 2256
    .restart local v44    # "idx8":I
    add-int v45, p4, p1

    .line 2257
    .restart local v45    # "idx9":I
    add-int v36, p6, p1

    .line 2259
    .restart local v36    # "idx10":I
    add-int/lit8 v89, v45, -0x1

    add-int v89, v89, v35

    aget-wide v18, p3, v89

    .line 2260
    .restart local v18    # "i1i":D
    add-int/lit8 v89, v45, -0x1

    add-int v89, v89, v39

    aget-wide v22, p3, v89

    .line 2261
    .restart local v22    # "i2i":D
    add-int/lit8 v89, v45, -0x1

    add-int v89, v89, v40

    aget-wide v26, p3, v89

    .line 2262
    .restart local v26    # "i3i":D
    add-int/lit8 v89, v45, -0x1

    add-int v89, v89, v41

    aget-wide v30, p3, v89

    .line 2264
    .restart local v30    # "i4i":D
    add-double v90, v22, v30

    const-wide v92, -0x40195f619980c433L    # -0.7071067811865476

    mul-double v58, v92, v90

    .line 2265
    .restart local v58    # "ti1":D
    sub-double v90, v22, v30

    const-wide v92, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    mul-double v66, v92, v90

    .line 2267
    .restart local v66    # "tr1":D
    add-int/lit8 v89, v36, -0x1

    add-int v89, v89, v38

    add-double v90, v66, v18

    aput-wide v90, p5, v89

    .line 2268
    add-int/lit8 v89, v36, -0x1

    add-int v89, v89, v43

    sub-double v90, v18, v66

    aput-wide v90, p5, v89

    .line 2269
    add-int v89, p6, v42

    sub-double v90, v58, v26

    aput-wide v90, p5, v89

    .line 2270
    add-int v89, p6, v44

    add-double v90, v58, v26

    aput-wide v90, p5, v89

    .line 2247
    add-int/lit8 v53, v53, 0x1

    goto :goto_16a

    .line 2272
    .end local v18    # "i1i":D
    .end local v22    # "i2i":D
    .end local v26    # "i3i":D
    .end local v30    # "i4i":D
    .end local v35    # "idx1":I
    .end local v36    # "idx10":I
    .end local v38    # "idx2":I
    .end local v39    # "idx3":I
    .end local v40    # "idx4":I
    .end local v41    # "idx5":I
    .end local v42    # "idx6":I
    .end local v43    # "idx7":I
    .end local v44    # "idx8":I
    .end local v45    # "idx9":I
    .end local v58    # "ti1":D
    .end local v66    # "tr1":D
    :cond_1cd
    return-void
.end method

.method radf5(II[DI[DII)V
    .registers 144
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I

    .prologue
    .line 2421
    const-wide v98, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    .line 2422
    .local v98, "tr11":D
    const-wide v86, 0x3fee6f0e134454ffL    # 0.9510565162951535

    .line 2423
    .local v86, "ti11":D
    const-wide v100, -0x40161c8864680b59L    # -0.8090169943749473

    .line 2424
    .local v100, "tr12":D
    const-wide v88, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    .line 2428
    .local v88, "ti12":D
    move/from16 v76, p7

    .line 2429
    .local v76, "iw1":I
    add-int v77, p7, p1

    .line 2430
    .local v77, "iw2":I
    add-int v78, v77, p1

    .line 2431
    .local v78, "iw3":I
    add-int v79, v78, p1

    .line 2433
    .local v79, "iw4":I
    mul-int v56, p2, p1

    .line 2434
    .local v56, "idx0":I
    const/16 v80, 0x0

    .local v80, "k":I
    :goto_20
    move/from16 v0, v80

    move/from16 v1, p2

    if-ge v0, v1, :cond_ba

    .line 2435
    mul-int v57, v80, p1

    .line 2436
    .local v57, "idx1":I
    mul-int/lit8 v63, v57, 0x5

    .line 2437
    .local v63, "idx2":I
    add-int v64, v63, p1

    .line 2438
    .local v64, "idx3":I
    add-int v65, v64, p1

    .line 2439
    .local v65, "idx4":I
    add-int v66, v65, p1

    .line 2440
    .local v66, "idx5":I
    add-int v67, v66, p1

    .line 2441
    .local v67, "idx6":I
    add-int v68, v57, v56

    .line 2442
    .local v68, "idx7":I
    add-int v69, v68, v56

    .line 2443
    .local v69, "idx8":I
    add-int v70, v69, v56

    .line 2444
    .local v70, "idx9":I
    add-int v58, v70, v56

    .line 2445
    .local v58, "idx10":I
    add-int v130, p6, p1

    add-int/lit8 v59, v130, -0x1

    .line 2447
    .local v59, "idx11":I
    add-int v130, p4, v57

    aget-wide v38, p3, v130

    .line 2448
    .local v38, "i1r":D
    add-int v130, p4, v68

    aget-wide v42, p3, v130

    .line 2449
    .local v42, "i2r":D
    add-int v130, p4, v69

    aget-wide v46, p3, v130

    .line 2450
    .local v46, "i3r":D
    add-int v130, p4, v70

    aget-wide v50, p3, v130

    .line 2451
    .local v50, "i4r":D
    add-int v130, p4, v58

    aget-wide v54, p3, v130

    .line 2453
    .local v54, "i5r":D
    add-double v10, v54, v42

    .line 2454
    .local v10, "cr2":D
    sub-double v8, v54, v42

    .line 2455
    .local v8, "ci5":D
    add-double v12, v50, v46

    .line 2456
    .local v12, "cr3":D
    sub-double v6, v50, v46

    .line 2458
    .local v6, "ci4":D
    add-int v130, p6, v63

    add-double v132, v38, v10

    add-double v132, v132, v12

    aput-wide v132, p5, v130

    .line 2459
    add-int v130, v59, v64

    const-wide v132, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v132, v132, v10

    add-double v132, v132, v38

    const-wide v134, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v134, v134, v12

    add-double v132, v132, v134

    aput-wide v132, p5, v130

    .line 2460
    add-int v130, p6, v65

    const-wide v132, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v132, v132, v8

    const-wide v134, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v134, v134, v6

    add-double v132, v132, v134

    aput-wide v132, p5, v130

    .line 2461
    add-int v130, v59, v66

    const-wide v132, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v132, v132, v10

    add-double v132, v132, v38

    const-wide v134, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v134, v134, v12

    add-double v132, v132, v134

    aput-wide v132, p5, v130

    .line 2462
    add-int v130, p6, v67

    const-wide v132, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v132, v132, v8

    const-wide v134, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v134, v134, v6

    sub-double v132, v132, v134

    aput-wide v132, p5, v130

    .line 2434
    add-int/lit8 v80, v80, 0x1

    goto/16 :goto_20

    .line 2464
    .end local v6    # "ci4":D
    .end local v8    # "ci5":D
    .end local v10    # "cr2":D
    .end local v12    # "cr3":D
    .end local v38    # "i1r":D
    .end local v42    # "i2r":D
    .end local v46    # "i3r":D
    .end local v50    # "i4r":D
    .end local v54    # "i5r":D
    .end local v57    # "idx1":I
    .end local v58    # "idx10":I
    .end local v59    # "idx11":I
    .end local v63    # "idx2":I
    .end local v64    # "idx3":I
    .end local v65    # "idx4":I
    .end local v66    # "idx5":I
    .end local v67    # "idx6":I
    .end local v68    # "idx7":I
    .end local v69    # "idx8":I
    .end local v70    # "idx9":I
    :cond_ba
    const/16 v130, 0x1

    move/from16 v0, p1

    move/from16 v1, v130

    if-ne v0, v1, :cond_c3

    .line 2465
    return-void

    .line 2466
    :cond_c3
    const/16 v80, 0x0

    :goto_c5
    move/from16 v0, v80

    move/from16 v1, p2

    if-ge v0, v1, :cond_27f

    .line 2467
    mul-int v57, v80, p1

    .line 2468
    .restart local v57    # "idx1":I
    mul-int/lit8 v63, v57, 0x5

    .line 2469
    .restart local v63    # "idx2":I
    add-int v64, v63, p1

    .line 2470
    .restart local v64    # "idx3":I
    add-int v65, v64, p1

    .line 2471
    .restart local v65    # "idx4":I
    add-int v66, v65, p1

    .line 2472
    .restart local v66    # "idx5":I
    add-int v67, v66, p1

    .line 2473
    .restart local v67    # "idx6":I
    add-int v68, v57, v56

    .line 2474
    .restart local v68    # "idx7":I
    add-int v69, v68, v56

    .line 2475
    .restart local v69    # "idx8":I
    add-int v70, v69, v56

    .line 2476
    .restart local v70    # "idx9":I
    add-int v58, v70, v56

    .line 2477
    .restart local v58    # "idx10":I
    const/16 v34, 0x2

    .local v34, "i":I
    :goto_e1
    move/from16 v0, v34

    move/from16 v1, p1

    if-ge v0, v1, :cond_27b

    .line 2478
    add-int/lit8 v130, v34, -0x1

    add-int v126, v130, p7

    .line 2479
    .local v126, "widx1":I
    add-int/lit8 v130, v34, -0x1

    add-int v127, v130, v77

    .line 2480
    .local v127, "widx2":I
    add-int/lit8 v130, v34, -0x1

    add-int v128, v130, v78

    .line 2481
    .local v128, "widx3":I
    add-int/lit8 v130, v34, -0x1

    add-int v129, v130, v79

    .line 2482
    .local v129, "widx4":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v130, v0

    add-int/lit8 v131, v126, -0x1

    aget-wide v112, v130, v131

    .line 2483
    .local v112, "w1r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v130, v0

    aget-wide v110, v130, v126

    .line 2484
    .local v110, "w1i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v130, v0

    add-int/lit8 v131, v127, -0x1

    aget-wide v116, v130, v131

    .line 2485
    .local v116, "w2r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v130, v0

    aget-wide v114, v130, v127

    .line 2486
    .local v114, "w2i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v130, v0

    add-int/lit8 v131, v128, -0x1

    aget-wide v120, v130, v131

    .line 2487
    .local v120, "w3r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v130, v0

    aget-wide v118, v130, v128

    .line 2488
    .local v118, "w3i":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v130, v0

    add-int/lit8 v131, v129, -0x1

    aget-wide v124, v130, v131

    .line 2489
    .local v124, "w4r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v130, v0

    aget-wide v122, v130, v129

    .line 2491
    .local v122, "w4i":D
    sub-int v35, p1, v34

    .line 2492
    .local v35, "ic":I
    add-int v60, p4, v34

    .line 2493
    .local v60, "idx15":I
    add-int v61, p6, v34

    .line 2494
    .local v61, "idx16":I
    add-int v62, p6, v35

    .line 2496
    .local v62, "idx17":I
    add-int v71, v60, v57

    .line 2497
    .local v71, "iidx1":I
    add-int v72, v60, v68

    .line 2498
    .local v72, "iidx2":I
    add-int v73, v60, v69

    .line 2499
    .local v73, "iidx3":I
    add-int v74, v60, v70

    .line 2500
    .local v74, "iidx4":I
    add-int v75, v60, v58

    .line 2502
    .local v75, "iidx5":I
    add-int/lit8 v130, v71, -0x1

    aget-wide v36, p3, v130

    .line 2503
    .local v36, "i1i":D
    aget-wide v38, p3, v71

    .line 2504
    .restart local v38    # "i1r":D
    add-int/lit8 v130, v72, -0x1

    aget-wide v40, p3, v130

    .line 2505
    .local v40, "i2i":D
    aget-wide v42, p3, v72

    .line 2506
    .restart local v42    # "i2r":D
    add-int/lit8 v130, v73, -0x1

    aget-wide v44, p3, v130

    .line 2507
    .local v44, "i3i":D
    aget-wide v46, p3, v73

    .line 2508
    .restart local v46    # "i3r":D
    add-int/lit8 v130, v74, -0x1

    aget-wide v48, p3, v130

    .line 2509
    .local v48, "i4i":D
    aget-wide v50, p3, v74

    .line 2510
    .restart local v50    # "i4r":D
    add-int/lit8 v130, v75, -0x1

    aget-wide v52, p3, v130

    .line 2511
    .local v52, "i5i":D
    aget-wide v54, p3, v75

    .line 2513
    .restart local v54    # "i5r":D
    mul-double v130, v112, v40

    mul-double v132, v110, v42

    add-double v26, v130, v132

    .line 2514
    .local v26, "dr2":D
    mul-double v130, v112, v42

    mul-double v132, v110, v40

    sub-double v18, v130, v132

    .line 2515
    .local v18, "di2":D
    mul-double v130, v116, v44

    mul-double v132, v114, v46

    add-double v28, v130, v132

    .line 2516
    .local v28, "dr3":D
    mul-double v130, v116, v46

    mul-double v132, v114, v44

    sub-double v20, v130, v132

    .line 2517
    .local v20, "di3":D
    mul-double v130, v120, v48

    mul-double v132, v118, v50

    add-double v30, v130, v132

    .line 2518
    .local v30, "dr4":D
    mul-double v130, v120, v50

    mul-double v132, v118, v48

    sub-double v22, v130, v132

    .line 2519
    .local v22, "di4":D
    mul-double v130, v124, v52

    mul-double v132, v122, v54

    add-double v32, v130, v132

    .line 2520
    .local v32, "dr5":D
    mul-double v130, v124, v54

    mul-double v132, v122, v52

    sub-double v24, v130, v132

    .line 2522
    .local v24, "di5":D
    add-double v10, v26, v32

    .line 2523
    .restart local v10    # "cr2":D
    sub-double v8, v32, v26

    .line 2524
    .restart local v8    # "ci5":D
    sub-double v16, v18, v24

    .line 2525
    .local v16, "cr5":D
    add-double v2, v18, v24

    .line 2526
    .local v2, "ci2":D
    add-double v12, v28, v30

    .line 2527
    .restart local v12    # "cr3":D
    sub-double v6, v30, v28

    .line 2528
    .restart local v6    # "ci4":D
    sub-double v14, v20, v22

    .line 2529
    .local v14, "cr4":D
    add-double v4, v20, v22

    .line 2531
    .local v4, "ci3":D
    const-wide v130, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v130, v130, v10

    add-double v130, v130, v36

    const-wide v132, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v132, v132, v12

    add-double v102, v130, v132

    .line 2532
    .local v102, "tr2":D
    const-wide v130, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v130, v130, v2

    add-double v130, v130, v38

    const-wide v132, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v132, v132, v4

    add-double v90, v130, v132

    .line 2533
    .local v90, "ti2":D
    const-wide v130, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v130, v130, v10

    add-double v130, v130, v36

    const-wide v132, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v132, v132, v12

    add-double v104, v130, v132

    .line 2534
    .local v104, "tr3":D
    const-wide v130, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v130, v130, v2

    add-double v130, v130, v38

    const-wide v132, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v132, v132, v4

    add-double v92, v130, v132

    .line 2535
    .local v92, "ti3":D
    const-wide v130, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v130, v130, v16

    const-wide v132, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v132, v132, v14

    add-double v108, v130, v132

    .line 2536
    .local v108, "tr5":D
    const-wide v130, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v130, v130, v8

    const-wide v132, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v132, v132, v6

    add-double v96, v130, v132

    .line 2537
    .local v96, "ti5":D
    const-wide v130, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v130, v130, v16

    const-wide v132, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v132, v132, v14

    sub-double v106, v130, v132

    .line 2538
    .local v106, "tr4":D
    const-wide v130, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v130, v130, v8

    const-wide v132, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v132, v132, v6

    sub-double v94, v130, v132

    .line 2540
    .local v94, "ti4":D
    add-int v81, v61, v63

    .line 2541
    .local v81, "oidx1":I
    add-int v82, v62, v64

    .line 2542
    .local v82, "oidx2":I
    add-int v83, v61, v65

    .line 2543
    .local v83, "oidx3":I
    add-int v84, v62, v66

    .line 2544
    .local v84, "oidx4":I
    add-int v85, v61, v67

    .line 2546
    .local v85, "oidx5":I
    add-int/lit8 v130, v81, -0x1

    add-double v132, v36, v10

    add-double v132, v132, v12

    aput-wide v132, p5, v130

    .line 2547
    add-double v130, v38, v2

    add-double v130, v130, v4

    aput-wide v130, p5, v81

    .line 2548
    add-int/lit8 v130, v83, -0x1

    add-double v132, v102, v108

    aput-wide v132, p5, v130

    .line 2549
    add-int/lit8 v130, v82, -0x1

    sub-double v132, v102, v108

    aput-wide v132, p5, v130

    .line 2550
    add-double v130, v90, v96

    aput-wide v130, p5, v83

    .line 2551
    sub-double v130, v96, v90

    aput-wide v130, p5, v82

    .line 2552
    add-int/lit8 v130, v85, -0x1

    add-double v132, v104, v106

    aput-wide v132, p5, v130

    .line 2553
    add-int/lit8 v130, v84, -0x1

    sub-double v132, v104, v106

    aput-wide v132, p5, v130

    .line 2554
    add-double v130, v92, v94

    aput-wide v130, p5, v85

    .line 2555
    sub-double v130, v94, v92

    aput-wide v130, p5, v84

    .line 2477
    add-int/lit8 v34, v34, 0x2

    goto/16 :goto_e1

    .line 2466
    .end local v2    # "ci2":D
    .end local v4    # "ci3":D
    .end local v6    # "ci4":D
    .end local v8    # "ci5":D
    .end local v10    # "cr2":D
    .end local v12    # "cr3":D
    .end local v14    # "cr4":D
    .end local v16    # "cr5":D
    .end local v18    # "di2":D
    .end local v20    # "di3":D
    .end local v22    # "di4":D
    .end local v24    # "di5":D
    .end local v26    # "dr2":D
    .end local v28    # "dr3":D
    .end local v30    # "dr4":D
    .end local v32    # "dr5":D
    .end local v35    # "ic":I
    .end local v36    # "i1i":D
    .end local v38    # "i1r":D
    .end local v40    # "i2i":D
    .end local v42    # "i2r":D
    .end local v44    # "i3i":D
    .end local v46    # "i3r":D
    .end local v48    # "i4i":D
    .end local v50    # "i4r":D
    .end local v52    # "i5i":D
    .end local v54    # "i5r":D
    .end local v60    # "idx15":I
    .end local v61    # "idx16":I
    .end local v62    # "idx17":I
    .end local v71    # "iidx1":I
    .end local v72    # "iidx2":I
    .end local v73    # "iidx3":I
    .end local v74    # "iidx4":I
    .end local v75    # "iidx5":I
    .end local v81    # "oidx1":I
    .end local v82    # "oidx2":I
    .end local v83    # "oidx3":I
    .end local v84    # "oidx4":I
    .end local v85    # "oidx5":I
    .end local v90    # "ti2":D
    .end local v92    # "ti3":D
    .end local v94    # "ti4":D
    .end local v96    # "ti5":D
    .end local v102    # "tr2":D
    .end local v104    # "tr3":D
    .end local v106    # "tr4":D
    .end local v108    # "tr5":D
    .end local v110    # "w1i":D
    .end local v112    # "w1r":D
    .end local v114    # "w2i":D
    .end local v116    # "w2r":D
    .end local v118    # "w3i":D
    .end local v120    # "w3r":D
    .end local v122    # "w4i":D
    .end local v124    # "w4r":D
    .end local v126    # "widx1":I
    .end local v127    # "widx2":I
    .end local v128    # "widx3":I
    .end local v129    # "widx4":I
    :cond_27b
    add-int/lit8 v80, v80, 0x1

    goto/16 :goto_c5

    .line 2558
    .end local v34    # "i":I
    .end local v57    # "idx1":I
    .end local v58    # "idx10":I
    .end local v63    # "idx2":I
    .end local v64    # "idx3":I
    .end local v65    # "idx4":I
    .end local v66    # "idx5":I
    .end local v67    # "idx6":I
    .end local v68    # "idx7":I
    .end local v69    # "idx8":I
    .end local v70    # "idx9":I
    :cond_27f
    return-void
.end method

.method radfg(IIII[DI[DII)V
    .registers 88
    .param p1, "ido"    # I
    .param p2, "ip"    # I
    .param p3, "l1"    # I
    .param p4, "idl1"    # I
    .param p5, "in"    # [D
    .param p6, "in_off"    # I
    .param p7, "out"    # [D
    .param p8, "out_off"    # I
    .param p9, "offset"    # I

    .prologue
    .line 2708
    move/from16 v50, p9

    .line 2710
    .local v50, "iw1":I
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v72, v0

    const-wide v74, 0x401921fb54442d18L    # 6.283185307179586

    div-double v18, v74, v72

    .line 2711
    .local v18, "arg":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    .line 2712
    .local v22, "dcp":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    .line 2713
    .local v26, "dsp":D
    add-int/lit8 v72, p2, 0x1

    div-int/lit8 v48, v72, 0x2

    .line 2714
    .local v48, "ipph":I
    add-int/lit8 v72, p1, -0x1

    div-int/lit8 v57, v72, 0x2

    .line 2715
    .local v57, "nbd":I
    const/16 v72, 0x1

    move/from16 v0, p1

    move/from16 v1, v72

    if-eq v0, v1, :cond_1f9

    .line 2716
    const/16 v47, 0x0

    .local v47, "ik":I
    :goto_28
    move/from16 v0, v47

    move/from16 v1, p4

    if-ge v0, v1, :cond_39

    .line 2717
    add-int v72, p8, v47

    add-int v73, p6, v47

    aget-wide v74, p5, v73

    aput-wide v74, p7, v72

    .line 2716
    add-int/lit8 v47, v47, 0x1

    goto :goto_28

    .line 2718
    :cond_39
    const/16 v51, 0x1

    .local v51, "j":I
    :goto_3b
    move/from16 v0, v51

    move/from16 v1, p2

    if-ge v0, v1, :cond_5f

    .line 2719
    mul-int v72, v51, p3

    mul-int v37, v72, p1

    .line 2720
    .local v37, "idx1":I
    const/16 v54, 0x0

    .local v54, "k":I
    :goto_47
    move/from16 v0, v54

    move/from16 v1, p3

    if-ge v0, v1, :cond_5c

    .line 2721
    mul-int v72, v54, p1

    add-int v38, v72, v37

    .line 2722
    .local v38, "idx2":I
    add-int v72, p8, v38

    add-int v73, p6, v38

    aget-wide v74, p5, v73

    aput-wide v74, p7, v72

    .line 2720
    add-int/lit8 v54, v54, 0x1

    goto :goto_47

    .line 2718
    .end local v38    # "idx2":I
    :cond_5c
    add-int/lit8 v51, v51, 0x1

    goto :goto_3b

    .line 2725
    .end local v37    # "idx1":I
    .end local v54    # "k":I
    :cond_5f
    move/from16 v0, v57

    move/from16 v1, p3

    if-gt v0, v1, :cond_cd

    .line 2726
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v49, v0

    .line 2727
    .local v49, "is":I
    const/16 v51, 0x1

    :goto_6c
    move/from16 v0, v51

    move/from16 v1, p2

    if-ge v0, v1, :cond_135

    .line 2728
    add-int v49, v49, p1

    .line 2729
    add-int/lit8 v34, v49, -0x1

    .line 2730
    .local v34, "idij":I
    mul-int v72, v51, p3

    mul-int v37, v72, p1

    .line 2731
    .restart local v37    # "idx1":I
    const/16 v28, 0x2

    .local v28, "i":I
    :goto_7c
    move/from16 v0, v28

    move/from16 v1, p1

    if-ge v0, v1, :cond_ca

    .line 2732
    add-int/lit8 v34, v34, 0x2

    .line 2733
    add-int v38, v34, p9

    .line 2734
    .restart local v38    # "idx2":I
    add-int v40, p6, v28

    .line 2735
    .local v40, "idx4":I
    add-int v41, p8, v28

    .line 2736
    .local v41, "idx5":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v72, v0

    add-int/lit8 v73, v38, -0x1

    aget-wide v70, v72, v73

    .line 2737
    .local v70, "w1r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v72, v0

    aget-wide v68, v72, v38

    .line 2738
    .local v68, "w1i":D
    const/16 v54, 0x0

    .restart local v54    # "k":I
    :goto_9e
    move/from16 v0, v54

    move/from16 v1, p3

    if-ge v0, v1, :cond_c7

    .line 2739
    mul-int v72, v54, p1

    add-int v39, v72, v37

    .line 2740
    .local v39, "idx3":I
    add-int v66, v41, v39

    .line 2741
    .local v66, "oidx1":I
    add-int v45, v40, v39

    .line 2742
    .local v45, "iidx1":I
    add-int/lit8 v72, v45, -0x1

    aget-wide v30, p5, v72

    .line 2743
    .local v30, "i1i":D
    aget-wide v32, p5, v45

    .line 2745
    .local v32, "i1r":D
    add-int/lit8 v72, v66, -0x1

    mul-double v74, v70, v30

    mul-double v76, v68, v32

    add-double v74, v74, v76

    aput-wide v74, p7, v72

    .line 2746
    mul-double v72, v70, v32

    mul-double v74, v68, v30

    sub-double v72, v72, v74

    aput-wide v72, p7, v66

    .line 2738
    add-int/lit8 v54, v54, 0x1

    goto :goto_9e

    .line 2731
    .end local v30    # "i1i":D
    .end local v32    # "i1r":D
    .end local v39    # "idx3":I
    .end local v45    # "iidx1":I
    .end local v66    # "oidx1":I
    :cond_c7
    add-int/lit8 v28, v28, 0x2

    goto :goto_7c

    .line 2727
    .end local v38    # "idx2":I
    .end local v40    # "idx4":I
    .end local v41    # "idx5":I
    .end local v54    # "k":I
    .end local v68    # "w1i":D
    .end local v70    # "w1r":D
    :cond_ca
    add-int/lit8 v51, v51, 0x1

    goto :goto_6c

    .line 2751
    .end local v28    # "i":I
    .end local v34    # "idij":I
    .end local v37    # "idx1":I
    .end local v49    # "is":I
    :cond_cd
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v49, v0

    .line 2752
    .restart local v49    # "is":I
    const/16 v51, 0x1

    :goto_d4
    move/from16 v0, v51

    move/from16 v1, p2

    if-ge v0, v1, :cond_135

    .line 2753
    add-int v49, v49, p1

    .line 2754
    mul-int v72, v51, p3

    mul-int v37, v72, p1

    .line 2755
    .restart local v37    # "idx1":I
    const/16 v54, 0x0

    .restart local v54    # "k":I
    :goto_e2
    move/from16 v0, v54

    move/from16 v1, p3

    if-ge v0, v1, :cond_132

    .line 2756
    add-int/lit8 v34, v49, -0x1

    .line 2757
    .restart local v34    # "idij":I
    mul-int v72, v54, p1

    add-int v39, v72, v37

    .line 2758
    .restart local v39    # "idx3":I
    const/16 v28, 0x2

    .restart local v28    # "i":I
    :goto_f0
    move/from16 v0, v28

    move/from16 v1, p1

    if-ge v0, v1, :cond_12f

    .line 2759
    add-int/lit8 v34, v34, 0x2

    .line 2760
    add-int v38, v34, p9

    .line 2761
    .restart local v38    # "idx2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v72, v0

    add-int/lit8 v73, v38, -0x1

    aget-wide v70, v72, v73

    .line 2762
    .restart local v70    # "w1r":D
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v72, v0

    aget-wide v68, v72, v38

    .line 2763
    .restart local v68    # "w1i":D
    add-int v72, p8, v28

    add-int v66, v72, v39

    .line 2764
    .restart local v66    # "oidx1":I
    add-int v72, p6, v28

    add-int v45, v72, v39

    .line 2765
    .restart local v45    # "iidx1":I
    add-int/lit8 v72, v45, -0x1

    aget-wide v30, p5, v72

    .line 2766
    .restart local v30    # "i1i":D
    aget-wide v32, p5, v45

    .line 2768
    .restart local v32    # "i1r":D
    add-int/lit8 v72, v66, -0x1

    mul-double v74, v70, v30

    mul-double v76, v68, v32

    add-double v74, v74, v76

    aput-wide v74, p7, v72

    .line 2769
    mul-double v72, v70, v32

    mul-double v74, v68, v30

    sub-double v72, v72, v74

    aput-wide v72, p7, v66

    .line 2758
    add-int/lit8 v28, v28, 0x2

    goto :goto_f0

    .line 2755
    .end local v30    # "i1i":D
    .end local v32    # "i1r":D
    .end local v38    # "idx2":I
    .end local v45    # "iidx1":I
    .end local v66    # "oidx1":I
    .end local v68    # "w1i":D
    .end local v70    # "w1r":D
    :cond_12f
    add-int/lit8 v54, v54, 0x1

    goto :goto_e2

    .line 2752
    .end local v28    # "i":I
    .end local v34    # "idij":I
    .end local v39    # "idx3":I
    :cond_132
    add-int/lit8 v51, v51, 0x1

    goto :goto_d4

    .line 2774
    .end local v37    # "idx1":I
    .end local v54    # "k":I
    :cond_135
    move/from16 v0, v57

    move/from16 v1, p3

    if-lt v0, v1, :cond_19a

    .line 2775
    const/16 v51, 0x1

    :goto_13d
    move/from16 v0, v51

    move/from16 v1, v48

    if-ge v0, v1, :cond_206

    .line 2776
    sub-int v53, p2, v51

    .line 2777
    .local v53, "jc":I
    mul-int v72, v51, p3

    mul-int v37, v72, p1

    .line 2778
    .restart local v37    # "idx1":I
    mul-int v72, v53, p3

    mul-int v38, v72, p1

    .line 2779
    .restart local v38    # "idx2":I
    const/16 v54, 0x0

    .restart local v54    # "k":I
    :goto_14f
    move/from16 v0, v54

    move/from16 v1, p3

    if-ge v0, v1, :cond_197

    .line 2780
    mul-int v72, v54, p1

    add-int v39, v72, v37

    .line 2781
    .restart local v39    # "idx3":I
    mul-int v72, v54, p1

    add-int v40, v72, v38

    .line 2782
    .restart local v40    # "idx4":I
    const/16 v28, 0x2

    .restart local v28    # "i":I
    :goto_15f
    move/from16 v0, v28

    move/from16 v1, p1

    if-ge v0, v1, :cond_194

    .line 2783
    add-int v41, p6, v28

    .line 2784
    .restart local v41    # "idx5":I
    add-int v42, p8, v28

    .line 2785
    .local v42, "idx6":I
    add-int v45, v41, v39

    .line 2786
    .restart local v45    # "iidx1":I
    add-int v46, v41, v40

    .line 2787
    .local v46, "iidx2":I
    add-int v66, v42, v39

    .line 2788
    .restart local v66    # "oidx1":I
    add-int v67, v42, v40

    .line 2789
    .local v67, "oidx2":I
    add-int/lit8 v72, v66, -0x1

    aget-wide v58, p7, v72

    .line 2790
    .local v58, "o1i":D
    aget-wide v60, p7, v66

    .line 2791
    .local v60, "o1r":D
    add-int/lit8 v72, v67, -0x1

    aget-wide v62, p7, v72

    .line 2792
    .local v62, "o2i":D
    aget-wide v64, p7, v67

    .line 2794
    .local v64, "o2r":D
    add-int/lit8 v72, v45, -0x1

    add-double v74, v58, v62

    aput-wide v74, p5, v72

    .line 2795
    add-double v72, v60, v64

    aput-wide v72, p5, v45

    .line 2797
    add-int/lit8 v72, v46, -0x1

    sub-double v74, v60, v64

    aput-wide v74, p5, v72

    .line 2798
    sub-double v72, v62, v58

    aput-wide v72, p5, v46

    .line 2782
    add-int/lit8 v28, v28, 0x2

    goto :goto_15f

    .line 2779
    .end local v41    # "idx5":I
    .end local v42    # "idx6":I
    .end local v45    # "iidx1":I
    .end local v46    # "iidx2":I
    .end local v58    # "o1i":D
    .end local v60    # "o1r":D
    .end local v62    # "o2i":D
    .end local v64    # "o2r":D
    .end local v66    # "oidx1":I
    .end local v67    # "oidx2":I
    :cond_194
    add-int/lit8 v54, v54, 0x1

    goto :goto_14f

    .line 2775
    .end local v28    # "i":I
    .end local v39    # "idx3":I
    .end local v40    # "idx4":I
    :cond_197
    add-int/lit8 v51, v51, 0x1

    goto :goto_13d

    .line 2803
    .end local v37    # "idx1":I
    .end local v38    # "idx2":I
    .end local v53    # "jc":I
    .end local v54    # "k":I
    :cond_19a
    const/16 v51, 0x1

    :goto_19c
    move/from16 v0, v51

    move/from16 v1, v48

    if-ge v0, v1, :cond_206

    .line 2804
    sub-int v53, p2, v51

    .line 2805
    .restart local v53    # "jc":I
    mul-int v72, v51, p3

    mul-int v37, v72, p1

    .line 2806
    .restart local v37    # "idx1":I
    mul-int v72, v53, p3

    mul-int v38, v72, p1

    .line 2807
    .restart local v38    # "idx2":I
    const/16 v28, 0x2

    .restart local v28    # "i":I
    :goto_1ae
    move/from16 v0, v28

    move/from16 v1, p1

    if-ge v0, v1, :cond_1f6

    .line 2808
    add-int v41, p6, v28

    .line 2809
    .restart local v41    # "idx5":I
    add-int v42, p8, v28

    .line 2810
    .restart local v42    # "idx6":I
    const/16 v54, 0x0

    .restart local v54    # "k":I
    :goto_1ba
    move/from16 v0, v54

    move/from16 v1, p3

    if-ge v0, v1, :cond_1f3

    .line 2811
    mul-int v72, v54, p1

    add-int v39, v72, v37

    .line 2812
    .restart local v39    # "idx3":I
    mul-int v72, v54, p1

    add-int v40, v72, v38

    .line 2813
    .restart local v40    # "idx4":I
    add-int v45, v41, v39

    .line 2814
    .restart local v45    # "iidx1":I
    add-int v46, v41, v40

    .line 2815
    .restart local v46    # "iidx2":I
    add-int v66, v42, v39

    .line 2816
    .restart local v66    # "oidx1":I
    add-int v67, v42, v40

    .line 2817
    .restart local v67    # "oidx2":I
    add-int/lit8 v72, v66, -0x1

    aget-wide v58, p7, v72

    .line 2818
    .restart local v58    # "o1i":D
    aget-wide v60, p7, v66

    .line 2819
    .restart local v60    # "o1r":D
    add-int/lit8 v72, v67, -0x1

    aget-wide v62, p7, v72

    .line 2820
    .restart local v62    # "o2i":D
    aget-wide v64, p7, v67

    .line 2822
    .restart local v64    # "o2r":D
    add-int/lit8 v72, v45, -0x1

    add-double v74, v58, v62

    aput-wide v74, p5, v72

    .line 2823
    add-double v72, v60, v64

    aput-wide v72, p5, v45

    .line 2824
    add-int/lit8 v72, v46, -0x1

    sub-double v74, v60, v64

    aput-wide v74, p5, v72

    .line 2825
    sub-double v72, v62, v58

    aput-wide v72, p5, v46

    .line 2810
    add-int/lit8 v54, v54, 0x1

    goto :goto_1ba

    .line 2807
    .end local v39    # "idx3":I
    .end local v40    # "idx4":I
    .end local v45    # "iidx1":I
    .end local v46    # "iidx2":I
    .end local v58    # "o1i":D
    .end local v60    # "o1r":D
    .end local v62    # "o2i":D
    .end local v64    # "o2r":D
    .end local v66    # "oidx1":I
    .end local v67    # "oidx2":I
    :cond_1f3
    add-int/lit8 v28, v28, 0x2

    goto :goto_1ae

    .line 2803
    .end local v41    # "idx5":I
    .end local v42    # "idx6":I
    .end local v54    # "k":I
    :cond_1f6
    add-int/lit8 v51, v51, 0x1

    goto :goto_19c

    .line 2831
    .end local v28    # "i":I
    .end local v37    # "idx1":I
    .end local v38    # "idx2":I
    .end local v47    # "ik":I
    .end local v49    # "is":I
    .end local v51    # "j":I
    .end local v53    # "jc":I
    :cond_1f9
    move-object/from16 v0, p7

    move/from16 v1, p8

    move-object/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 2833
    :cond_206
    const/16 v51, 0x1

    .restart local v51    # "j":I
    :goto_208
    move/from16 v0, v51

    move/from16 v1, v48

    if-ge v0, v1, :cond_242

    .line 2834
    sub-int v53, p2, v51

    .line 2835
    .restart local v53    # "jc":I
    mul-int v72, v51, p3

    mul-int v37, v72, p1

    .line 2836
    .restart local v37    # "idx1":I
    mul-int v72, v53, p3

    mul-int v38, v72, p1

    .line 2837
    .restart local v38    # "idx2":I
    const/16 v54, 0x0

    .restart local v54    # "k":I
    :goto_21a
    move/from16 v0, v54

    move/from16 v1, p3

    if-ge v0, v1, :cond_23f

    .line 2838
    mul-int v72, v54, p1

    add-int v39, v72, v37

    .line 2839
    .restart local v39    # "idx3":I
    mul-int v72, v54, p1

    add-int v40, v72, v38

    .line 2840
    .restart local v40    # "idx4":I
    add-int v66, p8, v39

    .line 2841
    .restart local v66    # "oidx1":I
    add-int v67, p8, v40

    .line 2842
    .restart local v67    # "oidx2":I
    aget-wide v60, p7, v66

    .line 2843
    .restart local v60    # "o1r":D
    aget-wide v64, p7, v67

    .line 2845
    .restart local v64    # "o2r":D
    add-int v72, p6, v39

    add-double v74, v60, v64

    aput-wide v74, p5, v72

    .line 2846
    add-int v72, p6, v40

    sub-double v74, v64, v60

    aput-wide v74, p5, v72

    .line 2837
    add-int/lit8 v54, v54, 0x1

    goto :goto_21a

    .line 2833
    .end local v39    # "idx3":I
    .end local v40    # "idx4":I
    .end local v60    # "o1r":D
    .end local v64    # "o2r":D
    .end local v66    # "oidx1":I
    .end local v67    # "oidx2":I
    :cond_23f
    add-int/lit8 v51, v51, 0x1

    goto :goto_208

    .line 2850
    .end local v37    # "idx1":I
    .end local v38    # "idx2":I
    .end local v53    # "jc":I
    .end local v54    # "k":I
    :cond_242
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 2851
    .local v10, "ar1":D
    const-wide/16 v6, 0x0

    .line 2852
    .local v6, "ai1":D
    add-int/lit8 v72, p2, -0x1

    mul-int v35, v72, p4

    .line 2853
    .local v35, "idx0":I
    const/16 v55, 0x1

    .local v55, "l":I
    :goto_24c
    move/from16 v0, v55

    move/from16 v1, v48

    if-ge v0, v1, :cond_2e0

    .line 2854
    sub-int v56, p2, v55

    .line 2855
    .local v56, "lc":I
    mul-double v72, v22, v10

    mul-double v74, v26, v6

    sub-double v12, v72, v74

    .line 2856
    .local v12, "ar1h":D
    mul-double v72, v22, v6

    mul-double v74, v26, v10

    add-double v6, v72, v74

    .line 2857
    move-wide v10, v12

    .line 2858
    mul-int v37, v55, p4

    .line 2859
    .restart local v37    # "idx1":I
    mul-int v38, v56, p4

    .line 2860
    .restart local v38    # "idx2":I
    const/16 v47, 0x0

    .restart local v47    # "ik":I
    :goto_267
    move/from16 v0, v47

    move/from16 v1, p4

    if-ge v0, v1, :cond_28c

    .line 2861
    add-int v39, p8, v47

    .line 2862
    .restart local v39    # "idx3":I
    add-int v40, p6, v47

    .line 2863
    .restart local v40    # "idx4":I
    add-int v72, v39, v37

    aget-wide v74, p5, v40

    add-int v73, v40, p4

    aget-wide v76, p5, v73

    mul-double v76, v76, v12

    add-double v74, v74, v76

    aput-wide v74, p7, v72

    .line 2864
    add-int v72, v39, v38

    add-int v73, v40, v35

    aget-wide v74, p5, v73

    mul-double v74, v74, v6

    aput-wide v74, p7, v72

    .line 2860
    add-int/lit8 v47, v47, 0x1

    goto :goto_267

    .line 2866
    .end local v39    # "idx3":I
    .end local v40    # "idx4":I
    :cond_28c
    move-wide/from16 v20, v12

    .line 2867
    .local v20, "dc2":D
    move-wide/from16 v24, v6

    .line 2868
    .local v24, "ds2":D
    move-wide v14, v12

    .line 2869
    .local v14, "ar2":D
    move-wide v8, v6

    .line 2870
    .local v8, "ai2":D
    const/16 v51, 0x2

    :goto_294
    move/from16 v0, v51

    move/from16 v1, v48

    if-ge v0, v1, :cond_2dc

    .line 2871
    sub-int v53, p2, v51

    .line 2872
    .restart local v53    # "jc":I
    mul-double v72, v12, v14

    mul-double v74, v6, v8

    sub-double v16, v72, v74

    .line 2873
    .local v16, "ar2h":D
    mul-double v72, v12, v8

    mul-double v74, v6, v14

    add-double v8, v72, v74

    .line 2874
    move-wide/from16 v14, v16

    .line 2875
    mul-int v39, v51, p4

    .line 2876
    .restart local v39    # "idx3":I
    mul-int v40, v53, p4

    .line 2877
    .restart local v40    # "idx4":I
    const/16 v47, 0x0

    :goto_2b0
    move/from16 v0, v47

    move/from16 v1, p4

    if-ge v0, v1, :cond_2d9

    .line 2878
    add-int v41, p8, v47

    .line 2879
    .restart local v41    # "idx5":I
    add-int v42, p6, v47

    .line 2880
    .restart local v42    # "idx6":I
    add-int v72, v41, v37

    aget-wide v74, p7, v72

    add-int v73, v42, v39

    aget-wide v76, p5, v73

    mul-double v76, v76, v16

    add-double v74, v74, v76

    aput-wide v74, p7, v72

    .line 2881
    add-int v72, v41, v38

    aget-wide v74, p7, v72

    add-int v73, v42, v40

    aget-wide v76, p5, v73

    mul-double v76, v76, v8

    add-double v74, v74, v76

    aput-wide v74, p7, v72

    .line 2877
    add-int/lit8 v47, v47, 0x1

    goto :goto_2b0

    .line 2870
    .end local v41    # "idx5":I
    .end local v42    # "idx6":I
    :cond_2d9
    add-int/lit8 v51, v51, 0x1

    goto :goto_294

    .line 2853
    .end local v16    # "ar2h":D
    .end local v39    # "idx3":I
    .end local v40    # "idx4":I
    .end local v53    # "jc":I
    :cond_2dc
    add-int/lit8 v55, v55, 0x1

    goto/16 :goto_24c

    .line 2885
    .end local v8    # "ai2":D
    .end local v12    # "ar1h":D
    .end local v14    # "ar2":D
    .end local v20    # "dc2":D
    .end local v24    # "ds2":D
    .end local v37    # "idx1":I
    .end local v38    # "idx2":I
    .end local v47    # "ik":I
    .end local v56    # "lc":I
    :cond_2e0
    const/16 v51, 0x1

    :goto_2e2
    move/from16 v0, v51

    move/from16 v1, v48

    if-ge v0, v1, :cond_306

    .line 2886
    mul-int v37, v51, p4

    .line 2887
    .restart local v37    # "idx1":I
    const/16 v47, 0x0

    .restart local v47    # "ik":I
    :goto_2ec
    move/from16 v0, v47

    move/from16 v1, p4

    if-ge v0, v1, :cond_303

    .line 2888
    add-int v72, p8, v47

    aget-wide v74, p7, v72

    add-int v73, p6, v47

    add-int v73, v73, v37

    aget-wide v76, p5, v73

    add-double v74, v74, v76

    aput-wide v74, p7, v72

    .line 2887
    add-int/lit8 v47, v47, 0x1

    goto :goto_2ec

    .line 2885
    :cond_303
    add-int/lit8 v51, v51, 0x1

    goto :goto_2e2

    .line 2892
    .end local v37    # "idx1":I
    .end local v47    # "ik":I
    :cond_306
    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_332

    .line 2893
    const/16 v54, 0x0

    .restart local v54    # "k":I
    :goto_30e
    move/from16 v0, v54

    move/from16 v1, p3

    if-ge v0, v1, :cond_358

    .line 2894
    mul-int v37, v54, p1

    .line 2895
    .restart local v37    # "idx1":I
    mul-int v38, v37, p2

    .line 2896
    .restart local v38    # "idx2":I
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_31a
    move/from16 v0, v28

    move/from16 v1, p1

    if-ge v0, v1, :cond_32f

    .line 2897
    add-int v72, p6, v28

    add-int v72, v72, v38

    add-int v73, p8, v28

    add-int v73, v73, v37

    aget-wide v74, p7, v73

    aput-wide v74, p5, v72

    .line 2896
    add-int/lit8 v28, v28, 0x1

    goto :goto_31a

    .line 2893
    :cond_32f
    add-int/lit8 v54, v54, 0x1

    goto :goto_30e

    .line 2901
    .end local v28    # "i":I
    .end local v37    # "idx1":I
    .end local v38    # "idx2":I
    .end local v54    # "k":I
    :cond_332
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_334
    move/from16 v0, v28

    move/from16 v1, p1

    if-ge v0, v1, :cond_358

    .line 2902
    const/16 v54, 0x0

    .restart local v54    # "k":I
    :goto_33c
    move/from16 v0, v54

    move/from16 v1, p3

    if-ge v0, v1, :cond_355

    .line 2903
    mul-int v37, v54, p1

    .line 2904
    .restart local v37    # "idx1":I
    add-int v72, p6, v28

    mul-int v73, v37, p2

    add-int v72, v72, v73

    add-int v73, p8, v28

    add-int v73, v73, v37

    aget-wide v74, p7, v73

    aput-wide v74, p5, v72

    .line 2902
    add-int/lit8 v54, v54, 0x1

    goto :goto_33c

    .line 2901
    .end local v37    # "idx1":I
    :cond_355
    add-int/lit8 v28, v28, 0x1

    goto :goto_334

    .line 2908
    .end local v28    # "i":I
    .end local v54    # "k":I
    :cond_358
    mul-int v36, p2, p1

    .line 2909
    .local v36, "idx01":I
    const/16 v51, 0x1

    :goto_35c
    move/from16 v0, v51

    move/from16 v1, v48

    if-ge v0, v1, :cond_3a0

    .line 2910
    sub-int v53, p2, v51

    .line 2911
    .restart local v53    # "jc":I
    mul-int/lit8 v52, v51, 0x2

    .line 2912
    .local v52, "j2":I
    mul-int v72, v51, p3

    mul-int v37, v72, p1

    .line 2913
    .restart local v37    # "idx1":I
    mul-int v72, v53, p3

    mul-int v38, v72, p1

    .line 2914
    .restart local v38    # "idx2":I
    mul-int v39, v52, p1

    .line 2915
    .restart local v39    # "idx3":I
    const/16 v54, 0x0

    .restart local v54    # "k":I
    :goto_372
    move/from16 v0, v54

    move/from16 v1, p3

    if-ge v0, v1, :cond_39d

    .line 2916
    mul-int v40, v54, p1

    .line 2917
    .restart local v40    # "idx4":I
    add-int v41, v40, v37

    .line 2918
    .restart local v41    # "idx5":I
    add-int v42, v40, v38

    .line 2919
    .restart local v42    # "idx6":I
    mul-int v43, v54, v36

    .line 2920
    .local v43, "idx7":I
    add-int v72, p6, p1

    add-int/lit8 v72, v72, -0x1

    add-int v72, v72, v39

    sub-int v72, v72, p1

    add-int v72, v72, v43

    add-int v73, p8, v41

    aget-wide v74, p7, v73

    aput-wide v74, p5, v72

    .line 2921
    add-int v72, p6, v39

    add-int v72, v72, v43

    add-int v73, p8, v42

    aget-wide v74, p7, v73

    aput-wide v74, p5, v72

    .line 2915
    add-int/lit8 v54, v54, 0x1

    goto :goto_372

    .line 2909
    .end local v40    # "idx4":I
    .end local v41    # "idx5":I
    .end local v42    # "idx6":I
    .end local v43    # "idx7":I
    :cond_39d
    add-int/lit8 v51, v51, 0x1

    goto :goto_35c

    .line 2924
    .end local v37    # "idx1":I
    .end local v38    # "idx2":I
    .end local v39    # "idx3":I
    .end local v52    # "j2":I
    .end local v53    # "jc":I
    .end local v54    # "k":I
    :cond_3a0
    const/16 v72, 0x1

    move/from16 v0, p1

    move/from16 v1, v72

    if-ne v0, v1, :cond_3a9

    .line 2925
    return-void

    .line 2926
    :cond_3a9
    move/from16 v0, v57

    move/from16 v1, p3

    if-lt v0, v1, :cond_41c

    .line 2927
    const/16 v51, 0x1

    :goto_3b1
    move/from16 v0, v51

    move/from16 v1, v48

    if-ge v0, v1, :cond_489

    .line 2928
    sub-int v53, p2, v51

    .line 2929
    .restart local v53    # "jc":I
    mul-int/lit8 v52, v51, 0x2

    .line 2930
    .restart local v52    # "j2":I
    mul-int v72, v51, p3

    mul-int v37, v72, p1

    .line 2931
    .restart local v37    # "idx1":I
    mul-int v72, v53, p3

    mul-int v38, v72, p1

    .line 2932
    .restart local v38    # "idx2":I
    mul-int v39, v52, p1

    .line 2933
    .restart local v39    # "idx3":I
    const/16 v54, 0x0

    .restart local v54    # "k":I
    :goto_3c7
    move/from16 v0, v54

    move/from16 v1, p3

    if-ge v0, v1, :cond_419

    .line 2934
    mul-int v40, v54, v36

    .line 2935
    .restart local v40    # "idx4":I
    mul-int v41, v54, p1

    .line 2936
    .restart local v41    # "idx5":I
    const/16 v28, 0x2

    .restart local v28    # "i":I
    :goto_3d3
    move/from16 v0, v28

    move/from16 v1, p1

    if-ge v0, v1, :cond_416

    .line 2937
    sub-int v29, p1, v28

    .line 2938
    .local v29, "ic":I
    add-int v42, p6, v28

    .line 2939
    .restart local v42    # "idx6":I
    add-int v43, p6, v29

    .line 2940
    .restart local v43    # "idx7":I
    add-int v44, p8, v28

    .line 2941
    .local v44, "idx8":I
    add-int v72, v42, v39

    add-int v45, v72, v40

    .line 2942
    .restart local v45    # "iidx1":I
    add-int v72, v43, v39

    sub-int v72, v72, p1

    add-int v46, v72, v40

    .line 2943
    .restart local v46    # "iidx2":I
    add-int v72, v44, v41

    add-int v66, v72, v37

    .line 2944
    .restart local v66    # "oidx1":I
    add-int v72, v44, v41

    add-int v67, v72, v38

    .line 2945
    .restart local v67    # "oidx2":I
    add-int/lit8 v72, v66, -0x1

    aget-wide v58, p7, v72

    .line 2946
    .restart local v58    # "o1i":D
    aget-wide v60, p7, v66

    .line 2947
    .restart local v60    # "o1r":D
    add-int/lit8 v72, v67, -0x1

    aget-wide v62, p7, v72

    .line 2948
    .restart local v62    # "o2i":D
    aget-wide v64, p7, v67

    .line 2950
    .restart local v64    # "o2r":D
    add-int/lit8 v72, v45, -0x1

    add-double v74, v58, v62

    aput-wide v74, p5, v72

    .line 2951
    add-int/lit8 v72, v46, -0x1

    sub-double v74, v58, v62

    aput-wide v74, p5, v72

    .line 2952
    add-double v72, v60, v64

    aput-wide v72, p5, v45

    .line 2953
    sub-double v72, v64, v60

    aput-wide v72, p5, v46

    .line 2936
    add-int/lit8 v28, v28, 0x2

    goto :goto_3d3

    .line 2933
    .end local v29    # "ic":I
    .end local v42    # "idx6":I
    .end local v43    # "idx7":I
    .end local v44    # "idx8":I
    .end local v45    # "iidx1":I
    .end local v46    # "iidx2":I
    .end local v58    # "o1i":D
    .end local v60    # "o1r":D
    .end local v62    # "o2i":D
    .end local v64    # "o2r":D
    .end local v66    # "oidx1":I
    .end local v67    # "oidx2":I
    :cond_416
    add-int/lit8 v54, v54, 0x1

    goto :goto_3c7

    .line 2927
    .end local v28    # "i":I
    .end local v40    # "idx4":I
    .end local v41    # "idx5":I
    :cond_419
    add-int/lit8 v51, v51, 0x1

    goto :goto_3b1

    .line 2958
    .end local v37    # "idx1":I
    .end local v38    # "idx2":I
    .end local v39    # "idx3":I
    .end local v52    # "j2":I
    .end local v53    # "jc":I
    .end local v54    # "k":I
    :cond_41c
    const/16 v51, 0x1

    :goto_41e
    move/from16 v0, v51

    move/from16 v1, v48

    if-ge v0, v1, :cond_489

    .line 2959
    sub-int v53, p2, v51

    .line 2960
    .restart local v53    # "jc":I
    mul-int/lit8 v52, v51, 0x2

    .line 2961
    .restart local v52    # "j2":I
    mul-int v72, v51, p3

    mul-int v37, v72, p1

    .line 2962
    .restart local v37    # "idx1":I
    mul-int v72, v53, p3

    mul-int v38, v72, p1

    .line 2963
    .restart local v38    # "idx2":I
    mul-int v39, v52, p1

    .line 2964
    .restart local v39    # "idx3":I
    const/16 v28, 0x2

    .restart local v28    # "i":I
    :goto_434
    move/from16 v0, v28

    move/from16 v1, p1

    if-ge v0, v1, :cond_486

    .line 2965
    sub-int v29, p1, v28

    .line 2966
    .restart local v29    # "ic":I
    add-int v42, p6, v28

    .line 2967
    .restart local v42    # "idx6":I
    add-int v43, p6, v29

    .line 2968
    .restart local v43    # "idx7":I
    add-int v44, p8, v28

    .line 2969
    .restart local v44    # "idx8":I
    const/16 v54, 0x0

    .restart local v54    # "k":I
    :goto_444
    move/from16 v0, v54

    move/from16 v1, p3

    if-ge v0, v1, :cond_483

    .line 2970
    mul-int v40, v54, v36

    .line 2971
    .restart local v40    # "idx4":I
    mul-int v41, v54, p1

    .line 2972
    .restart local v41    # "idx5":I
    add-int v72, v42, v39

    add-int v45, v72, v40

    .line 2973
    .restart local v45    # "iidx1":I
    add-int v72, v43, v39

    sub-int v72, v72, p1

    add-int v46, v72, v40

    .line 2974
    .restart local v46    # "iidx2":I
    add-int v72, v44, v41

    add-int v66, v72, v37

    .line 2975
    .restart local v66    # "oidx1":I
    add-int v72, v44, v41

    add-int v67, v72, v38

    .line 2976
    .restart local v67    # "oidx2":I
    add-int/lit8 v72, v66, -0x1

    aget-wide v58, p7, v72

    .line 2977
    .restart local v58    # "o1i":D
    aget-wide v60, p7, v66

    .line 2978
    .restart local v60    # "o1r":D
    add-int/lit8 v72, v67, -0x1

    aget-wide v62, p7, v72

    .line 2979
    .restart local v62    # "o2i":D
    aget-wide v64, p7, v67

    .line 2981
    .restart local v64    # "o2r":D
    add-int/lit8 v72, v45, -0x1

    add-double v74, v58, v62

    aput-wide v74, p5, v72

    .line 2982
    add-int/lit8 v72, v46, -0x1

    sub-double v74, v58, v62

    aput-wide v74, p5, v72

    .line 2983
    add-double v72, v60, v64

    aput-wide v72, p5, v45

    .line 2984
    sub-double v72, v64, v60

    aput-wide v72, p5, v46

    .line 2969
    add-int/lit8 v54, v54, 0x1

    goto :goto_444

    .line 2964
    .end local v40    # "idx4":I
    .end local v41    # "idx5":I
    .end local v45    # "iidx1":I
    .end local v46    # "iidx2":I
    .end local v58    # "o1i":D
    .end local v60    # "o1r":D
    .end local v62    # "o2i":D
    .end local v64    # "o2r":D
    .end local v66    # "oidx1":I
    .end local v67    # "oidx2":I
    :cond_483
    add-int/lit8 v28, v28, 0x2

    goto :goto_434

    .line 2958
    .end local v29    # "ic":I
    .end local v42    # "idx6":I
    .end local v43    # "idx7":I
    .end local v44    # "idx8":I
    .end local v54    # "k":I
    :cond_486
    add-int/lit8 v51, v51, 0x1

    goto :goto_41e

    .line 2989
    .end local v28    # "i":I
    .end local v37    # "idx1":I
    .end local v38    # "idx2":I
    .end local v39    # "idx3":I
    .end local v52    # "j2":I
    .end local v53    # "jc":I
    :cond_489
    return-void
.end method

.method public realForward([D)V
    .registers 3
    .param p1, "a"    # [D

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    .line 274
    return-void
.end method

.method public realForward([DI)V
    .registers 17
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .prologue
    .line 305
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 306
    return-void

    .line 308
    :cond_6
    invoke-static {}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-getedu-emory-mathcs-jtransforms-fft-DoubleFFT_1D$PlansSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_78

    .line 335
    :cond_15
    :goto_15
    return-void

    .line 312
    :pswitch_16
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_4f

    .line 313
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, p0

    move-object v2, p1

    move/from16 v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 314
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object v0, p0

    move-object v2, p1

    move/from16 v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rftfsub(I[DII[DI)V

    .line 318
    :cond_39
    :goto_39
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    sub-double v12, v0, v2

    .line 319
    .local v12, "xi":D
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    add-double/2addr v0, v2

    aput-wide v0, p1, p2

    .line 320
    add-int/lit8 v0, p2, 0x1

    aput-wide v12, p1, v0

    goto :goto_15

    .line 315
    .end local v12    # "xi":D
    :cond_4f
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_39

    .line 316
    invoke-direct/range {p0 .. p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftx020([DI)V

    goto :goto_39

    .line 323
    :pswitch_58
    invoke-virtual/range {p0 .. p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    .line 324
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v8, v0, -0x1

    .local v8, "k":I
    :goto_5f
    const/4 v0, 0x2

    if-lt v8, v0, :cond_15

    .line 325
    add-int v7, p2, v8

    .line 326
    .local v7, "idx":I
    aget-wide v10, p1, v7

    .line 327
    .local v10, "tmp":D
    add-int/lit8 v0, v7, -0x1

    aget-wide v0, p1, v0

    aput-wide v0, p1, v7

    .line 328
    add-int/lit8 v0, v7, -0x1

    aput-wide v10, p1, v0

    .line 324
    add-int/lit8 v8, v8, -0x1

    goto :goto_5f

    .line 332
    .end local v7    # "idx":I
    .end local v8    # "k":I
    .end local v10    # "tmp":D
    :pswitch_73
    invoke-direct/range {p0 .. p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_forward([DI)V

    goto :goto_15

    .line 308
    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_73
        :pswitch_58
        :pswitch_16
    .end packed-switch
.end method

.method public realForwardFull([D)V
    .registers 3
    .param p1, "a"    # [D

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForwardFull([DI)V

    .line 350
    return-void
.end method

.method public realForwardFull([DI)V
    .registers 27
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .prologue
    .line 366
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v9, v4, 0x2

    .line 367
    .local v9, "twon":I
    invoke-static {}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-getedu-emory-mathcs-jtransforms-fft-DoubleFFT_1D$PlansSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_120

    .line 428
    :goto_17
    return-void

    .line 369
    :pswitch_18
    invoke-virtual/range {p0 .. p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    .line 370
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v18

    .line 371
    .local v18, "nthreads":I
    const/4 v4, 0x1

    move/from16 v0, v18

    if-le v0, v4, :cond_7f

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v4, v4, 0x2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v5

    if-le v4, v5, :cond_7f

    .line 372
    move/from16 v0, v18

    new-array v11, v0, [Ljava/util/concurrent/Future;

    .line 373
    .local v11, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v4, v4, 0x2

    div-int v16, v4, v18

    .line 374
    .local v16, "k":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3d
    move/from16 v0, v18

    if-ge v12, v0, :cond_64

    .line 375
    mul-int v6, v12, v16

    .line 376
    .local v6, "firstIdx":I
    add-int/lit8 v4, v18, -0x1

    if-ne v12, v4, :cond_61

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v7, v4, 0x2

    .line 377
    .local v7, "lastIdx":I
    :goto_4d
    new-instance v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;

    move-object/from16 v5, p0

    move/from16 v8, p2

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D)V

    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    aput-object v4, v11, v12

    .line 374
    add-int/lit8 v12, v12, 0x1

    goto :goto_3d

    .line 376
    .end local v7    # "lastIdx":I
    :cond_61
    add-int v7, v6, v16

    .restart local v7    # "lastIdx":I
    goto :goto_4d

    .line 389
    .end local v6    # "firstIdx":I
    .end local v7    # "lastIdx":I
    :cond_64
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 399
    .end local v11    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v12    # "i":I
    :cond_67
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v4, v4, p2

    add-int/lit8 v5, p2, 0x1

    aget-wide v22, p1, v5

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, p1, v4

    .line 400
    add-int/lit8 v4, p2, 0x1

    const-wide/16 v22, 0x0

    aput-wide v22, p1, v4

    goto :goto_17

    .line 392
    .end local v16    # "k":I
    :cond_7f
    const/16 v16, 0x0

    .restart local v16    # "k":I
    :goto_81
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v4, v4, 0x2

    move/from16 v0, v16

    if-ge v0, v4, :cond_67

    .line 393
    mul-int/lit8 v14, v16, 0x2

    .line 394
    .local v14, "idx1":I
    sub-int v4, v9, v14

    rem-int/2addr v4, v9

    add-int v15, p2, v4

    .line 395
    .local v15, "idx2":I
    add-int v4, p2, v14

    aget-wide v4, p1, v4

    aput-wide v4, p1, v15

    .line 396
    add-int/lit8 v4, v15, 0x1

    add-int v5, p2, v14

    add-int/lit8 v5, v5, 0x1

    aget-wide v22, p1, v5

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, p1, v4

    .line 392
    add-int/lit8 v16, v16, 0x1

    goto :goto_81

    .line 403
    .end local v14    # "idx1":I
    .end local v15    # "idx2":I
    .end local v16    # "k":I
    .end local v18    # "nthreads":I
    :pswitch_aa
    invoke-virtual/range {p0 .. p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    .line 405
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_e1

    .line 406
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v17, v4, 0x2

    .line 410
    .local v17, "m":I
    :goto_bb
    const/16 v16, 0x1

    .restart local v16    # "k":I
    :goto_bd
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_ea

    .line 411
    add-int v4, p2, v9

    mul-int/lit8 v5, v16, 0x2

    sub-int v14, v4, v5

    .line 412
    .restart local v14    # "idx1":I
    mul-int/lit8 v4, v16, 0x2

    add-int v15, p2, v4

    .line 413
    .restart local v15    # "idx2":I
    add-int/lit8 v4, v14, 0x1

    aget-wide v22, p1, v15

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, p1, v4

    .line 414
    add-int/lit8 v4, v15, -0x1

    aget-wide v4, p1, v4

    aput-wide v4, p1, v14

    .line 410
    add-int/lit8 v16, v16, 0x1

    goto :goto_bd

    .line 408
    .end local v14    # "idx1":I
    .end local v15    # "idx2":I
    .end local v16    # "k":I
    .end local v17    # "m":I
    :cond_e1
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v17, v4, 0x2

    .restart local v17    # "m":I
    goto :goto_bb

    .line 416
    .restart local v16    # "k":I
    :cond_ea
    const/16 v16, 0x1

    :goto_ec
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v0, v16

    if-ge v0, v4, :cond_10b

    .line 417
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v4, v4, p2

    sub-int v13, v4, v16

    .line 418
    .local v13, "idx":I
    add-int/lit8 v4, v13, 0x1

    aget-wide v20, p1, v4

    .line 419
    .local v20, "tmp":D
    add-int/lit8 v4, v13, 0x1

    aget-wide v22, p1, v13

    aput-wide v22, p1, v4

    .line 420
    aput-wide v20, p1, v13

    .line 416
    add-int/lit8 v16, v16, 0x1

    goto :goto_ec

    .line 422
    .end local v13    # "idx":I
    .end local v20    # "tmp":D
    :cond_10b
    add-int/lit8 v4, p2, 0x1

    const-wide/16 v22, 0x0

    aput-wide v22, p1, v4

    goto/16 :goto_17

    .line 425
    .end local v16    # "k":I
    .end local v17    # "m":I
    :pswitch_113
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_full([DII)V

    goto/16 :goto_17

    .line 367
    nop

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_113
        :pswitch_aa
        :pswitch_18
    .end packed-switch
.end method

.method public realInverse([DIZ)V
    .registers 16
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "scale"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v9, 0x0

    .line 490
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 491
    return-void

    .line 492
    :cond_8
    invoke-static {}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-getedu-emory-mathcs-jtransforms-fft-DoubleFFT_1D$PlansSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_9e

    .line 526
    :cond_17
    :goto_17
    return-void

    .line 494
    :pswitch_18
    add-int/lit8 v0, p2, 0x1

    aget-wide v2, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-wide v4, p1, v1

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    aput-wide v2, p1, v0

    .line 495
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    aput-wide v0, p1, p2

    .line 496
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-le v0, v6, :cond_5e

    .line 497
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rftfsub(I[DII[DI)V

    .line 498
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 502
    :cond_4f
    :goto_4f
    if-eqz p3, :cond_17

    .line 503
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v2, v0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, v9

    invoke-direct/range {v1 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto :goto_17

    .line 499
    :cond_5e
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ne v0, v6, :cond_4f

    .line 500
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftxc020([DI)V

    goto :goto_4f

    .line 507
    :pswitch_66
    const/4 v8, 0x2

    .local v8, "k":I
    :goto_67
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v8, v0, :cond_7c

    .line 508
    add-int v7, p2, v8

    .line 509
    .local v7, "idx":I
    add-int/lit8 v0, v7, -0x1

    aget-wide v10, p1, v0

    .line 510
    .local v10, "tmp":D
    add-int/lit8 v0, v7, -0x1

    aget-wide v2, p1, v7

    aput-wide v2, p1, v0

    .line 511
    aput-wide v10, p1, v7

    .line 507
    add-int/lit8 v8, v8, 0x1

    goto :goto_67

    .line 513
    .end local v7    # "idx":I
    .end local v10    # "tmp":D
    :cond_7c
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftb([DI)V

    .line 514
    if-eqz p3, :cond_17

    .line 515
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v2, v0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, v9

    invoke-direct/range {v1 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto :goto_17

    .line 519
    .end local v8    # "k":I
    :pswitch_8c
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_inverse([DI)V

    .line 520
    if-eqz p3, :cond_17

    .line 521
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v2, v0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, v9

    invoke-direct/range {v1 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto/16 :goto_17

    .line 492
    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_66
        :pswitch_18
    .end packed-switch
.end method

.method public realInverse([DZ)V
    .registers 4
    .param p1, "a"    # [D
    .param p2, "scale"    # Z

    .prologue
    .line 458
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse([DIZ)V

    .line 459
    return-void
.end method

.method protected realInverse2([DIZ)V
    .registers 22
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "scale"    # Z

    .prologue
    .line 628
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 629
    return-void

    .line 630
    :cond_8
    invoke-static {}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-getedu-emory-mathcs-jtransforms-fft-DoubleFFT_1D$PlansSwitchesValues()[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_118

    .line 680
    :cond_19
    :goto_19
    return-void

    .line 634
    :pswitch_1a
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_7a

    .line 635
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 636
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    move-object/from16 v0, p0

    iget-object v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rftbsub(I[DII[DI)V

    .line 640
    :cond_53
    :goto_53
    aget-wide v2, p1, p2

    add-int/lit8 v4, p2, 0x1

    aget-wide v4, p1, v4

    sub-double v16, v2, v4

    .line 641
    .local v16, "xi":D
    aget-wide v2, p1, p2

    add-int/lit8 v4, p2, 0x1

    aget-wide v4, p1, v4

    add-double/2addr v2, v4

    aput-wide v2, p1, p2

    .line 642
    add-int/lit8 v2, p2, 0x1

    aput-wide v16, p1, v2

    .line 643
    if-eqz p3, :cond_19

    .line 644
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v4, v2

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto :goto_19

    .line 637
    .end local v16    # "xi":D
    :cond_7a
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_53

    .line 638
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    goto :goto_53

    .line 648
    :pswitch_9b
    invoke-virtual/range {p0 .. p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    .line 649
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v11, v2, -0x1

    .local v11, "k":I
    :goto_a4
    const/4 v2, 0x2

    if-lt v11, v2, :cond_b8

    .line 650
    add-int v10, p2, v11

    .line 651
    .local v10, "idx":I
    aget-wide v14, p1, v10

    .line 652
    .local v14, "tmp":D
    add-int/lit8 v2, v10, -0x1

    aget-wide v2, p1, v2

    aput-wide v2, p1, v10

    .line 653
    add-int/lit8 v2, v10, -0x1

    aput-wide v14, p1, v2

    .line 649
    add-int/lit8 v11, v11, -0x1

    goto :goto_a4

    .line 655
    .end local v10    # "idx":I
    .end local v14    # "tmp":D
    :cond_b8
    if-eqz p3, :cond_c9

    .line 656
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v4, v2

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    .line 659
    :cond_c9
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_e8

    .line 660
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v12, v2, 0x2

    .line 661
    .local v12, "m":I
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_d8
    if-ge v9, v12, :cond_19

    .line 662
    mul-int/lit8 v2, v9, 0x2

    add-int v2, v2, p2

    add-int/lit8 v10, v2, 0x1

    .line 663
    .restart local v10    # "idx":I
    aget-wide v2, p1, v10

    neg-double v2, v2

    aput-wide v2, p1, v10

    .line 661
    add-int/lit8 v9, v9, 0x1

    goto :goto_d8

    .line 666
    .end local v9    # "i":I
    .end local v10    # "idx":I
    .end local v12    # "m":I
    :cond_e8
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v12, v2, 0x2

    .line 667
    .restart local v12    # "m":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_f1
    if-ge v9, v12, :cond_19

    .line 668
    mul-int/lit8 v2, v9, 0x2

    add-int v2, v2, p2

    add-int/lit8 v10, v2, 0x1

    .line 669
    .restart local v10    # "idx":I
    aget-wide v2, p1, v10

    neg-double v2, v2

    aput-wide v2, p1, v10

    .line 667
    add-int/lit8 v9, v9, 0x1

    goto :goto_f1

    .line 674
    .end local v9    # "i":I
    .end local v10    # "idx":I
    .end local v11    # "k":I
    .end local v12    # "m":I
    :pswitch_101
    invoke-direct/range {p0 .. p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_inverse2([DI)V

    .line 675
    if-eqz p3, :cond_19

    .line 676
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v4, v2

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto/16 :goto_19

    .line 630
    nop

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_101
        :pswitch_9b
        :pswitch_1a
    .end packed-switch
.end method

.method public realInverseFull([DIZ)V
    .registers 32
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "scale"    # Z

    .prologue
    .line 556
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v9, v4, 0x2

    .line 557
    .local v9, "twon":I
    invoke-static {}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-getedu-emory-mathcs-jtransforms-fft-DoubleFFT_1D$PlansSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_144

    .line 625
    :cond_17
    :goto_17
    return-void

    .line 559
    :pswitch_18
    invoke-virtual/range {p0 .. p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    .line 560
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v24

    .line 561
    .local v24, "nthreads":I
    const/4 v4, 0x1

    move/from16 v0, v24

    if-le v0, v4, :cond_82

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v4, v4, 0x2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v5

    if-le v4, v5, :cond_82

    .line 562
    move/from16 v0, v24

    new-array v0, v0, [Ljava/util/concurrent/Future;

    move-object/from16 v17, v0

    .line 563
    .local v17, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v4, v4, 0x2

    div-int v22, v4, v24

    .line 564
    .local v22, "k":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_40
    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_6b

    .line 565
    mul-int v6, v18, v22

    .line 566
    .local v6, "firstIdx":I
    add-int/lit8 v4, v24, -0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_68

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v7, v4, 0x2

    .line 567
    .local v7, "lastIdx":I
    :goto_54
    new-instance v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;

    move-object/from16 v5, p0

    move/from16 v8, p2

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D)V

    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    aput-object v4, v17, v18

    .line 564
    add-int/lit8 v18, v18, 0x1

    goto :goto_40

    .line 566
    .end local v7    # "lastIdx":I
    :cond_68
    add-int v7, v6, v22

    .restart local v7    # "lastIdx":I
    goto :goto_54

    .line 579
    .end local v6    # "firstIdx":I
    .end local v7    # "lastIdx":I
    :cond_6b
    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 589
    .end local v17    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v18    # "i":I
    :cond_6e
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v4, v4, p2

    add-int/lit8 v5, p2, 0x1

    aget-wide v10, p1, v5

    neg-double v10, v10

    aput-wide v10, p1, v4

    .line 590
    add-int/lit8 v4, p2, 0x1

    const-wide/16 v10, 0x0

    aput-wide v10, p1, v4

    goto :goto_17

    .line 582
    .end local v22    # "k":I
    :cond_82
    const/16 v22, 0x0

    .restart local v22    # "k":I
    :goto_84
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v4, v4, 0x2

    move/from16 v0, v22

    if-ge v0, v4, :cond_6e

    .line 583
    mul-int/lit8 v20, v22, 0x2

    .line 584
    .local v20, "idx1":I
    sub-int v4, v9, v20

    rem-int/2addr v4, v9

    add-int v21, p2, v4

    .line 585
    .local v21, "idx2":I
    add-int v4, p2, v20

    aget-wide v4, p1, v4

    aput-wide v4, p1, v21

    .line 586
    add-int/lit8 v4, v21, 0x1

    add-int v5, p2, v20

    add-int/lit8 v5, v5, 0x1

    aget-wide v10, p1, v5

    neg-double v10, v10

    aput-wide v10, p1, v4

    .line 582
    add-int/lit8 v22, v22, 0x1

    goto :goto_84

    .line 593
    .end local v20    # "idx1":I
    .end local v21    # "idx2":I
    .end local v22    # "k":I
    .end local v24    # "nthreads":I
    :pswitch_a9
    invoke-virtual/range {p0 .. p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    .line 594
    if-eqz p3, :cond_be

    .line 595
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v12, v4

    const/16 v16, 0x0

    move-object/from16 v11, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    invoke-direct/range {v11 .. v16}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    .line 598
    :cond_be
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_f3

    .line 599
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v23, v4, 0x2

    .line 603
    .local v23, "m":I
    :goto_cc
    const/16 v22, 0x1

    .restart local v22    # "k":I
    :goto_ce
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_fc

    .line 604
    mul-int/lit8 v4, v22, 0x2

    add-int v20, p2, v4

    .line 605
    .restart local v20    # "idx1":I
    add-int v4, p2, v9

    mul-int/lit8 v5, v22, 0x2

    sub-int v21, v4, v5

    .line 606
    .restart local v21    # "idx2":I
    aget-wide v4, p1, v20

    neg-double v4, v4

    aput-wide v4, p1, v20

    .line 607
    add-int/lit8 v4, v21, 0x1

    aget-wide v10, p1, v20

    neg-double v10, v10

    aput-wide v10, p1, v4

    .line 608
    add-int/lit8 v4, v20, -0x1

    aget-wide v4, p1, v4

    aput-wide v4, p1, v21

    .line 603
    add-int/lit8 v22, v22, 0x1

    goto :goto_ce

    .line 601
    .end local v20    # "idx1":I
    .end local v21    # "idx2":I
    .end local v22    # "k":I
    .end local v23    # "m":I
    :cond_f3
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v23, v4, 0x2

    .restart local v23    # "m":I
    goto :goto_cc

    .line 610
    .restart local v22    # "k":I
    :cond_fc
    const/16 v22, 0x1

    :goto_fe
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v0, v22

    if-ge v0, v4, :cond_11d

    .line 611
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v4, v4, p2

    sub-int v19, v4, v22

    .line 612
    .local v19, "idx":I
    add-int/lit8 v4, v19, 0x1

    aget-wide v26, p1, v4

    .line 613
    .local v26, "tmp":D
    add-int/lit8 v4, v19, 0x1

    aget-wide v10, p1, v19

    aput-wide v10, p1, v4

    .line 614
    aput-wide v26, p1, v19

    .line 610
    add-int/lit8 v22, v22, 0x1

    goto :goto_fe

    .line 616
    .end local v19    # "idx":I
    .end local v26    # "tmp":D
    :cond_11d
    add-int/lit8 v4, p2, 0x1

    const-wide/16 v10, 0x0

    aput-wide v10, p1, v4

    goto/16 :goto_17

    .line 619
    .end local v22    # "k":I
    .end local v23    # "m":I
    :pswitch_125
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_full([DII)V

    .line 620
    if-eqz p3, :cond_17

    .line 621
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v12, v4

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    invoke-direct/range {v11 .. v16}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto/16 :goto_17

    .line 557
    nop

    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_125
        :pswitch_a9
        :pswitch_18
    .end packed-switch
.end method

.method public realInverseFull([DZ)V
    .registers 4
    .param p1, "a"    # [D
    .param p2, "scale"    # Z

    .prologue
    .line 540
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DIZ)V

    .line 541
    return-void
.end method

.method rfftb([DI)V
    .registers 29
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .prologue
    .line 1764
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_8

    .line 1765
    return-void

    .line 1768
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    new-array v7, v2, [D

    .line 1769
    .local v7, "ch":[D
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v25, v2, 0x2

    .line 1770
    .local v25, "twon":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v5, v25, 0x1

    aget-wide v10, v2, v5

    double-to-int v0, v10

    move/from16 v24, v0

    .line 1771
    .local v24, "nf":I
    const/16 v23, 0x0

    .line 1772
    .local v23, "na":I
    const/4 v4, 0x1

    .line 1773
    .local v4, "l1":I
    move-object/from16 v0, p0

    iget v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    .line 1774
    .local v9, "iw":I
    const/16 v21, 0x1

    .local v21, "k1":I
    :goto_28
    move/from16 v0, v21

    move/from16 v1, v24

    if-gt v0, v1, :cond_fb

    .line 1775
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v5, v21, 0x1

    add-int v5, v5, v25

    aget-wide v10, v2, v5

    double-to-int v0, v10

    move/from16 v20, v0

    .line 1776
    .local v20, "ip":I
    mul-int v22, v20, v4

    .line 1777
    .local v22, "l2":I
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v3, v2, v22

    .line 1778
    .local v3, "ido":I
    mul-int v14, v3, v4

    .line 1779
    .local v14, "idl1":I
    packed-switch v20, :pswitch_data_10c

    .line 1813
    if-nez v23, :cond_e7

    .line 1814
    const/16 v18, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move/from16 v12, v20

    move v13, v4

    move-object/from16 v15, p1

    move/from16 v16, p2

    move-object/from16 v17, v7

    move/from16 v19, v9

    invoke-virtual/range {v10 .. v19}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radbg(IIII[DI[DII)V

    .line 1818
    :goto_5d
    const/4 v2, 0x1

    if-ne v3, v2, :cond_62

    .line 1819
    rsub-int/lit8 v23, v23, 0x1

    .line 1822
    .end local v14    # "idl1":I
    :cond_62
    :goto_62
    move/from16 v4, v22

    .line 1823
    add-int/lit8 v2, v20, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v9, v2

    .line 1774
    add-int/lit8 v21, v21, 0x1

    goto :goto_28

    .line 1781
    .restart local v14    # "idl1":I
    :pswitch_6b
    if-nez v23, :cond_7a

    .line 1782
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb2(II[DI[DII)V

    .line 1786
    .end local v14    # "idl1":I
    :goto_77
    rsub-int/lit8 v23, v23, 0x1

    .line 1787
    goto :goto_62

    .line 1784
    .restart local v14    # "idl1":I
    :cond_7a
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb2(II[DI[DII)V

    goto :goto_77

    .line 1789
    :pswitch_8a
    if-nez v23, :cond_99

    .line 1790
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb3(II[DI[DII)V

    .line 1794
    .end local v14    # "idl1":I
    :goto_96
    rsub-int/lit8 v23, v23, 0x1

    .line 1795
    goto :goto_62

    .line 1792
    .restart local v14    # "idl1":I
    :cond_99
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb3(II[DI[DII)V

    goto :goto_96

    .line 1797
    :pswitch_a9
    if-nez v23, :cond_b8

    .line 1798
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb4(II[DI[DII)V

    .line 1802
    .end local v14    # "idl1":I
    :goto_b5
    rsub-int/lit8 v23, v23, 0x1

    .line 1803
    goto :goto_62

    .line 1800
    .restart local v14    # "idl1":I
    :cond_b8
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb4(II[DI[DII)V

    goto :goto_b5

    .line 1805
    :pswitch_c8
    if-nez v23, :cond_d7

    .line 1806
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb5(II[DI[DII)V

    .line 1810
    .end local v14    # "idl1":I
    :goto_d4
    rsub-int/lit8 v23, v23, 0x1

    .line 1811
    goto :goto_62

    .line 1808
    .restart local v14    # "idl1":I
    :cond_d7
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb5(II[DI[DII)V

    goto :goto_d4

    .line 1816
    :cond_e7
    const/16 v16, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move/from16 v12, v20

    move v13, v4

    move-object v15, v7

    move-object/from16 v17, p1

    move/from16 v18, p2

    move/from16 v19, v9

    invoke-virtual/range {v10 .. v19}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radbg(IIII[DI[DII)V

    goto/16 :goto_5d

    .line 1825
    .end local v3    # "ido":I
    .end local v14    # "idl1":I
    .end local v20    # "ip":I
    .end local v22    # "l2":I
    :cond_fb
    if-nez v23, :cond_fe

    .line 1826
    return-void

    .line 1827
    :cond_fe
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v7, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 1828
    return-void

    .line 1779
    nop

    :pswitch_data_10c
    .packed-switch 0x2
        :pswitch_6b
        :pswitch_8a
        :pswitch_a9
        :pswitch_c8
    .end packed-switch
.end method

.method rfftf([DI)V
    .registers 29
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .prologue
    .line 1694
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_8

    .line 1695
    return-void

    .line 1698
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    new-array v7, v2, [D

    .line 1699
    .local v7, "ch":[D
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v25, v2, 0x2

    .line 1700
    .local v25, "twon":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v5, v25, 0x1

    aget-wide v10, v2, v5

    double-to-int v0, v10

    move/from16 v24, v0

    .line 1701
    .local v24, "nf":I
    const/16 v23, 0x1

    .line 1702
    .local v23, "na":I
    move-object/from16 v0, p0

    iget v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v22, v0

    .line 1703
    .local v22, "l2":I
    add-int/lit8 v9, v25, -0x1

    .line 1704
    .local v9, "iw":I
    const/16 v20, 0x1

    .local v20, "k1":I
    :goto_2b
    move/from16 v0, v20

    move/from16 v1, v24

    if-gt v0, v1, :cond_f8

    .line 1705
    sub-int v21, v24, v20

    .line 1706
    .local v21, "kh":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v5, v21, 0x2

    add-int v5, v5, v25

    aget-wide v10, v2, v5

    double-to-int v12, v10

    .line 1707
    .local v12, "ip":I
    div-int v4, v22, v12

    .line 1708
    .local v4, "l1":I
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v3, v2, v22

    .line 1709
    .local v3, "ido":I
    mul-int v14, v3, v4

    .line 1710
    .local v14, "idl1":I
    add-int/lit8 v2, v12, -0x1

    mul-int/2addr v2, v3

    sub-int/2addr v9, v2

    .line 1711
    rsub-int/lit8 v23, v23, 0x1

    .line 1712
    packed-switch v12, :pswitch_data_10c

    .line 1742
    const/4 v2, 0x1

    if-ne v3, v2, :cond_56

    .line 1743
    rsub-int/lit8 v23, v23, 0x1

    .line 1744
    :cond_56
    if-nez v23, :cond_e4

    .line 1745
    const/16 v18, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v13, v4

    move-object/from16 v15, p1

    move/from16 v16, p2

    move-object/from16 v17, v7

    move/from16 v19, v9

    invoke-virtual/range {v10 .. v19}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radfg(IIII[DI[DII)V

    .line 1746
    const/16 v23, 0x1

    .line 1753
    .end local v12    # "ip":I
    .end local v14    # "idl1":I
    :goto_6b
    move/from16 v22, v4

    .line 1704
    add-int/lit8 v20, v20, 0x1

    goto :goto_2b

    .line 1714
    .restart local v12    # "ip":I
    .restart local v14    # "idl1":I
    :pswitch_70
    if-nez v23, :cond_7d

    .line 1715
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf2(II[DI[DII)V

    goto :goto_6b

    .line 1717
    :cond_7d
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf2(II[DI[DII)V

    goto :goto_6b

    .line 1721
    :pswitch_8d
    if-nez v23, :cond_9a

    .line 1722
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf3(II[DI[DII)V

    goto :goto_6b

    .line 1724
    :cond_9a
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf3(II[DI[DII)V

    goto :goto_6b

    .line 1728
    :pswitch_aa
    if-nez v23, :cond_b7

    .line 1729
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf4(II[DI[DII)V

    goto :goto_6b

    .line 1731
    :cond_b7
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf4(II[DI[DII)V

    goto :goto_6b

    .line 1735
    :pswitch_c7
    if-nez v23, :cond_d4

    .line 1736
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf5(II[DI[DII)V

    goto :goto_6b

    .line 1738
    :cond_d4
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf5(II[DI[DII)V

    goto :goto_6b

    .line 1748
    :cond_e4
    const/16 v16, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v13, v4

    move-object v15, v7

    move-object/from16 v17, p1

    move/from16 v18, p2

    move/from16 v19, v9

    invoke-virtual/range {v10 .. v19}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radfg(IIII[DI[DII)V

    .line 1749
    const/16 v23, 0x0

    goto/16 :goto_6b

    .line 1755
    .end local v3    # "ido":I
    .end local v4    # "l1":I
    .end local v12    # "ip":I
    .end local v14    # "idl1":I
    .end local v21    # "kh":I
    :cond_f8
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_fe

    .line 1756
    return-void

    .line 1757
    :cond_fe
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v7, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 1758
    return-void

    .line 1712
    nop

    :pswitch_data_10c
    .packed-switch 0x2
        :pswitch_70
        :pswitch_8d
        :pswitch_aa
        :pswitch_c7
    .end packed-switch
.end method

.method rffti()V
    .registers 35

    .prologue
    .line 858
    move-object/from16 v0, p0

    iget v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    .line 859
    return-void

    .line 860
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v30, v0

    mul-int/lit8 v29, v30, 0x2

    .line 862
    .local v29, "twon":I
    const/16 v28, 0x0

    .line 871
    .local v28, "ntry":I
    move-object/from16 v0, p0

    iget v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v25, v0

    .line 872
    .local v25, "nl":I
    const/16 v23, 0x0

    .line 873
    .local v23, "nf":I
    const/16 v18, 0x0

    .line 877
    .local v18, "j":I
    :cond_23
    add-int/lit8 v18, v18, 0x1

    .line 878
    const/16 v30, 0x4

    move/from16 v0, v18

    move/from16 v1, v30

    if-gt v0, v1, :cond_80

    .line 879
    sget-object v30, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    add-int/lit8 v31, v18, -0x1

    aget v28, v30, v31

    .line 883
    :cond_33
    :goto_33
    div-int v26, v25, v28

    .line 884
    .local v26, "nq":I
    mul-int v30, v28, v26

    sub-int v27, v25, v30

    .line 885
    .local v27, "nr":I
    if-nez v27, :cond_23

    .line 887
    add-int/lit8 v23, v23, 0x1

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v30, v0

    add-int/lit8 v31, v23, 0x1

    add-int v31, v31, v29

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v32, v0

    aput-wide v32, v30, v31

    .line 890
    move/from16 v25, v26

    .line 891
    const/16 v30, 0x2

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_8f

    const/16 v30, 0x1

    move/from16 v0, v23

    move/from16 v1, v30

    if-eq v0, v1, :cond_8f

    .line 892
    const/4 v10, 0x2

    .local v10, "i":I
    :goto_61
    move/from16 v0, v23

    if-gt v10, v0, :cond_83

    .line 893
    sub-int v30, v23, v10

    add-int/lit8 v11, v30, 0x2

    .line 894
    .local v11, "ib":I
    add-int v13, v11, v29

    .line 895
    .local v13, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v30, v0

    add-int/lit8 v31, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v32, v0

    aget-wide v32, v32, v13

    aput-wide v32, v30, v31

    .line 892
    add-int/lit8 v10, v10, 0x1

    goto :goto_61

    .line 881
    .end local v10    # "i":I
    .end local v11    # "ib":I
    .end local v13    # "idx":I
    .end local v26    # "nq":I
    .end local v27    # "nr":I
    :cond_80
    add-int/lit8 v28, v28, 0x2

    goto :goto_33

    .line 897
    .restart local v10    # "i":I
    .restart local v26    # "nq":I
    .restart local v27    # "nr":I
    :cond_83
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v30, v0

    add-int/lit8 v31, v29, 0x2

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    aput-wide v32, v30, v31

    .line 899
    .end local v10    # "i":I
    :cond_8f
    const/16 v30, 0x1

    move/from16 v0, v26

    move/from16 v1, v30

    if-ne v0, v1, :cond_33

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    aput-wide v32, v30, v29

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v30, v0

    add-int/lit8 v31, v29, 0x1

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v32, v0

    aput-wide v32, v30, v31

    .line 904
    move-object/from16 v0, p0

    iget v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x401921fb54442d18L    # 6.283185307179586

    div-double v4, v32, v30

    .line 905
    .local v4, "argh":D
    const/16 v17, 0x0

    .line 906
    .local v17, "is":I
    add-int/lit8 v24, v23, -0x1

    .line 907
    .local v24, "nfm1":I
    const/16 v20, 0x1

    .line 908
    .local v20, "l1":I
    if-nez v24, :cond_d4

    .line 909
    return-void

    .line 910
    :cond_d4
    const/16 v19, 0x1

    .local v19, "k1":I
    :goto_d6
    move/from16 v0, v19

    move/from16 v1, v24

    if-gt v0, v1, :cond_14a

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v30, v0

    add-int/lit8 v31, v19, 0x1

    add-int v31, v31, v29

    aget-wide v30, v30, v31

    move-wide/from16 v0, v30

    double-to-int v15, v0

    .line 912
    .local v15, "ip":I
    const/16 v22, 0x0

    .line 913
    .local v22, "ld":I
    mul-int v21, v20, v15

    .line 914
    .local v21, "l2":I
    move-object/from16 v0, p0

    iget v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v30, v0

    div-int v12, v30, v21

    .line 915
    .local v12, "ido":I
    add-int/lit8 v16, v15, -0x1

    .line 916
    .local v16, "ipm":I
    const/16 v18, 0x1

    :goto_fb
    move/from16 v0, v18

    move/from16 v1, v16

    if-gt v0, v1, :cond_145

    .line 917
    add-int v22, v22, v20

    .line 918
    move/from16 v10, v17

    .line 919
    .restart local v10    # "i":I
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v6, v30, v4

    .line 921
    .local v6, "argld":D
    const-wide/16 v8, 0x0

    .line 922
    .local v8, "fi":D
    const/4 v14, 0x3

    .local v14, "ii":I
    :goto_10f
    if-gt v14, v12, :cond_140

    .line 923
    add-int/lit8 v10, v10, 0x2

    .line 924
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    add-double v8, v8, v30

    .line 925
    mul-double v2, v8, v6

    .line 926
    .local v2, "arg":D
    move-object/from16 v0, p0

    iget v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v30, v0

    add-int v13, v10, v30

    .line 927
    .restart local v13    # "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v30, v0

    add-int/lit8 v31, v13, -0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    aput-wide v32, v30, v31

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v30, v0

    add-int/lit8 v31, v13, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    aput-wide v32, v30, v31

    .line 922
    add-int/lit8 v14, v14, 0x2

    goto :goto_10f

    .line 930
    .end local v2    # "arg":D
    .end local v13    # "idx":I
    :cond_140
    add-int v17, v17, v12

    .line 916
    add-int/lit8 v18, v18, 0x1

    goto :goto_fb

    .line 932
    .end local v6    # "argld":D
    .end local v8    # "fi":D
    .end local v10    # "i":I
    .end local v14    # "ii":I
    :cond_145
    move/from16 v20, v21

    .line 910
    add-int/lit8 v19, v19, 0x1

    goto :goto_d6

    .line 934
    .end local v12    # "ido":I
    .end local v15    # "ip":I
    .end local v16    # "ipm":I
    .end local v21    # "l2":I
    .end local v22    # "ld":I
    :cond_14a
    return-void
.end method
