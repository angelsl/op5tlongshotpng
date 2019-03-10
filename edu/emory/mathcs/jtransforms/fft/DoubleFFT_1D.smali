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
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    return-void-no-barrier

    nop

    :array_a
    .array-data 4
        0x4
        0x2
        0x3
        0x5
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 12
    .param p1, "n"    # I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    if-lt p1, v0, :cond_fe

    .line 79
    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    .line 81
    invoke-static {p1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v1

    const/4 v2, 0x0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const/4 v7, 0x2

    if-nez v1, :cond_ac

    .line 82
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    invoke-static {p1, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->getReminder(I[I)I

    move-result v1

    const/16 v8, 0xd3

    if-lt v1, v8, :cond_92

    .line 83
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->BLUESTEIN:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    .line 84
    mul-int/lit8 v1, p1, 0x2

    sub-int/2addr v1, v0

    invoke-static {v1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->nextPow2(I)I

    move-result v1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    .line 85
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/2addr v1, v7

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    .line 86
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/2addr v1, v7

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    .line 87
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    int-to-double v8, v1

    add-double/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v5, v3

    double-to-int v1, v5

    div-int/2addr v1, v7

    shl-int v1, v0, v1

    add-int/2addr v1, v7

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    add-int/2addr v1, v7

    new-array v1, v1, [I

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    .line 88
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    .line 89
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/2addr v1, v7

    .line 90
    .local v1, "twon":I
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v2, v3, v2

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    .line 91
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    shl-int/2addr v2, v7

    if-le v1, v2, :cond_73

    .line 92
    shr-int/lit8 v2, v1, 0x2

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    .line 93
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makewt(I)V

    .line 95
    :cond_73
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v0, v2, v0

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    .line 96
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    shl-int/2addr v2, v7

    if-le v0, v2, :cond_8e

    .line 97
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    shr-int/2addr v0, v7

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    .line 98
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, v0, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makect(I[DI)V

    .line 100
    :cond_8e
    invoke-direct {p0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluesteini()V

    .line 101
    .end local v1    # "twon":I
    goto :goto_fd

    .line 102
    :cond_92
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->MIXED_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    .line 103
    const/4 v0, 0x4

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0xf

    new-array v0, v0, [D

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    .line 104
    mul-int/2addr v7, p1

    add-int/lit8 v7, v7, 0xf

    new-array v0, v7, [D

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    .line 105
    invoke-virtual {p0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cffti()V

    .line 106
    invoke-virtual {p0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rffti()V

    goto :goto_fd

    .line 109
    :cond_ac
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->SPLIT_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    .line 110
    int-to-double v8, p1

    add-double/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v5, v3

    double-to-int v1, v5

    div-int/2addr v1, v7

    shl-int v1, v0, v1

    add-int/2addr v1, v7

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    add-int/2addr v1, v7

    new-array v1, v1, [I

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    .line 111
    new-array v1, p1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    .line 112
    mul-int v1, v7, p1

    .line 113
    .restart local v1    # "twon":I
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v2, v3, v2

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    .line 114
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    shl-int/2addr v2, v7

    if-le v1, v2, :cond_e5

    .line 115
    shr-int/lit8 v2, v1, 0x2

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    .line 116
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makewt(I)V

    .line 118
    :cond_e5
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v0, v2, v0

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    .line 119
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    shl-int/2addr v0, v7

    if-le p1, v0, :cond_fd

    .line 120
    shr-int/lit8 v0, p1, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    .line 121
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, v0, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makect(I[DI)V

    .line 124
    .end local v1    # "twon":I
    :cond_fd
    :goto_fd
    return-void-no-barrier

    .line 77
    :cond_fe
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D
    .registers 2
    .param p0, "x0"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    .line 53
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    return-object v0
.end method

.method static synthetic access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D
    .registers 2
    .param p0, "x0"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    .line 53
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    return-object v0
.end method

.method static synthetic access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;I[DI[DI)V
    .registers 6
    .param p0, "x0"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;
    .param p1, "x1"    # I
    .param p2, "x2"    # [D
    .param p3, "x3"    # I
    .param p4, "x4"    # [D
    .param p5, "x5"    # I

    .line 53
    invoke-direct/range {p0 .. p5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    return-void-no-barrier
.end method

.method static synthetic access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DII[D)V
    .registers 7
    .param p0, "x0"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [D
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # [D

    .line 53
    invoke-direct/range {p0 .. p6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    return-void-no-barrier
.end method

.method static synthetic access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[DII[D)I
    .registers 9
    .param p0, "x0"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # [D
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # [D

    .line 53
    invoke-direct/range {p0 .. p7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfttree(III[DII[D)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;I[DI[DI)V
    .registers 6
    .param p0, "x0"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;
    .param p1, "x1"    # I
    .param p2, "x2"    # [D
    .param p3, "x3"    # I
    .param p4, "x4"    # [D
    .param p5, "x5"    # I

    .line 53
    invoke-direct/range {p0 .. p5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    return-void-no-barrier
.end method

.method private bitrv2(I[I[DI)V
    .registers 28
    .param p1, "n"    # I
    .param p2, "ip"    # [I
    .param p3, "a"    # [D
    .param p4, "offa"    # I

    .line 4031
    const/4 v0, 0x1

    .line 4032
    .local v0, "m":I
    shr-int/lit8 v1, p1, 0x2

    .local v1, "l":I
    :goto_3
    const/16 v2, 0x8

    if-le v1, v2, :cond_c

    .line 4033
    shl-int/lit8 v0, v0, 0x1

    .line 4032
    shr-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 4035
    :cond_c
    shr-int/lit8 v3, p1, 0x1

    .line 4036
    .local v3, "nh":I
    const/4 v4, 0x4

    mul-int v5, v4, v0

    .line 4037
    .local v5, "nm":I
    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne v1, v2, :cond_2f7

    .line 4038
    move v2, v6

    .local v2, "k":I
    :goto_16
    if-ge v2, v0, :cond_444

    .line 4039
    mul-int v8, v4, v2

    .line 4040
    .local v8, "idx0":I
    move v9, v6

    .local v9, "j":I
    :goto_1b
    if-ge v9, v2, :cond_226

    .line 4041
    mul-int v10, v4, v9

    add-int v11, v0, v2

    aget v11, p2, v11

    mul-int/2addr v11, v7

    add-int/2addr v10, v11

    .line 4042
    .local v10, "j1":I
    add-int v11, v0, v9

    aget v11, p2, v11

    mul-int/2addr v11, v7

    add-int/2addr v11, v8

    .line 4043
    .local v11, "k1":I
    add-int v12, p4, v10

    .line 4044
    .local v12, "idx1":I
    add-int v13, p4, v11

    .line 4045
    .local v13, "idx2":I
    aget-wide v14, p3, v12

    .line 4046
    .local v14, "xr":D
    add-int/lit8 v16, v12, 0x1

    aget-wide v16, p3, v16

    .line 4047
    .local v16, "xi":D
    aget-wide v18, p3, v13

    .line 4048
    .local v18, "yr":D
    add-int/lit8 v20, v13, 0x1

    aget-wide v20, p3, v20

    .line 4049
    .local v20, "yi":D
    aput-wide v18, p3, v12

    .line 4050
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4051
    aput-wide v14, p3, v13

    .line 4052
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4053
    add-int/2addr v10, v5

    .line 4054
    mul-int v22, v7, v5

    add-int v11, v11, v22

    .line 4055
    add-int v12, p4, v10

    .line 4056
    add-int v13, p4, v11

    .line 4057
    aget-wide v14, p3, v12

    .line 4058
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4059
    aget-wide v18, p3, v13

    .line 4060
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4061
    aput-wide v18, p3, v12

    .line 4062
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4063
    aput-wide v14, p3, v13

    .line 4064
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4065
    add-int/2addr v10, v5

    .line 4066
    sub-int/2addr v11, v5

    .line 4067
    add-int v12, p4, v10

    .line 4068
    add-int v13, p4, v11

    .line 4069
    aget-wide v14, p3, v12

    .line 4070
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4071
    aget-wide v18, p3, v13

    .line 4072
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4073
    aput-wide v18, p3, v12

    .line 4074
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4075
    aput-wide v14, p3, v13

    .line 4076
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4077
    add-int/2addr v10, v5

    .line 4078
    mul-int v22, v7, v5

    add-int v11, v11, v22

    .line 4079
    add-int v12, p4, v10

    .line 4080
    add-int v13, p4, v11

    .line 4081
    aget-wide v14, p3, v12

    .line 4082
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4083
    aget-wide v18, p3, v13

    .line 4084
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4085
    aput-wide v18, p3, v12

    .line 4086
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4087
    aput-wide v14, p3, v13

    .line 4088
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4089
    add-int/2addr v10, v3

    .line 4090
    add-int/2addr v11, v7

    .line 4091
    add-int v12, p4, v10

    .line 4092
    add-int v13, p4, v11

    .line 4093
    aget-wide v14, p3, v12

    .line 4094
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4095
    aget-wide v18, p3, v13

    .line 4096
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4097
    aput-wide v18, p3, v12

    .line 4098
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4099
    aput-wide v14, p3, v13

    .line 4100
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4101
    sub-int/2addr v10, v5

    .line 4102
    mul-int v22, v7, v5

    sub-int v11, v11, v22

    .line 4103
    add-int v12, p4, v10

    .line 4104
    add-int v13, p4, v11

    .line 4105
    aget-wide v14, p3, v12

    .line 4106
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4107
    aget-wide v18, p3, v13

    .line 4108
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4109
    aput-wide v18, p3, v12

    .line 4110
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4111
    aput-wide v14, p3, v13

    .line 4112
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4113
    sub-int/2addr v10, v5

    .line 4114
    add-int/2addr v11, v5

    .line 4115
    add-int v12, p4, v10

    .line 4116
    add-int v13, p4, v11

    .line 4117
    aget-wide v14, p3, v12

    .line 4118
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4119
    aget-wide v18, p3, v13

    .line 4120
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4121
    aput-wide v18, p3, v12

    .line 4122
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4123
    aput-wide v14, p3, v13

    .line 4124
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4125
    sub-int/2addr v10, v5

    .line 4126
    mul-int v22, v7, v5

    sub-int v11, v11, v22

    .line 4127
    add-int v12, p4, v10

    .line 4128
    add-int v13, p4, v11

    .line 4129
    aget-wide v14, p3, v12

    .line 4130
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4131
    aget-wide v18, p3, v13

    .line 4132
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4133
    aput-wide v18, p3, v12

    .line 4134
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4135
    aput-wide v14, p3, v13

    .line 4136
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4137
    add-int/2addr v10, v7

    .line 4138
    add-int/2addr v11, v3

    .line 4139
    add-int v12, p4, v10

    .line 4140
    add-int v13, p4, v11

    .line 4141
    aget-wide v14, p3, v12

    .line 4142
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4143
    aget-wide v18, p3, v13

    .line 4144
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4145
    aput-wide v18, p3, v12

    .line 4146
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4147
    aput-wide v14, p3, v13

    .line 4148
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4149
    add-int/2addr v10, v5

    .line 4150
    mul-int v22, v7, v5

    add-int v11, v11, v22

    .line 4151
    add-int v12, p4, v10

    .line 4152
    add-int v13, p4, v11

    .line 4153
    aget-wide v14, p3, v12

    .line 4154
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4155
    aget-wide v18, p3, v13

    .line 4156
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4157
    aput-wide v18, p3, v12

    .line 4158
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4159
    aput-wide v14, p3, v13

    .line 4160
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4161
    add-int/2addr v10, v5

    .line 4162
    sub-int/2addr v11, v5

    .line 4163
    add-int v12, p4, v10

    .line 4164
    add-int v13, p4, v11

    .line 4165
    aget-wide v14, p3, v12

    .line 4166
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4167
    aget-wide v18, p3, v13

    .line 4168
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4169
    aput-wide v18, p3, v12

    .line 4170
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4171
    aput-wide v14, p3, v13

    .line 4172
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4173
    add-int/2addr v10, v5

    .line 4174
    mul-int v22, v7, v5

    add-int v11, v11, v22

    .line 4175
    add-int v12, p4, v10

    .line 4176
    add-int v13, p4, v11

    .line 4177
    aget-wide v14, p3, v12

    .line 4178
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4179
    aget-wide v18, p3, v13

    .line 4180
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4181
    aput-wide v18, p3, v12

    .line 4182
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4183
    aput-wide v14, p3, v13

    .line 4184
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4185
    sub-int/2addr v10, v3

    .line 4186
    add-int/lit8 v11, v11, -0x2

    .line 4187
    add-int v12, p4, v10

    .line 4188
    add-int v13, p4, v11

    .line 4189
    aget-wide v14, p3, v12

    .line 4190
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4191
    aget-wide v18, p3, v13

    .line 4192
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4193
    aput-wide v18, p3, v12

    .line 4194
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4195
    aput-wide v14, p3, v13

    .line 4196
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4197
    sub-int/2addr v10, v5

    .line 4198
    mul-int v22, v7, v5

    sub-int v11, v11, v22

    .line 4199
    add-int v12, p4, v10

    .line 4200
    add-int v13, p4, v11

    .line 4201
    aget-wide v14, p3, v12

    .line 4202
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4203
    aget-wide v18, p3, v13

    .line 4204
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4205
    aput-wide v18, p3, v12

    .line 4206
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4207
    aput-wide v14, p3, v13

    .line 4208
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4209
    sub-int/2addr v10, v5

    .line 4210
    add-int/2addr v11, v5

    .line 4211
    add-int v12, p4, v10

    .line 4212
    add-int v13, p4, v11

    .line 4213
    aget-wide v14, p3, v12

    .line 4214
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4215
    aget-wide v18, p3, v13

    .line 4216
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4217
    aput-wide v18, p3, v12

    .line 4218
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4219
    aput-wide v14, p3, v13

    .line 4220
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4221
    sub-int/2addr v10, v5

    .line 4222
    mul-int v22, v7, v5

    sub-int v11, v11, v22

    .line 4223
    add-int v12, p4, v10

    .line 4224
    add-int v13, p4, v11

    .line 4225
    aget-wide v14, p3, v12

    .line 4226
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4227
    aget-wide v18, p3, v13

    .line 4228
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4229
    aput-wide v18, p3, v12

    .line 4230
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4231
    aput-wide v14, p3, v13

    .line 4232
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4040
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1b

    .line 4234
    .end local v9    # "j":I
    .end local v10    # "j1":I
    .end local v11    # "k1":I
    .end local v12    # "idx1":I
    .end local v13    # "idx2":I
    .end local v14    # "xr":D
    .end local v16    # "xi":D
    .end local v18    # "yr":D
    .end local v20    # "yi":D
    :cond_226
    add-int v9, v0, v2

    aget v9, p2, v9

    mul-int/2addr v9, v7

    add-int/2addr v9, v8

    .line 4235
    .local v9, "k1":I
    add-int/lit8 v10, v9, 0x2

    .line 4236
    .restart local v10    # "j1":I
    add-int/2addr v9, v3

    .line 4237
    add-int v11, p4, v10

    .line 4238
    .local v11, "idx1":I
    add-int v12, p4, v9

    .line 4239
    .local v12, "idx2":I
    aget-wide v13, p3, v11

    .line 4240
    .local v13, "xr":D
    add-int/lit8 v15, v11, 0x1

    aget-wide v15, p3, v15

    .line 4241
    .local v15, "xi":D
    aget-wide v17, p3, v12

    .line 4242
    .local v17, "yr":D
    add-int/lit8 v19, v12, 0x1

    aget-wide v19, p3, v19

    .line 4243
    .local v19, "yi":D
    aput-wide v17, p3, v11

    .line 4244
    add-int/lit8 v21, v11, 0x1

    aput-wide v19, p3, v21

    .line 4245
    aput-wide v13, p3, v12

    .line 4246
    add-int/lit8 v21, v12, 0x1

    aput-wide v15, p3, v21

    .line 4247
    add-int/2addr v10, v5

    .line 4248
    mul-int v21, v7, v5

    add-int v9, v9, v21

    .line 4249
    add-int v11, p4, v10

    .line 4250
    add-int v12, p4, v9

    .line 4251
    aget-wide v13, p3, v11

    .line 4252
    add-int/lit8 v21, v11, 0x1

    aget-wide v15, p3, v21

    .line 4253
    aget-wide v17, p3, v12

    .line 4254
    add-int/lit8 v21, v12, 0x1

    aget-wide v19, p3, v21

    .line 4255
    aput-wide v17, p3, v11

    .line 4256
    add-int/lit8 v21, v11, 0x1

    aput-wide v19, p3, v21

    .line 4257
    aput-wide v13, p3, v12

    .line 4258
    add-int/lit8 v21, v12, 0x1

    aput-wide v15, p3, v21

    .line 4259
    add-int/2addr v10, v5

    .line 4260
    sub-int/2addr v9, v5

    .line 4261
    add-int v11, p4, v10

    .line 4262
    add-int v12, p4, v9

    .line 4263
    aget-wide v13, p3, v11

    .line 4264
    add-int/lit8 v21, v11, 0x1

    aget-wide v15, p3, v21

    .line 4265
    aget-wide v17, p3, v12

    .line 4266
    add-int/lit8 v21, v12, 0x1

    aget-wide v19, p3, v21

    .line 4267
    aput-wide v17, p3, v11

    .line 4268
    add-int/lit8 v21, v11, 0x1

    aput-wide v19, p3, v21

    .line 4269
    aput-wide v13, p3, v12

    .line 4270
    add-int/lit8 v21, v12, 0x1

    aput-wide v15, p3, v21

    .line 4271
    add-int/lit8 v10, v10, -0x2

    .line 4272
    sub-int/2addr v9, v3

    .line 4273
    add-int v11, p4, v10

    .line 4274
    add-int v12, p4, v9

    .line 4275
    aget-wide v13, p3, v11

    .line 4276
    add-int/lit8 v21, v11, 0x1

    aget-wide v15, p3, v21

    .line 4277
    aget-wide v17, p3, v12

    .line 4278
    add-int/lit8 v21, v12, 0x1

    aget-wide v19, p3, v21

    .line 4279
    aput-wide v17, p3, v11

    .line 4280
    add-int/lit8 v21, v11, 0x1

    aput-wide v19, p3, v21

    .line 4281
    aput-wide v13, p3, v12

    .line 4282
    add-int/lit8 v21, v12, 0x1

    aput-wide v15, p3, v21

    .line 4283
    add-int/lit8 v21, v3, 0x2

    add-int v10, v10, v21

    .line 4284
    add-int/lit8 v21, v3, 0x2

    add-int v9, v9, v21

    .line 4285
    add-int v11, p4, v10

    .line 4286
    add-int v12, p4, v9

    .line 4287
    aget-wide v13, p3, v11

    .line 4288
    add-int/lit8 v21, v11, 0x1

    aget-wide v15, p3, v21

    .line 4289
    aget-wide v17, p3, v12

    .line 4290
    add-int/lit8 v21, v12, 0x1

    aget-wide v19, p3, v21

    .line 4291
    aput-wide v17, p3, v11

    .line 4292
    add-int/lit8 v21, v11, 0x1

    aput-wide v19, p3, v21

    .line 4293
    aput-wide v13, p3, v12

    .line 4294
    add-int/lit8 v21, v12, 0x1

    aput-wide v15, p3, v21

    .line 4295
    sub-int v21, v3, v5

    sub-int v10, v10, v21

    .line 4296
    mul-int v21, v7, v5

    add-int/lit8 v21, v21, -0x2

    add-int v9, v9, v21

    .line 4297
    add-int v11, p4, v10

    .line 4298
    add-int v12, p4, v9

    .line 4299
    aget-wide v13, p3, v11

    .line 4300
    add-int/lit8 v21, v11, 0x1

    aget-wide v15, p3, v21

    .line 4301
    aget-wide v17, p3, v12

    .line 4302
    add-int/lit8 v21, v12, 0x1

    aget-wide v19, p3, v21

    .line 4303
    aput-wide v17, p3, v11

    .line 4304
    add-int/lit8 v21, v11, 0x1

    aput-wide v19, p3, v21

    .line 4305
    aput-wide v13, p3, v12

    .line 4306
    add-int/lit8 v21, v12, 0x1

    aput-wide v15, p3, v21

    .line 4038
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    .line 4309
    .end local v2    # "k":I
    .end local v8    # "idx0":I
    .end local v9    # "k1":I
    .end local v10    # "j1":I
    .end local v11    # "idx1":I
    .end local v12    # "idx2":I
    .end local v13    # "xr":D
    .end local v15    # "xi":D
    .end local v17    # "yr":D
    .end local v19    # "yi":D
    :cond_2f7
    move v2, v6

    .restart local v2    # "k":I
    :goto_2f8
    if-ge v2, v0, :cond_444

    .line 4310
    mul-int v8, v4, v2

    .line 4311
    .restart local v8    # "idx0":I
    move v9, v6

    .local v9, "j":I
    :goto_2fd
    if-ge v9, v2, :cond_3fe

    .line 4312
    mul-int v10, v4, v9

    add-int v11, v0, v2

    aget v11, p2, v11

    add-int/2addr v10, v11

    .line 4313
    .restart local v10    # "j1":I
    add-int v11, v0, v9

    aget v11, p2, v11

    add-int/2addr v11, v8

    .line 4314
    .local v11, "k1":I
    add-int v12, p4, v10

    .line 4315
    .local v12, "idx1":I
    add-int v13, p4, v11

    .line 4316
    .local v13, "idx2":I
    aget-wide v14, p3, v12

    .line 4317
    .restart local v14    # "xr":D
    add-int/lit8 v16, v12, 0x1

    aget-wide v16, p3, v16

    .line 4318
    .restart local v16    # "xi":D
    aget-wide v18, p3, v13

    .line 4319
    .restart local v18    # "yr":D
    add-int/lit8 v20, v13, 0x1

    aget-wide v20, p3, v20

    .line 4320
    .restart local v20    # "yi":D
    aput-wide v18, p3, v12

    .line 4321
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4322
    aput-wide v14, p3, v13

    .line 4323
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4324
    add-int/2addr v10, v5

    .line 4325
    add-int/2addr v11, v5

    .line 4326
    add-int v12, p4, v10

    .line 4327
    add-int v13, p4, v11

    .line 4328
    aget-wide v14, p3, v12

    .line 4329
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4330
    aget-wide v18, p3, v13

    .line 4331
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4332
    aput-wide v18, p3, v12

    .line 4333
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4334
    aput-wide v14, p3, v13

    .line 4335
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4336
    add-int/2addr v10, v3

    .line 4337
    add-int/2addr v11, v7

    .line 4338
    add-int v12, p4, v10

    .line 4339
    add-int v13, p4, v11

    .line 4340
    aget-wide v14, p3, v12

    .line 4341
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4342
    aget-wide v18, p3, v13

    .line 4343
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4344
    aput-wide v18, p3, v12

    .line 4345
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4346
    aput-wide v14, p3, v13

    .line 4347
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4348
    sub-int/2addr v10, v5

    .line 4349
    sub-int/2addr v11, v5

    .line 4350
    add-int v12, p4, v10

    .line 4351
    add-int v13, p4, v11

    .line 4352
    aget-wide v14, p3, v12

    .line 4353
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4354
    aget-wide v18, p3, v13

    .line 4355
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4356
    aput-wide v18, p3, v12

    .line 4357
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4358
    aput-wide v14, p3, v13

    .line 4359
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4360
    add-int/2addr v10, v7

    .line 4361
    add-int/2addr v11, v3

    .line 4362
    add-int v12, p4, v10

    .line 4363
    add-int v13, p4, v11

    .line 4364
    aget-wide v14, p3, v12

    .line 4365
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4366
    aget-wide v18, p3, v13

    .line 4367
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4368
    aput-wide v18, p3, v12

    .line 4369
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4370
    aput-wide v14, p3, v13

    .line 4371
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4372
    add-int/2addr v10, v5

    .line 4373
    add-int/2addr v11, v5

    .line 4374
    add-int v12, p4, v10

    .line 4375
    add-int v13, p4, v11

    .line 4376
    aget-wide v14, p3, v12

    .line 4377
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4378
    aget-wide v18, p3, v13

    .line 4379
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4380
    aput-wide v18, p3, v12

    .line 4381
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4382
    aput-wide v14, p3, v13

    .line 4383
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4384
    sub-int/2addr v10, v3

    .line 4385
    add-int/lit8 v11, v11, -0x2

    .line 4386
    add-int v12, p4, v10

    .line 4387
    add-int v13, p4, v11

    .line 4388
    aget-wide v14, p3, v12

    .line 4389
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4390
    aget-wide v18, p3, v13

    .line 4391
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4392
    aput-wide v18, p3, v12

    .line 4393
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4394
    aput-wide v14, p3, v13

    .line 4395
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4396
    sub-int/2addr v10, v5

    .line 4397
    sub-int/2addr v11, v5

    .line 4398
    add-int v12, p4, v10

    .line 4399
    add-int v13, p4, v11

    .line 4400
    aget-wide v14, p3, v12

    .line 4401
    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    .line 4402
    aget-wide v18, p3, v13

    .line 4403
    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    .line 4404
    aput-wide v18, p3, v12

    .line 4405
    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    .line 4406
    aput-wide v14, p3, v13

    .line 4407
    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    .line 4311
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2fd

    .line 4409
    .end local v9    # "j":I
    .end local v10    # "j1":I
    .end local v11    # "k1":I
    .end local v12    # "idx1":I
    .end local v13    # "idx2":I
    .end local v14    # "xr":D
    .end local v16    # "xi":D
    .end local v18    # "yr":D
    .end local v20    # "yi":D
    :cond_3fe
    add-int v9, v0, v2

    aget v9, p2, v9

    add-int/2addr v9, v8

    .line 4410
    .local v9, "k1":I
    add-int/lit8 v10, v9, 0x2

    .line 4411
    .restart local v10    # "j1":I
    add-int/2addr v9, v3

    .line 4412
    add-int v11, p4, v10

    .line 4413
    .local v11, "idx1":I
    add-int v12, p4, v9

    .line 4414
    .local v12, "idx2":I
    aget-wide v13, p3, v11

    .line 4415
    .local v13, "xr":D
    add-int/lit8 v15, v11, 0x1

    aget-wide v15, p3, v15

    .line 4416
    .restart local v15    # "xi":D
    aget-wide v17, p3, v12

    .line 4417
    .restart local v17    # "yr":D
    add-int/lit8 v19, v12, 0x1

    aget-wide v19, p3, v19

    .line 4418
    .restart local v19    # "yi":D
    aput-wide v17, p3, v11

    .line 4419
    add-int/lit8 v21, v11, 0x1

    aput-wide v19, p3, v21

    .line 4420
    aput-wide v13, p3, v12

    .line 4421
    add-int/lit8 v21, v12, 0x1

    aput-wide v15, p3, v21

    .line 4422
    add-int/2addr v10, v5

    .line 4423
    add-int/2addr v9, v5

    .line 4424
    add-int v11, p4, v10

    .line 4425
    add-int v12, p4, v9

    .line 4426
    aget-wide v13, p3, v11

    .line 4427
    add-int/lit8 v21, v11, 0x1

    aget-wide v15, p3, v21

    .line 4428
    aget-wide v17, p3, v12

    .line 4429
    add-int/lit8 v21, v12, 0x1

    aget-wide v19, p3, v21

    .line 4430
    aput-wide v17, p3, v11

    .line 4431
    add-int/lit8 v21, v11, 0x1

    aput-wide v19, p3, v21

    .line 4432
    aput-wide v13, p3, v12

    .line 4433
    add-int/lit8 v21, v12, 0x1

    aput-wide v15, p3, v21

    .line 4309
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2f8

    .line 4436
    .end local v2    # "k":I
    .end local v8    # "idx0":I
    .end local v9    # "k1":I
    .end local v10    # "j1":I
    .end local v11    # "idx1":I
    .end local v12    # "idx2":I
    .end local v13    # "xr":D
    .end local v15    # "xi":D
    .end local v17    # "yr":D
    .end local v19    # "yi":D
    :cond_444
    return-void-no-barrier
.end method

.method private bitrv208([DI)V
    .registers 20
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .line 4979
    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    .line 4980
    .local v0, "x1r":D
    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    .line 4981
    .local v2, "x1i":D
    add-int/lit8 v4, p2, 0x6

    aget-wide v4, p1, v4

    .line 4982
    .local v4, "x3r":D
    add-int/lit8 v6, p2, 0x7

    aget-wide v6, p1, v6

    .line 4983
    .local v6, "x3i":D
    add-int/lit8 v8, p2, 0x8

    aget-wide v8, p1, v8

    .line 4984
    .local v8, "x4r":D
    add-int/lit8 v10, p2, 0x9

    aget-wide v10, p1, v10

    .line 4985
    .local v10, "x4i":D
    add-int/lit8 v12, p2, 0xc

    aget-wide v12, p1, v12

    .line 4986
    .local v12, "x6r":D
    add-int/lit8 v14, p2, 0xd

    aget-wide v14, p1, v14

    .line 4987
    .local v14, "x6i":D
    add-int/lit8 v16, p2, 0x2

    aput-wide v8, p1, v16

    .line 4988
    add-int/lit8 v16, p2, 0x3

    aput-wide v10, p1, v16

    .line 4989
    add-int/lit8 v16, p2, 0x6

    aput-wide v12, p1, v16

    .line 4990
    add-int/lit8 v16, p2, 0x7

    aput-wide v14, p1, v16

    .line 4991
    add-int/lit8 v16, p2, 0x8

    aput-wide v0, p1, v16

    .line 4992
    add-int/lit8 v16, p2, 0x9

    aput-wide v2, p1, v16

    .line 4993
    add-int/lit8 v16, p2, 0xc

    aput-wide v4, p1, v16

    .line 4994
    add-int/lit8 v16, p2, 0xd

    aput-wide v6, p1, v16

    .line 4995
    return-void-no-barrier
.end method

.method private bitrv208neg([DI)V
    .registers 32
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .line 5000
    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    .line 5001
    .local v0, "x1r":D
    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    .line 5002
    .local v2, "x1i":D
    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    .line 5003
    .local v4, "x2r":D
    add-int/lit8 v6, p2, 0x5

    aget-wide v6, p1, v6

    .line 5004
    .local v6, "x2i":D
    add-int/lit8 v8, p2, 0x6

    aget-wide v8, p1, v8

    .line 5005
    .local v8, "x3r":D
    add-int/lit8 v10, p2, 0x7

    aget-wide v10, p1, v10

    .line 5006
    .local v10, "x3i":D
    add-int/lit8 v12, p2, 0x8

    aget-wide v12, p1, v12

    .line 5007
    .local v12, "x4r":D
    add-int/lit8 v14, p2, 0x9

    aget-wide v14, p1, v14

    .line 5008
    .local v14, "x4i":D
    add-int/lit8 v16, p2, 0xa

    aget-wide v16, p1, v16

    .line 5009
    .local v16, "x5r":D
    add-int/lit8 v18, p2, 0xb

    aget-wide v18, p1, v18

    .line 5010
    .local v18, "x5i":D
    add-int/lit8 v20, p2, 0xc

    aget-wide v20, p1, v20

    .line 5011
    .local v20, "x6r":D
    add-int/lit8 v22, p2, 0xd

    aget-wide v22, p1, v22

    .line 5012
    .local v22, "x6i":D
    add-int/lit8 v24, p2, 0xe

    aget-wide v24, p1, v24

    .line 5013
    .local v24, "x7r":D
    add-int/lit8 v26, p2, 0xf

    aget-wide v26, p1, v26

    .line 5014
    .local v26, "x7i":D
    add-int/lit8 v28, p2, 0x2

    aput-wide v24, p1, v28

    .line 5015
    add-int/lit8 v28, p2, 0x3

    aput-wide v26, p1, v28

    .line 5016
    add-int/lit8 v28, p2, 0x4

    aput-wide v8, p1, v28

    .line 5017
    add-int/lit8 v28, p2, 0x5

    aput-wide v10, p1, v28

    .line 5018
    add-int/lit8 v28, p2, 0x6

    aput-wide v16, p1, v28

    .line 5019
    add-int/lit8 v28, p2, 0x7

    aput-wide v18, p1, v28

    .line 5020
    add-int/lit8 v28, p2, 0x8

    aput-wide v0, p1, v28

    .line 5021
    add-int/lit8 v28, p2, 0x9

    aput-wide v2, p1, v28

    .line 5022
    add-int/lit8 v28, p2, 0xa

    aput-wide v20, p1, v28

    .line 5023
    add-int/lit8 v28, p2, 0xb

    aput-wide v22, p1, v28

    .line 5024
    add-int/lit8 v28, p2, 0xc

    aput-wide v4, p1, v28

    .line 5025
    add-int/lit8 v28, p2, 0xd

    aput-wide v6, p1, v28

    .line 5026
    add-int/lit8 v28, p2, 0xe

    aput-wide v12, p1, v28

    .line 5027
    add-int/lit8 v28, p2, 0xf

    aput-wide v14, p1, v28

    .line 5028
    return-void-no-barrier
.end method

.method private bitrv216([DI)V
    .registers 52
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .line 4861
    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    .line 4862
    .local v0, "x1r":D
    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    .line 4863
    .local v2, "x1i":D
    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    .line 4864
    .local v4, "x2r":D
    add-int/lit8 v6, p2, 0x5

    aget-wide v6, p1, v6

    .line 4865
    .local v6, "x2i":D
    add-int/lit8 v8, p2, 0x6

    aget-wide v8, p1, v8

    .line 4866
    .local v8, "x3r":D
    add-int/lit8 v10, p2, 0x7

    aget-wide v10, p1, v10

    .line 4867
    .local v10, "x3i":D
    add-int/lit8 v12, p2, 0x8

    aget-wide v12, p1, v12

    .line 4868
    .local v12, "x4r":D
    add-int/lit8 v14, p2, 0x9

    aget-wide v14, p1, v14

    .line 4869
    .local v14, "x4i":D
    add-int/lit8 v16, p2, 0xa

    aget-wide v16, p1, v16

    .line 4870
    .local v16, "x5r":D
    add-int/lit8 v18, p2, 0xb

    aget-wide v18, p1, v18

    .line 4871
    .local v18, "x5i":D
    add-int/lit8 v20, p2, 0xe

    aget-wide v20, p1, v20

    .line 4872
    .local v20, "x7r":D
    add-int/lit8 v22, p2, 0xf

    aget-wide v22, p1, v22

    .line 4873
    .local v22, "x7i":D
    add-int/lit8 v24, p2, 0x10

    aget-wide v24, p1, v24

    .line 4874
    .local v24, "x8r":D
    add-int/lit8 v26, p2, 0x11

    aget-wide v26, p1, v26

    .line 4875
    .local v26, "x8i":D
    add-int/lit8 v28, p2, 0x14

    aget-wide v28, p1, v28

    .line 4876
    .local v28, "x10r":D
    add-int/lit8 v30, p2, 0x15

    aget-wide v30, p1, v30

    .line 4877
    .local v30, "x10i":D
    add-int/lit8 v32, p2, 0x16

    aget-wide v32, p1, v32

    .line 4878
    .local v32, "x11r":D
    add-int/lit8 v34, p2, 0x17

    aget-wide v34, p1, v34

    .line 4879
    .local v34, "x11i":D
    add-int/lit8 v36, p2, 0x18

    aget-wide v36, p1, v36

    .line 4880
    .local v36, "x12r":D
    add-int/lit8 v38, p2, 0x19

    aget-wide v38, p1, v38

    .line 4881
    .local v38, "x12i":D
    add-int/lit8 v40, p2, 0x1a

    aget-wide v40, p1, v40

    .line 4882
    .local v40, "x13r":D
    add-int/lit8 v42, p2, 0x1b

    aget-wide v42, p1, v42

    .line 4883
    .local v42, "x13i":D
    add-int/lit8 v44, p2, 0x1c

    aget-wide v44, p1, v44

    .line 4884
    .local v44, "x14r":D
    add-int/lit8 v46, p2, 0x1d

    aget-wide v46, p1, v46

    .line 4885
    .local v46, "x14i":D
    add-int/lit8 v48, p2, 0x2

    aput-wide v24, p1, v48

    .line 4886
    add-int/lit8 v48, p2, 0x3

    aput-wide v26, p1, v48

    .line 4887
    add-int/lit8 v48, p2, 0x4

    aput-wide v12, p1, v48

    .line 4888
    add-int/lit8 v48, p2, 0x5

    aput-wide v14, p1, v48

    .line 4889
    add-int/lit8 v48, p2, 0x6

    aput-wide v36, p1, v48

    .line 4890
    add-int/lit8 v48, p2, 0x7

    aput-wide v38, p1, v48

    .line 4891
    add-int/lit8 v48, p2, 0x8

    aput-wide v4, p1, v48

    .line 4892
    add-int/lit8 v48, p2, 0x9

    aput-wide v6, p1, v48

    .line 4893
    add-int/lit8 v48, p2, 0xa

    aput-wide v28, p1, v48

    .line 4894
    add-int/lit8 v48, p2, 0xb

    aput-wide v30, p1, v48

    .line 4895
    add-int/lit8 v48, p2, 0xe

    aput-wide v44, p1, v48

    .line 4896
    add-int/lit8 v48, p2, 0xf

    aput-wide v46, p1, v48

    .line 4897
    add-int/lit8 v48, p2, 0x10

    aput-wide v0, p1, v48

    .line 4898
    add-int/lit8 v48, p2, 0x11

    aput-wide v2, p1, v48

    .line 4899
    add-int/lit8 v48, p2, 0x14

    aput-wide v16, p1, v48

    .line 4900
    add-int/lit8 v48, p2, 0x15

    aput-wide v18, p1, v48

    .line 4901
    add-int/lit8 v48, p2, 0x16

    aput-wide v40, p1, v48

    .line 4902
    add-int/lit8 v48, p2, 0x17

    aput-wide v42, p1, v48

    .line 4903
    add-int/lit8 v48, p2, 0x18

    aput-wide v8, p1, v48

    .line 4904
    add-int/lit8 v48, p2, 0x19

    aput-wide v10, p1, v48

    .line 4905
    add-int/lit8 v48, p2, 0x1a

    aput-wide v32, p1, v48

    .line 4906
    add-int/lit8 v48, p2, 0x1b

    aput-wide v34, p1, v48

    .line 4907
    add-int/lit8 v48, p2, 0x1c

    aput-wide v20, p1, v48

    .line 4908
    add-int/lit8 v48, p2, 0x1d

    aput-wide v22, p1, v48

    .line 4909
    return-void-no-barrier
.end method

.method private bitrv216neg([DI)V
    .registers 64
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .line 4914
    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    .line 4915
    .local v0, "x1r":D
    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    .line 4916
    .local v2, "x1i":D
    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    .line 4917
    .local v4, "x2r":D
    add-int/lit8 v6, p2, 0x5

    aget-wide v6, p1, v6

    .line 4918
    .local v6, "x2i":D
    add-int/lit8 v8, p2, 0x6

    aget-wide v8, p1, v8

    .line 4919
    .local v8, "x3r":D
    add-int/lit8 v10, p2, 0x7

    aget-wide v10, p1, v10

    .line 4920
    .local v10, "x3i":D
    add-int/lit8 v12, p2, 0x8

    aget-wide v12, p1, v12

    .line 4921
    .local v12, "x4r":D
    add-int/lit8 v14, p2, 0x9

    aget-wide v14, p1, v14

    .line 4922
    .local v14, "x4i":D
    add-int/lit8 v16, p2, 0xa

    aget-wide v16, p1, v16

    .line 4923
    .local v16, "x5r":D
    add-int/lit8 v18, p2, 0xb

    aget-wide v18, p1, v18

    .line 4924
    .local v18, "x5i":D
    add-int/lit8 v20, p2, 0xc

    aget-wide v20, p1, v20

    .line 4925
    .local v20, "x6r":D
    add-int/lit8 v22, p2, 0xd

    aget-wide v22, p1, v22

    .line 4926
    .local v22, "x6i":D
    add-int/lit8 v24, p2, 0xe

    aget-wide v24, p1, v24

    .line 4927
    .local v24, "x7r":D
    add-int/lit8 v26, p2, 0xf

    aget-wide v26, p1, v26

    .line 4928
    .local v26, "x7i":D
    add-int/lit8 v28, p2, 0x10

    aget-wide v28, p1, v28

    .line 4929
    .local v28, "x8r":D
    add-int/lit8 v30, p2, 0x11

    aget-wide v30, p1, v30

    .line 4930
    .local v30, "x8i":D
    add-int/lit8 v32, p2, 0x12

    aget-wide v32, p1, v32

    .line 4931
    .local v32, "x9r":D
    add-int/lit8 v34, p2, 0x13

    aget-wide v34, p1, v34

    .line 4932
    .local v34, "x9i":D
    add-int/lit8 v36, p2, 0x14

    aget-wide v36, p1, v36

    .line 4933
    .local v36, "x10r":D
    add-int/lit8 v38, p2, 0x15

    aget-wide v38, p1, v38

    .line 4934
    .local v38, "x10i":D
    add-int/lit8 v40, p2, 0x16

    aget-wide v40, p1, v40

    .line 4935
    .local v40, "x11r":D
    add-int/lit8 v42, p2, 0x17

    aget-wide v42, p1, v42

    .line 4936
    .local v42, "x11i":D
    add-int/lit8 v44, p2, 0x18

    aget-wide v44, p1, v44

    .line 4937
    .local v44, "x12r":D
    add-int/lit8 v46, p2, 0x19

    aget-wide v46, p1, v46

    .line 4938
    .local v46, "x12i":D
    add-int/lit8 v48, p2, 0x1a

    aget-wide v48, p1, v48

    .line 4939
    .local v48, "x13r":D
    add-int/lit8 v50, p2, 0x1b

    aget-wide v50, p1, v50

    .line 4940
    .local v50, "x13i":D
    add-int/lit8 v52, p2, 0x1c

    aget-wide v52, p1, v52

    .line 4941
    .local v52, "x14r":D
    add-int/lit8 v54, p2, 0x1d

    aget-wide v54, p1, v54

    .line 4942
    .local v54, "x14i":D
    add-int/lit8 v56, p2, 0x1e

    aget-wide v56, p1, v56

    .line 4943
    .local v56, "x15r":D
    add-int/lit8 v58, p2, 0x1f

    aget-wide v58, p1, v58

    .line 4944
    .local v58, "x15i":D
    add-int/lit8 v60, p2, 0x2

    aput-wide v56, p1, v60

    .line 4945
    add-int/lit8 v60, p2, 0x3

    aput-wide v58, p1, v60

    .line 4946
    add-int/lit8 v60, p2, 0x4

    aput-wide v24, p1, v60

    .line 4947
    add-int/lit8 v60, p2, 0x5

    aput-wide v26, p1, v60

    .line 4948
    add-int/lit8 v60, p2, 0x6

    aput-wide v40, p1, v60

    .line 4949
    add-int/lit8 v60, p2, 0x7

    aput-wide v42, p1, v60

    .line 4950
    add-int/lit8 v60, p2, 0x8

    aput-wide v8, p1, v60

    .line 4951
    add-int/lit8 v60, p2, 0x9

    aput-wide v10, p1, v60

    .line 4952
    add-int/lit8 v60, p2, 0xa

    aput-wide v48, p1, v60

    .line 4953
    add-int/lit8 v60, p2, 0xb

    aput-wide v50, p1, v60

    .line 4954
    add-int/lit8 v60, p2, 0xc

    aput-wide v16, p1, v60

    .line 4955
    add-int/lit8 v60, p2, 0xd

    aput-wide v18, p1, v60

    .line 4956
    add-int/lit8 v60, p2, 0xe

    aput-wide v32, p1, v60

    .line 4957
    add-int/lit8 v60, p2, 0xf

    aput-wide v34, p1, v60

    .line 4958
    add-int/lit8 v60, p2, 0x10

    aput-wide v0, p1, v60

    .line 4959
    add-int/lit8 v60, p2, 0x11

    aput-wide v2, p1, v60

    .line 4960
    add-int/lit8 v60, p2, 0x12

    aput-wide v52, p1, v60

    .line 4961
    add-int/lit8 v60, p2, 0x13

    aput-wide v54, p1, v60

    .line 4962
    add-int/lit8 v60, p2, 0x14

    aput-wide v20, p1, v60

    .line 4963
    add-int/lit8 v60, p2, 0x15

    aput-wide v22, p1, v60

    .line 4964
    add-int/lit8 v60, p2, 0x16

    aput-wide v36, p1, v60

    .line 4965
    add-int/lit8 v60, p2, 0x17

    aput-wide v38, p1, v60

    .line 4966
    add-int/lit8 v60, p2, 0x18

    aput-wide v4, p1, v60

    .line 4967
    add-int/lit8 v60, p2, 0x19

    aput-wide v6, p1, v60

    .line 4968
    add-int/lit8 v60, p2, 0x1a

    aput-wide v44, p1, v60

    .line 4969
    add-int/lit8 v60, p2, 0x1b

    aput-wide v46, p1, v60

    .line 4970
    add-int/lit8 v60, p2, 0x1c

    aput-wide v12, p1, v60

    .line 4971
    add-int/lit8 v60, p2, 0x1d

    aput-wide v14, p1, v60

    .line 4972
    add-int/lit8 v60, p2, 0x1e

    aput-wide v28, p1, v60

    .line 4973
    add-int/lit8 v60, p2, 0x1f

    aput-wide v30, p1, v60

    .line 4974
    return-void-no-barrier
.end method

.method private bitrv2conj(I[I[DI)V
    .registers 142
    .param p1, "n"    # I
    .param p2, "ip"    # [I
    .param p3, "a"    # [D
    .param p4, "offa"    # I

    .line 4443
    const/4 v3, 0x1

    .line 4444
    .local v3, "m":I
    shr-int/lit8 v4, p1, 0x2

    .local v4, "l":I
    :goto_3
    const/16 v5, 0x8

    if-le v4, v5, :cond_c

    .line 4445
    shl-int/lit8 v3, v3, 0x1

    .line 4444
    shr-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 4447
    :cond_c
    shr-int/lit8 v6, p1, 0x1

    .line 4448
    .local v6, "nh":I
    const/4 v7, 0x4

    mul-int v8, v7, v3

    .line 4449
    .local v8, "nm":I
    const/4 v10, 0x2

    if-ne v4, v5, :cond_3e5

    .line 4450
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_15
    if-ge v5, v3, :cond_3db

    .line 4451
    mul-int v11, v7, v5

    .line 4452
    .local v11, "idx0":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1a
    if-ge v12, v5, :cond_2a9

    .line 4453
    mul-int v13, v7, v12

    add-int v14, v3, v5

    aget v14, p2, v14

    mul-int/2addr v14, v10

    add-int/2addr v13, v14

    .line 4454
    .local v13, "j1":I
    add-int v14, v3, v12

    aget v14, p2, v14

    mul-int/2addr v14, v10

    add-int/2addr v14, v11

    .line 4455
    .local v14, "k1":I
    add-int v15, p4, v13

    .line 4456
    .local v15, "idx1":I
    add-int v16, p4, v14

    .line 4457
    .local v16, "idx2":I
    aget-wide v17, p3, v15

    .line 4458
    .local v17, "xr":D
    add-int/lit8 v19, v15, 0x1

    aget-wide v9, p3, v19

    neg-double v9, v9

    .line 4459
    .local v9, "xi":D
    aget-wide v20, p3, v16

    .line 4460
    .local v20, "yr":D
    add-int/lit8 v19, v16, 0x1

    move/from16 v22, v8

    aget-wide v7, p3, v19

    .end local v8    # "nm":I
    .local v22, "nm":I
    neg-double v7, v7

    .line 4461
    .local v7, "yi":D
    aput-wide v20, p3, v15

    .line 4462
    add-int/lit8 v19, v15, 0x1

    aput-wide v7, p3, v19

    .line 4463
    aput-wide v17, p3, v16

    .line 4464
    add-int/lit8 v19, v16, 0x1

    aput-wide v9, p3, v19

    .line 4465
    add-int v13, v13, v22

    .line 4466
    const/16 v19, 0x2

    mul-int v23, v19, v22

    add-int v14, v14, v23

    .line 4467
    add-int v15, p4, v13

    .line 4468
    add-int v16, p4, v14

    .line 4469
    aget-wide v17, p3, v15

    .line 4470
    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v24, v7

    aget-wide v7, p3, v19

    .end local v7    # "yi":D
    .local v24, "yi":D
    neg-double v7, v7

    .line 4471
    .end local v9    # "xi":D
    .local v7, "xi":D
    aget-wide v9, p3, v16

    .line 4472
    .end local v20    # "yr":D
    .local v9, "yr":D
    add-int/lit8 v19, v16, 0x1

    aget-wide v0, p3, v19

    neg-double v0, v0

    .line 4473
    .end local v24    # "yi":D
    .local v0, "yi":D
    aput-wide v9, p3, v15

    .line 4474
    add-int/lit8 v19, v15, 0x1

    aput-wide v0, p3, v19

    .line 4475
    aput-wide v17, p3, v16

    .line 4476
    add-int/lit8 v19, v16, 0x1

    aput-wide v7, p3, v19

    .line 4477
    add-int v13, v13, v22

    .line 4478
    sub-int v14, v14, v22

    .line 4479
    add-int v15, p4, v13

    .line 4480
    add-int v16, p4, v14

    .line 4481
    aget-wide v17, p3, v15

    .line 4482
    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v26, v0

    aget-wide v0, p3, v19

    .end local v0    # "yi":D
    .local v26, "yi":D
    neg-double v0, v0

    .line 4483
    .end local v7    # "xi":D
    .local v0, "xi":D
    aget-wide v7, p3, v16

    .line 4484
    .end local v9    # "yr":D
    .local v7, "yr":D
    add-int/lit8 v9, v16, 0x1

    aget-wide v9, p3, v9

    neg-double v9, v9

    .line 4485
    .end local v26    # "yi":D
    .local v9, "yi":D
    aput-wide v7, p3, v15

    .line 4486
    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    .line 4487
    aput-wide v17, p3, v16

    .line 4488
    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    .line 4489
    add-int v13, v13, v22

    .line 4490
    const/16 v19, 0x2

    mul-int v20, v19, v22

    add-int v14, v14, v20

    .line 4491
    add-int v15, p4, v13

    .line 4492
    add-int v16, p4, v14

    .line 4493
    aget-wide v17, p3, v15

    .line 4494
    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v28, v0

    aget-wide v0, p3, v19

    .end local v0    # "xi":D
    .local v28, "xi":D
    neg-double v0, v0

    .line 4495
    .end local v28    # "xi":D
    .restart local v0    # "xi":D
    aget-wide v7, p3, v16

    .line 4496
    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v30, v9

    aget-wide v9, p3, v19

    .end local v9    # "yi":D
    .local v30, "yi":D
    neg-double v9, v9

    .line 4497
    .end local v30    # "yi":D
    .restart local v9    # "yi":D
    aput-wide v7, p3, v15

    .line 4498
    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    .line 4499
    aput-wide v17, p3, v16

    .line 4500
    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    .line 4501
    add-int/2addr v13, v6

    .line 4502
    const/16 v19, 0x2

    add-int/lit8 v14, v14, 0x2

    .line 4503
    add-int v15, p4, v13

    .line 4504
    add-int v16, p4, v14

    .line 4505
    aget-wide v17, p3, v15

    .line 4506
    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v32, v0

    aget-wide v0, p3, v19

    .end local v0    # "xi":D
    .local v32, "xi":D
    neg-double v0, v0

    .line 4507
    .end local v32    # "xi":D
    .restart local v0    # "xi":D
    aget-wide v7, p3, v16

    .line 4508
    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v34, v9

    aget-wide v9, p3, v19

    .end local v9    # "yi":D
    .local v34, "yi":D
    neg-double v9, v9

    .line 4509
    .end local v34    # "yi":D
    .restart local v9    # "yi":D
    aput-wide v7, p3, v15

    .line 4510
    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    .line 4511
    aput-wide v17, p3, v16

    .line 4512
    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    .line 4513
    sub-int v13, v13, v22

    .line 4514
    const/16 v19, 0x2

    mul-int v20, v19, v22

    sub-int v14, v14, v20

    .line 4515
    add-int v15, p4, v13

    .line 4516
    add-int v16, p4, v14

    .line 4517
    aget-wide v17, p3, v15

    .line 4518
    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v36, v0

    aget-wide v0, p3, v19

    .end local v0    # "xi":D
    .local v36, "xi":D
    neg-double v0, v0

    .line 4519
    .end local v36    # "xi":D
    .restart local v0    # "xi":D
    aget-wide v7, p3, v16

    .line 4520
    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v38, v9

    aget-wide v9, p3, v19

    .end local v9    # "yi":D
    .local v38, "yi":D
    neg-double v9, v9

    .line 4521
    .end local v38    # "yi":D
    .restart local v9    # "yi":D
    aput-wide v7, p3, v15

    .line 4522
    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    .line 4523
    aput-wide v17, p3, v16

    .line 4524
    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    .line 4525
    sub-int v13, v13, v22

    .line 4526
    add-int v14, v14, v22

    .line 4527
    add-int v15, p4, v13

    .line 4528
    add-int v16, p4, v14

    .line 4529
    aget-wide v17, p3, v15

    .line 4530
    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v40, v0

    aget-wide v0, p3, v19

    .end local v0    # "xi":D
    .local v40, "xi":D
    neg-double v0, v0

    .line 4531
    .end local v40    # "xi":D
    .restart local v0    # "xi":D
    aget-wide v7, p3, v16

    .line 4532
    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v42, v9

    aget-wide v9, p3, v19

    .end local v9    # "yi":D
    .local v42, "yi":D
    neg-double v9, v9

    .line 4533
    .end local v42    # "yi":D
    .restart local v9    # "yi":D
    aput-wide v7, p3, v15

    .line 4534
    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    .line 4535
    aput-wide v17, p3, v16

    .line 4536
    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    .line 4537
    sub-int v13, v13, v22

    .line 4538
    const/16 v19, 0x2

    mul-int v20, v19, v22

    sub-int v14, v14, v20

    .line 4539
    add-int v15, p4, v13

    .line 4540
    add-int v16, p4, v14

    .line 4541
    aget-wide v17, p3, v15

    .line 4542
    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v44, v0

    aget-wide v0, p3, v19

    .end local v0    # "xi":D
    .local v44, "xi":D
    neg-double v0, v0

    .line 4543
    .end local v44    # "xi":D
    .restart local v0    # "xi":D
    aget-wide v7, p3, v16

    .line 4544
    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v46, v9

    aget-wide v9, p3, v19

    .end local v9    # "yi":D
    .local v46, "yi":D
    neg-double v9, v9

    .line 4545
    .end local v46    # "yi":D
    .restart local v9    # "yi":D
    aput-wide v7, p3, v15

    .line 4546
    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    .line 4547
    aput-wide v17, p3, v16

    .line 4548
    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    .line 4549
    const/16 v19, 0x2

    add-int/lit8 v13, v13, 0x2

    .line 4550
    add-int/2addr v14, v6

    .line 4551
    add-int v15, p4, v13

    .line 4552
    add-int v16, p4, v14

    .line 4553
    aget-wide v17, p3, v15

    .line 4554
    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v48, v0

    aget-wide v0, p3, v19

    .end local v0    # "xi":D
    .local v48, "xi":D
    neg-double v0, v0

    .line 4555
    .end local v48    # "xi":D
    .restart local v0    # "xi":D
    aget-wide v7, p3, v16

    .line 4556
    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v50, v9

    aget-wide v9, p3, v19

    .end local v9    # "yi":D
    .local v50, "yi":D
    neg-double v9, v9

    .line 4557
    .end local v50    # "yi":D
    .restart local v9    # "yi":D
    aput-wide v7, p3, v15

    .line 4558
    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    .line 4559
    aput-wide v17, p3, v16

    .line 4560
    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    .line 4561
    add-int v13, v13, v22

    .line 4562
    const/16 v19, 0x2

    mul-int v20, v19, v22

    add-int v14, v14, v20

    .line 4563
    add-int v15, p4, v13

    .line 4564
    add-int v16, p4, v14

    .line 4565
    aget-wide v17, p3, v15

    .line 4566
    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v52, v0

    aget-wide v0, p3, v19

    .end local v0    # "xi":D
    .local v52, "xi":D
    neg-double v0, v0

    .line 4567
    .end local v52    # "xi":D
    .restart local v0    # "xi":D
    aget-wide v7, p3, v16

    .line 4568
    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v54, v9

    aget-wide v9, p3, v19

    .end local v9    # "yi":D
    .local v54, "yi":D
    neg-double v9, v9

    .line 4569
    .end local v54    # "yi":D
    .restart local v9    # "yi":D
    aput-wide v7, p3, v15

    .line 4570
    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    .line 4571
    aput-wide v17, p3, v16

    .line 4572
    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    .line 4573
    add-int v13, v13, v22

    .line 4574
    sub-int v14, v14, v22

    .line 4575
    add-int v15, p4, v13

    .line 4576
    add-int v16, p4, v14

    .line 4577
    aget-wide v17, p3, v15

    .line 4578
    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v56, v0

    aget-wide v0, p3, v19

    .end local v0    # "xi":D
    .local v56, "xi":D
    neg-double v0, v0

    .line 4579
    .end local v56    # "xi":D
    .restart local v0    # "xi":D
    aget-wide v7, p3, v16

    .line 4580
    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v58, v9

    aget-wide v9, p3, v19

    .end local v9    # "yi":D
    .local v58, "yi":D
    neg-double v9, v9

    .line 4581
    .end local v58    # "yi":D
    .restart local v9    # "yi":D
    aput-wide v7, p3, v15

    .line 4582
    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    .line 4583
    aput-wide v17, p3, v16

    .line 4584
    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    .line 4585
    add-int v13, v13, v22

    .line 4586
    const/16 v19, 0x2

    mul-int v20, v19, v22

    add-int v14, v14, v20

    .line 4587
    add-int v15, p4, v13

    .line 4588
    add-int v16, p4, v14

    .line 4589
    aget-wide v17, p3, v15

    .line 4590
    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v60, v0

    aget-wide v0, p3, v19

    .end local v0    # "xi":D
    .local v60, "xi":D
    neg-double v0, v0

    .line 4591
    .end local v60    # "xi":D
    .restart local v0    # "xi":D
    aget-wide v7, p3, v16

    .line 4592
    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v62, v9

    aget-wide v9, p3, v19

    .end local v9    # "yi":D
    .local v62, "yi":D
    neg-double v9, v9

    .line 4593
    .end local v62    # "yi":D
    .restart local v9    # "yi":D
    aput-wide v7, p3, v15

    .line 4594
    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    .line 4595
    aput-wide v17, p3, v16

    .line 4596
    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    .line 4597
    sub-int/2addr v13, v6

    .line 4598
    add-int/lit8 v14, v14, -0x2

    .line 4599
    add-int v15, p4, v13

    .line 4600
    add-int v16, p4, v14

    .line 4601
    aget-wide v17, p3, v15

    .line 4602
    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v64, v0

    aget-wide v0, p3, v19

    .end local v0    # "xi":D
    .local v64, "xi":D
    neg-double v0, v0

    .line 4603
    .end local v64    # "xi":D
    .restart local v0    # "xi":D
    aget-wide v7, p3, v16

    .line 4604
    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v66, v9

    aget-wide v9, p3, v19

    .end local v9    # "yi":D
    .local v66, "yi":D
    neg-double v9, v9

    .line 4605
    .end local v66    # "yi":D
    .restart local v9    # "yi":D
    aput-wide v7, p3, v15

    .line 4606
    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    .line 4607
    aput-wide v17, p3, v16

    .line 4608
    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    .line 4609
    sub-int v13, v13, v22

    .line 4610
    const/16 v19, 0x2

    mul-int v20, v19, v22

    sub-int v14, v14, v20

    .line 4611
    add-int v15, p4, v13

    .line 4612
    add-int v16, p4, v14

    .line 4613
    aget-wide v17, p3, v15

    .line 4614
    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v68, v0

    aget-wide v0, p3, v19

    .end local v0    # "xi":D
    .local v68, "xi":D
    neg-double v0, v0

    .line 4615
    .end local v68    # "xi":D
    .restart local v0    # "xi":D
    aget-wide v7, p3, v16

    .line 4616
    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v70, v9

    aget-wide v9, p3, v19

    .end local v9    # "yi":D
    .local v70, "yi":D
    neg-double v9, v9

    .line 4617
    .end local v70    # "yi":D
    .restart local v9    # "yi":D
    aput-wide v7, p3, v15

    .line 4618
    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    .line 4619
    aput-wide v17, p3, v16

    .line 4620
    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    .line 4621
    sub-int v13, v13, v22

    .line 4622
    add-int v14, v14, v22

    .line 4623
    add-int v15, p4, v13

    .line 4624
    add-int v16, p4, v14

    .line 4625
    aget-wide v17, p3, v15

    .line 4626
    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v72, v0

    aget-wide v0, p3, v19

    .end local v0    # "xi":D
    .local v72, "xi":D
    neg-double v0, v0

    .line 4627
    .end local v72    # "xi":D
    .restart local v0    # "xi":D
    aget-wide v7, p3, v16

    .line 4628
    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v74, v9

    aget-wide v9, p3, v19

    .end local v9    # "yi":D
    .local v74, "yi":D
    neg-double v9, v9

    .line 4629
    .end local v74    # "yi":D
    .restart local v9    # "yi":D
    aput-wide v7, p3, v15

    .line 4630
    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    .line 4631
    aput-wide v17, p3, v16

    .line 4632
    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    .line 4633
    sub-int v13, v13, v22

    .line 4634
    const/16 v19, 0x2

    mul-int v20, v19, v22

    sub-int v14, v14, v20

    .line 4635
    add-int v15, p4, v13

    .line 4636
    add-int v16, p4, v14

    .line 4637
    aget-wide v17, p3, v15

    .line 4638
    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v76, v0

    aget-wide v0, p3, v19

    .end local v0    # "xi":D
    .local v76, "xi":D
    neg-double v0, v0

    .line 4639
    .end local v76    # "xi":D
    .restart local v0    # "xi":D
    aget-wide v7, p3, v16

    .line 4640
    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v78, v9

    aget-wide v9, p3, v19

    .end local v9    # "yi":D
    .local v78, "yi":D
    neg-double v9, v9

    .line 4641
    .end local v78    # "yi":D
    .restart local v9    # "yi":D
    aput-wide v7, p3, v15

    .line 4642
    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    .line 4643
    aput-wide v17, p3, v16

    .line 4644
    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    .line 4452
    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v22

    const/4 v7, 0x4

    const/4 v10, 0x2

    goto/16 :goto_1a

    .line 4646
    .end local v0    # "xi":D
    .end local v7    # "yr":D
    .end local v9    # "yi":D
    .end local v12    # "j":I
    .end local v13    # "j1":I
    .end local v14    # "k1":I
    .end local v15    # "idx1":I
    .end local v16    # "idx2":I
    .end local v17    # "xr":D
    .end local v22    # "nm":I
    .restart local v8    # "nm":I
    :cond_2a9
    move/from16 v22, v8

    .end local v8    # "nm":I
    .restart local v22    # "nm":I
    add-int v0, v3, v5

    aget v0, p2, v0

    const/4 v7, 0x2

    mul-int v10, v7, v0

    add-int/2addr v10, v11

    .line 4647
    .local v10, "k1":I
    add-int/lit8 v0, v10, 0x2

    .line 4648
    .local v0, "j1":I
    add-int/2addr v10, v6

    .line 4649
    add-int v7, p4, v0

    .line 4650
    .local v7, "idx1":I
    add-int v8, p4, v10

    .line 4651
    .local v8, "idx2":I
    add-int/lit8 v9, v7, -0x1

    add-int/lit8 v12, v7, -0x1

    aget-wide v12, p3, v12

    neg-double v12, v12

    aput-wide v12, p3, v9

    .line 4652
    aget-wide v12, p3, v7

    .line 4653
    .local v12, "xr":D
    add-int/lit8 v9, v7, 0x1

    move/from16 v80, v3

    move/from16 v81, v4

    aget-wide v3, p3, v9

    .end local v3    # "m":I
    .end local v4    # "l":I
    .local v80, "m":I
    .local v81, "l":I
    neg-double v3, v3

    .line 4654
    .local v3, "xi":D
    aget-wide v14, p3, v8

    .line 4655
    .local v14, "yr":D
    add-int/lit8 v9, v8, 0x1

    move/from16 v83, v5

    move/from16 v82, v6

    aget-wide v5, p3, v9

    .end local v5    # "k":I
    .end local v6    # "nh":I
    .local v82, "nh":I
    .local v83, "k":I
    neg-double v5, v5

    .line 4656
    .local v5, "yi":D
    aput-wide v14, p3, v7

    .line 4657
    add-int/lit8 v9, v7, 0x1

    aput-wide v5, p3, v9

    .line 4658
    aput-wide v12, p3, v8

    .line 4659
    add-int/lit8 v9, v8, 0x1

    aput-wide v3, p3, v9

    .line 4660
    add-int/lit8 v9, v8, 0x3

    add-int/lit8 v16, v8, 0x3

    move-wide/from16 v84, v3

    aget-wide v3, p3, v16

    .end local v3    # "xi":D
    .local v84, "xi":D
    neg-double v3, v3

    aput-wide v3, p3, v9

    .line 4661
    add-int v0, v0, v22

    .line 4662
    const/4 v3, 0x2

    mul-int v4, v3, v22

    add-int/2addr v10, v4

    .line 4663
    add-int v3, p4, v0

    .line 4664
    .end local v7    # "idx1":I
    .local v3, "idx1":I
    add-int v4, p4, v10

    .line 4665
    .end local v8    # "idx2":I
    .local v4, "idx2":I
    aget-wide v7, p3, v3

    .line 4666
    .end local v12    # "xr":D
    .local v7, "xr":D
    add-int/lit8 v9, v3, 0x1

    aget-wide v12, p3, v9

    neg-double v12, v12

    .line 4667
    .end local v84    # "xi":D
    .local v12, "xi":D
    aget-wide v14, p3, v4

    .line 4668
    add-int/lit8 v9, v4, 0x1

    move-wide/from16 v86, v5

    aget-wide v5, p3, v9

    .end local v5    # "yi":D
    .local v86, "yi":D
    neg-double v5, v5

    .line 4669
    .end local v86    # "yi":D
    .restart local v5    # "yi":D
    aput-wide v14, p3, v3

    .line 4670
    add-int/lit8 v9, v3, 0x1

    aput-wide v5, p3, v9

    .line 4671
    aput-wide v7, p3, v4

    .line 4672
    add-int/lit8 v9, v4, 0x1

    aput-wide v12, p3, v9

    .line 4673
    add-int v0, v0, v22

    .line 4674
    sub-int v10, v10, v22

    .line 4675
    add-int v3, p4, v0

    .line 4676
    add-int v4, p4, v10

    .line 4677
    aget-wide v7, p3, v3

    .line 4678
    add-int/lit8 v9, v3, 0x1

    move-wide/from16 v88, v5

    aget-wide v5, p3, v9

    .end local v5    # "yi":D
    .local v88, "yi":D
    neg-double v5, v5

    .line 4679
    .end local v12    # "xi":D
    .local v5, "xi":D
    aget-wide v12, p3, v4

    .line 4680
    .end local v14    # "yr":D
    .local v12, "yr":D
    add-int/lit8 v9, v4, 0x1

    move/from16 v90, v10

    aget-wide v9, p3, v9

    .end local v10    # "k1":I
    .local v90, "k1":I
    neg-double v9, v9

    .line 4681
    .end local v88    # "yi":D
    .restart local v9    # "yi":D
    aput-wide v12, p3, v3

    .line 4682
    add-int/lit8 v14, v3, 0x1

    aput-wide v9, p3, v14

    .line 4683
    aput-wide v7, p3, v4

    .line 4684
    add-int/lit8 v14, v4, 0x1

    aput-wide v5, p3, v14

    .line 4685
    add-int/lit8 v0, v0, -0x2

    .line 4686
    sub-int v14, v90, v82

    .line 4687
    .end local v90    # "k1":I
    .local v14, "k1":I
    add-int v3, p4, v0

    .line 4688
    add-int v4, p4, v14

    .line 4689
    aget-wide v7, p3, v3

    .line 4690
    add-int/lit8 v15, v3, 0x1

    move-wide/from16 v91, v5

    aget-wide v5, p3, v15

    .end local v5    # "xi":D
    .local v91, "xi":D
    neg-double v5, v5

    .line 4691
    .end local v91    # "xi":D
    .restart local v5    # "xi":D
    aget-wide v12, p3, v4

    .line 4692
    add-int/lit8 v15, v4, 0x1

    move-wide/from16 v93, v9

    aget-wide v9, p3, v15

    .end local v9    # "yi":D
    .local v93, "yi":D
    neg-double v9, v9

    .line 4693
    .end local v93    # "yi":D
    .restart local v9    # "yi":D
    aput-wide v12, p3, v3

    .line 4694
    add-int/lit8 v15, v3, 0x1

    aput-wide v9, p3, v15

    .line 4695
    aput-wide v7, p3, v4

    .line 4696
    add-int/lit8 v15, v4, 0x1

    aput-wide v5, p3, v15

    .line 4697
    add-int/lit8 v15, v82, 0x2

    add-int/2addr v0, v15

    .line 4698
    add-int/lit8 v15, v82, 0x2

    add-int/2addr v14, v15

    .line 4699
    add-int v3, p4, v0

    .line 4700
    add-int v4, p4, v14

    .line 4701
    aget-wide v7, p3, v3

    .line 4702
    add-int/lit8 v15, v3, 0x1

    move-wide/from16 v95, v5

    aget-wide v5, p3, v15

    .end local v5    # "xi":D
    .local v95, "xi":D
    neg-double v5, v5

    .line 4703
    .end local v95    # "xi":D
    .restart local v5    # "xi":D
    aget-wide v12, p3, v4

    .line 4704
    add-int/lit8 v15, v4, 0x1

    move-wide/from16 v97, v9

    aget-wide v9, p3, v15

    .end local v9    # "yi":D
    .local v97, "yi":D
    neg-double v9, v9

    .line 4705
    .end local v97    # "yi":D
    .restart local v9    # "yi":D
    aput-wide v12, p3, v3

    .line 4706
    add-int/lit8 v15, v3, 0x1

    aput-wide v9, p3, v15

    .line 4707
    aput-wide v7, p3, v4

    .line 4708
    add-int/lit8 v15, v4, 0x1

    aput-wide v5, p3, v15

    .line 4709
    sub-int v15, v82, v22

    sub-int/2addr v0, v15

    .line 4710
    const/4 v15, 0x2

    mul-int v16, v15, v22

    add-int/lit8 v16, v16, -0x2

    add-int v14, v14, v16

    .line 4711
    add-int v3, p4, v0

    .line 4712
    add-int v4, p4, v14

    .line 4713
    add-int/lit8 v15, v3, -0x1

    add-int/lit8 v16, v3, -0x1

    move-wide/from16 v99, v5

    aget-wide v5, p3, v16

    .end local v5    # "xi":D
    .local v99, "xi":D
    neg-double v5, v5

    aput-wide v5, p3, v15

    .line 4714
    aget-wide v5, p3, v3

    .line 4715
    .end local v7    # "xr":D
    .local v5, "xr":D
    add-int/lit8 v7, v3, 0x1

    aget-wide v7, p3, v7

    neg-double v7, v7

    .line 4716
    .end local v99    # "xi":D
    .local v7, "xi":D
    aget-wide v12, p3, v4

    .line 4717
    add-int/lit8 v15, v4, 0x1

    move-wide/from16 v101, v9

    aget-wide v9, p3, v15

    .end local v9    # "yi":D
    .local v101, "yi":D
    neg-double v9, v9

    .line 4718
    .end local v101    # "yi":D
    .restart local v9    # "yi":D
    aput-wide v12, p3, v3

    .line 4719
    add-int/lit8 v15, v3, 0x1

    aput-wide v9, p3, v15

    .line 4720
    aput-wide v5, p3, v4

    .line 4721
    add-int/lit8 v15, v4, 0x1

    aput-wide v7, p3, v15

    .line 4722
    add-int/lit8 v15, v4, 0x3

    add-int/lit8 v16, v4, 0x3

    move/from16 v103, v3

    move/from16 v104, v4

    aget-wide v3, p3, v16

    .end local v3    # "idx1":I
    .end local v4    # "idx2":I
    .local v103, "idx1":I
    .local v104, "idx2":I
    neg-double v3, v3

    aput-wide v3, p3, v15

    .line 4450
    add-int/lit8 v3, v83, 0x1

    .end local v83    # "k":I
    .local v3, "k":I
    move v5, v3

    move/from16 v8, v22

    move/from16 v3, v80

    move/from16 v4, v81

    move/from16 v6, v82

    const/4 v7, 0x4

    const/4 v10, 0x2

    goto/16 :goto_15

    .line 4856
    .end local v0    # "j1":I
    .end local v5    # "xr":D
    .end local v7    # "xi":D
    .end local v9    # "yi":D
    .end local v11    # "idx0":I
    .end local v12    # "yr":D
    .end local v14    # "k1":I
    .end local v22    # "nm":I
    .end local v80    # "m":I
    .end local v81    # "l":I
    .end local v82    # "nh":I
    .end local v103    # "idx1":I
    .end local v104    # "idx2":I
    .local v3, "m":I
    .local v4, "l":I
    .restart local v6    # "nh":I
    .local v8, "nm":I
    :cond_3db
    move/from16 v81, v4

    move/from16 v82, v6

    move/from16 v22, v8

    move/from16 v131, v3

    .end local v3    # "m":I
    .end local v4    # "l":I
    .end local v6    # "nh":I
    .end local v8    # "nm":I
    .restart local v22    # "nm":I
    .restart local v80    # "m":I
    .restart local v81    # "l":I
    .restart local v82    # "nh":I
    goto/16 :goto_5b5

    .line 4725
    .end local v22    # "nm":I
    .end local v80    # "m":I
    .end local v81    # "l":I
    .end local v82    # "nh":I
    .restart local v3    # "m":I
    .restart local v4    # "l":I
    .restart local v6    # "nh":I
    .restart local v8    # "nm":I
    :cond_3e5
    move/from16 v80, v3

    move/from16 v81, v4

    move/from16 v82, v6

    move/from16 v22, v8

    .end local v3    # "m":I
    .end local v4    # "l":I
    .end local v6    # "nh":I
    .end local v8    # "nm":I
    .restart local v22    # "nm":I
    .restart local v80    # "m":I
    .restart local v81    # "l":I
    .restart local v82    # "nh":I
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_3ee
    move/from16 v3, v80

    if-ge v0, v3, :cond_5b3

    .line 4726
    .end local v80    # "m":I
    .restart local v3    # "m":I
    const/4 v4, 0x4

    mul-int v7, v4, v0

    .line 4727
    .local v7, "idx0":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3f6
    if-ge v5, v0, :cond_535

    .line 4728
    mul-int v6, v4, v5

    add-int v8, v3, v0

    aget v8, p2, v8

    add-int/2addr v6, v8

    .line 4729
    .local v6, "j1":I
    add-int v8, v3, v5

    aget v8, p2, v8

    add-int/2addr v8, v7

    .line 4730
    .local v8, "k1":I
    add-int v9, p4, v6

    .line 4731
    .local v9, "idx1":I
    add-int v10, p4, v8

    .line 4732
    .local v10, "idx2":I
    aget-wide v11, p3, v9

    .line 4733
    .local v11, "xr":D
    add-int/lit8 v13, v9, 0x1

    aget-wide v13, p3, v13

    neg-double v13, v13

    .line 4734
    .local v13, "xi":D
    aget-wide v15, p3, v10

    .line 4735
    .local v15, "yr":D
    add-int/lit8 v17, v10, 0x1

    move/from16 v105, v5

    aget-wide v4, p3, v17

    .end local v5    # "j":I
    .local v105, "j":I
    neg-double v4, v4

    .line 4736
    .local v4, "yi":D
    aput-wide v15, p3, v9

    .line 4737
    add-int/lit8 v17, v9, 0x1

    aput-wide v4, p3, v17

    .line 4738
    aput-wide v11, p3, v10

    .line 4739
    add-int/lit8 v17, v10, 0x1

    aput-wide v13, p3, v17

    .line 4740
    add-int v6, v6, v22

    .line 4741
    add-int v8, v8, v22

    .line 4742
    add-int v9, p4, v6

    .line 4743
    add-int v10, p4, v8

    .line 4744
    aget-wide v11, p3, v9

    .line 4745
    add-int/lit8 v17, v9, 0x1

    move-wide/from16 v106, v4

    aget-wide v4, p3, v17

    .end local v4    # "yi":D
    .local v106, "yi":D
    neg-double v4, v4

    .line 4746
    .end local v13    # "xi":D
    .local v4, "xi":D
    aget-wide v13, p3, v10

    .line 4747
    .end local v15    # "yr":D
    .local v13, "yr":D
    add-int/lit8 v15, v10, 0x1

    move/from16 v108, v0

    aget-wide v0, p3, v15

    .end local v0    # "k":I
    .local v108, "k":I
    neg-double v0, v0

    .line 4748
    .end local v106    # "yi":D
    .local v0, "yi":D
    aput-wide v13, p3, v9

    .line 4749
    add-int/lit8 v15, v9, 0x1

    aput-wide v0, p3, v15

    .line 4750
    aput-wide v11, p3, v10

    .line 4751
    add-int/lit8 v15, v10, 0x1

    aput-wide v4, p3, v15

    .line 4752
    add-int v6, v6, v82

    .line 4753
    const/4 v15, 0x2

    add-int/2addr v8, v15

    .line 4754
    add-int v9, p4, v6

    .line 4755
    add-int v10, p4, v8

    .line 4756
    aget-wide v11, p3, v9

    .line 4757
    add-int/lit8 v15, v9, 0x1

    move-wide/from16 v109, v0

    aget-wide v0, p3, v15

    .end local v0    # "yi":D
    .local v109, "yi":D
    neg-double v0, v0

    .line 4758
    .end local v4    # "xi":D
    .local v0, "xi":D
    aget-wide v4, p3, v10

    .line 4759
    .end local v13    # "yr":D
    .local v4, "yr":D
    add-int/lit8 v13, v10, 0x1

    aget-wide v13, p3, v13

    neg-double v13, v13

    .line 4760
    .end local v109    # "yi":D
    .local v13, "yi":D
    aput-wide v4, p3, v9

    .line 4761
    add-int/lit8 v15, v9, 0x1

    aput-wide v13, p3, v15

    .line 4762
    aput-wide v11, p3, v10

    .line 4763
    add-int/lit8 v15, v10, 0x1

    aput-wide v0, p3, v15

    .line 4764
    sub-int v6, v6, v22

    .line 4765
    sub-int v8, v8, v22

    .line 4766
    add-int v9, p4, v6

    .line 4767
    add-int v10, p4, v8

    .line 4768
    aget-wide v11, p3, v9

    .line 4769
    add-int/lit8 v15, v9, 0x1

    move-wide/from16 v111, v0

    aget-wide v0, p3, v15

    .end local v0    # "xi":D
    .local v111, "xi":D
    neg-double v0, v0

    .line 4770
    .end local v111    # "xi":D
    .restart local v0    # "xi":D
    aget-wide v4, p3, v10

    .line 4771
    add-int/lit8 v15, v10, 0x1

    move-wide/from16 v113, v13

    aget-wide v13, p3, v15

    .end local v13    # "yi":D
    .local v113, "yi":D
    neg-double v13, v13

    .line 4772
    .end local v113    # "yi":D
    .restart local v13    # "yi":D
    aput-wide v4, p3, v9

    .line 4773
    add-int/lit8 v15, v9, 0x1

    aput-wide v13, p3, v15

    .line 4774
    aput-wide v11, p3, v10

    .line 4775
    add-int/lit8 v15, v10, 0x1

    aput-wide v0, p3, v15

    .line 4776
    const/4 v15, 0x2

    add-int/2addr v6, v15

    .line 4777
    add-int v8, v8, v82

    .line 4778
    add-int v9, p4, v6

    .line 4779
    add-int v10, p4, v8

    .line 4780
    aget-wide v11, p3, v9

    .line 4781
    add-int/lit8 v16, v9, 0x1

    move-wide/from16 v115, v0

    aget-wide v0, p3, v16

    .end local v0    # "xi":D
    .local v115, "xi":D
    neg-double v0, v0

    .line 4782
    .end local v115    # "xi":D
    .restart local v0    # "xi":D
    aget-wide v4, p3, v10

    .line 4783
    add-int/lit8 v16, v10, 0x1

    move-wide/from16 v117, v13

    aget-wide v13, p3, v16

    .end local v13    # "yi":D
    .local v117, "yi":D
    neg-double v13, v13

    .line 4784
    .end local v117    # "yi":D
    .restart local v13    # "yi":D
    aput-wide v4, p3, v9

    .line 4785
    add-int/lit8 v16, v9, 0x1

    aput-wide v13, p3, v16

    .line 4786
    aput-wide v11, p3, v10

    .line 4787
    add-int/lit8 v16, v10, 0x1

    aput-wide v0, p3, v16

    .line 4788
    add-int v6, v6, v22

    .line 4789
    add-int v8, v8, v22

    .line 4790
    add-int v9, p4, v6

    .line 4791
    add-int v10, p4, v8

    .line 4792
    aget-wide v11, p3, v9

    .line 4793
    add-int/lit8 v16, v9, 0x1

    move-wide/from16 v119, v0

    aget-wide v0, p3, v16

    .end local v0    # "xi":D
    .local v119, "xi":D
    neg-double v0, v0

    .line 4794
    .end local v119    # "xi":D
    .restart local v0    # "xi":D
    aget-wide v4, p3, v10

    .line 4795
    add-int/lit8 v16, v10, 0x1

    move-wide/from16 v121, v13

    aget-wide v13, p3, v16

    .end local v13    # "yi":D
    .local v121, "yi":D
    neg-double v13, v13

    .line 4796
    .end local v121    # "yi":D
    .restart local v13    # "yi":D
    aput-wide v4, p3, v9

    .line 4797
    add-int/lit8 v16, v9, 0x1

    aput-wide v13, p3, v16

    .line 4798
    aput-wide v11, p3, v10

    .line 4799
    add-int/lit8 v16, v10, 0x1

    aput-wide v0, p3, v16

    .line 4800
    sub-int v6, v6, v82

    .line 4801
    add-int/lit8 v8, v8, -0x2

    .line 4802
    add-int v9, p4, v6

    .line 4803
    add-int v10, p4, v8

    .line 4804
    aget-wide v11, p3, v9

    .line 4805
    add-int/lit8 v16, v9, 0x1

    move-wide/from16 v123, v0

    aget-wide v0, p3, v16

    .end local v0    # "xi":D
    .local v123, "xi":D
    neg-double v0, v0

    .line 4806
    .end local v123    # "xi":D
    .restart local v0    # "xi":D
    aget-wide v4, p3, v10

    .line 4807
    add-int/lit8 v16, v10, 0x1

    move-wide/from16 v125, v13

    aget-wide v13, p3, v16

    .end local v13    # "yi":D
    .local v125, "yi":D
    neg-double v13, v13

    .line 4808
    .end local v125    # "yi":D
    .restart local v13    # "yi":D
    aput-wide v4, p3, v9

    .line 4809
    add-int/lit8 v16, v9, 0x1

    aput-wide v13, p3, v16

    .line 4810
    aput-wide v11, p3, v10

    .line 4811
    add-int/lit8 v16, v10, 0x1

    aput-wide v0, p3, v16

    .line 4812
    sub-int v6, v6, v22

    .line 4813
    sub-int v8, v8, v22

    .line 4814
    add-int v9, p4, v6

    .line 4815
    add-int v10, p4, v8

    .line 4816
    aget-wide v11, p3, v9

    .line 4817
    add-int/lit8 v16, v9, 0x1

    move-wide/from16 v127, v0

    aget-wide v0, p3, v16

    .end local v0    # "xi":D
    .local v127, "xi":D
    neg-double v0, v0

    .line 4818
    .end local v127    # "xi":D
    .restart local v0    # "xi":D
    aget-wide v4, p3, v10

    .line 4819
    add-int/lit8 v16, v10, 0x1

    move-wide/from16 v129, v13

    aget-wide v13, p3, v16

    .end local v13    # "yi":D
    .local v129, "yi":D
    neg-double v13, v13

    .line 4820
    .end local v129    # "yi":D
    .restart local v13    # "yi":D
    aput-wide v4, p3, v9

    .line 4821
    add-int/lit8 v16, v9, 0x1

    aput-wide v13, p3, v16

    .line 4822
    aput-wide v11, p3, v10

    .line 4823
    add-int/lit8 v16, v10, 0x1

    aput-wide v0, p3, v16

    .line 4727
    add-int/lit8 v16, v105, 0x1

    .end local v105    # "j":I
    .local v16, "j":I
    move/from16 v5, v16

    move/from16 v0, v108

    const/4 v4, 0x4

    goto/16 :goto_3f6

    .line 4825
    .end local v4    # "yr":D
    .end local v6    # "j1":I
    .end local v8    # "k1":I
    .end local v9    # "idx1":I
    .end local v10    # "idx2":I
    .end local v11    # "xr":D
    .end local v13    # "yi":D
    .end local v16    # "j":I
    .end local v108    # "k":I
    .local v0, "k":I
    :cond_535
    move/from16 v108, v0

    const/4 v15, 0x2

    .end local v0    # "k":I
    .restart local v108    # "k":I
    add-int v0, v3, v108

    aget v0, p2, v0

    add-int/2addr v0, v7

    .line 4826
    .local v0, "k1":I
    add-int/lit8 v4, v0, 0x2

    .line 4827
    .local v4, "j1":I
    add-int v0, v0, v82

    .line 4828
    add-int v5, p4, v4

    .line 4829
    .local v5, "idx1":I
    add-int v6, p4, v0

    .line 4830
    .local v6, "idx2":I
    add-int/lit8 v8, v5, -0x1

    add-int/lit8 v9, v5, -0x1

    aget-wide v9, p3, v9

    neg-double v9, v9

    aput-wide v9, p3, v8

    .line 4831
    aget-wide v8, p3, v5

    .line 4832
    .local v8, "xr":D
    add-int/lit8 v10, v5, 0x1

    aget-wide v10, p3, v10

    neg-double v10, v10

    .line 4833
    .local v10, "xi":D
    aget-wide v12, p3, v6

    .line 4834
    .restart local v12    # "yr":D
    add-int/lit8 v14, v6, 0x1

    move/from16 v131, v3

    aget-wide v2, p3, v14

    .end local v3    # "m":I
    .local v131, "m":I
    neg-double v2, v2

    .line 4835
    .local v2, "yi":D
    aput-wide v12, p3, v5

    .line 4836
    add-int/lit8 v14, v5, 0x1

    aput-wide v2, p3, v14

    .line 4837
    aput-wide v8, p3, v6

    .line 4838
    add-int/lit8 v14, v6, 0x1

    aput-wide v10, p3, v14

    .line 4839
    add-int/lit8 v14, v6, 0x3

    add-int/lit8 v16, v6, 0x3

    move-wide/from16 v132, v2

    aget-wide v2, p3, v16

    .end local v2    # "yi":D
    .local v132, "yi":D
    neg-double v2, v2

    aput-wide v2, p3, v14

    .line 4840
    add-int v4, v4, v22

    .line 4841
    add-int v0, v0, v22

    .line 4842
    add-int v3, p4, v4

    .line 4843
    .end local v5    # "idx1":I
    .local v3, "idx1":I
    add-int v5, p4, v0

    .line 4844
    .end local v6    # "idx2":I
    .local v5, "idx2":I
    add-int/lit8 v6, v3, -0x1

    add-int/lit8 v14, v3, -0x1

    move/from16 v134, v0

    aget-wide v0, p3, v14

    .end local v0    # "k1":I
    .local v134, "k1":I
    neg-double v0, v0

    aput-wide v0, p3, v6

    .line 4845
    aget-wide v0, p3, v3

    .line 4846
    .end local v8    # "xr":D
    .local v0, "xr":D
    add-int/lit8 v6, v3, 0x1

    aget-wide v8, p3, v6

    neg-double v8, v8

    .line 4847
    .end local v10    # "xi":D
    .local v8, "xi":D
    aget-wide v10, p3, v5

    .line 4848
    .end local v12    # "yr":D
    .local v10, "yr":D
    add-int/lit8 v6, v5, 0x1

    aget-wide v12, p3, v6

    neg-double v12, v12

    .line 4849
    .end local v132    # "yi":D
    .local v12, "yi":D
    aput-wide v10, p3, v3

    .line 4850
    add-int/lit8 v6, v3, 0x1

    aput-wide v12, p3, v6

    .line 4851
    aput-wide v0, p3, v5

    .line 4852
    add-int/lit8 v6, v5, 0x1

    aput-wide v8, p3, v6

    .line 4853
    add-int/lit8 v6, v5, 0x3

    add-int/lit8 v14, v5, 0x3

    move-wide/from16 v135, v0

    aget-wide v0, p3, v14

    .end local v0    # "xr":D
    .local v135, "xr":D
    neg-double v0, v0

    aput-wide v0, p3, v6

    .line 4725
    add-int/lit8 v0, v108, 0x1

    .end local v108    # "k":I
    .local v0, "k":I
    move/from16 v80, v131

    goto/16 :goto_3ee

    .line 4856
    .end local v0    # "k":I
    .end local v4    # "j1":I
    .end local v5    # "idx2":I
    .end local v7    # "idx0":I
    .end local v8    # "xi":D
    .end local v10    # "yr":D
    .end local v12    # "yi":D
    .end local v131    # "m":I
    .end local v134    # "k1":I
    .end local v135    # "xr":D
    .local v3, "m":I
    :cond_5b3
    move/from16 v131, v3

    .end local v3    # "m":I
    .restart local v131    # "m":I
    :goto_5b5
    return-void-no-barrier
.end method

.method private bluestein_complex([DII)V
    .registers 24
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "isign"    # I

    move-object/from16 v8, p0

    .line 1063
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v9, 0x2

    mul-int/2addr v0, v9

    new-array v10, v0, [D

    .line 1064
    .local v10, "ak":[D
    const/4 v7, 0x1

    .line 1065
    .local v7, "nthreads":I
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 1066
    .local v11, "threads":I
    const/4 v0, 0x1

    if-le v11, v0, :cond_f7

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_f7

    .line 1067
    const/4 v0, 0x2

    .line 1068
    .end local v7    # "nthreads":I
    .local v0, "nthreads":I
    const/4 v1, 0x4

    if-lt v11, v1, :cond_25

    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v2

    if-le v1, v2, :cond_25

    .line 1069
    const/4 v0, 0x4

    .line 1071
    .end local v0    # "nthreads":I
    .restart local v7    # "nthreads":I
    :cond_25
    move v7, v0

    new-array v6, v7, [Ljava/util/concurrent/Future;

    .line 1072
    .local v6, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v13, v0, v7

    .line 1073
    .local v13, "k":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    move v5, v0

    .end local v0    # "i":I
    .local v5, "i":I
    if-ge v5, v7, :cond_61

    .line 1074
    mul-int v14, v5, v13

    .line 1075
    .local v14, "firstIdx":I
    add-int/lit8 v0, v7, -0x1

    if-ne v5, v0, :cond_3a

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_38
    move v4, v0

    goto :goto_3d

    :cond_3a
    add-int v0, v14, v13

    goto :goto_38

    .line 1076
    .local v4, "lastIdx":I
    :goto_3d
    new-instance v3, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;

    move-object v0, v3

    move-object v1, v8

    move/from16 v2, p3

    move-object v12, v3

    move v3, v14

    move/from16 v16, v5

    move/from16 v5, p2

    .end local v5    # "i":I
    .local v16, "i":I
    move-object v9, v6

    move-object v6, v10

    .end local v6    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .local v9, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    move/from16 v17, v11

    move v11, v7

    move-object/from16 v7, p1

    .end local v7    # "nthreads":I
    .local v11, "nthreads":I
    .local v17, "threads":I
    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V

    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v16

    .line 1073
    .end local v4    # "lastIdx":I
    .end local v14    # "firstIdx":I
    add-int/lit8 v0, v16, 0x1

    .end local v16    # "i":I
    .restart local v0    # "i":I
    move-object v6, v9

    move v7, v11

    move/from16 v11, v17

    const/4 v9, 0x2

    goto :goto_2d

    .line 1100
    .end local v0    # "i":I
    .end local v9    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v17    # "threads":I
    .restart local v6    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .restart local v7    # "nthreads":I
    .local v11, "threads":I
    :cond_61
    move-object v9, v6

    move/from16 v17, v11

    move v11, v7

    .end local v6    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v7    # "nthreads":I
    .restart local v9    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .local v11, "nthreads":I
    .restart local v17    # "threads":I
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1102
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int v2, v1, v0

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v8

    move v1, v2

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 1104
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int v7, v0, v11

    .line 1105
    .end local v13    # "k":I
    .local v7, "k":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7f
    move v6, v0

    .end local v0    # "i":I
    .local v6, "i":I
    if-ge v6, v11, :cond_a8

    .line 1106
    mul-int v12, v6, v7

    .line 1107
    .local v12, "firstIdx":I
    add-int/lit8 v0, v11, -0x1

    if-ne v6, v0, :cond_8c

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    :goto_8a
    move v4, v0

    goto :goto_8f

    :cond_8c
    add-int v0, v12, v7

    goto :goto_8a

    .line 1108
    .restart local v4    # "lastIdx":I
    :goto_8f
    new-instance v5, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;

    move-object v0, v5

    move-object v1, v8

    move/from16 v2, p3

    move v3, v12

    move/from16 v18, v7

    move-object v7, v5

    move-object v5, v10

    .end local v7    # "k":I
    .local v18, "k":I
    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v6

    .line 1105
    .end local v4    # "lastIdx":I
    .end local v12    # "firstIdx":I
    add-int/lit8 v0, v6, 0x1

    .end local v6    # "i":I
    .restart local v0    # "i":I
    move/from16 v7, v18

    goto :goto_7f

    .line 1130
    .end local v0    # "i":I
    .end local v18    # "k":I
    .restart local v7    # "k":I
    :cond_a8
    move/from16 v18, v7

    .end local v7    # "k":I
    .restart local v18    # "k":I
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1132
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int/2addr v1, v0

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v8

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 1134
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v12, v0, v11

    .line 1135
    .end local v18    # "k":I
    .local v12, "k":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_c2
    move v7, v15

    .end local v15    # "i":I
    .local v7, "i":I
    if-ge v7, v11, :cond_f0

    .line 1136
    mul-int v13, v7, v12

    .line 1137
    .local v13, "firstIdx":I
    add-int/lit8 v0, v11, -0x1

    if-ne v7, v0, :cond_cf

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_cd
    move v4, v0

    goto :goto_d2

    :cond_cf
    add-int v0, v13, v12

    goto :goto_cd

    .line 1138
    .restart local v4    # "lastIdx":I
    :goto_d2
    new-instance v6, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;

    move-object v0, v6

    move-object v1, v8

    move/from16 v2, p3

    move v3, v13

    move/from16 v5, p2

    move/from16 v19, v11

    move-object v11, v6

    move-object/from16 v6, p1

    .end local v11    # "nthreads":I
    .local v19, "nthreads":I
    move v14, v7

    move-object v7, v10

    .end local v7    # "i":I
    .local v14, "i":I
    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V

    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v14

    .line 1135
    .end local v4    # "lastIdx":I
    .end local v13    # "firstIdx":I
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .restart local v15    # "i":I
    move/from16 v11, v19

    goto :goto_c2

    .line 1162
    .end local v15    # "i":I
    .end local v19    # "nthreads":I
    .restart local v11    # "nthreads":I
    :cond_f0
    move/from16 v19, v11

    .end local v11    # "nthreads":I
    .restart local v19    # "nthreads":I
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1163
    .end local v9    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v12    # "k":I
    goto/16 :goto_254

    .line 1164
    .end local v17    # "threads":I
    .end local v19    # "nthreads":I
    .local v7, "nthreads":I
    .local v11, "threads":I
    :cond_f7
    move/from16 v17, v11

    .end local v11    # "threads":I
    .restart local v17    # "threads":I
    if-lez p3, :cond_12e

    .line 1165
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_fc
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_162

    .line 1166
    const/4 v1, 0x2

    mul-int v9, v1, v0

    .line 1167
    .local v9, "idx1":I
    add-int/lit8 v1, v9, 0x1

    .line 1168
    .local v1, "idx2":I
    add-int v2, p2, v9

    .line 1169
    .local v2, "idx3":I
    add-int v3, p2, v1

    .line 1170
    .local v3, "idx4":I
    aget-wide v4, p1, v2

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    aget-wide v11, p1, v3

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v13, v6, v1

    mul-double/2addr v11, v13

    sub-double/2addr v4, v11

    aput-wide v4, v10, v9

    .line 1171
    aget-wide v4, p1, v2

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v6, v1

    mul-double/2addr v4, v11

    aget-wide v11, p1, v3

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v13, v6, v9

    mul-double/2addr v11, v13

    add-double/2addr v4, v11

    aput-wide v4, v10, v1

    .line 1165
    .end local v1    # "idx2":I
    .end local v2    # "idx3":I
    .end local v3    # "idx4":I
    .end local v9    # "idx1":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_fc

    .line 1174
    .end local v0    # "i":I
    :cond_12e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_12f
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_162

    .line 1175
    const/4 v1, 0x2

    mul-int v9, v1, v0

    .line 1176
    .restart local v9    # "idx1":I
    add-int/lit8 v1, v9, 0x1

    .line 1177
    .restart local v1    # "idx2":I
    add-int v2, p2, v9

    .line 1178
    .restart local v2    # "idx3":I
    add-int v3, p2, v1

    .line 1179
    .restart local v3    # "idx4":I
    aget-wide v4, p1, v2

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    aget-wide v11, p1, v3

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v13, v6, v1

    mul-double/2addr v11, v13

    add-double/2addr v4, v11

    aput-wide v4, v10, v9

    .line 1180
    aget-wide v4, p1, v2

    neg-double v4, v4

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v6, v1

    mul-double/2addr v4, v11

    aget-wide v11, p1, v3

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v13, v6, v9

    mul-double/2addr v11, v13

    add-double/2addr v4, v11

    aput-wide v4, v10, v1

    .line 1174
    .end local v1    # "idx2":I
    .end local v2    # "idx3":I
    .end local v3    # "idx4":I
    .end local v9    # "idx1":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_12f

    .line 1184
    .end local v0    # "i":I
    :cond_162
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int v2, v1, v0

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v8

    move v1, v2

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 1186
    if-lez p3, :cond_1a6

    .line 1187
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_177
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_1d5

    .line 1188
    const/4 v1, 0x2

    mul-int v9, v1, v0

    .line 1189
    .restart local v9    # "idx1":I
    add-int/lit8 v1, v9, 0x1

    .line 1190
    .restart local v1    # "idx2":I
    aget-wide v2, v10, v9

    neg-double v2, v2

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v4, v4, v1

    mul-double/2addr v2, v4

    aget-wide v4, v10, v1

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    add-double/2addr v2, v4

    .line 1191
    .local v2, "im":D
    aget-wide v4, v10, v9

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    aget-wide v11, v10, v1

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v13, v6, v1

    mul-double/2addr v11, v13

    add-double/2addr v4, v11

    aput-wide v4, v10, v9

    .line 1192
    aput-wide v2, v10, v1

    .line 1187
    .end local v1    # "idx2":I
    .end local v2    # "im":D
    .end local v9    # "idx1":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_177

    .line 1195
    .end local v0    # "i":I
    :cond_1a6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1a7
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_1d5

    .line 1196
    const/4 v1, 0x2

    mul-int v9, v1, v0

    .line 1197
    .restart local v9    # "idx1":I
    add-int/lit8 v1, v9, 0x1

    .line 1198
    .restart local v1    # "idx2":I
    aget-wide v2, v10, v9

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v4, v4, v1

    mul-double/2addr v2, v4

    aget-wide v4, v10, v1

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    add-double/2addr v2, v4

    .line 1199
    .restart local v2    # "im":D
    aget-wide v4, v10, v9

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    aget-wide v11, v10, v1

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v13, v6, v1

    mul-double/2addr v11, v13

    sub-double/2addr v4, v11

    aput-wide v4, v10, v9

    .line 1200
    aput-wide v2, v10, v1

    .line 1195
    .end local v1    # "idx2":I
    .end local v2    # "im":D
    .end local v9    # "idx1":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a7

    .line 1204
    .end local v0    # "i":I
    :cond_1d5
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int v2, v1, v0

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v8

    move v1, v2

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 1205
    if-lez p3, :cond_21d

    .line 1206
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_1ea
    move v0, v15

    .end local v15    # "i":I
    .restart local v0    # "i":I
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_252

    .line 1207
    const/4 v1, 0x2

    mul-int v9, v1, v0

    .line 1208
    .restart local v9    # "idx1":I
    add-int/lit8 v1, v9, 0x1

    .line 1209
    .restart local v1    # "idx2":I
    add-int v2, p2, v9

    .line 1210
    .local v2, "idx3":I
    add-int v3, p2, v1

    .line 1211
    .restart local v3    # "idx4":I
    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v4, v9

    aget-wide v11, v10, v9

    mul-double/2addr v4, v11

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v6, v1

    aget-wide v13, v10, v1

    mul-double/2addr v11, v13

    sub-double/2addr v4, v11

    aput-wide v4, p1, v2

    .line 1212
    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v4, v1

    aget-wide v11, v10, v9

    mul-double/2addr v4, v11

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v6, v9

    aget-wide v13, v10, v1

    mul-double/2addr v11, v13

    add-double/2addr v4, v11

    aput-wide v4, p1, v3

    .line 1206
    .end local v1    # "idx2":I
    .end local v2    # "idx3":I
    .end local v3    # "idx4":I
    .end local v9    # "idx1":I
    add-int/lit8 v15, v0, 0x1

    .end local v0    # "i":I
    .restart local v15    # "i":I
    goto :goto_1ea

    .line 1215
    .end local v15    # "i":I
    :cond_21d
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_21e
    move v0, v15

    .end local v15    # "i":I
    .restart local v0    # "i":I
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_252

    .line 1216
    const/4 v1, 0x2

    mul-int v9, v1, v0

    .line 1217
    .restart local v9    # "idx1":I
    add-int/lit8 v2, v9, 0x1

    .line 1218
    .local v2, "idx2":I
    add-int v3, p2, v9

    .line 1219
    .local v3, "idx3":I
    add-int v4, p2, v2

    .line 1220
    .local v4, "idx4":I
    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v9

    aget-wide v11, v10, v9

    mul-double/2addr v5, v11

    iget-object v11, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v11, v2

    aget-wide v13, v10, v2

    mul-double/2addr v11, v13

    add-double/2addr v5, v11

    aput-wide v5, p1, v3

    .line 1221
    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v2

    neg-double v5, v5

    aget-wide v11, v10, v9

    mul-double/2addr v5, v11

    iget-object v11, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v11, v9

    aget-wide v13, v10, v2

    mul-double/2addr v11, v13

    add-double/2addr v5, v11

    aput-wide v5, p1, v4

    .line 1215
    .end local v2    # "idx2":I
    .end local v3    # "idx3":I
    .end local v4    # "idx4":I
    .end local v9    # "idx1":I
    add-int/lit8 v15, v0, 0x1

    .end local v0    # "i":I
    .restart local v15    # "i":I
    goto :goto_21e

    .line 1225
    .end local v15    # "i":I
    :cond_252
    move/from16 v19, v7

    .end local v7    # "nthreads":I
    .restart local v19    # "nthreads":I
    :goto_254
    return-void-no-barrier
.end method

.method private bluestein_real_forward([DI)V
    .registers 22
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    move-object/from16 v7, p0

    .line 1382
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v8, 0x2

    mul-int/2addr v0, v8

    new-array v9, v0, [D

    .line 1383
    .local v9, "ak":[D
    const/4 v10, 0x1

    .line 1384
    .local v10, "nthreads":I
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 1385
    .local v11, "threads":I
    const/4 v13, 0x1

    if-le v11, v13, :cond_90

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_90

    .line 1386
    const/4 v0, 0x2

    .line 1387
    .end local v10    # "nthreads":I
    .local v0, "nthreads":I
    const/4 v1, 0x4

    if-lt v11, v1, :cond_25

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v2

    if-le v1, v2, :cond_25

    .line 1388
    const/4 v0, 0x4

    .line 1390
    .end local v0    # "nthreads":I
    .restart local v10    # "nthreads":I
    :cond_25
    move v10, v0

    new-array v6, v10, [Ljava/util/concurrent/Future;

    .line 1391
    .local v6, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v14, v0, v10

    .line 1392
    .local v14, "k":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    move v5, v0

    .end local v0    # "i":I
    .local v5, "i":I
    if-ge v5, v10, :cond_59

    .line 1393
    mul-int v15, v5, v14

    .line 1394
    .local v15, "firstIdx":I
    add-int/lit8 v0, v10, -0x1

    if-ne v5, v0, :cond_3a

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_38
    move v3, v0

    goto :goto_3d

    :cond_3a
    add-int v0, v15, v14

    goto :goto_38

    .line 1395
    .local v3, "lastIdx":I
    :goto_3d
    new-instance v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;

    move-object v0, v4

    move-object v1, v7

    move v2, v15

    move-object v13, v4

    move/from16 v4, p2

    move/from16 v17, v5

    move-object v5, v9

    .end local v5    # "i":I
    .local v17, "i":I
    move-object v12, v6

    move-object/from16 v6, p1

    .end local v6    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .local v12, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[D)V

    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v12, v17

    .line 1392
    .end local v3    # "lastIdx":I
    .end local v15    # "firstIdx":I
    add-int/lit8 v0, v17, 0x1

    .end local v17    # "i":I
    .restart local v0    # "i":I
    move-object v6, v12

    const/4 v13, 0x1

    goto :goto_2d

    .line 1407
    .end local v0    # "i":I
    .end local v12    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .restart local v6    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    :cond_59
    move-object v12, v6

    .end local v6    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .restart local v12    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1409
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int v1, v8, v0

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 1411
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int/2addr v0, v10

    .line 1412
    .end local v14    # "k":I
    .local v0, "k":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_71
    if-ge v1, v10, :cond_8c

    .line 1413
    mul-int v2, v1, v0

    .line 1414
    .local v2, "firstIdx":I
    add-int/lit8 v3, v10, -0x1

    if-ne v1, v3, :cond_7c

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    goto :goto_7e

    :cond_7c
    add-int v3, v2, v0

    .line 1415
    .restart local v3    # "lastIdx":I
    :goto_7e
    new-instance v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$10;

    invoke-direct {v4, v7, v2, v3, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$10;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[D)V

    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    aput-object v4, v12, v1

    .line 1412
    .end local v2    # "firstIdx":I
    .end local v3    # "lastIdx":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 1427
    .end local v1    # "i":I
    :cond_8c
    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1429
    .end local v0    # "k":I
    .end local v12    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    goto :goto_f0

    .line 1431
    :cond_90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_91
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_b1

    .line 1432
    mul-int v1, v8, v0

    .line 1433
    .local v1, "idx1":I
    add-int/lit8 v2, v1, 0x1

    .line 1434
    .local v2, "idx2":I
    add-int v3, p2, v0

    .line 1435
    .local v3, "idx3":I
    aget-wide v4, p1, v3

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v1

    mul-double/2addr v4, v12

    aput-wide v4, v9, v1

    .line 1436
    aget-wide v4, p1, v3

    neg-double v4, v4

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v2

    mul-double/2addr v4, v12

    aput-wide v4, v9, v2

    .line 1431
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v3    # "idx3":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 1439
    .end local v0    # "i":I
    :cond_b1
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int v1, v8, v0

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 1441
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_c2
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_f0

    .line 1442
    mul-int v1, v8, v0

    .line 1443
    .restart local v1    # "idx1":I
    add-int/lit8 v2, v1, 0x1

    .line 1444
    .restart local v2    # "idx2":I
    aget-wide v3, v9, v1

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v5, v5, v2

    mul-double/2addr v3, v5

    aget-wide v5, v9, v2

    iget-object v12, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v12, v1

    mul-double/2addr v5, v12

    add-double/2addr v3, v5

    .line 1445
    .local v3, "im":D
    aget-wide v5, v9, v1

    iget-object v12, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v12, v1

    mul-double/2addr v5, v12

    aget-wide v12, v9, v2

    iget-object v8, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v14, v8, v2

    mul-double/2addr v12, v14

    sub-double/2addr v5, v12

    aput-wide v5, v9, v1

    .line 1446
    aput-wide v3, v9, v2

    .line 1441
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v3    # "im":D
    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x2

    goto :goto_c2

    .line 1450
    .end local v0    # "i":I
    :cond_f0
    :goto_f0
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int v2, v1, v0

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move v1, v2

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 1452
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_171

    .line 1453
    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    aget-wide v0, v9, v1

    mul-double/2addr v2, v0

    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    aget-wide v12, v9, v1

    mul-double/2addr v4, v12

    add-double/2addr v2, v4

    aput-wide v2, p1, p2

    .line 1454
    add-int/lit8 v0, p2, 0x1

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v1, v1, v2

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v3, v9, v3

    mul-double/2addr v1, v3

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    aget-wide v3, v3, v4

    iget v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v6, v5

    aget-wide v5, v9, v6

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    .line 1455
    const/16 v16, 0x1

    .local v16, "i":I
    :goto_13b
    move/from16 v0, v16

    .end local v16    # "i":I
    .restart local v0    # "i":I
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_1fb

    .line 1456
    mul-int v8, v2, v0

    .line 1457
    .local v8, "idx1":I
    add-int/lit8 v1, v8, 0x1

    .line 1458
    .local v1, "idx2":I
    add-int v2, p2, v8

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v3, v3, v8

    aget-wide v5, v9, v8

    mul-double/2addr v3, v5

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v1

    aget-wide v12, v9, v1

    mul-double/2addr v5, v12

    add-double/2addr v3, v5

    aput-wide v3, p1, v2

    .line 1459
    add-int v2, p2, v1

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v3, v3, v1

    neg-double v3, v3

    aget-wide v5, v9, v8

    mul-double/2addr v3, v5

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v8

    aget-wide v12, v9, v1

    mul-double/2addr v5, v12

    add-double/2addr v3, v5

    aput-wide v3, p1, v2

    .line 1455
    .end local v1    # "idx2":I
    .end local v8    # "idx1":I
    add-int/lit8 v16, v0, 0x1

    .end local v0    # "i":I
    .restart local v16    # "i":I
    goto :goto_13b

    .line 1462
    .end local v16    # "i":I
    :cond_171
    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    aget-wide v0, v9, v1

    mul-double/2addr v2, v0

    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    aget-wide v12, v9, v1

    mul-double/2addr v4, v12

    add-double/2addr v2, v4

    aput-wide v2, p1, p2

    .line 1463
    add-int/lit8 v0, p2, 0x1

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v1, v1, v2

    neg-double v1, v1

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-wide v5, v9, v3

    mul-double/2addr v1, v5

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v5, v4

    aget-wide v3, v3, v5

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v5, v9, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    .line 1464
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1a4
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_1da

    .line 1465
    mul-int v8, v2, v0

    .line 1466
    .restart local v8    # "idx1":I
    add-int/lit8 v1, v8, 0x1

    .line 1467
    .restart local v1    # "idx2":I
    add-int v3, p2, v8

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v4, v8

    aget-wide v12, v9, v8

    mul-double/2addr v4, v12

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v1

    aget-wide v14, v9, v1

    mul-double/2addr v12, v14

    add-double/2addr v4, v12

    aput-wide v4, p1, v3

    .line 1468
    add-int v3, p2, v1

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v4, v1

    neg-double v4, v4

    aget-wide v12, v9, v8

    mul-double/2addr v4, v12

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v8

    aget-wide v14, v9, v1

    mul-double/2addr v12, v14

    add-double/2addr v4, v12

    aput-wide v4, p1, v3

    .line 1464
    .end local v1    # "idx2":I
    .end local v8    # "idx1":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a4

    .line 1470
    .end local v0    # "i":I
    :cond_1da
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v0, p2, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v3, v1

    aget-wide v2, v2, v3

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v4, v1

    aget-wide v4, v9, v4

    mul-double/2addr v2, v4

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v4, v1, v4

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v12, v9, v1

    mul-double/2addr v4, v12

    add-double/2addr v2, v4

    aput-wide v2, p1, v0

    .line 1473
    :cond_1fb
    return-void-no-barrier
.end method

.method private bluestein_real_full([DII)V
    .registers 24
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "isign"    # I

    move-object/from16 v8, p0

    .line 1228
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v9, 0x2

    mul-int/2addr v0, v9

    new-array v10, v0, [D

    .line 1229
    .local v10, "ak":[D
    const/4 v7, 0x1

    .line 1230
    .local v7, "nthreads":I
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 1231
    .local v11, "threads":I
    const/4 v0, 0x1

    if-le v11, v0, :cond_f7

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_f7

    .line 1232
    const/4 v0, 0x2

    .line 1233
    .end local v7    # "nthreads":I
    .local v0, "nthreads":I
    const/4 v1, 0x4

    if-lt v11, v1, :cond_25

    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v2

    if-le v1, v2, :cond_25

    .line 1234
    const/4 v0, 0x4

    .line 1236
    .end local v0    # "nthreads":I
    .restart local v7    # "nthreads":I
    :cond_25
    move v7, v0

    new-array v6, v7, [Ljava/util/concurrent/Future;

    .line 1237
    .local v6, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v13, v0, v7

    .line 1238
    .local v13, "k":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    move v5, v0

    .end local v0    # "i":I
    .local v5, "i":I
    if-ge v5, v7, :cond_61

    .line 1239
    mul-int v14, v5, v13

    .line 1240
    .local v14, "firstIdx":I
    add-int/lit8 v0, v7, -0x1

    if-ne v5, v0, :cond_3a

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_38
    move v4, v0

    goto :goto_3d

    :cond_3a
    add-int v0, v14, v13

    goto :goto_38

    .line 1241
    .local v4, "lastIdx":I
    :goto_3d
    new-instance v3, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;

    move-object v0, v3

    move-object v1, v8

    move/from16 v2, p3

    move-object v12, v3

    move v3, v14

    move/from16 v16, v5

    move/from16 v5, p2

    .end local v5    # "i":I
    .local v16, "i":I
    move-object v9, v6

    move-object v6, v10

    .end local v6    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .local v9, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    move/from16 v17, v11

    move v11, v7

    move-object/from16 v7, p1

    .end local v7    # "nthreads":I
    .local v11, "nthreads":I
    .local v17, "threads":I
    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V

    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v16

    .line 1238
    .end local v4    # "lastIdx":I
    .end local v14    # "firstIdx":I
    add-int/lit8 v0, v16, 0x1

    .end local v16    # "i":I
    .restart local v0    # "i":I
    move-object v6, v9

    move v7, v11

    move/from16 v11, v17

    const/4 v9, 0x2

    goto :goto_2d

    .line 1263
    .end local v0    # "i":I
    .end local v9    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v17    # "threads":I
    .restart local v6    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .restart local v7    # "nthreads":I
    .local v11, "threads":I
    :cond_61
    move-object v9, v6

    move/from16 v17, v11

    move v11, v7

    .end local v6    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v7    # "nthreads":I
    .restart local v9    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .local v11, "nthreads":I
    .restart local v17    # "threads":I
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1265
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int v2, v1, v0

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v8

    move v1, v2

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 1267
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int v7, v0, v11

    .line 1268
    .end local v13    # "k":I
    .local v7, "k":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7f
    move v6, v0

    .end local v0    # "i":I
    .local v6, "i":I
    if-ge v6, v11, :cond_a8

    .line 1269
    mul-int v12, v6, v7

    .line 1270
    .local v12, "firstIdx":I
    add-int/lit8 v0, v11, -0x1

    if-ne v6, v0, :cond_8c

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    :goto_8a
    move v4, v0

    goto :goto_8f

    :cond_8c
    add-int v0, v12, v7

    goto :goto_8a

    .line 1271
    .restart local v4    # "lastIdx":I
    :goto_8f
    new-instance v5, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;

    move-object v0, v5

    move-object v1, v8

    move/from16 v2, p3

    move v3, v12

    move/from16 v18, v7

    move-object v7, v5

    move-object v5, v10

    .end local v7    # "k":I
    .local v18, "k":I
    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v6

    .line 1268
    .end local v4    # "lastIdx":I
    .end local v12    # "firstIdx":I
    add-int/lit8 v0, v6, 0x1

    .end local v6    # "i":I
    .restart local v0    # "i":I
    move/from16 v7, v18

    goto :goto_7f

    .line 1293
    .end local v0    # "i":I
    .end local v18    # "k":I
    .restart local v7    # "k":I
    :cond_a8
    move/from16 v18, v7

    .end local v7    # "k":I
    .restart local v18    # "k":I
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1295
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int/2addr v1, v0

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v8

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 1297
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v12, v0, v11

    .line 1298
    .end local v18    # "k":I
    .local v12, "k":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_c2
    move v7, v15

    .end local v15    # "i":I
    .local v7, "i":I
    if-ge v7, v11, :cond_f0

    .line 1299
    mul-int v13, v7, v12

    .line 1300
    .local v13, "firstIdx":I
    add-int/lit8 v0, v11, -0x1

    if-ne v7, v0, :cond_cf

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_cd
    move v4, v0

    goto :goto_d2

    :cond_cf
    add-int v0, v13, v12

    goto :goto_cd

    .line 1301
    .restart local v4    # "lastIdx":I
    :goto_d2
    new-instance v6, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;

    move-object v0, v6

    move-object v1, v8

    move/from16 v2, p3

    move v3, v13

    move-object/from16 v5, p1

    move/from16 v19, v11

    move-object v11, v6

    move/from16 v6, p2

    .end local v11    # "nthreads":I
    .local v19, "nthreads":I
    move v14, v7

    move-object v7, v10

    .end local v7    # "i":I
    .local v14, "i":I
    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[DI[D)V

    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v14

    .line 1298
    .end local v4    # "lastIdx":I
    .end local v13    # "firstIdx":I
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .restart local v15    # "i":I
    move/from16 v11, v19

    goto :goto_c2

    .line 1321
    .end local v15    # "i":I
    .end local v19    # "nthreads":I
    .restart local v11    # "nthreads":I
    :cond_f0
    move/from16 v19, v11

    .end local v11    # "nthreads":I
    .restart local v19    # "nthreads":I
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1322
    .end local v9    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v12    # "k":I
    goto/16 :goto_230

    .line 1323
    .end local v17    # "threads":I
    .end local v19    # "nthreads":I
    .local v7, "nthreads":I
    .local v11, "threads":I
    :cond_f7
    move/from16 v17, v11

    .end local v11    # "threads":I
    .restart local v17    # "threads":I
    if-lez p3, :cond_11c

    .line 1324
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_fc
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_13e

    .line 1325
    const/4 v1, 0x2

    mul-int v9, v1, v0

    .line 1326
    .local v9, "idx1":I
    add-int/lit8 v1, v9, 0x1

    .line 1327
    .local v1, "idx2":I
    add-int v2, p2, v0

    .line 1328
    .local v2, "idx3":I
    aget-wide v3, p1, v2

    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v9

    mul-double/2addr v3, v5

    aput-wide v3, v10, v9

    .line 1329
    aget-wide v3, p1, v2

    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v1

    mul-double/2addr v3, v5

    aput-wide v3, v10, v1

    .line 1324
    .end local v1    # "idx2":I
    .end local v2    # "idx3":I
    .end local v9    # "idx1":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_fc

    .line 1332
    .end local v0    # "i":I
    :cond_11c
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_11d
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_13e

    .line 1333
    const/4 v1, 0x2

    mul-int v9, v1, v0

    .line 1334
    .restart local v9    # "idx1":I
    add-int/lit8 v1, v9, 0x1

    .line 1335
    .restart local v1    # "idx2":I
    add-int v2, p2, v0

    .line 1336
    .restart local v2    # "idx3":I
    aget-wide v3, p1, v2

    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v9

    mul-double/2addr v3, v5

    aput-wide v3, v10, v9

    .line 1337
    aget-wide v3, p1, v2

    neg-double v3, v3

    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v1

    mul-double/2addr v3, v5

    aput-wide v3, v10, v1

    .line 1332
    .end local v1    # "idx2":I
    .end local v2    # "idx3":I
    .end local v9    # "idx1":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_11d

    .line 1341
    .end local v0    # "i":I
    :cond_13e
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int v2, v1, v0

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v8

    move v1, v2

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 1343
    if-lez p3, :cond_182

    .line 1344
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_153
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_1b1

    .line 1345
    const/4 v1, 0x2

    mul-int v9, v1, v0

    .line 1346
    .restart local v9    # "idx1":I
    add-int/lit8 v1, v9, 0x1

    .line 1347
    .restart local v1    # "idx2":I
    aget-wide v2, v10, v9

    neg-double v2, v2

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v4, v4, v1

    mul-double/2addr v2, v4

    aget-wide v4, v10, v1

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    add-double/2addr v2, v4

    .line 1348
    .local v2, "im":D
    aget-wide v4, v10, v9

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    aget-wide v11, v10, v1

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v13, v6, v1

    mul-double/2addr v11, v13

    add-double/2addr v4, v11

    aput-wide v4, v10, v9

    .line 1349
    aput-wide v2, v10, v1

    .line 1344
    .end local v1    # "idx2":I
    .end local v2    # "im":D
    .end local v9    # "idx1":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_153

    .line 1352
    .end local v0    # "i":I
    :cond_182
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_183
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_1b1

    .line 1353
    const/4 v1, 0x2

    mul-int v9, v1, v0

    .line 1354
    .restart local v9    # "idx1":I
    add-int/lit8 v1, v9, 0x1

    .line 1355
    .restart local v1    # "idx2":I
    aget-wide v2, v10, v9

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v4, v4, v1

    mul-double/2addr v2, v4

    aget-wide v4, v10, v1

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    add-double/2addr v2, v4

    .line 1356
    .restart local v2    # "im":D
    aget-wide v4, v10, v9

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    aget-wide v11, v10, v1

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v13, v6, v1

    mul-double/2addr v11, v13

    sub-double/2addr v4, v11

    aput-wide v4, v10, v9

    .line 1357
    aput-wide v2, v10, v1

    .line 1352
    .end local v1    # "idx2":I
    .end local v2    # "im":D
    .end local v9    # "idx1":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_183

    .line 1361
    .end local v0    # "i":I
    :cond_1b1
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int v2, v1, v0

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v8

    move v1, v2

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 1363
    if-lez p3, :cond_1f9

    .line 1364
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_1c6
    move v0, v15

    .end local v15    # "i":I
    .restart local v0    # "i":I
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_22e

    .line 1365
    const/4 v1, 0x2

    mul-int v9, v1, v0

    .line 1366
    .restart local v9    # "idx1":I
    add-int/lit8 v1, v9, 0x1

    .line 1367
    .restart local v1    # "idx2":I
    add-int v2, p2, v9

    iget-object v3, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v3, v3, v9

    aget-wide v5, v10, v9

    mul-double/2addr v3, v5

    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v1

    aget-wide v11, v10, v1

    mul-double/2addr v5, v11

    sub-double/2addr v3, v5

    aput-wide v3, p1, v2

    .line 1368
    add-int v2, p2, v1

    iget-object v3, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v3, v3, v1

    aget-wide v5, v10, v9

    mul-double/2addr v3, v5

    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v9

    aget-wide v11, v10, v1

    mul-double/2addr v5, v11

    add-double/2addr v3, v5

    aput-wide v3, p1, v2

    .line 1364
    .end local v1    # "idx2":I
    .end local v9    # "idx1":I
    add-int/lit8 v15, v0, 0x1

    .end local v0    # "i":I
    .restart local v15    # "i":I
    goto :goto_1c6

    .line 1371
    .end local v15    # "i":I
    :cond_1f9
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_1fa
    move v0, v15

    .end local v15    # "i":I
    .restart local v0    # "i":I
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_22e

    .line 1372
    const/4 v1, 0x2

    mul-int v9, v1, v0

    .line 1373
    .restart local v9    # "idx1":I
    add-int/lit8 v2, v9, 0x1

    .line 1374
    .local v2, "idx2":I
    add-int v3, p2, v9

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v4, v9

    aget-wide v11, v10, v9

    mul-double/2addr v4, v11

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v6, v2

    aget-wide v13, v10, v2

    mul-double/2addr v11, v13

    add-double/2addr v4, v11

    aput-wide v4, p1, v3

    .line 1375
    add-int v3, p2, v2

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v4, v2

    neg-double v4, v4

    aget-wide v11, v10, v9

    mul-double/2addr v4, v11

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v6, v9

    aget-wide v13, v10, v2

    mul-double/2addr v11, v13

    add-double/2addr v4, v11

    aput-wide v4, p1, v3

    .line 1371
    .end local v2    # "idx2":I
    .end local v9    # "idx1":I
    add-int/lit8 v15, v0, 0x1

    .end local v0    # "i":I
    .restart local v15    # "i":I
    goto :goto_1fa

    .line 1379
    .end local v15    # "i":I
    :cond_22e
    move/from16 v19, v7

    .end local v7    # "nthreads":I
    .restart local v19    # "nthreads":I
    :goto_230
    return-void-no-barrier
.end method

.method private bluestein_real_inverse([DI)V
    .registers 22
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    move-object/from16 v7, p0

    .line 1476
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v8, 0x2

    mul-int/2addr v0, v8

    new-array v9, v0, [D

    .line 1477
    .local v9, "ak":[D
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/2addr v0, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v0, :cond_ae

    .line 1478
    aget-wide v0, p1, p2

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v2, v10

    mul-double/2addr v0, v2

    aput-wide v0, v9, v10

    .line 1479
    aget-wide v0, p1, p2

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v2, v11

    mul-double/2addr v0, v2

    aput-wide v0, v9, v11

    .line 1481
    move v0, v11

    .local v0, "i":I
    :goto_22
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v1, v8

    if-ge v0, v1, :cond_55

    .line 1482
    mul-int v1, v8, v0

    .line 1483
    .local v1, "idx1":I
    add-int/lit8 v2, v1, 0x1

    .line 1484
    .local v2, "idx2":I
    add-int v3, p2, v1

    .line 1485
    .local v3, "idx3":I
    add-int v4, p2, v2

    .line 1486
    .local v4, "idx4":I
    aget-wide v5, p1, v3

    iget-object v12, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v12, v1

    mul-double/2addr v5, v12

    aget-wide v12, p1, v4

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v15, v10, v2

    mul-double/2addr v12, v15

    sub-double/2addr v5, v12

    aput-wide v5, v9, v1

    .line 1487
    aget-wide v5, p1, v3

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v10, v2

    mul-double/2addr v5, v12

    aget-wide v12, p1, v4

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v15, v10, v1

    mul-double/2addr v12, v15

    add-double/2addr v5, v12

    aput-wide v5, v9, v2

    .line 1481
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v3    # "idx3":I
    .end local v4    # "idx4":I
    add-int/lit8 v0, v0, 0x1

    const/4 v10, 0x0

    goto :goto_22

    .line 1490
    .end local v0    # "i":I
    :cond_55
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v1, p2, 0x1

    aget-wide v1, p1, v1

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v3, v3, v4

    mul-double/2addr v1, v3

    aput-wide v1, v9, v0

    .line 1491
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, v11

    add-int/lit8 v1, p2, 0x1

    aget-wide v1, p1, v1

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v4, v11

    aget-wide v3, v3, v4

    mul-double/2addr v1, v3

    aput-wide v1, v9, v0

    .line 1493
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v8

    add-int/2addr v0, v11

    .restart local v0    # "i":I
    :goto_79
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_1b1

    .line 1494
    mul-int v1, v8, v0

    .line 1495
    .restart local v1    # "idx1":I
    add-int/lit8 v2, v1, 0x1

    .line 1496
    .restart local v2    # "idx2":I
    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/2addr v3, v8

    add-int v3, p2, v3

    sub-int/2addr v3, v1

    .line 1497
    .restart local v3    # "idx3":I
    add-int/lit8 v4, v3, 0x1

    .line 1498
    .restart local v4    # "idx4":I
    aget-wide v5, p1, v3

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v10, v1

    mul-double/2addr v5, v12

    aget-wide v12, p1, v4

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v15, v10, v2

    mul-double/2addr v12, v15

    add-double/2addr v5, v12

    aput-wide v5, v9, v1

    .line 1499
    aget-wide v5, p1, v3

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v10, v2

    mul-double/2addr v5, v12

    aget-wide v12, p1, v4

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v15, v10, v1

    mul-double/2addr v12, v15

    sub-double/2addr v5, v12

    aput-wide v5, v9, v2

    .line 1493
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v3    # "idx3":I
    .end local v4    # "idx4":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 1503
    .end local v0    # "i":I
    :cond_ae
    aget-wide v0, p1, p2

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v10, 0x0

    aget-wide v2, v2, v10

    mul-double/2addr v0, v2

    aput-wide v0, v9, v10

    .line 1504
    aget-wide v0, p1, p2

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v2, v11

    mul-double/2addr v0, v2

    aput-wide v0, v9, v11

    .line 1506
    move v0, v11

    .restart local v0    # "i":I
    :goto_c2
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v1, v11

    div-int/2addr v1, v8

    if-ge v0, v1, :cond_f6

    .line 1507
    mul-int v1, v8, v0

    .line 1508
    .restart local v1    # "idx1":I
    add-int/lit8 v2, v1, 0x1

    .line 1509
    .restart local v2    # "idx2":I
    add-int v3, p2, v1

    .line 1510
    .restart local v3    # "idx3":I
    add-int v4, p2, v2

    .line 1511
    .restart local v4    # "idx4":I
    aget-wide v5, p1, v3

    iget-object v12, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v12, v1

    mul-double/2addr v5, v12

    aget-wide v12, p1, v4

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v14, v10, v2

    mul-double/2addr v12, v14

    sub-double/2addr v5, v12

    aput-wide v5, v9, v1

    .line 1512
    aget-wide v5, p1, v3

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v10, v2

    mul-double/2addr v5, v12

    aget-wide v12, p1, v4

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v14, v10, v1

    mul-double/2addr v12, v14

    add-double/2addr v5, v12

    aput-wide v5, v9, v2

    .line 1506
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v3    # "idx3":I
    .end local v4    # "idx4":I
    add-int/lit8 v0, v0, 0x1

    const/4 v10, 0x0

    goto :goto_c2

    .line 1515
    .end local v0    # "i":I
    :cond_f6
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v0, v11

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v1, p2, v1

    sub-int/2addr v1, v11

    aget-wide v1, p1, v1

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v4, v11

    aget-wide v3, v3, v4

    mul-double/2addr v1, v3

    add-int/lit8 v3, p2, 0x1

    aget-wide v3, p1, v3

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v5, v5, v6

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    aput-wide v1, v9, v0

    .line 1516
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v1, p2, v1

    sub-int/2addr v1, v11

    aget-wide v1, p1, v1

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v3, v3, v4

    mul-double/2addr v1, v3

    add-int/lit8 v3, p2, 0x1

    aget-wide v3, p1, v3

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v6, v11

    aget-wide v5, v5, v6

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    aput-wide v1, v9, v0

    .line 1518
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, v11

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v1, p2, v1

    sub-int/2addr v1, v11

    aget-wide v1, p1, v1

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v4, v11

    aget-wide v3, v3, v4

    mul-double/2addr v1, v3

    add-int/lit8 v3, p2, 0x1

    aget-wide v3, p1, v3

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v6, v8

    aget-wide v5, v5, v6

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    aput-wide v1, v9, v0

    .line 1519
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, v8

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v1, p2, v1

    sub-int/2addr v1, v11

    aget-wide v1, p1, v1

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v4, v8

    aget-wide v3, v3, v4

    mul-double/2addr v1, v3

    add-int/lit8 v3, p2, 0x1

    aget-wide v3, p1, v3

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v6, v11

    aget-wide v5, v5, v6

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    aput-wide v1, v9, v0

    .line 1521
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v0, v11

    div-int/2addr v0, v8

    add-int/2addr v0, v8

    .restart local v0    # "i":I
    :goto_17c
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_1b1

    .line 1522
    mul-int v1, v8, v0

    .line 1523
    .restart local v1    # "idx1":I
    add-int/lit8 v2, v1, 0x1

    .line 1524
    .restart local v2    # "idx2":I
    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/2addr v3, v8

    add-int v3, p2, v3

    sub-int/2addr v3, v1

    .line 1525
    .restart local v3    # "idx3":I
    add-int/lit8 v4, v3, 0x1

    .line 1526
    .restart local v4    # "idx4":I
    aget-wide v5, p1, v3

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v10, v1

    mul-double/2addr v5, v12

    aget-wide v12, p1, v4

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v14, v10, v2

    mul-double/2addr v12, v14

    add-double/2addr v5, v12

    aput-wide v5, v9, v1

    .line 1527
    aget-wide v5, p1, v3

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v10, v2

    mul-double/2addr v5, v12

    aget-wide v12, p1, v4

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v14, v10, v1

    mul-double/2addr v12, v14

    sub-double/2addr v5, v12

    aput-wide v5, v9, v2

    .line 1521
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v3    # "idx3":I
    .end local v4    # "idx4":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_17c

    .line 1531
    .end local v0    # "i":I
    :cond_1b1
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int v1, v8, v0

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 1533
    const/4 v10, 0x1

    .line 1534
    .local v10, "nthreads":I
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v12

    .line 1535
    .local v12, "threads":I
    if-le v12, v11, :cond_24b

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_24b

    .line 1536
    const/4 v0, 0x2

    .line 1537
    .end local v10    # "nthreads":I
    .local v0, "nthreads":I
    const/4 v1, 0x4

    if-lt v12, v1, :cond_1dd

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v2

    if-le v1, v2, :cond_1dd

    .line 1538
    const/4 v0, 0x4

    .line 1540
    .end local v0    # "nthreads":I
    .restart local v10    # "nthreads":I
    :cond_1dd
    move v10, v0

    new-array v11, v10, [Ljava/util/concurrent/Future;

    .line 1541
    .local v11, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int v13, v0, v10

    .line 1542
    .local v13, "k":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e5
    if-ge v0, v10, :cond_200

    .line 1543
    mul-int v1, v0, v13

    .line 1544
    .local v1, "firstIdx":I
    add-int/lit8 v2, v10, -0x1

    if-ne v0, v2, :cond_1f0

    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    goto :goto_1f2

    :cond_1f0
    add-int v2, v1, v13

    .line 1545
    .local v2, "lastIdx":I
    :goto_1f2
    new-instance v3, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$11;

    invoke-direct {v3, v7, v1, v2, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$11;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[D)V

    invoke-static {v3}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v11, v0

    .line 1542
    .end local v1    # "firstIdx":I
    .end local v2    # "lastIdx":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e5

    .line 1557
    .end local v0    # "i":I
    :cond_200
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1559
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int v1, v8, v0

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 1561
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v8, v0, v10

    .line 1562
    .end local v13    # "k":I
    .local v8, "k":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_219
    move/from16 v13, v17

    .end local v17    # "i":I
    .local v13, "i":I
    if-ge v13, v10, :cond_245

    .line 1563
    mul-int v14, v13, v8

    .line 1564
    .local v14, "firstIdx":I
    add-int/lit8 v0, v10, -0x1

    if-ne v13, v0, :cond_227

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_225
    move v3, v0

    goto :goto_22a

    :cond_227
    add-int v0, v14, v8

    goto :goto_225

    .line 1565
    .local v3, "lastIdx":I
    :goto_22a
    new-instance v6, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;

    move-object v0, v6

    move-object v1, v7

    move v2, v14

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v18, v8

    move-object v8, v6

    move-object v6, v9

    .end local v8    # "k":I
    .local v18, "k":I
    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DI[D)V

    invoke-static {v8}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v13

    .line 1562
    .end local v3    # "lastIdx":I
    .end local v14    # "firstIdx":I
    add-int/lit8 v17, v13, 0x1

    .end local v13    # "i":I
    .restart local v17    # "i":I
    move/from16 v8, v18

    goto :goto_219

    .line 1575
    .end local v17    # "i":I
    .end local v18    # "k":I
    .restart local v8    # "k":I
    :cond_245
    move/from16 v18, v8

    .end local v8    # "k":I
    .restart local v18    # "k":I
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1577
    .end local v11    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v18    # "k":I
    goto :goto_2ac

    .line 1579
    :cond_24b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_24c
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_27a

    .line 1580
    mul-int v1, v8, v0

    .line 1581
    .local v1, "idx1":I
    add-int/lit8 v2, v1, 0x1

    .line 1582
    .local v2, "idx2":I
    aget-wide v3, v9, v1

    neg-double v3, v3

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v5, v5, v2

    mul-double/2addr v3, v5

    aget-wide v5, v9, v2

    iget-object v11, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v13, v11, v1

    mul-double/2addr v5, v13

    add-double/2addr v3, v5

    .line 1583
    .local v3, "im":D
    aget-wide v5, v9, v1

    iget-object v11, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v13, v11, v1

    mul-double/2addr v5, v13

    aget-wide v13, v9, v2

    iget-object v11, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v15, v11, v2

    mul-double/2addr v13, v15

    add-double/2addr v5, v13

    aput-wide v5, v9, v1

    .line 1584
    aput-wide v3, v9, v2

    .line 1579
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v3    # "im":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_24c

    .line 1587
    .end local v0    # "i":I
    :cond_27a
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int v1, v8, v0

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 1589
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_28c
    move/from16 v0, v17

    .end local v17    # "i":I
    .restart local v0    # "i":I
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_2ac

    .line 1590
    mul-int v1, v8, v0

    .line 1591
    .restart local v1    # "idx1":I
    add-int/lit8 v2, v1, 0x1

    .line 1592
    .restart local v2    # "idx2":I
    add-int v3, p2, v0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v4, v1

    aget-wide v13, v9, v1

    mul-double/2addr v4, v13

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v13, v6, v2

    aget-wide v15, v9, v2

    mul-double/2addr v13, v15

    sub-double/2addr v4, v13

    aput-wide v4, p1, v3

    .line 1589
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    add-int/lit8 v17, v0, 0x1

    .end local v0    # "i":I
    .restart local v17    # "i":I
    goto :goto_28c

    .line 1595
    .end local v17    # "i":I
    :cond_2ac
    :goto_2ac
    return-void-no-barrier
.end method

.method private bluestein_real_inverse2([DI)V
    .registers 22
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    move-object/from16 v7, p0

    .line 1598
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v8, 0x2

    mul-int/2addr v0, v8

    new-array v9, v0, [D

    .line 1599
    .local v9, "ak":[D
    const/4 v10, 0x1

    .line 1600
    .local v10, "nthreads":I
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 1601
    .local v11, "threads":I
    const/4 v13, 0x1

    if-le v11, v13, :cond_90

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_90

    .line 1602
    const/4 v0, 0x2

    .line 1603
    .end local v10    # "nthreads":I
    .local v0, "nthreads":I
    const/4 v1, 0x4

    if-lt v11, v1, :cond_25

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v2

    if-le v1, v2, :cond_25

    .line 1604
    const/4 v0, 0x4

    .line 1606
    .end local v0    # "nthreads":I
    .restart local v10    # "nthreads":I
    :cond_25
    move v10, v0

    new-array v6, v10, [Ljava/util/concurrent/Future;

    .line 1607
    .local v6, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v14, v0, v10

    .line 1608
    .local v14, "k":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    move v5, v0

    .end local v0    # "i":I
    .local v5, "i":I
    if-ge v5, v10, :cond_59

    .line 1609
    mul-int v15, v5, v14

    .line 1610
    .local v15, "firstIdx":I
    add-int/lit8 v0, v10, -0x1

    if-ne v5, v0, :cond_3a

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_38
    move v3, v0

    goto :goto_3d

    :cond_3a
    add-int v0, v15, v14

    goto :goto_38

    .line 1611
    .local v3, "lastIdx":I
    :goto_3d
    new-instance v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;

    move-object v0, v4

    move-object v1, v7

    move v2, v15

    move-object v13, v4

    move/from16 v4, p2

    move/from16 v17, v5

    move-object v5, v9

    .end local v5    # "i":I
    .local v17, "i":I
    move-object v12, v6

    move-object/from16 v6, p1

    .end local v6    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .local v12, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[D)V

    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v12, v17

    .line 1608
    .end local v3    # "lastIdx":I
    .end local v15    # "firstIdx":I
    add-int/lit8 v0, v17, 0x1

    .end local v17    # "i":I
    .restart local v0    # "i":I
    move-object v6, v12

    const/4 v13, 0x1

    goto :goto_2d

    .line 1623
    .end local v0    # "i":I
    .end local v12    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .restart local v6    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    :cond_59
    move-object v12, v6

    .end local v6    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .restart local v12    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1625
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int v1, v8, v0

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 1627
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int/2addr v0, v10

    .line 1628
    .end local v14    # "k":I
    .local v0, "k":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_71
    if-ge v1, v10, :cond_8c

    .line 1629
    mul-int v2, v1, v0

    .line 1630
    .local v2, "firstIdx":I
    add-int/lit8 v3, v10, -0x1

    if-ne v1, v3, :cond_7c

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    goto :goto_7e

    :cond_7c
    add-int v3, v2, v0

    .line 1631
    .restart local v3    # "lastIdx":I
    :goto_7e
    new-instance v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$14;

    invoke-direct {v4, v7, v2, v3, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$14;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[D)V

    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    aput-object v4, v12, v1

    .line 1628
    .end local v2    # "firstIdx":I
    .end local v3    # "lastIdx":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 1643
    .end local v1    # "i":I
    :cond_8c
    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 1645
    .end local v0    # "k":I
    .end local v12    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    goto :goto_f0

    .line 1647
    :cond_90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_91
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_b0

    .line 1648
    mul-int v1, v8, v0

    .line 1649
    .local v1, "idx1":I
    add-int/lit8 v2, v1, 0x1

    .line 1650
    .local v2, "idx2":I
    add-int v3, p2, v0

    .line 1651
    .local v3, "idx3":I
    aget-wide v4, p1, v3

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v1

    mul-double/2addr v4, v12

    aput-wide v4, v9, v1

    .line 1652
    aget-wide v4, p1, v3

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v2

    mul-double/2addr v4, v12

    aput-wide v4, v9, v2

    .line 1647
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v3    # "idx3":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 1655
    .end local v0    # "i":I
    :cond_b0
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int v1, v8, v0

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 1657
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_c1
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_f0

    .line 1658
    mul-int v1, v8, v0

    .line 1659
    .restart local v1    # "idx1":I
    add-int/lit8 v2, v1, 0x1

    .line 1660
    .restart local v2    # "idx2":I
    aget-wide v3, v9, v1

    neg-double v3, v3

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v5, v5, v2

    mul-double/2addr v3, v5

    aget-wide v5, v9, v2

    iget-object v12, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v12, v1

    mul-double/2addr v5, v12

    add-double/2addr v3, v5

    .line 1661
    .local v3, "im":D
    aget-wide v5, v9, v1

    iget-object v12, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v12, v1

    mul-double/2addr v5, v12

    aget-wide v12, v9, v2

    iget-object v8, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v14, v8, v2

    mul-double/2addr v12, v14

    add-double/2addr v5, v12

    aput-wide v5, v9, v1

    .line 1662
    aput-wide v3, v9, v2

    .line 1657
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v3    # "im":D
    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x2

    goto :goto_c1

    .line 1666
    .end local v0    # "i":I
    :cond_f0
    :goto_f0
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int v2, v1, v0

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move v1, v2

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 1668
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_170

    .line 1669
    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    aget-wide v0, v9, v1

    mul-double/2addr v2, v0

    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    aget-wide v12, v9, v1

    mul-double/2addr v4, v12

    sub-double/2addr v2, v4

    aput-wide v2, p1, p2

    .line 1670
    add-int/lit8 v0, p2, 0x1

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v1, v1, v2

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v3, v9, v3

    mul-double/2addr v1, v3

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    aget-wide v3, v3, v4

    iget v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v6, v5

    aget-wide v5, v9, v6

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    aput-wide v1, p1, v0

    .line 1671
    const/16 v16, 0x1

    .local v16, "i":I
    :goto_13b
    move/from16 v0, v16

    .end local v16    # "i":I
    .restart local v0    # "i":I
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_1f7

    .line 1672
    mul-int v8, v2, v0

    .line 1673
    .local v8, "idx1":I
    add-int/lit8 v1, v8, 0x1

    .line 1674
    .local v1, "idx2":I
    add-int v2, p2, v8

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v3, v3, v8

    aget-wide v5, v9, v8

    mul-double/2addr v3, v5

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v1

    aget-wide v12, v9, v1

    mul-double/2addr v5, v12

    sub-double/2addr v3, v5

    aput-wide v3, p1, v2

    .line 1675
    add-int v2, p2, v1

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v3, v3, v1

    aget-wide v5, v9, v8

    mul-double/2addr v3, v5

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v8

    aget-wide v12, v9, v1

    mul-double/2addr v5, v12

    add-double/2addr v3, v5

    aput-wide v3, p1, v2

    .line 1671
    .end local v1    # "idx2":I
    .end local v8    # "idx1":I
    add-int/lit8 v16, v0, 0x1

    .end local v0    # "i":I
    .restart local v16    # "i":I
    goto :goto_13b

    .line 1678
    .end local v16    # "i":I
    :cond_170
    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    aget-wide v0, v9, v1

    mul-double/2addr v2, v0

    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    aget-wide v12, v9, v1

    mul-double/2addr v4, v12

    sub-double/2addr v2, v4

    aput-wide v2, p1, p2

    .line 1679
    add-int/lit8 v0, p2, 0x1

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v2, v2, v3

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v4, v1

    aget-wide v4, v9, v4

    mul-double/2addr v2, v4

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v5, v1

    aget-wide v4, v4, v5

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v12, v9, v1

    mul-double/2addr v4, v12

    add-double/2addr v2, v4

    aput-wide v2, p1, v0

    .line 1680
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1a1
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_1d6

    .line 1681
    mul-int v8, v2, v0

    .line 1682
    .restart local v8    # "idx1":I
    add-int/lit8 v1, v8, 0x1

    .line 1683
    .restart local v1    # "idx2":I
    add-int v3, p2, v8

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v4, v8

    aget-wide v12, v9, v8

    mul-double/2addr v4, v12

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v1

    aget-wide v14, v9, v1

    mul-double/2addr v12, v14

    sub-double/2addr v4, v12

    aput-wide v4, p1, v3

    .line 1684
    add-int v3, p2, v1

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v4, v1

    aget-wide v12, v9, v8

    mul-double/2addr v4, v12

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v8

    aget-wide v14, v9, v1

    mul-double/2addr v12, v14

    add-double/2addr v4, v12

    aput-wide v4, p1, v3

    .line 1680
    .end local v1    # "idx2":I
    .end local v8    # "idx1":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a1

    .line 1686
    .end local v0    # "i":I
    :cond_1d6
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v0, p2, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v3, v1

    aget-wide v2, v2, v3

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v4, v1

    aget-wide v4, v9, v4

    mul-double/2addr v2, v4

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v4, v1, v4

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v12, v9, v1

    mul-double/2addr v4, v12

    sub-double/2addr v2, v4

    aput-wide v2, p1, v0

    .line 1688
    :cond_1f7
    return-void-no-barrier
.end method

.method private bluesteini()V
    .registers 17

    .line 937
    move-object/from16 v7, p0

    const/4 v0, 0x0

    .line 939
    .local v0, "k":I
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double v8, v3, v1

    .line 940
    .local v8, "pi_n":D
    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 941
    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v5, 0x1

    const-wide/16 v10, 0x0

    aput-wide v10, v1, v5

    .line 942
    move v10, v0

    move v0, v5

    .local v0, "i":I
    .local v10, "k":I
    :goto_1d
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v6, 0x2

    if-ge v0, v1, :cond_48

    .line 943
    mul-int v1, v6, v0

    sub-int/2addr v1, v5

    add-int/2addr v10, v1

    .line 944
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/2addr v1, v6

    if-lt v10, v1, :cond_2f

    .line 945
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/2addr v1, v6

    sub-int/2addr v10, v1

    .line 946
    :cond_2f
    int-to-double v11, v10

    mul-double/2addr v11, v8

    .line 947
    .local v11, "arg":D
    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    mul-int v13, v6, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    aput-wide v14, v1, v13

    .line 948
    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    mul-int/2addr v6, v0

    add-int/2addr v6, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    aput-wide v13, v1, v6

    .line 942
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 950
    .end local v0    # "i":I
    .end local v11    # "arg":D
    :cond_48
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    int-to-double v0, v0

    div-double v11, v2, v0

    .line 951
    .local v11, "scale":D
    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v1, v1, v4

    mul-double/2addr v1, v11

    aput-wide v1, v0, v4

    .line 952
    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v1, v1, v5

    mul-double/2addr v1, v11

    aput-wide v1, v0, v5

    .line 953
    move v0, v6

    .restart local v0    # "i":I
    :goto_60
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/2addr v1, v6

    if-ge v0, v1, :cond_99

    .line 954
    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v2, v0

    mul-double/2addr v2, v11

    aput-wide v2, v1, v0

    .line 955
    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    add-int/lit8 v2, v0, 0x1

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    add-int/lit8 v4, v0, 0x1

    aget-wide v3, v3, v4

    mul-double/2addr v3, v11

    aput-wide v3, v1, v2

    .line 956
    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/2addr v2, v6

    sub-int/2addr v2, v0

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v3, v3, v0

    aput-wide v3, v1, v2

    .line 957
    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/2addr v2, v6

    sub-int/2addr v2, v0

    add-int/2addr v2, v5

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    add-int/lit8 v4, v0, 0x1

    aget-wide v3, v3, v4

    aput-wide v3, v1, v2

    .line 953
    add-int/lit8 v0, v0, 0x2

    goto :goto_60

    .line 959
    .end local v0    # "i":I
    :cond_99
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int v1, v6, v0

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 960
    return-void-no-barrier
.end method

.method private cftb040([DI)V
    .registers 22
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .line 6405
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x4

    aget-wide v2, p1, v2

    add-double/2addr v0, v2

    .line 6406
    .local v0, "x0r":D
    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x5

    aget-wide v4, p1, v4

    add-double/2addr v2, v4

    .line 6407
    .local v2, "x0i":D
    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x4

    aget-wide v6, p1, v6

    sub-double/2addr v4, v6

    .line 6408
    .local v4, "x1r":D
    add-int/lit8 v6, p2, 0x1

    aget-wide v6, p1, v6

    add-int/lit8 v8, p2, 0x5

    aget-wide v8, p1, v8

    sub-double/2addr v6, v8

    .line 6409
    .local v6, "x1i":D
    add-int/lit8 v8, p2, 0x2

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x6

    aget-wide v10, p1, v10

    add-double/2addr v8, v10

    .line 6410
    .local v8, "x2r":D
    add-int/lit8 v10, p2, 0x3

    aget-wide v10, p1, v10

    add-int/lit8 v12, p2, 0x7

    aget-wide v12, p1, v12

    add-double/2addr v10, v12

    .line 6411
    .local v10, "x2i":D
    add-int/lit8 v12, p2, 0x2

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0x6

    aget-wide v14, p1, v14

    sub-double/2addr v12, v14

    .line 6412
    .local v12, "x3r":D
    add-int/lit8 v14, p2, 0x3

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0x7

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    .line 6413
    .local v14, "x3i":D
    add-double v16, v0, v8

    aput-wide v16, p1, p2

    .line 6414
    add-int/lit8 v16, p2, 0x1

    add-double v17, v2, v10

    aput-wide v17, p1, v16

    .line 6415
    add-int/lit8 v16, p2, 0x2

    add-double v17, v4, v14

    aput-wide v17, p1, v16

    .line 6416
    add-int/lit8 v16, p2, 0x3

    sub-double v17, v6, v12

    aput-wide v17, p1, v16

    .line 6417
    add-int/lit8 v16, p2, 0x4

    sub-double v17, v0, v8

    aput-wide v17, p1, v16

    .line 6418
    add-int/lit8 v16, p2, 0x5

    sub-double v17, v2, v10

    aput-wide v17, p1, v16

    .line 6419
    add-int/lit8 v16, p2, 0x6

    sub-double v17, v4, v14

    aput-wide v17, p1, v16

    .line 6420
    add-int/lit8 v16, p2, 0x7

    add-double v17, v6, v12

    aput-wide v17, p1, v16

    .line 6421
    return-void-no-barrier
.end method

.method private cftb1st(I[DI[DI)V
    .registers 100
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "w"    # [D
    .param p5, "startw"    # I

    .line 5253
    shr-int/lit8 v3, p1, 0x3

    .line 5254
    .local v3, "mh":I
    const/4 v4, 0x2

    mul-int v5, v4, v3

    .line 5255
    .local v5, "m":I
    move v6, v5

    .line 5256
    .local v6, "j1":I
    add-int v7, v6, v5

    .line 5257
    .local v7, "j2":I
    add-int v8, v7, v5

    .line 5258
    .local v8, "j3":I
    add-int v9, p3, v6

    .line 5259
    .local v9, "idx1":I
    add-int v10, p3, v7

    .line 5260
    .local v10, "idx2":I
    add-int v11, p3, v8

    .line 5262
    .local v11, "idx3":I
    aget-wide v12, p2, p3

    aget-wide v14, p2, v10

    add-double/2addr v12, v14

    .line 5263
    .local v12, "x0r":D
    add-int/lit8 v14, p3, 0x1

    move/from16 v17, v5

    aget-wide v4, p2, v14

    .end local v5    # "m":I
    .local v17, "m":I
    neg-double v4, v4

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p2, v14

    sub-double/2addr v4, v14

    .line 5264
    .local v4, "x0i":D
    aget-wide v14, p2, p3

    aget-wide v18, p2, v10

    sub-double v14, v14, v18

    .line 5265
    .local v14, "x1r":D
    add-int/lit8 v18, p3, 0x1

    move/from16 v20, v6

    move/from16 v21, v7

    aget-wide v6, p2, v18

    .end local v6    # "j1":I
    .end local v7    # "j2":I
    .local v20, "j1":I
    .local v21, "j2":I
    neg-double v6, v6

    add-int/lit8 v18, v10, 0x1

    aget-wide v18, p2, v18

    add-double v6, v6, v18

    .line 5266
    .local v6, "x1i":D
    aget-wide v18, p2, v9

    aget-wide v22, p2, v11

    add-double v18, v18, v22

    .line 5267
    .local v18, "x2r":D
    add-int/lit8 v22, v9, 0x1

    aget-wide v22, p2, v22

    add-int/lit8 v24, v11, 0x1

    aget-wide v24, p2, v24

    add-double v22, v22, v24

    .line 5268
    .local v22, "x2i":D
    aget-wide v24, p2, v9

    aget-wide v26, p2, v11

    sub-double v24, v24, v26

    .line 5269
    .local v24, "x3r":D
    add-int/lit8 v26, v9, 0x1

    aget-wide v26, p2, v26

    add-int/lit8 v28, v11, 0x1

    aget-wide v28, p2, v28

    sub-double v26, v26, v28

    .line 5270
    .local v26, "x3i":D
    add-double v28, v12, v18

    aput-wide v28, p2, p3

    .line 5271
    add-int/lit8 v28, p3, 0x1

    sub-double v29, v4, v22

    aput-wide v29, p2, v28

    .line 5272
    sub-double v28, v12, v18

    aput-wide v28, p2, v9

    .line 5273
    add-int/lit8 v28, v9, 0x1

    add-double v29, v4, v22

    aput-wide v29, p2, v28

    .line 5274
    add-double v28, v14, v26

    aput-wide v28, p2, v10

    .line 5275
    add-int/lit8 v28, v10, 0x1

    add-double v29, v6, v24

    aput-wide v29, p2, v28

    .line 5276
    sub-double v28, v14, v26

    aput-wide v28, p2, v11

    .line 5277
    add-int/lit8 v28, v11, 0x1

    sub-double v29, v6, v24

    aput-wide v29, p2, v28

    .line 5278
    add-int/lit8 v28, p5, 0x1

    move-wide/from16 v31, v4

    aget-wide v4, p4, v28

    .line 5279
    .local v4, "wn4r":D
    .local v31, "x0i":D
    add-int/lit8 v28, p5, 0x2

    aget-wide v28, p4, v28

    .line 5280
    .local v28, "csc1":D
    add-int/lit8 v30, p5, 0x3

    aget-wide v33, p4, v30

    .line 5281
    .local v33, "csc3":D
    const-wide/high16 v35, 0x3ff0000000000000L    # 1.0

    .line 5282
    .local v35, "wd1r":D
    const-wide/16 v37, 0x0

    .line 5283
    .local v37, "wd1i":D
    const-wide/high16 v39, 0x3ff0000000000000L    # 1.0

    .line 5284
    .local v39, "wd3r":D
    const-wide/16 v41, 0x0

    .line 5285
    .local v41, "wd3i":D
    const/16 v30, 0x0

    .line 5286
    .local v30, "k":I
    const/16 v16, 0x2

    .local v16, "j":I
    :goto_98
    move/from16 v43, v16

    .end local v16    # "j":I
    .local v43, "j":I
    add-int/lit8 v2, v3, -0x2

    move-wide/from16 v44, v6

    move/from16 v6, v43

    if-ge v6, v2, :cond_356

    .line 5287
    .end local v43    # "j":I
    .local v6, "j":I
    .local v44, "x1i":D
    add-int/lit8 v30, v30, 0x4

    .line 5288
    add-int v2, p5, v30

    .line 5289
    .local v2, "idx4":I
    aget-wide v46, p4, v2

    add-double v46, v35, v46

    mul-double v46, v46, v28

    .line 5290
    .local v46, "wk1r":D
    add-int/lit8 v7, v2, 0x1

    aget-wide v48, p4, v7

    add-double v48, v37, v48

    mul-double v48, v48, v28

    .line 5291
    .local v48, "wk1i":D
    add-int/lit8 v7, v2, 0x2

    aget-wide v50, p4, v7

    add-double v50, v39, v50

    mul-double v50, v50, v33

    .line 5292
    .local v50, "wk3r":D
    add-int/lit8 v7, v2, 0x3

    aget-wide v52, p4, v7

    add-double v52, v41, v52

    mul-double v52, v52, v33

    .line 5293
    .local v52, "wk3i":D
    aget-wide v35, p4, v2

    .line 5294
    add-int/lit8 v7, v2, 0x1

    aget-wide v37, p4, v7

    .line 5295
    add-int/lit8 v7, v2, 0x2

    aget-wide v39, p4, v7

    .line 5296
    add-int/lit8 v7, v2, 0x3

    aget-wide v41, p4, v7

    .line 5297
    add-int v43, v6, v17

    .line 5298
    .end local v20    # "j1":I
    .local v43, "j1":I
    add-int v7, v43, v17

    .line 5299
    .end local v21    # "j2":I
    .restart local v7    # "j2":I
    add-int v8, v7, v17

    .line 5300
    add-int v9, p3, v43

    .line 5301
    add-int v10, p3, v7

    .line 5302
    add-int v11, p3, v8

    .line 5303
    add-int v16, p3, v6

    .line 5304
    .local v16, "idx5":I
    aget-wide v20, p2, v16

    aget-wide v54, p2, v10

    add-double v20, v20, v54

    .line 5305
    .end local v12    # "x0r":D
    .local v20, "x0r":D
    add-int/lit8 v12, v16, 0x1

    aget-wide v12, p2, v12

    neg-double v12, v12

    add-int/lit8 v54, v10, 0x1

    aget-wide v54, p2, v54

    sub-double v12, v12, v54

    .line 5306
    .end local v31    # "x0i":D
    .local v12, "x0i":D
    aget-wide v31, p2, v16

    add-int v54, p3, v7

    aget-wide v54, p2, v54

    sub-double v31, v31, v54

    .line 5307
    .end local v14    # "x1r":D
    .local v31, "x1r":D
    add-int/lit8 v14, v16, 0x1

    aget-wide v0, p2, v14

    neg-double v0, v0

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p2, v14

    add-double/2addr v0, v14

    .line 5308
    .end local v44    # "x1i":D
    .local v0, "x1i":D
    add-int/lit8 v14, v16, 0x2

    aget-wide v14, p2, v14

    add-int/lit8 v44, v10, 0x2

    aget-wide v44, p2, v44

    add-double v14, v14, v44

    .line 5309
    .local v14, "y0r":D
    add-int/lit8 v44, v16, 0x3

    move/from16 v56, v7

    move/from16 v57, v8

    aget-wide v7, p2, v44

    .end local v7    # "j2":I
    .end local v8    # "j3":I
    .local v56, "j2":I
    .local v57, "j3":I
    neg-double v7, v7

    add-int/lit8 v44, v10, 0x3

    aget-wide v44, p2, v44

    sub-double v7, v7, v44

    .line 5310
    .local v7, "y0i":D
    add-int/lit8 v44, v16, 0x2

    aget-wide v44, p2, v44

    add-int/lit8 v54, v10, 0x2

    aget-wide v54, p2, v54

    sub-double v44, v44, v54

    .line 5311
    .local v44, "y1r":D
    add-int/lit8 v54, v16, 0x3

    move/from16 v59, v2

    move/from16 v58, v3

    aget-wide v2, p2, v54

    .end local v2    # "idx4":I
    .end local v3    # "mh":I
    .local v58, "mh":I
    .local v59, "idx4":I
    neg-double v2, v2

    add-int/lit8 v54, v10, 0x3

    aget-wide v54, p2, v54

    add-double v2, v2, v54

    .line 5312
    .local v2, "y1i":D
    aget-wide v54, p2, v9

    aget-wide v60, p2, v11

    add-double v54, v54, v60

    .line 5313
    .end local v18    # "x2r":D
    .local v54, "x2r":D
    add-int/lit8 v18, v9, 0x1

    aget-wide v18, p2, v18

    add-int/lit8 v60, v11, 0x1

    aget-wide v60, p2, v60

    add-double v18, v18, v60

    .line 5314
    .end local v22    # "x2i":D
    .local v18, "x2i":D
    aget-wide v22, p2, v9

    aget-wide v60, p2, v11

    sub-double v22, v22, v60

    .line 5315
    .end local v24    # "x3r":D
    .local v22, "x3r":D
    add-int/lit8 v24, v9, 0x1

    aget-wide v24, p2, v24

    add-int/lit8 v60, v11, 0x1

    aget-wide v60, p2, v60

    sub-double v24, v24, v60

    .line 5316
    .end local v26    # "x3i":D
    .local v24, "x3i":D
    add-int/lit8 v26, v9, 0x2

    aget-wide v26, p2, v26

    add-int/lit8 v60, v11, 0x2

    aget-wide v60, p2, v60

    add-double v26, v26, v60

    .line 5317
    .local v26, "y2r":D
    add-int/lit8 v60, v9, 0x3

    aget-wide v60, p2, v60

    add-int/lit8 v62, v11, 0x3

    aget-wide v62, p2, v62

    add-double v60, v60, v62

    .line 5318
    .local v60, "y2i":D
    add-int/lit8 v62, v9, 0x2

    aget-wide v62, p2, v62

    add-int/lit8 v64, v11, 0x2

    aget-wide v64, p2, v64

    sub-double v62, v62, v64

    .line 5319
    .local v62, "y3r":D
    add-int/lit8 v64, v9, 0x3

    aget-wide v64, p2, v64

    add-int/lit8 v66, v11, 0x3

    aget-wide v66, p2, v66

    sub-double v64, v64, v66

    .line 5320
    .local v64, "y3i":D
    add-double v66, v20, v54

    aput-wide v66, p2, v16

    .line 5321
    add-int/lit8 v66, v16, 0x1

    sub-double v67, v12, v18

    aput-wide v67, p2, v66

    .line 5322
    add-int/lit8 v66, v16, 0x2

    add-double v67, v14, v26

    aput-wide v67, p2, v66

    .line 5323
    add-int/lit8 v66, v16, 0x3

    sub-double v67, v7, v60

    aput-wide v67, p2, v66

    .line 5324
    sub-double v66, v20, v54

    aput-wide v66, p2, v9

    .line 5325
    add-int/lit8 v66, v9, 0x1

    add-double v67, v12, v18

    aput-wide v67, p2, v66

    .line 5326
    add-int/lit8 v66, v9, 0x2

    sub-double v67, v14, v26

    aput-wide v67, p2, v66

    .line 5327
    add-int/lit8 v66, v9, 0x3

    add-double v67, v7, v60

    aput-wide v67, p2, v66

    .line 5328
    add-double v20, v31, v24

    .line 5329
    add-double v12, v0, v22

    .line 5330
    mul-double v66, v46, v20

    mul-double v68, v48, v12

    sub-double v66, v66, v68

    aput-wide v66, p2, v10

    .line 5331
    add-int/lit8 v66, v10, 0x1

    mul-double v67, v46, v12

    mul-double v69, v48, v20

    add-double v67, v67, v69

    aput-wide v67, p2, v66

    .line 5332
    add-double v20, v44, v64

    .line 5333
    add-double v12, v2, v62

    .line 5334
    add-int/lit8 v66, v10, 0x2

    mul-double v67, v35, v20

    mul-double v69, v37, v12

    sub-double v67, v67, v69

    aput-wide v67, p2, v66

    .line 5335
    add-int/lit8 v66, v10, 0x3

    mul-double v67, v35, v12

    mul-double v69, v37, v20

    add-double v67, v67, v69

    aput-wide v67, p2, v66

    .line 5336
    sub-double v20, v31, v24

    .line 5337
    sub-double v12, v0, v22

    .line 5338
    mul-double v66, v50, v20

    mul-double v68, v52, v12

    add-double v66, v66, v68

    aput-wide v66, p2, v11

    .line 5339
    add-int/lit8 v66, v11, 0x1

    mul-double v67, v50, v12

    mul-double v69, v52, v20

    sub-double v67, v67, v69

    aput-wide v67, p2, v66

    .line 5340
    sub-double v20, v44, v64

    .line 5341
    sub-double v12, v2, v62

    .line 5342
    add-int/lit8 v66, v11, 0x2

    mul-double v67, v39, v20

    mul-double v69, v41, v12

    add-double v67, v67, v69

    aput-wide v67, p2, v66

    .line 5343
    add-int/lit8 v66, v11, 0x3

    mul-double v67, v39, v12

    mul-double v69, v41, v20

    sub-double v67, v67, v69

    aput-wide v67, p2, v66

    .line 5344
    sub-int v66, v17, v6

    .line 5345
    .local v66, "j0":I
    add-int v43, v66, v17

    .line 5346
    add-int v56, v43, v17

    .line 5347
    add-int v57, v56, v17

    .line 5348
    add-int v67, p3, v66

    .line 5349
    .local v67, "idx0":I
    add-int v9, p3, v43

    .line 5350
    add-int v10, p3, v56

    .line 5351
    add-int v11, p3, v57

    .line 5352
    aget-wide v68, p2, v67

    aget-wide v70, p2, v10

    add-double v68, v68, v70

    .line 5353
    .end local v20    # "x0r":D
    .local v68, "x0r":D
    add-int/lit8 v20, v67, 0x1

    move-wide/from16 v72, v0

    aget-wide v0, p2, v20

    .end local v0    # "x1i":D
    .local v72, "x1i":D
    neg-double v0, v0

    add-int/lit8 v20, v10, 0x1

    aget-wide v20, p2, v20

    sub-double v0, v0, v20

    .line 5354
    .end local v12    # "x0i":D
    .local v0, "x0i":D
    aget-wide v12, p2, v67

    aget-wide v20, p2, v10

    sub-double v12, v12, v20

    .line 5355
    .end local v31    # "x1r":D
    .local v12, "x1r":D
    add-int/lit8 v20, v67, 0x1

    move-wide/from16 v74, v2

    aget-wide v2, p2, v20

    .end local v2    # "y1i":D
    .local v74, "y1i":D
    neg-double v2, v2

    add-int/lit8 v20, v10, 0x1

    aget-wide v20, p2, v20

    add-double v2, v2, v20

    .line 5356
    .end local v72    # "x1i":D
    .local v2, "x1i":D
    add-int/lit8 v20, v67, -0x2

    aget-wide v20, p2, v20

    add-int/lit8 v31, v10, -0x2

    aget-wide v31, p2, v31

    add-double v20, v20, v31

    .line 5357
    .end local v14    # "y0r":D
    .local v20, "y0r":D
    add-int/lit8 v14, v67, -0x1

    move-wide/from16 v76, v7

    aget-wide v7, p2, v14

    .end local v7    # "y0i":D
    .local v76, "y0i":D
    neg-double v7, v7

    add-int/lit8 v14, v10, -0x1

    aget-wide v14, p2, v14

    sub-double/2addr v7, v14

    .line 5358
    .end local v76    # "y0i":D
    .restart local v7    # "y0i":D
    add-int/lit8 v14, v67, -0x2

    aget-wide v14, p2, v14

    add-int/lit8 v31, v10, -0x2

    aget-wide v31, p2, v31

    sub-double v14, v14, v31

    .line 5359
    .end local v44    # "y1r":D
    .local v14, "y1r":D
    add-int/lit8 v31, v67, -0x1

    move-wide/from16 v78, v4

    aget-wide v4, p2, v31

    .end local v4    # "wn4r":D
    .local v78, "wn4r":D
    neg-double v4, v4

    add-int/lit8 v31, v10, -0x1

    aget-wide v31, p2, v31

    add-double v4, v4, v31

    .line 5360
    .end local v74    # "y1i":D
    .local v4, "y1i":D
    aget-wide v31, p2, v9

    aget-wide v44, p2, v11

    add-double v31, v31, v44

    .line 5361
    .end local v54    # "x2r":D
    .local v31, "x2r":D
    add-int/lit8 v44, v9, 0x1

    aget-wide v44, p2, v44

    add-int/lit8 v54, v11, 0x1

    aget-wide v54, p2, v54

    add-double v18, v44, v54

    .line 5362
    aget-wide v44, p2, v9

    aget-wide v54, p2, v11

    sub-double v22, v44, v54

    .line 5363
    add-int/lit8 v44, v9, 0x1

    aget-wide v44, p2, v44

    add-int/lit8 v54, v11, 0x1

    aget-wide v54, p2, v54

    sub-double v24, v44, v54

    .line 5364
    add-int/lit8 v44, v9, -0x2

    aget-wide v44, p2, v44

    add-int/lit8 v54, v11, -0x2

    aget-wide v54, p2, v54

    add-double v44, v44, v54

    .line 5365
    .end local v26    # "y2r":D
    .local v44, "y2r":D
    add-int/lit8 v26, v9, -0x1

    aget-wide v26, p2, v26

    add-int/lit8 v54, v11, -0x1

    aget-wide v54, p2, v54

    add-double v26, v26, v54

    .line 5366
    .end local v60    # "y2i":D
    .local v26, "y2i":D
    add-int/lit8 v54, v9, -0x2

    aget-wide v54, p2, v54

    add-int/lit8 v60, v11, -0x2

    aget-wide v60, p2, v60

    sub-double v54, v54, v60

    .line 5367
    .end local v62    # "y3r":D
    .local v54, "y3r":D
    add-int/lit8 v60, v9, -0x1

    aget-wide v60, p2, v60

    add-int/lit8 v62, v11, -0x1

    aget-wide v62, p2, v62

    sub-double v60, v60, v62

    .line 5368
    .end local v64    # "y3i":D
    .local v60, "y3i":D
    add-double v62, v68, v31

    aput-wide v62, p2, v67

    .line 5369
    add-int/lit8 v62, v67, 0x1

    sub-double v63, v0, v18

    aput-wide v63, p2, v62

    .line 5370
    add-int/lit8 v62, v67, -0x2

    add-double v63, v20, v44

    aput-wide v63, p2, v62

    .line 5371
    add-int/lit8 v62, v67, -0x1

    sub-double v63, v7, v26

    aput-wide v63, p2, v62

    .line 5372
    sub-double v62, v68, v31

    aput-wide v62, p2, v9

    .line 5373
    add-int/lit8 v62, v9, 0x1

    add-double v63, v0, v18

    aput-wide v63, p2, v62

    .line 5374
    add-int/lit8 v62, v9, -0x2

    sub-double v63, v20, v44

    aput-wide v63, p2, v62

    .line 5375
    add-int/lit8 v62, v9, -0x1

    add-double v63, v7, v26

    aput-wide v63, p2, v62

    .line 5376
    add-double v62, v12, v24

    .line 5377
    .end local v68    # "x0r":D
    .local v62, "x0r":D
    add-double v0, v2, v22

    .line 5378
    mul-double v64, v48, v62

    mul-double v68, v46, v0

    sub-double v64, v64, v68

    aput-wide v64, p2, v10

    .line 5379
    add-int/lit8 v64, v10, 0x1

    mul-double v68, v48, v0

    mul-double v70, v46, v62

    add-double v68, v68, v70

    aput-wide v68, p2, v64

    .line 5380
    add-double v62, v14, v60

    .line 5381
    add-double v0, v4, v54

    .line 5382
    add-int/lit8 v64, v10, -0x2

    mul-double v68, v37, v62

    mul-double v70, v35, v0

    sub-double v68, v68, v70

    aput-wide v68, p2, v64

    .line 5383
    add-int/lit8 v64, v10, -0x1

    mul-double v68, v37, v0

    mul-double v70, v35, v62

    add-double v68, v68, v70

    aput-wide v68, p2, v64

    .line 5384
    sub-double v62, v12, v24

    .line 5385
    sub-double v0, v2, v22

    .line 5386
    mul-double v64, v52, v62

    mul-double v68, v50, v0

    add-double v64, v64, v68

    aput-wide v64, p2, v11

    .line 5387
    add-int/lit8 v64, v11, 0x1

    mul-double v68, v52, v0

    mul-double v70, v50, v62

    sub-double v68, v68, v70

    aput-wide v68, p2, v64

    .line 5388
    sub-double v62, v14, v60

    .line 5389
    sub-double v0, v4, v54

    .line 5390
    add-int/lit8 v64, v11, -0x2

    mul-double v68, v41, v62

    mul-double v70, v39, v0

    add-double v68, v68, v70

    aput-wide v68, p2, v64

    .line 5391
    add-int/lit8 v64, v11, -0x1

    mul-double v68, v41, v0

    mul-double v70, v39, v62

    sub-double v68, v68, v70

    aput-wide v68, p2, v64

    .line 5286
    add-int/lit8 v6, v6, 0x4

    move/from16 v16, v6

    move-wide v14, v12

    move-wide/from16 v26, v24

    move/from16 v20, v43

    move/from16 v21, v56

    move/from16 v8, v57

    move-wide/from16 v12, v62

    move-wide/from16 v4, v78

    move-wide v6, v2

    move-wide/from16 v24, v22

    move/from16 v3, v58

    move-wide/from16 v22, v18

    move-wide/from16 v18, v31

    move-wide/from16 v31, v0

    goto/16 :goto_98

    .line 5393
    .end local v0    # "x0i":D
    .end local v2    # "x1i":D
    .end local v6    # "j":I
    .end local v7    # "y0i":D
    .end local v16    # "idx5":I
    .end local v43    # "j1":I
    .end local v46    # "wk1r":D
    .end local v48    # "wk1i":D
    .end local v50    # "wk3r":D
    .end local v52    # "wk3i":D
    .end local v54    # "y3r":D
    .end local v56    # "j2":I
    .end local v57    # "j3":I
    .end local v58    # "mh":I
    .end local v59    # "idx4":I
    .end local v60    # "y3i":D
    .end local v62    # "x0r":D
    .end local v66    # "j0":I
    .end local v67    # "idx0":I
    .end local v78    # "wn4r":D
    .restart local v3    # "mh":I
    .local v4, "wn4r":D
    .restart local v8    # "j3":I
    .local v12, "x0r":D
    .local v14, "x1r":D
    .local v18, "x2r":D
    .local v20, "j1":I
    .restart local v21    # "j2":I
    .local v22, "x2i":D
    .local v24, "x3r":D
    .local v26, "x3i":D
    .local v31, "x0i":D
    .local v44, "x1i":D
    :cond_356
    move/from16 v58, v3

    move-wide/from16 v78, v4

    .end local v3    # "mh":I
    .end local v4    # "wn4r":D
    .restart local v58    # "mh":I
    .restart local v78    # "wn4r":D
    add-double v4, v35, v78

    mul-double v4, v4, v28

    .line 5394
    .local v4, "wk1r":D
    add-double v0, v37, v78

    mul-double v0, v0, v28

    .line 5395
    .local v0, "wk1i":D
    sub-double v2, v39, v78

    mul-double v2, v2, v33

    .line 5396
    .local v2, "wk3r":D
    sub-double v6, v41, v78

    mul-double v6, v6, v33

    .line 5397
    .local v6, "wk3i":D
    move/from16 v16, v58

    .line 5398
    .local v16, "j0":I
    add-int v20, v16, v17

    .line 5399
    add-int v21, v20, v17

    .line 5400
    add-int v8, v21, v17

    .line 5401
    add-int v43, p3, v16

    .line 5402
    .local v43, "idx0":I
    add-int v9, p3, v20

    .line 5403
    add-int v10, p3, v21

    .line 5404
    add-int v11, p3, v8

    .line 5405
    add-int/lit8 v46, v43, -0x2

    aget-wide v46, p2, v46

    add-int/lit8 v48, v10, -0x2

    aget-wide v48, p2, v48

    add-double v46, v46, v48

    .line 5406
    .end local v12    # "x0r":D
    .local v46, "x0r":D
    add-int/lit8 v12, v43, -0x1

    aget-wide v12, p2, v12

    neg-double v12, v12

    add-int/lit8 v48, v10, -0x1

    aget-wide v48, p2, v48

    sub-double v12, v12, v48

    .line 5407
    .end local v31    # "x0i":D
    .local v12, "x0i":D
    add-int/lit8 v31, v43, -0x2

    aget-wide v31, p2, v31

    add-int/lit8 v48, v10, -0x2

    aget-wide v48, p2, v48

    sub-double v31, v31, v48

    .line 5408
    .end local v14    # "x1r":D
    .local v31, "x1r":D
    add-int/lit8 v14, v43, -0x1

    move-wide/from16 v80, v6

    aget-wide v6, p2, v14

    .end local v6    # "wk3i":D
    .local v80, "wk3i":D
    neg-double v6, v6

    add-int/lit8 v14, v10, -0x1

    aget-wide v14, p2, v14

    add-double/2addr v6, v14

    .line 5409
    .end local v44    # "x1i":D
    .local v6, "x1i":D
    add-int/lit8 v14, v9, -0x2

    aget-wide v14, p2, v14

    add-int/lit8 v44, v11, -0x2

    aget-wide v44, p2, v44

    add-double v14, v14, v44

    .line 5410
    .end local v18    # "x2r":D
    .local v14, "x2r":D
    add-int/lit8 v18, v9, -0x1

    aget-wide v18, p2, v18

    add-int/lit8 v44, v11, -0x1

    aget-wide v44, p2, v44

    add-double v18, v18, v44

    .line 5411
    .end local v22    # "x2i":D
    .local v18, "x2i":D
    add-int/lit8 v22, v9, -0x2

    aget-wide v22, p2, v22

    add-int/lit8 v44, v11, -0x2

    aget-wide v44, p2, v44

    sub-double v22, v22, v44

    .line 5412
    .end local v24    # "x3r":D
    .local v22, "x3r":D
    add-int/lit8 v24, v9, -0x1

    aget-wide v24, p2, v24

    add-int/lit8 v44, v11, -0x1

    aget-wide v44, p2, v44

    sub-double v24, v24, v44

    .line 5413
    .end local v26    # "x3i":D
    .local v24, "x3i":D
    add-int/lit8 v26, v43, -0x2

    add-double v44, v46, v14

    aput-wide v44, p2, v26

    .line 5414
    add-int/lit8 v26, v43, -0x1

    sub-double v44, v12, v18

    aput-wide v44, p2, v26

    .line 5415
    add-int/lit8 v26, v9, -0x2

    sub-double v44, v46, v14

    aput-wide v44, p2, v26

    .line 5416
    add-int/lit8 v26, v9, -0x1

    add-double v44, v12, v18

    aput-wide v44, p2, v26

    .line 5417
    add-double v26, v31, v24

    .line 5418
    .end local v46    # "x0r":D
    .local v26, "x0r":D
    add-double v12, v6, v22

    .line 5419
    add-int/lit8 v44, v10, -0x2

    mul-double v45, v4, v26

    mul-double v47, v0, v12

    sub-double v45, v45, v47

    aput-wide v45, p2, v44

    .line 5420
    add-int/lit8 v44, v10, -0x1

    mul-double v45, v4, v12

    mul-double v47, v0, v26

    add-double v45, v45, v47

    aput-wide v45, p2, v44

    .line 5421
    sub-double v26, v31, v24

    .line 5422
    sub-double v12, v6, v22

    .line 5423
    add-int/lit8 v44, v11, -0x2

    mul-double v45, v2, v26

    mul-double v47, v80, v12

    add-double v45, v45, v47

    aput-wide v45, p2, v44

    .line 5424
    add-int/lit8 v44, v11, -0x1

    mul-double v45, v2, v12

    mul-double v47, v80, v26

    sub-double v45, v45, v47

    aput-wide v45, p2, v44

    .line 5425
    aget-wide v44, p2, v43

    aget-wide v46, p2, v10

    add-double v44, v44, v46

    .line 5426
    .end local v26    # "x0r":D
    .local v44, "x0r":D
    add-int/lit8 v26, v43, 0x1

    move-wide/from16 v82, v6

    aget-wide v6, p2, v26

    .end local v6    # "x1i":D
    .local v82, "x1i":D
    neg-double v6, v6

    add-int/lit8 v26, v10, 0x1

    aget-wide v26, p2, v26

    sub-double v6, v6, v26

    .line 5427
    .end local v12    # "x0i":D
    .local v6, "x0i":D
    aget-wide v12, p2, v43

    aget-wide v26, p2, v10

    sub-double v12, v12, v26

    .line 5428
    .end local v31    # "x1r":D
    .local v12, "x1r":D
    add-int/lit8 v26, v43, 0x1

    move-wide/from16 v84, v2

    aget-wide v2, p2, v26

    .end local v2    # "wk3r":D
    .local v84, "wk3r":D
    neg-double v2, v2

    add-int/lit8 v26, v10, 0x1

    aget-wide v26, p2, v26

    add-double v2, v2, v26

    .line 5429
    .end local v82    # "x1i":D
    .local v2, "x1i":D
    aget-wide v26, p2, v9

    aget-wide v31, p2, v11

    add-double v26, v26, v31

    .line 5430
    .end local v14    # "x2r":D
    .local v26, "x2r":D
    add-int/lit8 v14, v9, 0x1

    aget-wide v14, p2, v14

    add-int/lit8 v31, v11, 0x1

    aget-wide v31, p2, v31

    add-double v14, v14, v31

    .line 5431
    .end local v18    # "x2i":D
    .local v14, "x2i":D
    aget-wide v18, p2, v9

    aget-wide v31, p2, v11

    sub-double v18, v18, v31

    .line 5432
    .end local v22    # "x3r":D
    .local v18, "x3r":D
    add-int/lit8 v22, v9, 0x1

    aget-wide v22, p2, v22

    add-int/lit8 v31, v11, 0x1

    aget-wide v31, p2, v31

    sub-double v22, v22, v31

    .line 5433
    .end local v24    # "x3i":D
    .local v22, "x3i":D
    add-double v24, v44, v26

    aput-wide v24, p2, v43

    .line 5434
    add-int/lit8 v24, v43, 0x1

    sub-double v31, v6, v14

    aput-wide v31, p2, v24

    .line 5435
    sub-double v24, v44, v26

    aput-wide v24, p2, v9

    .line 5436
    add-int/lit8 v24, v9, 0x1

    add-double v31, v6, v14

    aput-wide v31, p2, v24

    .line 5437
    add-double v24, v12, v22

    .line 5438
    .end local v44    # "x0r":D
    .local v24, "x0r":D
    add-double v6, v2, v18

    .line 5439
    sub-double v31, v24, v6

    mul-double v31, v31, v78

    aput-wide v31, p2, v10

    .line 5440
    add-int/lit8 v31, v10, 0x1

    add-double v44, v6, v24

    mul-double v44, v44, v78

    aput-wide v44, p2, v31

    .line 5441
    sub-double v24, v12, v22

    .line 5442
    sub-double v6, v2, v18

    .line 5443
    move-wide/from16 v86, v2

    move-wide/from16 v88, v12

    move-wide/from16 v2, v78

    neg-double v12, v2

    .end local v12    # "x1r":D
    .end local v78    # "wn4r":D
    .local v2, "wn4r":D
    .local v86, "x1i":D
    .local v88, "x1r":D
    add-double v31, v24, v6

    mul-double v12, v12, v31

    aput-wide v12, p2, v11

    .line 5444
    add-int/lit8 v12, v11, 0x1

    move-wide/from16 v90, v4

    neg-double v4, v2

    .end local v4    # "wk1r":D
    .local v90, "wk1r":D
    sub-double v31, v6, v24

    mul-double v4, v4, v31

    aput-wide v4, p2, v12

    .line 5445
    add-int/lit8 v4, v43, 0x2

    aget-wide v4, p2, v4

    add-int/lit8 v12, v10, 0x2

    aget-wide v12, p2, v12

    add-double/2addr v4, v12

    .line 5446
    .end local v24    # "x0r":D
    .local v4, "x0r":D
    add-int/lit8 v12, v43, 0x3

    aget-wide v12, p2, v12

    neg-double v12, v12

    add-int/lit8 v24, v10, 0x3

    aget-wide v24, p2, v24

    sub-double v12, v12, v24

    .line 5447
    .end local v6    # "x0i":D
    .local v12, "x0i":D
    add-int/lit8 v6, v43, 0x2

    aget-wide v6, p2, v6

    add-int/lit8 v24, v10, 0x2

    aget-wide v24, p2, v24

    sub-double v6, v6, v24

    .line 5448
    .end local v88    # "x1r":D
    .local v6, "x1r":D
    add-int/lit8 v24, v43, 0x3

    move-wide/from16 v92, v2

    aget-wide v2, p2, v24

    .end local v2    # "wn4r":D
    .local v92, "wn4r":D
    neg-double v2, v2

    add-int/lit8 v24, v10, 0x3

    aget-wide v24, p2, v24

    add-double v2, v2, v24

    .line 5449
    .end local v86    # "x1i":D
    .local v2, "x1i":D
    add-int/lit8 v24, v9, 0x2

    aget-wide v24, p2, v24

    add-int/lit8 v31, v11, 0x2

    aget-wide v31, p2, v31

    add-double v24, v24, v31

    .line 5450
    .end local v26    # "x2r":D
    .local v24, "x2r":D
    add-int/lit8 v26, v9, 0x3

    aget-wide v26, p2, v26

    add-int/lit8 v31, v11, 0x3

    aget-wide v31, p2, v31

    add-double v26, v26, v31

    .line 5451
    .end local v14    # "x2i":D
    .local v26, "x2i":D
    add-int/lit8 v14, v9, 0x2

    aget-wide v14, p2, v14

    add-int/lit8 v31, v11, 0x2

    aget-wide v31, p2, v31

    sub-double v14, v14, v31

    .line 5452
    .end local v18    # "x3r":D
    .local v14, "x3r":D
    add-int/lit8 v18, v9, 0x3

    aget-wide v18, p2, v18

    add-int/lit8 v31, v11, 0x3

    aget-wide v31, p2, v31

    sub-double v18, v18, v31

    .line 5453
    .end local v22    # "x3i":D
    .local v18, "x3i":D
    add-int/lit8 v22, v43, 0x2

    add-double v31, v4, v24

    aput-wide v31, p2, v22

    .line 5454
    add-int/lit8 v22, v43, 0x3

    sub-double v31, v12, v26

    aput-wide v31, p2, v22

    .line 5455
    add-int/lit8 v22, v9, 0x2

    sub-double v31, v4, v24

    aput-wide v31, p2, v22

    .line 5456
    add-int/lit8 v22, v9, 0x3

    add-double v31, v12, v26

    aput-wide v31, p2, v22

    .line 5457
    add-double v4, v6, v18

    .line 5458
    add-double v12, v2, v14

    .line 5459
    add-int/lit8 v22, v10, 0x2

    mul-double v31, v0, v4

    mul-double v44, v90, v12

    sub-double v31, v31, v44

    aput-wide v31, p2, v22

    .line 5460
    add-int/lit8 v22, v10, 0x3

    mul-double v31, v0, v12

    mul-double v44, v90, v4

    add-double v31, v31, v44

    aput-wide v31, p2, v22

    .line 5461
    sub-double v4, v6, v18

    .line 5462
    sub-double v12, v2, v14

    .line 5463
    add-int/lit8 v22, v11, 0x2

    mul-double v31, v80, v4

    mul-double v44, v84, v12

    add-double v31, v31, v44

    aput-wide v31, p2, v22

    .line 5464
    add-int/lit8 v22, v11, 0x3

    mul-double v31, v80, v12

    mul-double v44, v84, v4

    sub-double v31, v31, v44

    aput-wide v31, p2, v22

    .line 5465
    return-void-no-barrier
.end method

.method private cftbsub(I[DI[II[D)V
    .registers 15
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "ip"    # [I
    .param p5, "nw"    # I
    .param p6, "w"    # [D

    .line 3999
    const/16 v0, 0x8

    if-le p1, v0, :cond_68

    .line 4000
    const/16 v0, 0x20

    if-le p1, v0, :cond_55

    .line 4001
    shr-int/lit8 v0, p1, 0x2

    sub-int v6, p5, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p6

    invoke-direct/range {v1 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftb1st(I[DI[DI)V

    .line 4002
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2b

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v0

    if-le p1, v0, :cond_2b

    .line 4003
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4_th(I[DII[D)V

    goto :goto_51

    .line 4004
    :cond_2b
    const/16 v0, 0x200

    if-le p1, v0, :cond_39

    .line 4005
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4(I[DII[D)V

    goto :goto_51

    .line 4006
    :cond_39
    const/16 v0, 0x80

    if-le p1, v0, :cond_48

    .line 4007
    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    goto :goto_51

    .line 4009
    :cond_48
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfx41(I[DII[D)V

    .line 4011
    :goto_51
    invoke-direct {p0, p1, p4, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv2conj(I[I[DI)V

    goto :goto_74

    .line 4012
    :cond_55
    if-ne p1, v0, :cond_60

    .line 4013
    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 4014
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv216neg([DI)V

    goto :goto_74

    .line 4016
    :cond_60
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    .line 4017
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv208neg([DI)V

    goto :goto_74

    .line 4019
    :cond_68
    if-ne p1, v0, :cond_6e

    .line 4020
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftb040([DI)V

    goto :goto_74

    .line 4021
    :cond_6e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_74

    .line 4022
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftxb020([DI)V

    .line 4024
    :cond_74
    :goto_74
    return-void-no-barrier
.end method

.method private cftf040([DI)V
    .registers 22
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .line 6384
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x4

    aget-wide v2, p1, v2

    add-double/2addr v0, v2

    .line 6385
    .local v0, "x0r":D
    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x5

    aget-wide v4, p1, v4

    add-double/2addr v2, v4

    .line 6386
    .local v2, "x0i":D
    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x4

    aget-wide v6, p1, v6

    sub-double/2addr v4, v6

    .line 6387
    .local v4, "x1r":D
    add-int/lit8 v6, p2, 0x1

    aget-wide v6, p1, v6

    add-int/lit8 v8, p2, 0x5

    aget-wide v8, p1, v8

    sub-double/2addr v6, v8

    .line 6388
    .local v6, "x1i":D
    add-int/lit8 v8, p2, 0x2

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x6

    aget-wide v10, p1, v10

    add-double/2addr v8, v10

    .line 6389
    .local v8, "x2r":D
    add-int/lit8 v10, p2, 0x3

    aget-wide v10, p1, v10

    add-int/lit8 v12, p2, 0x7

    aget-wide v12, p1, v12

    add-double/2addr v10, v12

    .line 6390
    .local v10, "x2i":D
    add-int/lit8 v12, p2, 0x2

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0x6

    aget-wide v14, p1, v14

    sub-double/2addr v12, v14

    .line 6391
    .local v12, "x3r":D
    add-int/lit8 v14, p2, 0x3

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0x7

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    .line 6392
    .local v14, "x3i":D
    add-double v16, v0, v8

    aput-wide v16, p1, p2

    .line 6393
    add-int/lit8 v16, p2, 0x1

    add-double v17, v2, v10

    aput-wide v17, p1, v16

    .line 6394
    add-int/lit8 v16, p2, 0x2

    sub-double v17, v4, v14

    aput-wide v17, p1, v16

    .line 6395
    add-int/lit8 v16, p2, 0x3

    add-double v17, v6, v12

    aput-wide v17, p1, v16

    .line 6396
    add-int/lit8 v16, p2, 0x4

    sub-double v17, v0, v8

    aput-wide v17, p1, v16

    .line 6397
    add-int/lit8 v16, p2, 0x5

    sub-double v17, v2, v10

    aput-wide v17, p1, v16

    .line 6398
    add-int/lit8 v16, p2, 0x6

    add-double v17, v4, v14

    aput-wide v17, p1, v16

    .line 6399
    add-int/lit8 v16, p2, 0x7

    sub-double v17, v6, v12

    aput-wide v17, p1, v16

    .line 6400
    return-void-no-barrier
.end method

.method private cftf081([DI[DI)V
    .registers 58
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "w"    # [D
    .param p4, "startw"    # I

    .line 6258
    add-int/lit8 v0, p4, 0x1

    aget-wide v1, p3, v0

    .line 6259
    .local v1, "wn4r":D
    aget-wide v3, p1, p2

    add-int/lit8 v0, p2, 0x8

    aget-wide v5, p1, v0

    add-double/2addr v3, v5

    .line 6260
    .local v3, "x0r":D
    add-int/lit8 v0, p2, 0x1

    aget-wide v5, p1, v0

    add-int/lit8 v0, p2, 0x9

    aget-wide v7, p1, v0

    add-double/2addr v5, v7

    .line 6261
    .local v5, "x0i":D
    aget-wide v7, p1, p2

    add-int/lit8 v0, p2, 0x8

    aget-wide v9, p1, v0

    sub-double/2addr v7, v9

    .line 6262
    .local v7, "x1r":D
    add-int/lit8 v0, p2, 0x1

    aget-wide v9, p1, v0

    add-int/lit8 v0, p2, 0x9

    aget-wide v11, p1, v0

    sub-double/2addr v9, v11

    .line 6263
    .local v9, "x1i":D
    add-int/lit8 v0, p2, 0x4

    aget-wide v11, p1, v0

    add-int/lit8 v0, p2, 0xc

    aget-wide v13, p1, v0

    add-double/2addr v11, v13

    .line 6264
    .local v11, "x2r":D
    add-int/lit8 v0, p2, 0x5

    aget-wide v13, p1, v0

    add-int/lit8 v0, p2, 0xd

    aget-wide v15, p1, v0

    add-double/2addr v13, v15

    .line 6265
    .local v13, "x2i":D
    add-int/lit8 v0, p2, 0x4

    aget-wide v15, p1, v0

    add-int/lit8 v0, p2, 0xc

    aget-wide v17, p1, v0

    sub-double v15, v15, v17

    .line 6266
    .local v15, "x3r":D
    add-int/lit8 v0, p2, 0x5

    aget-wide v17, p1, v0

    add-int/lit8 v0, p2, 0xd

    aget-wide v19, p1, v0

    sub-double v17, v17, v19

    .line 6267
    .local v17, "x3i":D
    add-double v19, v3, v11

    .line 6268
    .local v19, "y0r":D
    add-double v21, v5, v13

    .line 6269
    .local v21, "y0i":D
    sub-double v23, v3, v11

    .line 6270
    .local v23, "y2r":D
    sub-double v25, v5, v13

    .line 6271
    .local v25, "y2i":D
    sub-double v27, v7, v17

    .line 6272
    .local v27, "y1r":D
    add-double v29, v9, v15

    .line 6273
    .local v29, "y1i":D
    add-double v31, v7, v17

    .line 6274
    .local v31, "y3r":D
    sub-double v33, v9, v15

    .line 6275
    .local v33, "y3i":D
    add-int/lit8 v0, p2, 0x2

    aget-wide v35, p1, v0

    add-int/lit8 v0, p2, 0xa

    aget-wide v37, p1, v0

    add-double v35, v35, v37

    .line 6276
    .end local v3    # "x0r":D
    .local v35, "x0r":D
    add-int/lit8 v0, p2, 0x3

    aget-wide v3, p1, v0

    add-int/lit8 v0, p2, 0xb

    aget-wide v37, p1, v0

    add-double v3, v3, v37

    .line 6277
    .end local v5    # "x0i":D
    .local v3, "x0i":D
    add-int/lit8 v0, p2, 0x2

    aget-wide v5, p1, v0

    add-int/lit8 v0, p2, 0xa

    aget-wide v37, p1, v0

    sub-double v5, v5, v37

    .line 6278
    .end local v7    # "x1r":D
    .local v5, "x1r":D
    add-int/lit8 v0, p2, 0x3

    aget-wide v7, p1, v0

    add-int/lit8 v0, p2, 0xb

    aget-wide v37, p1, v0

    sub-double v7, v7, v37

    .line 6279
    .end local v9    # "x1i":D
    .local v7, "x1i":D
    add-int/lit8 v0, p2, 0x6

    aget-wide v9, p1, v0

    add-int/lit8 v0, p2, 0xe

    aget-wide v37, p1, v0

    add-double v9, v9, v37

    .line 6280
    .end local v11    # "x2r":D
    .local v9, "x2r":D
    add-int/lit8 v0, p2, 0x7

    aget-wide v11, p1, v0

    add-int/lit8 v0, p2, 0xf

    aget-wide v37, p1, v0

    add-double v11, v11, v37

    .line 6281
    .end local v13    # "x2i":D
    .local v11, "x2i":D
    add-int/lit8 v0, p2, 0x6

    aget-wide v13, p1, v0

    add-int/lit8 v0, p2, 0xe

    aget-wide v37, p1, v0

    sub-double v13, v13, v37

    .line 6282
    .end local v15    # "x3r":D
    .local v13, "x3r":D
    add-int/lit8 v0, p2, 0x7

    aget-wide v15, p1, v0

    add-int/lit8 v0, p2, 0xf

    aget-wide v37, p1, v0

    sub-double v15, v15, v37

    .line 6283
    .end local v17    # "x3i":D
    .local v15, "x3i":D
    add-double v17, v35, v9

    .line 6284
    .local v17, "y4r":D
    add-double v37, v3, v11

    .line 6285
    .local v37, "y4i":D
    sub-double v39, v35, v9

    .line 6286
    .local v39, "y6r":D
    sub-double v41, v3, v11

    .line 6287
    .local v41, "y6i":D
    sub-double v35, v5, v15

    .line 6288
    add-double v3, v7, v13

    .line 6289
    add-double v9, v5, v15

    .line 6290
    sub-double v11, v7, v13

    .line 6291
    sub-double v43, v35, v3

    mul-double v43, v43, v1

    .line 6292
    .local v43, "y5r":D
    add-double v45, v35, v3

    mul-double v45, v45, v1

    .line 6293
    .local v45, "y5i":D
    sub-double v47, v9, v11

    mul-double v47, v47, v1

    .line 6294
    .local v47, "y7r":D
    add-double v49, v9, v11

    mul-double v49, v49, v1

    .line 6295
    .local v49, "y7i":D
    add-int/lit8 v0, p2, 0x8

    add-double v51, v27, v43

    aput-wide v51, p1, v0

    .line 6296
    add-int/lit8 v0, p2, 0x9

    add-double v51, v29, v45

    aput-wide v51, p1, v0

    .line 6297
    add-int/lit8 v0, p2, 0xa

    sub-double v51, v27, v43

    aput-wide v51, p1, v0

    .line 6298
    add-int/lit8 v0, p2, 0xb

    sub-double v51, v29, v45

    aput-wide v51, p1, v0

    .line 6299
    add-int/lit8 v0, p2, 0xc

    sub-double v51, v31, v49

    aput-wide v51, p1, v0

    .line 6300
    add-int/lit8 v0, p2, 0xd

    add-double v51, v33, v47

    aput-wide v51, p1, v0

    .line 6301
    add-int/lit8 v0, p2, 0xe

    add-double v51, v31, v49

    aput-wide v51, p1, v0

    .line 6302
    add-int/lit8 v0, p2, 0xf

    sub-double v51, v33, v47

    aput-wide v51, p1, v0

    .line 6303
    add-double v51, v19, v17

    aput-wide v51, p1, p2

    .line 6304
    add-int/lit8 v0, p2, 0x1

    add-double v51, v21, v37

    aput-wide v51, p1, v0

    .line 6305
    add-int/lit8 v0, p2, 0x2

    sub-double v51, v19, v17

    aput-wide v51, p1, v0

    .line 6306
    add-int/lit8 v0, p2, 0x3

    sub-double v51, v21, v37

    aput-wide v51, p1, v0

    .line 6307
    add-int/lit8 v0, p2, 0x4

    sub-double v51, v23, v41

    aput-wide v51, p1, v0

    .line 6308
    add-int/lit8 v0, p2, 0x5

    add-double v51, v25, v39

    aput-wide v51, p1, v0

    .line 6309
    add-int/lit8 v0, p2, 0x6

    add-double v51, v23, v41

    aput-wide v51, p1, v0

    .line 6310
    add-int/lit8 v0, p2, 0x7

    sub-double v51, v25, v39

    aput-wide v51, p1, v0

    .line 6311
    return-void-no-barrier
.end method

.method private cftf082([DI[DI)V
    .registers 54
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "w"    # [D
    .param p4, "startw"    # I

    .line 6316
    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    .line 6317
    .local v0, "wn4r":D
    add-int/lit8 v2, p4, 0x2

    aget-wide v2, p3, v2

    .line 6318
    .local v2, "wk1r":D
    add-int/lit8 v4, p4, 0x3

    aget-wide v4, p3, v4

    .line 6319
    .local v4, "wk1i":D
    aget-wide v6, p1, p2

    add-int/lit8 v8, p2, 0x9

    aget-wide v8, p1, v8

    sub-double/2addr v6, v8

    .line 6320
    .local v6, "y0r":D
    add-int/lit8 v8, p2, 0x1

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x8

    aget-wide v10, p1, v10

    add-double/2addr v8, v10

    .line 6321
    .local v8, "y0i":D
    aget-wide v10, p1, p2

    add-int/lit8 v12, p2, 0x9

    aget-wide v12, p1, v12

    add-double/2addr v10, v12

    .line 6322
    .local v10, "y1r":D
    add-int/lit8 v12, p2, 0x1

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0x8

    aget-wide v14, p1, v14

    sub-double/2addr v12, v14

    .line 6323
    .local v12, "y1i":D
    add-int/lit8 v14, p2, 0x4

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0xd

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    .line 6324
    .local v14, "x0r":D
    add-int/lit8 v16, p2, 0x5

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0xc

    aget-wide v18, p1, v18

    add-double v16, v16, v18

    .line 6325
    .local v16, "x0i":D
    sub-double v18, v14, v16

    mul-double v18, v18, v0

    .line 6326
    .local v18, "y2r":D
    add-double v20, v16, v14

    mul-double v20, v20, v0

    .line 6327
    .local v20, "y2i":D
    add-int/lit8 v22, p2, 0x4

    aget-wide v22, p1, v22

    add-int/lit8 v24, p2, 0xd

    aget-wide v24, p1, v24

    add-double v22, v22, v24

    .line 6328
    .end local v14    # "x0r":D
    .local v22, "x0r":D
    add-int/lit8 v14, p2, 0x5

    aget-wide v14, p1, v14

    add-int/lit8 v24, p2, 0xc

    aget-wide v24, p1, v24

    sub-double v14, v14, v24

    .line 6329
    .end local v16    # "x0i":D
    .local v14, "x0i":D
    sub-double v16, v22, v14

    mul-double v16, v16, v0

    .line 6330
    .local v16, "y3r":D
    add-double v24, v14, v22

    mul-double v24, v24, v0

    .line 6331
    .local v24, "y3i":D
    add-int/lit8 v26, p2, 0x2

    aget-wide v26, p1, v26

    add-int/lit8 v28, p2, 0xb

    aget-wide v28, p1, v28

    sub-double v26, v26, v28

    .line 6332
    .end local v22    # "x0r":D
    .local v26, "x0r":D
    add-int/lit8 v22, p2, 0x3

    aget-wide v22, p1, v22

    add-int/lit8 v28, p2, 0xa

    aget-wide v28, p1, v28

    add-double v22, v22, v28

    .line 6333
    .end local v14    # "x0i":D
    .local v22, "x0i":D
    mul-double v14, v2, v26

    mul-double v28, v4, v22

    sub-double v14, v14, v28

    .line 6334
    .local v14, "y4r":D
    mul-double v28, v2, v22

    mul-double v30, v4, v26

    add-double v28, v28, v30

    .line 6335
    .local v28, "y4i":D
    add-int/lit8 v30, p2, 0x2

    aget-wide v30, p1, v30

    add-int/lit8 v32, p2, 0xb

    aget-wide v32, p1, v32

    add-double v30, v30, v32

    .line 6336
    .end local v26    # "x0r":D
    .local v30, "x0r":D
    add-int/lit8 v26, p2, 0x3

    aget-wide v26, p1, v26

    add-int/lit8 v32, p2, 0xa

    aget-wide v32, p1, v32

    sub-double v26, v26, v32

    .line 6337
    .end local v22    # "x0i":D
    .local v26, "x0i":D
    mul-double v22, v4, v30

    mul-double v32, v2, v26

    sub-double v22, v22, v32

    .line 6338
    .local v22, "y5r":D
    mul-double v32, v4, v26

    mul-double v34, v2, v30

    add-double v32, v32, v34

    .line 6339
    .local v32, "y5i":D
    add-int/lit8 v34, p2, 0x6

    aget-wide v34, p1, v34

    add-int/lit8 v36, p2, 0xf

    aget-wide v36, p1, v36

    sub-double v34, v34, v36

    .line 6340
    .end local v30    # "x0r":D
    .local v34, "x0r":D
    add-int/lit8 v30, p2, 0x7

    aget-wide v30, p1, v30

    add-int/lit8 v36, p2, 0xe

    aget-wide v36, p1, v36

    add-double v30, v30, v36

    .line 6341
    .end local v26    # "x0i":D
    .local v30, "x0i":D
    mul-double v26, v4, v34

    mul-double v36, v2, v30

    sub-double v26, v26, v36

    .line 6342
    .local v26, "y6r":D
    mul-double v36, v4, v30

    mul-double v38, v2, v34

    add-double v36, v36, v38

    .line 6343
    .local v36, "y6i":D
    add-int/lit8 v38, p2, 0x6

    aget-wide v38, p1, v38

    add-int/lit8 v40, p2, 0xf

    aget-wide v40, p1, v40

    add-double v38, v38, v40

    .line 6344
    .end local v34    # "x0r":D
    .local v38, "x0r":D
    add-int/lit8 v34, p2, 0x7

    aget-wide v34, p1, v34

    add-int/lit8 v40, p2, 0xe

    aget-wide v40, p1, v40

    sub-double v34, v34, v40

    .line 6345
    .end local v30    # "x0i":D
    .local v34, "x0i":D
    mul-double v30, v2, v38

    mul-double v40, v4, v34

    sub-double v30, v30, v40

    .line 6346
    .local v30, "y7r":D
    mul-double v40, v2, v34

    mul-double v42, v4, v38

    add-double v40, v40, v42

    .line 6347
    .local v40, "y7i":D
    add-double v38, v6, v18

    .line 6348
    add-double v34, v8, v20

    .line 6349
    add-double v42, v14, v26

    .line 6350
    .local v42, "x1r":D
    add-double v44, v28, v36

    .line 6351
    .local v44, "x1i":D
    add-double v46, v38, v42

    aput-wide v46, p1, p2

    .line 6352
    add-int/lit8 v46, p2, 0x1

    add-double v47, v34, v44

    aput-wide v47, p1, v46

    .line 6353
    add-int/lit8 v46, p2, 0x2

    sub-double v47, v38, v42

    aput-wide v47, p1, v46

    .line 6354
    add-int/lit8 v46, p2, 0x3

    sub-double v47, v34, v44

    aput-wide v47, p1, v46

    .line 6355
    sub-double v38, v6, v18

    .line 6356
    sub-double v34, v8, v20

    .line 6357
    sub-double v42, v14, v26

    .line 6358
    sub-double v44, v28, v36

    .line 6359
    add-int/lit8 v46, p2, 0x4

    sub-double v47, v38, v44

    aput-wide v47, p1, v46

    .line 6360
    add-int/lit8 v46, p2, 0x5

    add-double v47, v34, v42

    aput-wide v47, p1, v46

    .line 6361
    add-int/lit8 v46, p2, 0x6

    add-double v47, v38, v44

    aput-wide v47, p1, v46

    .line 6362
    add-int/lit8 v46, p2, 0x7

    sub-double v47, v34, v42

    aput-wide v47, p1, v46

    .line 6363
    sub-double v38, v10, v24

    .line 6364
    add-double v34, v12, v16

    .line 6365
    sub-double v42, v22, v30

    .line 6366
    sub-double v44, v32, v40

    .line 6367
    add-int/lit8 v46, p2, 0x8

    add-double v47, v38, v42

    aput-wide v47, p1, v46

    .line 6368
    add-int/lit8 v46, p2, 0x9

    add-double v47, v34, v44

    aput-wide v47, p1, v46

    .line 6369
    add-int/lit8 v46, p2, 0xa

    sub-double v47, v38, v42

    aput-wide v47, p1, v46

    .line 6370
    add-int/lit8 v46, p2, 0xb

    sub-double v47, v34, v44

    aput-wide v47, p1, v46

    .line 6371
    add-double v38, v10, v24

    .line 6372
    sub-double v34, v12, v16

    .line 6373
    add-double v42, v22, v30

    .line 6374
    add-double v44, v32, v40

    .line 6375
    add-int/lit8 v46, p2, 0xc

    sub-double v47, v38, v44

    aput-wide v47, p1, v46

    .line 6376
    add-int/lit8 v46, p2, 0xd

    add-double v47, v34, v42

    aput-wide v47, p1, v46

    .line 6377
    add-int/lit8 v46, p2, 0xe

    add-double v47, v38, v44

    aput-wide v47, p1, v46

    .line 6378
    add-int/lit8 v46, p2, 0xf

    sub-double v47, v34, v42

    aput-wide v47, p1, v46

    .line 6379
    return-void-no-barrier
.end method

.method private cftf161([DI[DI)V
    .registers 95
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "w"    # [D
    .param p4, "startw"    # I

    .line 5929
    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    .line 5930
    .local v0, "wn4r":D
    add-int/lit8 v2, p4, 0x2

    aget-wide v2, p3, v2

    .line 5931
    .local v2, "wk1r":D
    add-int/lit8 v4, p4, 0x3

    aget-wide v4, p3, v4

    .line 5933
    .local v4, "wk1i":D
    aget-wide v6, p1, p2

    add-int/lit8 v8, p2, 0x10

    aget-wide v8, p1, v8

    add-double/2addr v6, v8

    .line 5934
    .local v6, "x0r":D
    add-int/lit8 v8, p2, 0x1

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x11

    aget-wide v10, p1, v10

    add-double/2addr v8, v10

    .line 5935
    .local v8, "x0i":D
    aget-wide v10, p1, p2

    add-int/lit8 v12, p2, 0x10

    aget-wide v12, p1, v12

    sub-double/2addr v10, v12

    .line 5936
    .local v10, "x1r":D
    add-int/lit8 v12, p2, 0x1

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0x11

    aget-wide v14, p1, v14

    sub-double/2addr v12, v14

    .line 5937
    .local v12, "x1i":D
    add-int/lit8 v14, p2, 0x8

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0x18

    aget-wide v16, p1, v16

    add-double v14, v14, v16

    .line 5938
    .local v14, "x2r":D
    add-int/lit8 v16, p2, 0x9

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0x19

    aget-wide v18, p1, v18

    add-double v16, v16, v18

    .line 5939
    .local v16, "x2i":D
    add-int/lit8 v18, p2, 0x8

    aget-wide v18, p1, v18

    add-int/lit8 v20, p2, 0x18

    aget-wide v20, p1, v20

    sub-double v18, v18, v20

    .line 5940
    .local v18, "x3r":D
    add-int/lit8 v20, p2, 0x9

    aget-wide v20, p1, v20

    add-int/lit8 v22, p2, 0x19

    aget-wide v22, p1, v22

    sub-double v20, v20, v22

    .line 5941
    .local v20, "x3i":D
    add-double v22, v6, v14

    .line 5942
    .local v22, "y0r":D
    add-double v24, v8, v16

    .line 5943
    .local v24, "y0i":D
    sub-double v26, v6, v14

    .line 5944
    .local v26, "y4r":D
    sub-double v28, v8, v16

    .line 5945
    .local v28, "y4i":D
    sub-double v30, v10, v20

    .line 5946
    .local v30, "y8r":D
    add-double v32, v12, v18

    .line 5947
    .local v32, "y8i":D
    add-double v34, v10, v20

    .line 5948
    .local v34, "y12r":D
    sub-double v36, v12, v18

    .line 5949
    .local v36, "y12i":D
    add-int/lit8 v38, p2, 0x2

    aget-wide v38, p1, v38

    add-int/lit8 v40, p2, 0x12

    aget-wide v40, p1, v40

    add-double v38, v38, v40

    .line 5950
    .end local v6    # "x0r":D
    .local v38, "x0r":D
    add-int/lit8 v6, p2, 0x3

    aget-wide v6, p1, v6

    add-int/lit8 v40, p2, 0x13

    aget-wide v40, p1, v40

    add-double v6, v6, v40

    .line 5951
    .end local v8    # "x0i":D
    .local v6, "x0i":D
    add-int/lit8 v8, p2, 0x2

    aget-wide v8, p1, v8

    add-int/lit8 v40, p2, 0x12

    aget-wide v40, p1, v40

    sub-double v8, v8, v40

    .line 5952
    .end local v10    # "x1r":D
    .local v8, "x1r":D
    add-int/lit8 v10, p2, 0x3

    aget-wide v10, p1, v10

    add-int/lit8 v40, p2, 0x13

    aget-wide v40, p1, v40

    sub-double v10, v10, v40

    .line 5953
    .end local v12    # "x1i":D
    .local v10, "x1i":D
    add-int/lit8 v12, p2, 0xa

    aget-wide v12, p1, v12

    add-int/lit8 v40, p2, 0x1a

    aget-wide v40, p1, v40

    add-double v12, v12, v40

    .line 5954
    .end local v14    # "x2r":D
    .local v12, "x2r":D
    add-int/lit8 v14, p2, 0xb

    aget-wide v14, p1, v14

    add-int/lit8 v40, p2, 0x1b

    aget-wide v40, p1, v40

    add-double v14, v14, v40

    .line 5955
    .end local v16    # "x2i":D
    .local v14, "x2i":D
    add-int/lit8 v16, p2, 0xa

    aget-wide v16, p1, v16

    add-int/lit8 v40, p2, 0x1a

    aget-wide v40, p1, v40

    sub-double v16, v16, v40

    .line 5956
    .end local v18    # "x3r":D
    .local v16, "x3r":D
    add-int/lit8 v18, p2, 0xb

    aget-wide v18, p1, v18

    add-int/lit8 v40, p2, 0x1b

    aget-wide v40, p1, v40

    sub-double v18, v18, v40

    .line 5957
    .end local v20    # "x3i":D
    .local v18, "x3i":D
    add-double v20, v38, v12

    .line 5958
    .local v20, "y1r":D
    add-double v40, v6, v14

    .line 5959
    .local v40, "y1i":D
    sub-double v42, v38, v12

    .line 5960
    .local v42, "y5r":D
    sub-double v44, v6, v14

    .line 5961
    .local v44, "y5i":D
    sub-double v38, v8, v18

    .line 5962
    add-double v6, v10, v16

    .line 5963
    mul-double v46, v2, v38

    mul-double v48, v4, v6

    sub-double v46, v46, v48

    .line 5964
    .local v46, "y9r":D
    mul-double v48, v2, v6

    mul-double v50, v4, v38

    add-double v48, v48, v50

    .line 5965
    .local v48, "y9i":D
    add-double v38, v8, v18

    .line 5966
    sub-double v6, v10, v16

    .line 5967
    mul-double v50, v4, v38

    mul-double v52, v2, v6

    sub-double v50, v50, v52

    .line 5968
    .local v50, "y13r":D
    mul-double v52, v4, v6

    mul-double v54, v2, v38

    add-double v52, v52, v54

    .line 5969
    .local v52, "y13i":D
    add-int/lit8 v54, p2, 0x4

    aget-wide v54, p1, v54

    add-int/lit8 v56, p2, 0x14

    aget-wide v56, p1, v56

    add-double v54, v54, v56

    .line 5970
    .end local v38    # "x0r":D
    .local v54, "x0r":D
    add-int/lit8 v38, p2, 0x5

    aget-wide v38, p1, v38

    add-int/lit8 v56, p2, 0x15

    aget-wide v56, p1, v56

    add-double v38, v38, v56

    .line 5971
    .end local v6    # "x0i":D
    .local v38, "x0i":D
    add-int/lit8 v6, p2, 0x4

    aget-wide v6, p1, v6

    add-int/lit8 v56, p2, 0x14

    aget-wide v56, p1, v56

    sub-double v6, v6, v56

    .line 5972
    .end local v8    # "x1r":D
    .local v6, "x1r":D
    add-int/lit8 v8, p2, 0x5

    aget-wide v8, p1, v8

    add-int/lit8 v56, p2, 0x15

    aget-wide v56, p1, v56

    sub-double v8, v8, v56

    .line 5973
    .end local v10    # "x1i":D
    .local v8, "x1i":D
    add-int/lit8 v10, p2, 0xc

    aget-wide v10, p1, v10

    add-int/lit8 v56, p2, 0x1c

    aget-wide v56, p1, v56

    add-double v10, v10, v56

    .line 5974
    .end local v12    # "x2r":D
    .local v10, "x2r":D
    add-int/lit8 v12, p2, 0xd

    aget-wide v12, p1, v12

    add-int/lit8 v56, p2, 0x1d

    aget-wide v56, p1, v56

    add-double v12, v12, v56

    .line 5975
    .end local v14    # "x2i":D
    .local v12, "x2i":D
    add-int/lit8 v14, p2, 0xc

    aget-wide v14, p1, v14

    add-int/lit8 v56, p2, 0x1c

    aget-wide v56, p1, v56

    sub-double v14, v14, v56

    .line 5976
    .end local v16    # "x3r":D
    .local v14, "x3r":D
    add-int/lit8 v16, p2, 0xd

    aget-wide v16, p1, v16

    add-int/lit8 v56, p2, 0x1d

    aget-wide v56, p1, v56

    sub-double v16, v16, v56

    .line 5977
    .end local v18    # "x3i":D
    .local v16, "x3i":D
    add-double v18, v54, v10

    .line 5978
    .local v18, "y2r":D
    add-double v56, v38, v12

    .line 5979
    .local v56, "y2i":D
    sub-double v58, v54, v10

    .line 5980
    .local v58, "y6r":D
    sub-double v60, v38, v12

    .line 5981
    .local v60, "y6i":D
    sub-double v54, v6, v16

    .line 5982
    add-double v38, v8, v14

    .line 5983
    sub-double v62, v54, v38

    mul-double v62, v62, v0

    .line 5984
    .local v62, "y10r":D
    add-double v64, v38, v54

    mul-double v64, v64, v0

    .line 5985
    .local v64, "y10i":D
    add-double v54, v6, v16

    .line 5986
    sub-double v38, v8, v14

    .line 5987
    add-double v66, v54, v38

    mul-double v66, v66, v0

    .line 5988
    .local v66, "y14r":D
    sub-double v68, v38, v54

    mul-double v68, v68, v0

    .line 5989
    .local v68, "y14i":D
    add-int/lit8 v70, p2, 0x6

    aget-wide v70, p1, v70

    add-int/lit8 v72, p2, 0x16

    aget-wide v72, p1, v72

    add-double v70, v70, v72

    .line 5990
    .end local v54    # "x0r":D
    .local v70, "x0r":D
    add-int/lit8 v54, p2, 0x7

    aget-wide v54, p1, v54

    add-int/lit8 v72, p2, 0x17

    aget-wide v72, p1, v72

    add-double v54, v54, v72

    .line 5991
    .end local v38    # "x0i":D
    .local v54, "x0i":D
    add-int/lit8 v38, p2, 0x6

    aget-wide v38, p1, v38

    add-int/lit8 v72, p2, 0x16

    aget-wide v72, p1, v72

    sub-double v38, v38, v72

    .line 5992
    .end local v6    # "x1r":D
    .local v38, "x1r":D
    add-int/lit8 v6, p2, 0x7

    aget-wide v6, p1, v6

    add-int/lit8 v72, p2, 0x17

    aget-wide v72, p1, v72

    sub-double v6, v6, v72

    .line 5993
    .end local v8    # "x1i":D
    .local v6, "x1i":D
    add-int/lit8 v8, p2, 0xe

    aget-wide v8, p1, v8

    add-int/lit8 v72, p2, 0x1e

    aget-wide v72, p1, v72

    add-double v8, v8, v72

    .line 5994
    .end local v10    # "x2r":D
    .local v8, "x2r":D
    add-int/lit8 v10, p2, 0xf

    aget-wide v10, p1, v10

    add-int/lit8 v72, p2, 0x1f

    aget-wide v72, p1, v72

    add-double v10, v10, v72

    .line 5995
    .end local v12    # "x2i":D
    .local v10, "x2i":D
    add-int/lit8 v12, p2, 0xe

    aget-wide v12, p1, v12

    add-int/lit8 v72, p2, 0x1e

    aget-wide v72, p1, v72

    sub-double v12, v12, v72

    .line 5996
    .end local v14    # "x3r":D
    .local v12, "x3r":D
    add-int/lit8 v14, p2, 0xf

    aget-wide v14, p1, v14

    add-int/lit8 v72, p2, 0x1f

    aget-wide v72, p1, v72

    sub-double v14, v14, v72

    .line 5997
    .end local v16    # "x3i":D
    .local v14, "x3i":D
    add-double v16, v70, v8

    .line 5998
    .local v16, "y3r":D
    add-double v72, v54, v10

    .line 5999
    .local v72, "y3i":D
    sub-double v74, v70, v8

    .line 6000
    .local v74, "y7r":D
    sub-double v76, v54, v10

    .line 6001
    .local v76, "y7i":D
    sub-double v70, v38, v14

    .line 6002
    add-double v54, v6, v12

    .line 6003
    mul-double v78, v4, v70

    mul-double v80, v2, v54

    sub-double v78, v78, v80

    .line 6004
    .local v78, "y11r":D
    mul-double v80, v4, v54

    mul-double v82, v2, v70

    add-double v80, v80, v82

    .line 6005
    .local v80, "y11i":D
    add-double v70, v38, v14

    .line 6006
    sub-double v54, v6, v12

    .line 6007
    mul-double v82, v2, v70

    mul-double v84, v4, v54

    sub-double v82, v82, v84

    .line 6008
    .local v82, "y15r":D
    mul-double v84, v2, v54

    mul-double v86, v4, v70

    add-double v84, v84, v86

    .line 6009
    .local v84, "y15i":D
    sub-double v70, v34, v66

    .line 6010
    sub-double v54, v36, v68

    .line 6011
    add-double v38, v34, v66

    .line 6012
    add-double v6, v36, v68

    .line 6013
    sub-double v8, v50, v82

    .line 6014
    sub-double v10, v52, v84

    .line 6015
    add-double v12, v50, v82

    .line 6016
    add-double v14, v52, v84

    .line 6017
    add-int/lit8 v86, p2, 0x18

    add-double v87, v70, v8

    aput-wide v87, p1, v86

    .line 6018
    add-int/lit8 v86, p2, 0x19

    add-double v87, v54, v10

    aput-wide v87, p1, v86

    .line 6019
    add-int/lit8 v86, p2, 0x1a

    sub-double v87, v70, v8

    aput-wide v87, p1, v86

    .line 6020
    add-int/lit8 v86, p2, 0x1b

    sub-double v87, v54, v10

    aput-wide v87, p1, v86

    .line 6021
    add-int/lit8 v86, p2, 0x1c

    sub-double v87, v38, v14

    aput-wide v87, p1, v86

    .line 6022
    add-int/lit8 v86, p2, 0x1d

    add-double v87, v6, v12

    aput-wide v87, p1, v86

    .line 6023
    add-int/lit8 v86, p2, 0x1e

    add-double v87, v38, v14

    aput-wide v87, p1, v86

    .line 6024
    add-int/lit8 v86, p2, 0x1f

    sub-double v87, v6, v12

    aput-wide v87, p1, v86

    .line 6025
    add-double v70, v30, v62

    .line 6026
    add-double v54, v32, v64

    .line 6027
    sub-double v38, v30, v62

    .line 6028
    sub-double v6, v32, v64

    .line 6029
    add-double v8, v46, v78

    .line 6030
    add-double v10, v48, v80

    .line 6031
    sub-double v12, v46, v78

    .line 6032
    sub-double v14, v48, v80

    .line 6033
    add-int/lit8 v86, p2, 0x10

    add-double v87, v70, v8

    aput-wide v87, p1, v86

    .line 6034
    add-int/lit8 v86, p2, 0x11

    add-double v87, v54, v10

    aput-wide v87, p1, v86

    .line 6035
    add-int/lit8 v86, p2, 0x12

    sub-double v87, v70, v8

    aput-wide v87, p1, v86

    .line 6036
    add-int/lit8 v86, p2, 0x13

    sub-double v87, v54, v10

    aput-wide v87, p1, v86

    .line 6037
    add-int/lit8 v86, p2, 0x14

    sub-double v87, v38, v14

    aput-wide v87, p1, v86

    .line 6038
    add-int/lit8 v86, p2, 0x15

    add-double v87, v6, v12

    aput-wide v87, p1, v86

    .line 6039
    add-int/lit8 v86, p2, 0x16

    add-double v87, v38, v14

    aput-wide v87, p1, v86

    .line 6040
    add-int/lit8 v86, p2, 0x17

    sub-double v87, v6, v12

    aput-wide v87, p1, v86

    .line 6041
    sub-double v70, v42, v76

    .line 6042
    add-double v54, v44, v74

    .line 6043
    sub-double v86, v70, v54

    mul-double v86, v86, v0

    .line 6044
    .end local v8    # "x2r":D
    .local v86, "x2r":D
    add-double v8, v54, v70

    mul-double/2addr v8, v0

    .line 6045
    .end local v10    # "x2i":D
    .local v8, "x2i":D
    add-double v10, v42, v76

    .line 6046
    .end local v70    # "x0r":D
    .local v10, "x0r":D
    sub-double v54, v44, v74

    .line 6047
    sub-double v70, v10, v54

    mul-double v70, v70, v0

    .line 6048
    .end local v12    # "x3r":D
    .local v70, "x3r":D
    add-double v12, v54, v10

    mul-double/2addr v12, v0

    .line 6049
    .end local v14    # "x3i":D
    .local v12, "x3i":D
    sub-double v10, v26, v60

    .line 6050
    add-double v14, v28, v58

    .line 6051
    .end local v54    # "x0i":D
    .local v14, "x0i":D
    add-double v38, v26, v60

    .line 6052
    sub-double v6, v28, v58

    .line 6053
    add-int/lit8 v54, p2, 0x8

    add-double v88, v10, v86

    aput-wide v88, p1, v54

    .line 6054
    add-int/lit8 v54, p2, 0x9

    add-double v88, v14, v8

    aput-wide v88, p1, v54

    .line 6055
    add-int/lit8 v54, p2, 0xa

    sub-double v88, v10, v86

    aput-wide v88, p1, v54

    .line 6056
    add-int/lit8 v54, p2, 0xb

    sub-double v88, v14, v8

    aput-wide v88, p1, v54

    .line 6057
    add-int/lit8 v54, p2, 0xc

    sub-double v88, v38, v12

    aput-wide v88, p1, v54

    .line 6058
    add-int/lit8 v54, p2, 0xd

    add-double v88, v6, v70

    aput-wide v88, p1, v54

    .line 6059
    add-int/lit8 v54, p2, 0xe

    add-double v88, v38, v12

    aput-wide v88, p1, v54

    .line 6060
    add-int/lit8 v54, p2, 0xf

    sub-double v88, v6, v70

    aput-wide v88, p1, v54

    .line 6061
    add-double v10, v22, v18

    .line 6062
    add-double v14, v24, v56

    .line 6063
    sub-double v38, v22, v18

    .line 6064
    sub-double v6, v24, v56

    .line 6065
    add-double v54, v20, v16

    .line 6066
    .end local v86    # "x2r":D
    .local v54, "x2r":D
    add-double v8, v40, v72

    .line 6067
    sub-double v70, v20, v16

    .line 6068
    sub-double v12, v40, v72

    .line 6069
    add-double v86, v10, v54

    aput-wide v86, p1, p2

    .line 6070
    add-int/lit8 v86, p2, 0x1

    add-double v87, v14, v8

    aput-wide v87, p1, v86

    .line 6071
    add-int/lit8 v86, p2, 0x2

    sub-double v87, v10, v54

    aput-wide v87, p1, v86

    .line 6072
    add-int/lit8 v86, p2, 0x3

    sub-double v87, v14, v8

    aput-wide v87, p1, v86

    .line 6073
    add-int/lit8 v86, p2, 0x4

    sub-double v87, v38, v12

    aput-wide v87, p1, v86

    .line 6074
    add-int/lit8 v86, p2, 0x5

    add-double v87, v6, v70

    aput-wide v87, p1, v86

    .line 6075
    add-int/lit8 v86, p2, 0x6

    add-double v87, v38, v12

    aput-wide v87, p1, v86

    .line 6076
    add-int/lit8 v86, p2, 0x7

    sub-double v87, v6, v70

    aput-wide v87, p1, v86

    .line 6077
    return-void-no-barrier
.end method

.method private cftf162([DI[DI)V
    .registers 99
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "w"    # [D
    .param p4, "startw"    # I

    .line 6082
    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    .line 6083
    .local v0, "wn4r":D
    add-int/lit8 v2, p4, 0x4

    aget-wide v2, p3, v2

    .line 6084
    .local v2, "wk1r":D
    add-int/lit8 v4, p4, 0x5

    aget-wide v4, p3, v4

    .line 6085
    .local v4, "wk1i":D
    add-int/lit8 v6, p4, 0x6

    aget-wide v6, p3, v6

    .line 6086
    .local v6, "wk3r":D
    add-int/lit8 v8, p4, 0x7

    aget-wide v8, p3, v8

    neg-double v8, v8

    .line 6087
    .local v8, "wk3i":D
    add-int/lit8 v10, p4, 0x8

    aget-wide v10, p3, v10

    .line 6088
    .local v10, "wk2r":D
    add-int/lit8 v12, p4, 0x9

    aget-wide v12, p3, v12

    .line 6089
    .local v12, "wk2i":D
    aget-wide v14, p1, p2

    add-int/lit8 v16, p2, 0x11

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    .line 6090
    .local v14, "x1r":D
    add-int/lit8 v16, p2, 0x1

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0x10

    aget-wide v18, p1, v18

    add-double v16, v16, v18

    .line 6091
    .local v16, "x1i":D
    add-int/lit8 v18, p2, 0x8

    aget-wide v18, p1, v18

    add-int/lit8 v20, p2, 0x19

    aget-wide v20, p1, v20

    sub-double v18, v18, v20

    .line 6092
    .local v18, "x0r":D
    add-int/lit8 v20, p2, 0x9

    aget-wide v20, p1, v20

    add-int/lit8 v22, p2, 0x18

    aget-wide v22, p1, v22

    add-double v20, v20, v22

    .line 6093
    .local v20, "x0i":D
    sub-double v22, v18, v20

    mul-double v22, v22, v0

    .line 6094
    .local v22, "x2r":D
    add-double v24, v20, v18

    mul-double v24, v24, v0

    .line 6095
    .local v24, "x2i":D
    add-double v26, v14, v22

    .line 6096
    .local v26, "y0r":D
    add-double v28, v16, v24

    .line 6097
    .local v28, "y0i":D
    sub-double v30, v14, v22

    .line 6098
    .local v30, "y4r":D
    sub-double v32, v16, v24

    .line 6099
    .local v32, "y4i":D
    aget-wide v34, p1, p2

    add-int/lit8 v36, p2, 0x11

    aget-wide v36, p1, v36

    add-double v34, v34, v36

    .line 6100
    .end local v14    # "x1r":D
    .local v34, "x1r":D
    add-int/lit8 v14, p2, 0x1

    aget-wide v14, p1, v14

    add-int/lit8 v36, p2, 0x10

    aget-wide v36, p1, v36

    sub-double v14, v14, v36

    .line 6101
    .end local v16    # "x1i":D
    .local v14, "x1i":D
    add-int/lit8 v16, p2, 0x8

    aget-wide v16, p1, v16

    add-int/lit8 v36, p2, 0x19

    aget-wide v36, p1, v36

    add-double v16, v16, v36

    .line 6102
    .end local v18    # "x0r":D
    .local v16, "x0r":D
    add-int/lit8 v18, p2, 0x9

    aget-wide v18, p1, v18

    add-int/lit8 v36, p2, 0x18

    aget-wide v36, p1, v36

    sub-double v18, v18, v36

    .line 6103
    .end local v20    # "x0i":D
    .local v18, "x0i":D
    sub-double v20, v16, v18

    mul-double v20, v20, v0

    .line 6104
    .end local v22    # "x2r":D
    .local v20, "x2r":D
    add-double v22, v18, v16

    mul-double v22, v22, v0

    .line 6105
    .end local v24    # "x2i":D
    .local v22, "x2i":D
    sub-double v24, v34, v22

    .line 6106
    .local v24, "y8r":D
    add-double v36, v14, v20

    .line 6107
    .local v36, "y8i":D
    add-double v38, v34, v22

    .line 6108
    .local v38, "y12r":D
    sub-double v40, v14, v20

    .line 6109
    .local v40, "y12i":D
    add-int/lit8 v42, p2, 0x2

    aget-wide v42, p1, v42

    add-int/lit8 v44, p2, 0x13

    aget-wide v44, p1, v44

    sub-double v42, v42, v44

    .line 6110
    .end local v16    # "x0r":D
    .local v42, "x0r":D
    add-int/lit8 v16, p2, 0x3

    aget-wide v16, p1, v16

    add-int/lit8 v44, p2, 0x12

    aget-wide v44, p1, v44

    add-double v16, v16, v44

    .line 6111
    .end local v18    # "x0i":D
    .local v16, "x0i":D
    mul-double v18, v2, v42

    mul-double v44, v4, v16

    sub-double v18, v18, v44

    .line 6112
    .end local v34    # "x1r":D
    .local v18, "x1r":D
    mul-double v34, v2, v16

    mul-double v44, v4, v42

    add-double v34, v34, v44

    .line 6113
    .end local v14    # "x1i":D
    .local v34, "x1i":D
    add-int/lit8 v14, p2, 0xa

    aget-wide v14, p1, v14

    add-int/lit8 v44, p2, 0x1b

    aget-wide v44, p1, v44

    sub-double v14, v14, v44

    .line 6114
    .end local v42    # "x0r":D
    .local v14, "x0r":D
    add-int/lit8 v42, p2, 0xb

    aget-wide v42, p1, v42

    add-int/lit8 v44, p2, 0x1a

    aget-wide v44, p1, v44

    add-double v42, v42, v44

    .line 6115
    .end local v16    # "x0i":D
    .local v42, "x0i":D
    mul-double v16, v8, v14

    mul-double v44, v6, v42

    sub-double v16, v16, v44

    .line 6116
    .end local v20    # "x2r":D
    .local v16, "x2r":D
    mul-double v20, v8, v42

    mul-double v44, v6, v14

    add-double v20, v20, v44

    .line 6117
    .end local v22    # "x2i":D
    .local v20, "x2i":D
    add-double v22, v18, v16

    .line 6118
    .local v22, "y1r":D
    add-double v44, v34, v20

    .line 6119
    .local v44, "y1i":D
    sub-double v46, v18, v16

    .line 6120
    .local v46, "y5r":D
    sub-double v48, v34, v20

    .line 6121
    .local v48, "y5i":D
    add-int/lit8 v50, p2, 0x2

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0x13

    aget-wide v52, p1, v52

    add-double v50, v50, v52

    .line 6122
    .end local v14    # "x0r":D
    .local v50, "x0r":D
    add-int/lit8 v14, p2, 0x3

    aget-wide v14, p1, v14

    add-int/lit8 v52, p2, 0x12

    aget-wide v52, p1, v52

    sub-double v14, v14, v52

    .line 6123
    .end local v42    # "x0i":D
    .local v14, "x0i":D
    mul-double v42, v6, v50

    mul-double v52, v8, v14

    sub-double v42, v42, v52

    .line 6124
    .end local v18    # "x1r":D
    .local v42, "x1r":D
    mul-double v18, v6, v14

    mul-double v52, v8, v50

    add-double v18, v18, v52

    .line 6125
    .end local v34    # "x1i":D
    .local v18, "x1i":D
    add-int/lit8 v34, p2, 0xa

    aget-wide v34, p1, v34

    add-int/lit8 v52, p2, 0x1b

    aget-wide v52, p1, v52

    add-double v34, v34, v52

    .line 6126
    .end local v50    # "x0r":D
    .local v34, "x0r":D
    add-int/lit8 v50, p2, 0xb

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0x1a

    aget-wide v52, p1, v52

    sub-double v50, v50, v52

    .line 6127
    .end local v14    # "x0i":D
    .local v50, "x0i":D
    mul-double v14, v2, v34

    mul-double v52, v4, v50

    add-double v14, v14, v52

    .line 6128
    .end local v16    # "x2r":D
    .local v14, "x2r":D
    mul-double v16, v2, v50

    mul-double v52, v4, v34

    sub-double v16, v16, v52

    .line 6129
    .end local v20    # "x2i":D
    .local v16, "x2i":D
    sub-double v20, v42, v14

    .line 6130
    .local v20, "y9r":D
    sub-double v52, v18, v16

    .line 6131
    .local v52, "y9i":D
    add-double v54, v42, v14

    .line 6132
    .local v54, "y13r":D
    add-double v56, v18, v16

    .line 6133
    .local v56, "y13i":D
    add-int/lit8 v58, p2, 0x4

    aget-wide v58, p1, v58

    add-int/lit8 v60, p2, 0x15

    aget-wide v60, p1, v60

    sub-double v58, v58, v60

    .line 6134
    .end local v34    # "x0r":D
    .local v58, "x0r":D
    add-int/lit8 v34, p2, 0x5

    aget-wide v34, p1, v34

    add-int/lit8 v60, p2, 0x14

    aget-wide v60, p1, v60

    add-double v34, v34, v60

    .line 6135
    .end local v50    # "x0i":D
    .local v34, "x0i":D
    mul-double v50, v10, v58

    mul-double v60, v12, v34

    sub-double v50, v50, v60

    .line 6136
    .end local v42    # "x1r":D
    .local v50, "x1r":D
    mul-double v42, v10, v34

    mul-double v60, v12, v58

    add-double v42, v42, v60

    .line 6137
    .end local v18    # "x1i":D
    .local v42, "x1i":D
    add-int/lit8 v18, p2, 0xc

    aget-wide v18, p1, v18

    add-int/lit8 v60, p2, 0x1d

    aget-wide v60, p1, v60

    sub-double v18, v18, v60

    .line 6138
    .end local v58    # "x0r":D
    .local v18, "x0r":D
    add-int/lit8 v58, p2, 0xd

    aget-wide v58, p1, v58

    add-int/lit8 v60, p2, 0x1c

    aget-wide v60, p1, v60

    add-double v58, v58, v60

    .line 6139
    .end local v34    # "x0i":D
    .local v58, "x0i":D
    mul-double v34, v12, v18

    mul-double v60, v10, v58

    sub-double v34, v34, v60

    .line 6140
    .end local v14    # "x2r":D
    .local v34, "x2r":D
    mul-double v14, v12, v58

    mul-double v60, v10, v18

    add-double v14, v14, v60

    .line 6141
    .end local v16    # "x2i":D
    .local v14, "x2i":D
    add-double v16, v50, v34

    .line 6142
    .local v16, "y2r":D
    add-double v60, v42, v14

    .line 6143
    .local v60, "y2i":D
    sub-double v62, v50, v34

    .line 6144
    .local v62, "y6r":D
    sub-double v64, v42, v14

    .line 6145
    .local v64, "y6i":D
    add-int/lit8 v66, p2, 0x4

    aget-wide v66, p1, v66

    add-int/lit8 v68, p2, 0x15

    aget-wide v68, p1, v68

    add-double v66, v66, v68

    .line 6146
    .end local v18    # "x0r":D
    .local v66, "x0r":D
    add-int/lit8 v18, p2, 0x5

    aget-wide v18, p1, v18

    add-int/lit8 v68, p2, 0x14

    aget-wide v68, p1, v68

    sub-double v18, v18, v68

    .line 6147
    .end local v58    # "x0i":D
    .local v18, "x0i":D
    mul-double v58, v12, v66

    mul-double v68, v10, v18

    sub-double v58, v58, v68

    .line 6148
    .end local v50    # "x1r":D
    .local v58, "x1r":D
    mul-double v50, v12, v18

    mul-double v68, v10, v66

    add-double v50, v50, v68

    .line 6149
    .end local v42    # "x1i":D
    .local v50, "x1i":D
    add-int/lit8 v42, p2, 0xc

    aget-wide v42, p1, v42

    add-int/lit8 v68, p2, 0x1d

    aget-wide v68, p1, v68

    add-double v42, v42, v68

    .line 6150
    .end local v66    # "x0r":D
    .local v42, "x0r":D
    add-int/lit8 v66, p2, 0xd

    aget-wide v66, p1, v66

    add-int/lit8 v68, p2, 0x1c

    aget-wide v68, p1, v68

    sub-double v66, v66, v68

    .line 6151
    .end local v18    # "x0i":D
    .local v66, "x0i":D
    mul-double v18, v10, v42

    mul-double v68, v12, v66

    sub-double v18, v18, v68

    .line 6152
    .end local v34    # "x2r":D
    .local v18, "x2r":D
    mul-double v34, v10, v66

    mul-double v68, v12, v42

    add-double v34, v34, v68

    .line 6153
    .end local v14    # "x2i":D
    .local v34, "x2i":D
    sub-double v14, v58, v18

    .line 6154
    .local v14, "y10r":D
    sub-double v68, v50, v34

    .line 6155
    .local v68, "y10i":D
    add-double v70, v58, v18

    .line 6156
    .local v70, "y14r":D
    add-double v72, v50, v34

    .line 6157
    .local v72, "y14i":D
    add-int/lit8 v74, p2, 0x6

    aget-wide v74, p1, v74

    add-int/lit8 v76, p2, 0x17

    aget-wide v76, p1, v76

    sub-double v74, v74, v76

    .line 6158
    .end local v42    # "x0r":D
    .local v74, "x0r":D
    add-int/lit8 v42, p2, 0x7

    aget-wide v42, p1, v42

    add-int/lit8 v76, p2, 0x16

    aget-wide v76, p1, v76

    add-double v42, v42, v76

    .line 6159
    .end local v66    # "x0i":D
    .local v42, "x0i":D
    mul-double v66, v6, v74

    mul-double v76, v8, v42

    sub-double v66, v66, v76

    .line 6160
    .end local v58    # "x1r":D
    .local v66, "x1r":D
    mul-double v58, v6, v42

    mul-double v76, v8, v74

    add-double v58, v58, v76

    .line 6161
    .end local v50    # "x1i":D
    .local v58, "x1i":D
    add-int/lit8 v50, p2, 0xe

    aget-wide v50, p1, v50

    add-int/lit8 v76, p2, 0x1f

    aget-wide v76, p1, v76

    sub-double v50, v50, v76

    .line 6162
    .end local v74    # "x0r":D
    .local v50, "x0r":D
    add-int/lit8 v74, p2, 0xf

    aget-wide v74, p1, v74

    add-int/lit8 v76, p2, 0x1e

    aget-wide v76, p1, v76

    add-double v74, v74, v76

    .line 6163
    .end local v42    # "x0i":D
    .local v74, "x0i":D
    mul-double v42, v4, v50

    mul-double v76, v2, v74

    sub-double v42, v42, v76

    .line 6164
    .end local v18    # "x2r":D
    .local v42, "x2r":D
    mul-double v18, v4, v74

    mul-double v76, v2, v50

    add-double v18, v18, v76

    .line 6165
    .end local v34    # "x2i":D
    .local v18, "x2i":D
    add-double v34, v66, v42

    .line 6166
    .local v34, "y3r":D
    add-double v76, v58, v18

    .line 6167
    .local v76, "y3i":D
    sub-double v78, v66, v42

    .line 6168
    .local v78, "y7r":D
    sub-double v80, v58, v18

    .line 6169
    .local v80, "y7i":D
    add-int/lit8 v82, p2, 0x6

    aget-wide v82, p1, v82

    add-int/lit8 v84, p2, 0x17

    aget-wide v84, p1, v84

    add-double v82, v82, v84

    .line 6170
    .end local v50    # "x0r":D
    .local v82, "x0r":D
    add-int/lit8 v50, p2, 0x7

    aget-wide v50, p1, v50

    add-int/lit8 v84, p2, 0x16

    aget-wide v84, p1, v84

    sub-double v50, v50, v84

    .line 6171
    .end local v74    # "x0i":D
    .local v50, "x0i":D
    mul-double v74, v4, v82

    mul-double v84, v2, v50

    add-double v74, v74, v84

    .line 6172
    .end local v66    # "x1r":D
    .local v74, "x1r":D
    mul-double v66, v4, v50

    mul-double v84, v2, v82

    sub-double v66, v66, v84

    .line 6173
    .end local v58    # "x1i":D
    .local v66, "x1i":D
    add-int/lit8 v58, p2, 0xe

    aget-wide v58, p1, v58

    add-int/lit8 v84, p2, 0x1f

    aget-wide v84, p1, v84

    add-double v58, v58, v84

    .line 6174
    .end local v82    # "x0r":D
    .local v58, "x0r":D
    add-int/lit8 v82, p2, 0xf

    aget-wide v82, p1, v82

    add-int/lit8 v84, p2, 0x1e

    aget-wide v84, p1, v84

    sub-double v82, v82, v84

    .line 6175
    .end local v50    # "x0i":D
    .local v82, "x0i":D
    mul-double v50, v8, v58

    mul-double v84, v6, v82

    sub-double v50, v50, v84

    .line 6176
    .end local v42    # "x2r":D
    .local v50, "x2r":D
    mul-double v42, v8, v82

    mul-double v84, v6, v58

    add-double v42, v42, v84

    .line 6177
    .end local v18    # "x2i":D
    .local v42, "x2i":D
    add-double v18, v74, v50

    .line 6178
    .local v18, "y11r":D
    add-double v84, v66, v42

    .line 6179
    .local v84, "y11i":D
    sub-double v86, v74, v50

    .line 6180
    .local v86, "y15r":D
    sub-double v88, v66, v42

    .line 6181
    .local v88, "y15i":D
    add-double v74, v26, v16

    .line 6182
    add-double v66, v28, v60

    .line 6183
    add-double v50, v22, v34

    .line 6184
    add-double v42, v44, v76

    .line 6185
    add-double v90, v74, v50

    aput-wide v90, p1, p2

    .line 6186
    add-int/lit8 v90, p2, 0x1

    add-double v91, v66, v42

    aput-wide v91, p1, v90

    .line 6187
    add-int/lit8 v90, p2, 0x2

    sub-double v91, v74, v50

    aput-wide v91, p1, v90

    .line 6188
    add-int/lit8 v90, p2, 0x3

    sub-double v91, v66, v42

    aput-wide v91, p1, v90

    .line 6189
    sub-double v74, v26, v16

    .line 6190
    sub-double v66, v28, v60

    .line 6191
    sub-double v50, v22, v34

    .line 6192
    sub-double v42, v44, v76

    .line 6193
    add-int/lit8 v90, p2, 0x4

    sub-double v91, v74, v42

    aput-wide v91, p1, v90

    .line 6194
    add-int/lit8 v90, p2, 0x5

    add-double v91, v66, v50

    aput-wide v91, p1, v90

    .line 6195
    add-int/lit8 v90, p2, 0x6

    add-double v91, v74, v42

    aput-wide v91, p1, v90

    .line 6196
    add-int/lit8 v90, p2, 0x7

    sub-double v91, v66, v50

    aput-wide v91, p1, v90

    .line 6197
    sub-double v74, v30, v64

    .line 6198
    add-double v66, v32, v62

    .line 6199
    sub-double v58, v46, v80

    .line 6200
    add-double v82, v48, v78

    .line 6201
    sub-double v90, v58, v82

    mul-double v90, v90, v0

    .line 6202
    .end local v50    # "x2r":D
    .local v90, "x2r":D
    add-double v50, v82, v58

    mul-double v50, v50, v0

    .line 6203
    .end local v42    # "x2i":D
    .local v50, "x2i":D
    add-int/lit8 v42, p2, 0x8

    add-double v92, v74, v90

    aput-wide v92, p1, v42

    .line 6204
    add-int/lit8 v42, p2, 0x9

    add-double v92, v66, v50

    aput-wide v92, p1, v42

    .line 6205
    add-int/lit8 v42, p2, 0xa

    sub-double v92, v74, v90

    aput-wide v92, p1, v42

    .line 6206
    add-int/lit8 v42, p2, 0xb

    sub-double v92, v66, v50

    aput-wide v92, p1, v42

    .line 6207
    add-double v42, v30, v64

    .line 6208
    .end local v74    # "x1r":D
    .local v42, "x1r":D
    sub-double v66, v32, v62

    .line 6209
    add-double v58, v46, v80

    .line 6210
    sub-double v74, v48, v78

    .line 6211
    .end local v82    # "x0i":D
    .local v74, "x0i":D
    sub-double v82, v58, v74

    mul-double v82, v82, v0

    .line 6212
    .end local v90    # "x2r":D
    .local v82, "x2r":D
    add-double v90, v74, v58

    mul-double v90, v90, v0

    .line 6213
    .end local v50    # "x2i":D
    .local v90, "x2i":D
    add-int/lit8 v50, p2, 0xc

    sub-double v92, v42, v90

    aput-wide v92, p1, v50

    .line 6214
    add-int/lit8 v50, p2, 0xd

    add-double v92, v66, v82

    aput-wide v92, p1, v50

    .line 6215
    add-int/lit8 v50, p2, 0xe

    add-double v92, v42, v90

    aput-wide v92, p1, v50

    .line 6216
    add-int/lit8 v50, p2, 0xf

    sub-double v92, v66, v82

    aput-wide v92, p1, v50

    .line 6217
    add-double v42, v24, v14

    .line 6218
    add-double v50, v36, v68

    .line 6219
    .end local v66    # "x1i":D
    .local v50, "x1i":D
    sub-double v66, v20, v18

    .line 6220
    .end local v82    # "x2r":D
    .local v66, "x2r":D
    sub-double v82, v52, v84

    .line 6221
    .end local v90    # "x2i":D
    .local v82, "x2i":D
    add-int/lit8 v90, p2, 0x10

    add-double v91, v42, v66

    aput-wide v91, p1, v90

    .line 6222
    add-int/lit8 v90, p2, 0x11

    add-double v91, v50, v82

    aput-wide v91, p1, v90

    .line 6223
    add-int/lit8 v90, p2, 0x12

    sub-double v91, v42, v66

    aput-wide v91, p1, v90

    .line 6224
    add-int/lit8 v90, p2, 0x13

    sub-double v91, v50, v82

    aput-wide v91, p1, v90

    .line 6225
    sub-double v42, v24, v14

    .line 6226
    sub-double v50, v36, v68

    .line 6227
    add-double v66, v20, v18

    .line 6228
    add-double v82, v52, v84

    .line 6229
    add-int/lit8 v90, p2, 0x14

    sub-double v91, v42, v82

    aput-wide v91, p1, v90

    .line 6230
    add-int/lit8 v90, p2, 0x15

    add-double v91, v50, v66

    aput-wide v91, p1, v90

    .line 6231
    add-int/lit8 v90, p2, 0x16

    add-double v91, v42, v82

    aput-wide v91, p1, v90

    .line 6232
    add-int/lit8 v90, p2, 0x17

    sub-double v91, v50, v66

    aput-wide v91, p1, v90

    .line 6233
    sub-double v42, v38, v72

    .line 6234
    add-double v50, v40, v70

    .line 6235
    add-double v58, v54, v88

    .line 6236
    sub-double v74, v56, v86

    .line 6237
    sub-double v90, v58, v74

    mul-double v90, v90, v0

    .line 6238
    .end local v66    # "x2r":D
    .local v90, "x2r":D
    add-double v66, v74, v58

    mul-double v66, v66, v0

    .line 6239
    .end local v82    # "x2i":D
    .local v66, "x2i":D
    add-int/lit8 v82, p2, 0x18

    add-double v92, v42, v90

    aput-wide v92, p1, v82

    .line 6240
    add-int/lit8 v82, p2, 0x19

    add-double v92, v50, v66

    aput-wide v92, p1, v82

    .line 6241
    add-int/lit8 v82, p2, 0x1a

    sub-double v92, v42, v90

    aput-wide v92, p1, v82

    .line 6242
    add-int/lit8 v82, p2, 0x1b

    sub-double v92, v50, v66

    aput-wide v92, p1, v82

    .line 6243
    add-double v42, v38, v72

    .line 6244
    sub-double v50, v40, v70

    .line 6245
    sub-double v58, v54, v88

    .line 6246
    add-double v74, v56, v86

    .line 6247
    sub-double v82, v58, v74

    mul-double v82, v82, v0

    .line 6248
    .end local v90    # "x2r":D
    .local v82, "x2r":D
    add-double v90, v74, v58

    mul-double v90, v90, v0

    .line 6249
    .end local v66    # "x2i":D
    .local v90, "x2i":D
    add-int/lit8 v66, p2, 0x1c

    sub-double v92, v42, v90

    aput-wide v92, p1, v66

    .line 6250
    add-int/lit8 v66, p2, 0x1d

    add-double v92, v50, v82

    aput-wide v92, p1, v66

    .line 6251
    add-int/lit8 v66, p2, 0x1e

    add-double v92, v42, v90

    aput-wide v92, p1, v66

    .line 6252
    add-int/lit8 v66, p2, 0x1f

    sub-double v92, v50, v82

    aput-wide v92, p1, v66

    .line 6253
    return-void-no-barrier
.end method

.method private cftf1st(I[DI[DI)V
    .registers 84
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "w"    # [D
    .param p5, "startw"    # I

    .line 5035
    shr-int/lit8 v4, p1, 0x3

    .line 5036
    .local v4, "mh":I
    const/4 v5, 0x2

    mul-int v6, v5, v4

    .line 5037
    .local v6, "m":I
    move v7, v6

    .line 5038
    .local v7, "j1":I
    add-int v8, v7, v6

    .line 5039
    .local v8, "j2":I
    add-int v9, v8, v6

    .line 5040
    .local v9, "j3":I
    add-int v10, p3, v7

    .line 5041
    .local v10, "idx1":I
    add-int v11, p3, v8

    .line 5042
    .local v11, "idx2":I
    add-int v12, p3, v9

    .line 5043
    .local v12, "idx3":I
    aget-wide v13, p2, p3

    aget-wide v15, p2, v11

    add-double/2addr v13, v15

    .line 5044
    .local v13, "x0r":D
    add-int/lit8 v15, p3, 0x1

    aget-wide v15, p2, v15

    add-int/lit8 v17, v11, 0x1

    aget-wide v17, p2, v17

    add-double v15, v15, v17

    .line 5045
    .local v15, "x0i":D
    aget-wide v17, p2, p3

    aget-wide v19, p2, v11

    sub-double v17, v17, v19

    .line 5046
    .local v17, "x1r":D
    add-int/lit8 v19, p3, 0x1

    aget-wide v19, p2, v19

    add-int/lit8 v21, v11, 0x1

    aget-wide v21, p2, v21

    sub-double v19, v19, v21

    .line 5047
    .local v19, "x1i":D
    aget-wide v21, p2, v10

    aget-wide v23, p2, v12

    add-double v21, v21, v23

    .line 5048
    .local v21, "x2r":D
    add-int/lit8 v23, v10, 0x1

    aget-wide v23, p2, v23

    add-int/lit8 v25, v12, 0x1

    aget-wide v25, p2, v25

    add-double v23, v23, v25

    .line 5049
    .local v23, "x2i":D
    aget-wide v25, p2, v10

    aget-wide v27, p2, v12

    sub-double v25, v25, v27

    .line 5050
    .local v25, "x3r":D
    add-int/lit8 v27, v10, 0x1

    aget-wide v27, p2, v27

    add-int/lit8 v29, v12, 0x1

    aget-wide v29, p2, v29

    sub-double v27, v27, v29

    .line 5051
    .local v27, "x3i":D
    add-double v29, v13, v21

    aput-wide v29, p2, p3

    .line 5052
    add-int/lit8 v29, p3, 0x1

    add-double v30, v15, v23

    aput-wide v30, p2, v29

    .line 5053
    sub-double v29, v13, v21

    aput-wide v29, p2, v10

    .line 5054
    add-int/lit8 v29, v10, 0x1

    sub-double v30, v15, v23

    aput-wide v30, p2, v29

    .line 5055
    sub-double v29, v17, v27

    aput-wide v29, p2, v11

    .line 5056
    add-int/lit8 v29, v11, 0x1

    add-double v30, v19, v25

    aput-wide v30, p2, v29

    .line 5057
    add-double v29, v17, v27

    aput-wide v29, p2, v12

    .line 5058
    add-int/lit8 v29, v12, 0x1

    sub-double v30, v19, v25

    aput-wide v30, p2, v29

    .line 5059
    add-int/lit8 v29, p5, 0x1

    move/from16 v33, v6

    aget-wide v5, p4, v29

    .line 5060
    .end local v6    # "m":I
    .local v5, "wn4r":D
    .local v33, "m":I
    add-int/lit8 v29, p5, 0x2

    aget-wide v29, p4, v29

    .line 5061
    .local v29, "csc1":D
    add-int/lit8 v31, p5, 0x3

    aget-wide v34, p4, v31

    .line 5062
    .local v34, "csc3":D
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    .line 5063
    .local v36, "wd1r":D
    const-wide/16 v38, 0x0

    .line 5064
    .local v38, "wd1i":D
    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    .line 5065
    .local v40, "wd3r":D
    const-wide/16 v42, 0x0

    .line 5066
    .local v42, "wd3i":D
    const/16 v31, 0x0

    .line 5067
    .local v31, "k":I
    move-wide/from16 v44, v27

    move-wide/from16 v26, v25

    move-wide/from16 v24, v23

    move-wide/from16 v22, v21

    move-wide/from16 v20, v19

    move-wide/from16 v18, v17

    move-wide/from16 v16, v15

    move-wide v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    const/4 v7, 0x2

    .end local v15    # "x0i":D
    .end local v17    # "x1r":D
    .end local v19    # "x1i":D
    .end local v21    # "x2r":D
    .end local v23    # "x2i":D
    .end local v25    # "x3r":D
    .end local v27    # "x3i":D
    .local v7, "j":I
    .local v8, "j1":I
    .local v9, "j2":I
    .local v10, "j3":I
    .local v11, "idx1":I
    .local v12, "idx2":I
    .local v13, "idx3":I
    .local v14, "x0r":D
    .local v16, "x0i":D
    .local v18, "x1r":D
    .local v20, "x1i":D
    .local v22, "x2r":D
    .local v24, "x2i":D
    .local v26, "x3r":D
    .local v44, "x3i":D
    :goto_a5
    add-int/lit8 v3, v4, -0x2

    if-ge v7, v3, :cond_341

    .line 5068
    add-int/lit8 v31, v31, 0x4

    .line 5069
    add-int v3, p5, v31

    .line 5070
    .local v3, "idx4":I
    aget-wide v46, p4, v3

    add-double v46, v36, v46

    mul-double v46, v46, v29

    .line 5071
    .local v46, "wk1r":D
    add-int/lit8 v28, v3, 0x1

    aget-wide v48, p4, v28

    add-double v48, v38, v48

    mul-double v48, v48, v29

    .line 5072
    .local v48, "wk1i":D
    add-int/lit8 v28, v3, 0x2

    aget-wide v50, p4, v28

    add-double v50, v40, v50

    mul-double v50, v50, v34

    .line 5073
    .local v50, "wk3r":D
    add-int/lit8 v28, v3, 0x3

    aget-wide v52, p4, v28

    add-double v52, v42, v52

    mul-double v52, v52, v34

    .line 5074
    .local v52, "wk3i":D
    aget-wide v36, p4, v3

    .line 5075
    add-int/lit8 v28, v3, 0x1

    aget-wide v38, p4, v28

    .line 5076
    add-int/lit8 v28, v3, 0x2

    aget-wide v40, p4, v28

    .line 5077
    add-int/lit8 v28, v3, 0x3

    aget-wide v42, p4, v28

    .line 5078
    add-int v8, v7, v33

    .line 5079
    add-int v9, v8, v33

    .line 5080
    add-int v10, v9, v33

    .line 5081
    add-int v11, p3, v8

    .line 5082
    add-int v12, p3, v9

    .line 5083
    add-int v13, p3, v10

    .line 5084
    add-int v28, p3, v7

    .line 5085
    .local v28, "idx5":I
    aget-wide v54, p2, v28

    aget-wide v56, p2, v12

    add-double v54, v54, v56

    .line 5086
    .end local v14    # "x0r":D
    .local v54, "x0r":D
    add-int/lit8 v14, v28, 0x1

    aget-wide v14, p2, v14

    add-int/lit8 v56, v12, 0x1

    aget-wide v56, p2, v56

    add-double v14, v14, v56

    .line 5087
    .end local v16    # "x0i":D
    .local v14, "x0i":D
    aget-wide v16, p2, v28

    aget-wide v56, p2, v12

    sub-double v16, v16, v56

    .line 5088
    .end local v18    # "x1r":D
    .local v16, "x1r":D
    add-int/lit8 v18, v28, 0x1

    aget-wide v18, p2, v18

    add-int/lit8 v56, v12, 0x1

    aget-wide v56, p2, v56

    sub-double v18, v18, v56

    .line 5089
    .end local v20    # "x1i":D
    .local v18, "x1i":D
    add-int/lit8 v20, v28, 0x2

    aget-wide v20, p2, v20

    add-int/lit8 v56, v12, 0x2

    aget-wide v56, p2, v56

    add-double v20, v20, v56

    .line 5090
    .local v20, "y0r":D
    add-int/lit8 v56, v28, 0x3

    aget-wide v56, p2, v56

    add-int/lit8 v58, v12, 0x3

    aget-wide v58, p2, v58

    add-double v56, v56, v58

    .line 5091
    .local v56, "y0i":D
    add-int/lit8 v58, v28, 0x2

    aget-wide v58, p2, v58

    add-int/lit8 v60, v12, 0x2

    aget-wide v60, p2, v60

    sub-double v58, v58, v60

    .line 5092
    .local v58, "y1r":D
    add-int/lit8 v60, v28, 0x3

    aget-wide v60, p2, v60

    add-int/lit8 v62, v12, 0x3

    aget-wide v62, p2, v62

    sub-double v60, v60, v62

    .line 5093
    .local v60, "y1i":D
    aget-wide v62, p2, v11

    aget-wide v64, p2, v13

    add-double v62, v62, v64

    .line 5094
    .end local v22    # "x2r":D
    .local v62, "x2r":D
    add-int/lit8 v22, v11, 0x1

    aget-wide v22, p2, v22

    add-int/lit8 v64, v13, 0x1

    aget-wide v64, p2, v64

    add-double v22, v22, v64

    .line 5095
    .end local v24    # "x2i":D
    .local v22, "x2i":D
    aget-wide v24, p2, v11

    aget-wide v64, p2, v13

    sub-double v24, v24, v64

    .line 5096
    .end local v26    # "x3r":D
    .local v24, "x3r":D
    add-int/lit8 v26, v11, 0x1

    aget-wide v26, p2, v26

    add-int/lit8 v64, v13, 0x1

    aget-wide v64, p2, v64

    sub-double v26, v26, v64

    .line 5097
    .end local v44    # "x3i":D
    .local v26, "x3i":D
    add-int/lit8 v44, v11, 0x2

    aget-wide v44, p2, v44

    add-int/lit8 v64, v13, 0x2

    aget-wide v64, p2, v64

    add-double v44, v44, v64

    .line 5098
    .local v44, "y2r":D
    add-int/lit8 v64, v11, 0x3

    aget-wide v64, p2, v64

    add-int/lit8 v66, v13, 0x3

    aget-wide v66, p2, v66

    add-double v64, v64, v66

    .line 5099
    .local v64, "y2i":D
    add-int/lit8 v66, v11, 0x2

    aget-wide v66, p2, v66

    add-int/lit8 v68, v13, 0x2

    aget-wide v68, p2, v68

    sub-double v66, v66, v68

    .line 5100
    .local v66, "y3r":D
    add-int/lit8 v68, v11, 0x3

    aget-wide v68, p2, v68

    add-int/lit8 v70, v13, 0x3

    aget-wide v70, p2, v70

    sub-double v68, v68, v70

    .line 5101
    .local v68, "y3i":D
    add-double v70, v54, v62

    aput-wide v70, p2, v28

    .line 5102
    add-int/lit8 v70, v28, 0x1

    add-double v71, v14, v22

    aput-wide v71, p2, v70

    .line 5103
    add-int/lit8 v70, v28, 0x2

    add-double v71, v20, v44

    aput-wide v71, p2, v70

    .line 5104
    add-int/lit8 v70, v28, 0x3

    add-double v71, v56, v64

    aput-wide v71, p2, v70

    .line 5105
    sub-double v70, v54, v62

    aput-wide v70, p2, v11

    .line 5106
    add-int/lit8 v70, v11, 0x1

    sub-double v71, v14, v22

    aput-wide v71, p2, v70

    .line 5107
    add-int/lit8 v70, v11, 0x2

    sub-double v71, v20, v44

    aput-wide v71, p2, v70

    .line 5108
    add-int/lit8 v70, v11, 0x3

    sub-double v71, v56, v64

    aput-wide v71, p2, v70

    .line 5109
    sub-double v54, v16, v26

    .line 5110
    add-double v14, v18, v24

    .line 5111
    mul-double v70, v46, v54

    mul-double v72, v48, v14

    sub-double v70, v70, v72

    aput-wide v70, p2, v12

    .line 5112
    add-int/lit8 v70, v12, 0x1

    mul-double v71, v46, v14

    mul-double v73, v48, v54

    add-double v71, v71, v73

    aput-wide v71, p2, v70

    .line 5113
    sub-double v54, v58, v68

    .line 5114
    add-double v14, v60, v66

    .line 5115
    add-int/lit8 v70, v12, 0x2

    mul-double v71, v36, v54

    mul-double v73, v38, v14

    sub-double v71, v71, v73

    aput-wide v71, p2, v70

    .line 5116
    add-int/lit8 v70, v12, 0x3

    mul-double v71, v36, v14

    mul-double v73, v38, v54

    add-double v71, v71, v73

    aput-wide v71, p2, v70

    .line 5117
    add-double v54, v16, v26

    .line 5118
    sub-double v14, v18, v24

    .line 5119
    mul-double v70, v50, v54

    mul-double v72, v52, v14

    add-double v70, v70, v72

    aput-wide v70, p2, v13

    .line 5120
    add-int/lit8 v70, v13, 0x1

    mul-double v71, v50, v14

    mul-double v73, v52, v54

    sub-double v71, v71, v73

    aput-wide v71, p2, v70

    .line 5121
    add-double v54, v58, v68

    .line 5122
    sub-double v14, v60, v66

    .line 5123
    add-int/lit8 v70, v13, 0x2

    mul-double v71, v40, v54

    mul-double v73, v42, v14

    add-double v71, v71, v73

    aput-wide v71, p2, v70

    .line 5124
    add-int/lit8 v70, v13, 0x3

    mul-double v71, v40, v14

    mul-double v73, v42, v54

    sub-double v71, v71, v73

    aput-wide v71, p2, v70

    .line 5125
    sub-int v70, v33, v7

    .line 5126
    .local v70, "j0":I
    add-int v8, v70, v33

    .line 5127
    add-int v9, v8, v33

    .line 5128
    add-int v10, v9, v33

    .line 5129
    add-int v71, p3, v70

    .line 5130
    .local v71, "idx0":I
    add-int v11, p3, v8

    .line 5131
    add-int v12, p3, v9

    .line 5132
    add-int v13, p3, v10

    .line 5133
    aget-wide v72, p2, v71

    aget-wide v74, p2, v12

    add-double v72, v72, v74

    .line 5134
    .end local v54    # "x0r":D
    .local v72, "x0r":D
    add-int/lit8 v54, v71, 0x1

    aget-wide v54, p2, v54

    add-int/lit8 v74, v12, 0x1

    aget-wide v74, p2, v74

    add-double v54, v54, v74

    .line 5135
    .end local v14    # "x0i":D
    .local v54, "x0i":D
    aget-wide v14, p2, v71

    aget-wide v74, p2, v12

    sub-double v14, v14, v74

    .line 5136
    .end local v16    # "x1r":D
    .local v14, "x1r":D
    add-int/lit8 v16, v71, 0x1

    aget-wide v16, p2, v16

    add-int/lit8 v74, v12, 0x1

    aget-wide v74, p2, v74

    sub-double v16, v16, v74

    .line 5137
    .end local v18    # "x1i":D
    .local v16, "x1i":D
    add-int/lit8 v18, v71, -0x2

    aget-wide v18, p2, v18

    add-int/lit8 v74, v12, -0x2

    aget-wide v74, p2, v74

    add-double v18, v18, v74

    .line 5138
    .end local v20    # "y0r":D
    .local v18, "y0r":D
    add-int/lit8 v20, v71, -0x1

    aget-wide v20, p2, v20

    add-int/lit8 v74, v12, -0x1

    aget-wide v74, p2, v74

    add-double v20, v20, v74

    .line 5139
    .end local v56    # "y0i":D
    .local v20, "y0i":D
    add-int/lit8 v56, v71, -0x2

    aget-wide v56, p2, v56

    add-int/lit8 v74, v12, -0x2

    aget-wide v74, p2, v74

    sub-double v56, v56, v74

    .line 5140
    .end local v58    # "y1r":D
    .local v56, "y1r":D
    add-int/lit8 v58, v71, -0x1

    aget-wide v58, p2, v58

    add-int/lit8 v74, v12, -0x1

    aget-wide v74, p2, v74

    sub-double v58, v58, v74

    .line 5141
    .end local v60    # "y1i":D
    .local v58, "y1i":D
    aget-wide v60, p2, v11

    aget-wide v74, p2, v13

    add-double v60, v60, v74

    .line 5142
    .end local v62    # "x2r":D
    .local v60, "x2r":D
    add-int/lit8 v62, v11, 0x1

    aget-wide v62, p2, v62

    add-int/lit8 v74, v13, 0x1

    aget-wide v74, p2, v74

    add-double v22, v62, v74

    .line 5143
    aget-wide v62, p2, v11

    aget-wide v74, p2, v13

    sub-double v24, v62, v74

    .line 5144
    add-int/lit8 v62, v11, 0x1

    aget-wide v62, p2, v62

    add-int/lit8 v74, v13, 0x1

    aget-wide v74, p2, v74

    sub-double v26, v62, v74

    .line 5145
    add-int/lit8 v62, v11, -0x2

    aget-wide v62, p2, v62

    add-int/lit8 v74, v13, -0x2

    aget-wide v74, p2, v74

    add-double v62, v62, v74

    .line 5146
    .end local v44    # "y2r":D
    .local v62, "y2r":D
    add-int/lit8 v44, v11, -0x1

    aget-wide v44, p2, v44

    add-int/lit8 v74, v13, -0x1

    aget-wide v74, p2, v74

    add-double v44, v44, v74

    .line 5147
    .end local v64    # "y2i":D
    .local v44, "y2i":D
    add-int/lit8 v64, v11, -0x2

    aget-wide v64, p2, v64

    add-int/lit8 v74, v13, -0x2

    aget-wide v74, p2, v74

    sub-double v64, v64, v74

    .line 5148
    .end local v66    # "y3r":D
    .local v64, "y3r":D
    add-int/lit8 v66, v11, -0x1

    aget-wide v66, p2, v66

    add-int/lit8 v74, v13, -0x1

    aget-wide v74, p2, v74

    sub-double v66, v66, v74

    .line 5149
    .end local v68    # "y3i":D
    .local v66, "y3i":D
    add-double v68, v72, v60

    aput-wide v68, p2, v71

    .line 5150
    add-int/lit8 v68, v71, 0x1

    add-double v74, v54, v22

    aput-wide v74, p2, v68

    .line 5151
    add-int/lit8 v68, v71, -0x2

    add-double v74, v18, v62

    aput-wide v74, p2, v68

    .line 5152
    add-int/lit8 v68, v71, -0x1

    add-double v74, v20, v44

    aput-wide v74, p2, v68

    .line 5153
    sub-double v68, v72, v60

    aput-wide v68, p2, v11

    .line 5154
    add-int/lit8 v68, v11, 0x1

    sub-double v74, v54, v22

    aput-wide v74, p2, v68

    .line 5155
    add-int/lit8 v68, v11, -0x2

    sub-double v74, v18, v62

    aput-wide v74, p2, v68

    .line 5156
    add-int/lit8 v68, v11, -0x1

    sub-double v74, v20, v44

    aput-wide v74, p2, v68

    .line 5157
    sub-double v68, v14, v26

    .line 5158
    .end local v72    # "x0r":D
    .local v68, "x0r":D
    add-double v54, v16, v24

    .line 5159
    mul-double v72, v48, v68

    mul-double v74, v46, v54

    sub-double v72, v72, v74

    aput-wide v72, p2, v12

    .line 5160
    add-int/lit8 v72, v12, 0x1

    mul-double v73, v48, v54

    mul-double v75, v46, v68

    add-double v73, v73, v75

    aput-wide v73, p2, v72

    .line 5161
    sub-double v68, v56, v66

    .line 5162
    add-double v54, v58, v64

    .line 5163
    add-int/lit8 v72, v12, -0x2

    mul-double v73, v38, v68

    mul-double v75, v36, v54

    sub-double v73, v73, v75

    aput-wide v73, p2, v72

    .line 5164
    add-int/lit8 v72, v12, -0x1

    mul-double v73, v38, v54

    mul-double v75, v36, v68

    add-double v73, v73, v75

    aput-wide v73, p2, v72

    .line 5165
    add-double v68, v14, v26

    .line 5166
    sub-double v54, v16, v24

    .line 5167
    mul-double v72, v52, v68

    mul-double v74, v50, v54

    add-double v72, v72, v74

    aput-wide v72, p2, v13

    .line 5168
    add-int/lit8 v72, v13, 0x1

    mul-double v73, v52, v54

    mul-double v75, v50, v68

    sub-double v73, v73, v75

    aput-wide v73, p2, v72

    .line 5169
    add-double v68, v56, v66

    .line 5170
    sub-double v54, v58, v64

    .line 5171
    add-int v72, p3, v10

    const/16 v32, 0x2

    add-int/lit8 v72, v72, -0x2

    mul-double v73, v42, v68

    mul-double v75, v40, v54

    add-double v73, v73, v75

    aput-wide v73, p2, v72

    .line 5172
    add-int v72, p3, v10

    add-int/lit8 v72, v72, -0x1

    mul-double v73, v42, v54

    mul-double v75, v40, v68

    sub-double v73, v73, v75

    aput-wide v73, p2, v72

    .line 5067
    add-int/lit8 v7, v7, 0x4

    move-wide/from16 v18, v14

    move-wide/from16 v20, v16

    move-wide/from16 v44, v26

    move-wide/from16 v16, v54

    move-wide/from16 v14, v68

    move-wide/from16 v26, v24

    move-wide/from16 v24, v22

    move-wide/from16 v22, v60

    goto/16 :goto_a5

    .line 5174
    .end local v3    # "idx4":I
    .end local v7    # "j":I
    .end local v28    # "idx5":I
    .end local v46    # "wk1r":D
    .end local v48    # "wk1i":D
    .end local v50    # "wk3r":D
    .end local v52    # "wk3i":D
    .end local v54    # "x0i":D
    .end local v56    # "y1r":D
    .end local v58    # "y1i":D
    .end local v60    # "x2r":D
    .end local v62    # "y2r":D
    .end local v64    # "y3r":D
    .end local v66    # "y3i":D
    .end local v68    # "x0r":D
    .end local v70    # "j0":I
    .end local v71    # "idx0":I
    .local v14, "x0r":D
    .local v16, "x0i":D
    .local v18, "x1r":D
    .local v20, "x1i":D
    .local v22, "x2r":D
    .local v24, "x2i":D
    .local v26, "x3r":D
    .local v44, "x3i":D
    :cond_341
    add-double v46, v36, v5

    mul-double v46, v46, v29

    .line 5175
    .restart local v46    # "wk1r":D
    add-double v48, v38, v5

    mul-double v48, v48, v29

    .line 5176
    .restart local v48    # "wk1i":D
    sub-double v50, v40, v5

    mul-double v50, v50, v34

    .line 5177
    .restart local v50    # "wk3r":D
    sub-double v52, v42, v5

    mul-double v52, v52, v34

    .line 5178
    .restart local v52    # "wk3i":D
    move v3, v4

    .line 5179
    .local v3, "j0":I
    add-int v7, v3, v33

    .line 5180
    .end local v8    # "j1":I
    .local v7, "j1":I
    add-int v8, v7, v33

    .line 5181
    .end local v9    # "j2":I
    .local v8, "j2":I
    add-int v9, v8, v33

    .line 5182
    .end local v10    # "j3":I
    .local v9, "j3":I
    add-int v10, p3, v3

    .line 5183
    .local v10, "idx0":I
    add-int v11, p3, v7

    .line 5184
    add-int v12, p3, v8

    .line 5185
    add-int v13, p3, v9

    .line 5186
    add-int/lit8 v28, v10, -0x2

    aget-wide v54, p2, v28

    add-int/lit8 v28, v12, -0x2

    aget-wide v56, p2, v28

    add-double v54, v54, v56

    .line 5187
    .end local v14    # "x0r":D
    .local v54, "x0r":D
    add-int/lit8 v14, v10, -0x1

    aget-wide v14, p2, v14

    add-int/lit8 v28, v12, -0x1

    aget-wide v56, p2, v28

    add-double v14, v14, v56

    .line 5188
    .end local v16    # "x0i":D
    .local v14, "x0i":D
    add-int/lit8 v16, v10, -0x2

    aget-wide v16, p2, v16

    add-int/lit8 v28, v12, -0x2

    aget-wide v56, p2, v28

    sub-double v16, v16, v56

    .line 5189
    .end local v18    # "x1r":D
    .local v16, "x1r":D
    add-int/lit8 v18, v10, -0x1

    aget-wide v18, p2, v18

    add-int/lit8 v28, v12, -0x1

    aget-wide v56, p2, v28

    sub-double v18, v18, v56

    .line 5190
    .end local v20    # "x1i":D
    .local v18, "x1i":D
    add-int/lit8 v20, v11, -0x2

    aget-wide v20, p2, v20

    add-int/lit8 v28, v13, -0x2

    aget-wide v56, p2, v28

    add-double v20, v20, v56

    .line 5191
    .end local v22    # "x2r":D
    .local v20, "x2r":D
    add-int/lit8 v22, v11, -0x1

    aget-wide v22, p2, v22

    add-int/lit8 v28, v13, -0x1

    aget-wide v56, p2, v28

    add-double v22, v22, v56

    .line 5192
    .end local v24    # "x2i":D
    .local v22, "x2i":D
    add-int/lit8 v24, v11, -0x2

    aget-wide v24, p2, v24

    add-int/lit8 v28, v13, -0x2

    aget-wide v56, p2, v28

    sub-double v24, v24, v56

    .line 5193
    .end local v26    # "x3r":D
    .local v24, "x3r":D
    add-int/lit8 v26, v11, -0x1

    aget-wide v26, p2, v26

    add-int/lit8 v28, v13, -0x1

    aget-wide v56, p2, v28

    sub-double v26, v26, v56

    .line 5194
    .end local v44    # "x3i":D
    .local v26, "x3i":D
    add-int/lit8 v28, v10, -0x2

    add-double v44, v54, v20

    aput-wide v44, p2, v28

    .line 5195
    add-int/lit8 v28, v10, -0x1

    add-double v44, v14, v22

    aput-wide v44, p2, v28

    .line 5196
    add-int/lit8 v28, v11, -0x2

    sub-double v44, v54, v20

    aput-wide v44, p2, v28

    .line 5197
    add-int/lit8 v28, v11, -0x1

    sub-double v44, v14, v22

    aput-wide v44, p2, v28

    .line 5198
    sub-double v44, v16, v26

    .line 5199
    .end local v54    # "x0r":D
    .local v44, "x0r":D
    add-double v14, v18, v24

    .line 5200
    add-int/lit8 v28, v12, -0x2

    mul-double v54, v46, v44

    mul-double v56, v48, v14

    sub-double v54, v54, v56

    aput-wide v54, p2, v28

    .line 5201
    add-int/lit8 v28, v12, -0x1

    mul-double v54, v46, v14

    mul-double v56, v48, v44

    add-double v54, v54, v56

    aput-wide v54, p2, v28

    .line 5202
    add-double v44, v16, v26

    .line 5203
    sub-double v14, v18, v24

    .line 5204
    add-int/lit8 v28, v13, -0x2

    mul-double v54, v50, v44

    mul-double v56, v52, v14

    add-double v54, v54, v56

    aput-wide v54, p2, v28

    .line 5205
    add-int/lit8 v28, v13, -0x1

    mul-double v54, v50, v14

    mul-double v56, v52, v44

    sub-double v54, v54, v56

    aput-wide v54, p2, v28

    .line 5206
    aget-wide v54, p2, v10

    aget-wide v56, p2, v12

    add-double v54, v54, v56

    .line 5207
    .end local v44    # "x0r":D
    .restart local v54    # "x0r":D
    add-int/lit8 v28, v10, 0x1

    aget-wide v44, p2, v28

    add-int/lit8 v28, v12, 0x1

    aget-wide v56, p2, v28

    add-double v44, v44, v56

    .line 5208
    .end local v14    # "x0i":D
    .local v44, "x0i":D
    aget-wide v14, p2, v10

    aget-wide v56, p2, v12

    sub-double v14, v14, v56

    .line 5209
    .end local v16    # "x1r":D
    .local v14, "x1r":D
    add-int/lit8 v16, v10, 0x1

    aget-wide v16, p2, v16

    add-int/lit8 v28, v12, 0x1

    aget-wide v56, p2, v28

    sub-double v16, v16, v56

    .line 5210
    .end local v18    # "x1i":D
    .local v16, "x1i":D
    aget-wide v18, p2, v11

    aget-wide v56, p2, v13

    add-double v18, v18, v56

    .line 5211
    .end local v20    # "x2r":D
    .local v18, "x2r":D
    add-int/lit8 v20, v11, 0x1

    aget-wide v20, p2, v20

    add-int/lit8 v28, v13, 0x1

    aget-wide v56, p2, v28

    add-double v20, v20, v56

    .line 5212
    .end local v22    # "x2i":D
    .local v20, "x2i":D
    aget-wide v22, p2, v11

    aget-wide v56, p2, v13

    sub-double v22, v22, v56

    .line 5213
    .end local v24    # "x3r":D
    .local v22, "x3r":D
    add-int/lit8 v24, v11, 0x1

    aget-wide v24, p2, v24

    add-int/lit8 v28, v13, 0x1

    aget-wide v56, p2, v28

    sub-double v24, v24, v56

    .line 5214
    .end local v26    # "x3i":D
    .local v24, "x3i":D
    add-double v26, v54, v18

    aput-wide v26, p2, v10

    .line 5215
    add-int/lit8 v26, v10, 0x1

    add-double v27, v44, v20

    aput-wide v27, p2, v26

    .line 5216
    sub-double v26, v54, v18

    aput-wide v26, p2, v11

    .line 5217
    add-int/lit8 v26, v11, 0x1

    sub-double v27, v44, v20

    aput-wide v27, p2, v26

    .line 5218
    sub-double v26, v14, v24

    .line 5219
    .end local v54    # "x0r":D
    .local v26, "x0r":D
    add-double v44, v16, v22

    .line 5220
    sub-double v54, v26, v44

    mul-double v54, v54, v5

    aput-wide v54, p2, v12

    .line 5221
    add-int/lit8 v28, v12, 0x1

    add-double v54, v44, v26

    mul-double v54, v54, v5

    aput-wide v54, p2, v28

    .line 5222
    add-double v26, v14, v24

    .line 5223
    sub-double v44, v16, v22

    .line 5224
    neg-double v0, v5

    add-double v54, v26, v44

    mul-double v0, v0, v54

    aput-wide v0, p2, v13

    .line 5225
    add-int/lit8 v0, v13, 0x1

    neg-double v1, v5

    sub-double v54, v44, v26

    mul-double v1, v1, v54

    aput-wide v1, p2, v0

    .line 5226
    add-int/lit8 v0, v10, 0x2

    aget-wide v0, p2, v0

    add-int/lit8 v2, v12, 0x2

    aget-wide v54, p2, v2

    add-double v0, v0, v54

    .line 5227
    .end local v26    # "x0r":D
    .local v0, "x0r":D
    add-int/lit8 v2, v10, 0x3

    aget-wide v26, p2, v2

    add-int/lit8 v2, v12, 0x3

    aget-wide v54, p2, v2

    add-double v26, v26, v54

    .line 5228
    .end local v44    # "x0i":D
    .local v26, "x0i":D
    add-int/lit8 v2, v10, 0x2

    aget-wide v44, p2, v2

    add-int/lit8 v2, v12, 0x2

    aget-wide v54, p2, v2

    sub-double v44, v44, v54

    .line 5229
    .end local v14    # "x1r":D
    .local v44, "x1r":D
    add-int/lit8 v2, v10, 0x3

    aget-wide v14, p2, v2

    add-int/lit8 v2, v12, 0x3

    aget-wide v54, p2, v2

    sub-double v14, v14, v54

    .line 5230
    .end local v16    # "x1i":D
    .local v14, "x1i":D
    add-int/lit8 v2, v11, 0x2

    aget-wide v16, p2, v2

    add-int/lit8 v2, v13, 0x2

    aget-wide v54, p2, v2

    add-double v16, v16, v54

    .line 5231
    .end local v18    # "x2r":D
    .local v16, "x2r":D
    add-int/lit8 v2, v11, 0x3

    aget-wide v18, p2, v2

    add-int/lit8 v2, v13, 0x3

    aget-wide v54, p2, v2

    add-double v18, v18, v54

    .line 5232
    .end local v20    # "x2i":D
    .local v18, "x2i":D
    add-int/lit8 v2, v11, 0x2

    aget-wide v20, p2, v2

    add-int/lit8 v2, v13, 0x2

    aget-wide v54, p2, v2

    sub-double v20, v20, v54

    .line 5233
    .end local v22    # "x3r":D
    .local v20, "x3r":D
    add-int/lit8 v2, v11, 0x3

    aget-wide v22, p2, v2

    add-int/lit8 v2, v13, 0x3

    aget-wide v54, p2, v2

    sub-double v22, v22, v54

    .line 5234
    .end local v24    # "x3i":D
    .local v22, "x3i":D
    add-int/lit8 v2, v10, 0x2

    add-double v24, v0, v16

    aput-wide v24, p2, v2

    .line 5235
    add-int/lit8 v2, v10, 0x3

    add-double v24, v26, v18

    aput-wide v24, p2, v2

    .line 5236
    add-int/lit8 v2, v11, 0x2

    sub-double v24, v0, v16

    aput-wide v24, p2, v2

    .line 5237
    add-int/lit8 v2, v11, 0x3

    sub-double v24, v26, v18

    aput-wide v24, p2, v2

    .line 5238
    sub-double v0, v44, v22

    .line 5239
    add-double v24, v14, v20

    .line 5240
    .end local v26    # "x0i":D
    .local v24, "x0i":D
    add-int/lit8 v2, v12, 0x2

    mul-double v26, v48, v0

    mul-double v54, v46, v24

    sub-double v26, v26, v54

    aput-wide v26, p2, v2

    .line 5241
    add-int/lit8 v2, v12, 0x3

    mul-double v26, v48, v24

    mul-double v54, v46, v0

    add-double v26, v26, v54

    aput-wide v26, p2, v2

    .line 5242
    add-double v0, v44, v22

    .line 5243
    sub-double v24, v14, v20

    .line 5244
    add-int/lit8 v2, v13, 0x2

    mul-double v26, v52, v0

    mul-double v54, v50, v24

    add-double v26, v26, v54

    aput-wide v26, p2, v2

    .line 5245
    add-int/lit8 v2, v13, 0x3

    mul-double v26, v52, v24

    mul-double v54, v50, v0

    sub-double v26, v26, v54

    aput-wide v26, p2, v2

    .line 5246
    return-void-no-barrier
.end method

.method private cftfsub(I[DI[II[D)V
    .registers 15
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "ip"    # [I
    .param p5, "nw"    # I
    .param p6, "w"    # [D

    .line 3971
    const/16 v0, 0x8

    if-le p1, v0, :cond_68

    .line 3972
    const/16 v0, 0x20

    if-le p1, v0, :cond_55

    .line 3973
    shr-int/lit8 v0, p1, 0x2

    sub-int v6, p5, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p6

    invoke-direct/range {v1 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf1st(I[DI[DI)V

    .line 3974
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2b

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v0

    if-le p1, v0, :cond_2b

    .line 3975
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4_th(I[DII[D)V

    goto :goto_51

    .line 3976
    :cond_2b
    const/16 v0, 0x200

    if-le p1, v0, :cond_39

    .line 3977
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4(I[DII[D)V

    goto :goto_51

    .line 3978
    :cond_39
    const/16 v0, 0x80

    if-le p1, v0, :cond_48

    .line 3979
    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    goto :goto_51

    .line 3981
    :cond_48
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfx41(I[DII[D)V

    .line 3983
    :goto_51
    invoke-direct {p0, p1, p4, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv2(I[I[DI)V

    goto :goto_74

    .line 3984
    :cond_55
    if-ne p1, v0, :cond_60

    .line 3985
    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 3986
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv216([DI)V

    goto :goto_74

    .line 3988
    :cond_60
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    .line 3989
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv208([DI)V

    goto :goto_74

    .line 3991
    :cond_68
    if-ne p1, v0, :cond_6e

    .line 3992
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf040([DI)V

    goto :goto_74

    .line 3993
    :cond_6e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_74

    .line 3994
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftxb020([DI)V

    .line 3996
    :cond_74
    :goto_74
    return-void-no-barrier
.end method

.method private cftfx41(I[DII[D)V
    .registers 8
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "nw"    # I
    .param p5, "w"    # [D

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

    goto :goto_39

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

    .line 5924
    :goto_39
    return-void-no-barrier
.end method

.method private cftleaf(II[DII[D)V
    .registers 15
    .param p1, "n"    # I
    .param p2, "isplt"    # I
    .param p3, "a"    # [D
    .param p4, "offa"    # I
    .param p5, "nw"    # I
    .param p6, "w"    # [D

    .line 5582
    const/16 v0, 0x200

    if-ne p1, v0, :cond_b4

    .line 5583
    const/16 v2, 0x80

    add-int/lit8 v6, p5, -0x40

    move-object v1, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p6

    invoke-direct/range {v1 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    .line 5584
    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p3, p4, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5585
    add-int/lit8 v0, p4, 0x20

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    .line 5586
    add-int/lit8 v0, p4, 0x40

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5587
    add-int/lit8 v0, p4, 0x60

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5588
    const/16 v3, 0x80

    add-int/lit16 v5, p4, 0x80

    add-int/lit8 v7, p5, -0x80

    move-object v2, p0

    move-object v4, p3

    move-object v6, p6

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    .line 5589
    add-int/lit16 v0, p4, 0x80

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5590
    add-int/lit16 v0, p4, 0xa0

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    .line 5591
    add-int/lit16 v0, p4, 0xc0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5592
    add-int/lit16 v0, p4, 0xe0

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    .line 5593
    add-int/lit16 v5, p4, 0x100

    add-int/lit8 v7, p5, -0x40

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    .line 5594
    add-int/lit16 v0, p4, 0x100

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5595
    add-int/lit16 v0, p4, 0x120

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    .line 5596
    add-int/lit16 v0, p4, 0x140

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5597
    add-int/lit16 v0, p4, 0x160

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    .line 5598
    if-eqz p2, :cond_8a

    .line 5599
    const/16 v3, 0x80

    add-int/lit16 v5, p4, 0x180

    add-int/lit8 v7, p5, -0x40

    move-object v2, p0

    move-object v4, p3

    move-object v6, p6

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    .line 5600
    add-int/lit16 v0, p4, 0x1e0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    goto :goto_9d

    .line 5602
    :cond_8a
    const/16 v3, 0x80

    add-int/lit16 v5, p4, 0x180

    add-int/lit8 v7, p5, -0x80

    move-object v2, p0

    move-object v4, p3

    move-object v6, p6

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    .line 5603
    add-int/lit16 v0, p4, 0x1e0

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    .line 5605
    :goto_9d
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

    goto/16 :goto_15d

    .line 5609
    :cond_b4
    const/16 v3, 0x40

    add-int/lit8 v7, p5, -0x20

    move-object v2, p0

    move-object v4, p3

    move v5, p4

    move-object v6, p6

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

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
    add-int/lit8 v5, p4, 0x40

    add-int/lit8 v7, p5, -0x40

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

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
    add-int/lit16 v5, p4, 0x80

    add-int/lit8 v7, p5, -0x20

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

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
    if-eqz p2, :cond_135

    .line 5625
    const/16 v3, 0x40

    add-int/lit16 v5, p4, 0xc0

    add-int/lit8 v7, p5, -0x20

    move-object v2, p0

    move-object v4, p3

    move-object v6, p6

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    .line 5626
    add-int/lit16 v0, p4, 0xf0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    goto :goto_148

    .line 5628
    :cond_135
    const/16 v3, 0x40

    add-int/lit16 v5, p4, 0xc0

    add-int/lit8 v7, p5, -0x40

    move-object v2, p0

    move-object v4, p3

    move-object v6, p6

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    .line 5629
    add-int/lit16 v0, p4, 0xf0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    .line 5631
    :goto_148
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

    .line 5635
    :goto_15d
    return-void-no-barrier
.end method

.method private cftmdl1(I[DI[DI)V
    .registers 58
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "w"    # [D
    .param p5, "startw"    # I

    .line 5643
    shr-int/lit8 v4, p1, 0x3

    .line 5644
    .local v4, "mh":I
    const/4 v5, 0x2

    mul-int v6, v5, v4

    .line 5645
    .local v6, "m":I
    move v7, v6

    .line 5646
    .local v7, "j1":I
    add-int v8, v7, v6

    .line 5647
    .local v8, "j2":I
    add-int v9, v8, v6

    .line 5648
    .local v9, "j3":I
    add-int v10, p3, v7

    .line 5649
    .local v10, "idx1":I
    add-int v11, p3, v8

    .line 5650
    .local v11, "idx2":I
    add-int v12, p3, v9

    .line 5651
    .local v12, "idx3":I
    aget-wide v13, p2, p3

    aget-wide v15, p2, v11

    add-double/2addr v13, v15

    .line 5652
    .local v13, "x0r":D
    add-int/lit8 v15, p3, 0x1

    aget-wide v15, p2, v15

    add-int/lit8 v17, v11, 0x1

    aget-wide v17, p2, v17

    add-double v15, v15, v17

    .line 5653
    .local v15, "x0i":D
    aget-wide v17, p2, p3

    aget-wide v19, p2, v11

    sub-double v17, v17, v19

    .line 5654
    .local v17, "x1r":D
    add-int/lit8 v19, p3, 0x1

    aget-wide v19, p2, v19

    add-int/lit8 v21, v11, 0x1

    aget-wide v21, p2, v21

    sub-double v19, v19, v21

    .line 5655
    .local v19, "x1i":D
    aget-wide v21, p2, v10

    aget-wide v23, p2, v12

    add-double v21, v21, v23

    .line 5656
    .local v21, "x2r":D
    add-int/lit8 v23, v10, 0x1

    aget-wide v23, p2, v23

    add-int/lit8 v25, v12, 0x1

    aget-wide v25, p2, v25

    add-double v23, v23, v25

    .line 5657
    .local v23, "x2i":D
    aget-wide v25, p2, v10

    aget-wide v27, p2, v12

    sub-double v25, v25, v27

    .line 5658
    .local v25, "x3r":D
    add-int/lit8 v27, v10, 0x1

    aget-wide v27, p2, v27

    add-int/lit8 v29, v12, 0x1

    aget-wide v29, p2, v29

    sub-double v27, v27, v29

    .line 5659
    .local v27, "x3i":D
    add-double v29, v13, v21

    aput-wide v29, p2, p3

    .line 5660
    add-int/lit8 v29, p3, 0x1

    add-double v30, v15, v23

    aput-wide v30, p2, v29

    .line 5661
    sub-double v29, v13, v21

    aput-wide v29, p2, v10

    .line 5662
    add-int/lit8 v29, v10, 0x1

    sub-double v30, v15, v23

    aput-wide v30, p2, v29

    .line 5663
    sub-double v29, v17, v27

    aput-wide v29, p2, v11

    .line 5664
    add-int/lit8 v29, v11, 0x1

    add-double v30, v19, v25

    aput-wide v30, p2, v29

    .line 5665
    add-double v29, v17, v27

    aput-wide v29, p2, v12

    .line 5666
    add-int/lit8 v29, v12, 0x1

    sub-double v30, v19, v25

    aput-wide v30, p2, v29

    .line 5667
    add-int/lit8 v29, p5, 0x1

    move/from16 v33, v6

    aget-wide v5, p4, v29

    .line 5668
    .end local v6    # "m":I
    .local v5, "wn4r":D
    .local v33, "m":I
    const/16 v29, 0x0

    .line 5669
    .local v29, "k":I
    const/16 v32, 0x2

    .local v32, "j":I
    :goto_81
    move/from16 v34, v32

    .end local v32    # "j":I
    .local v34, "j":I
    move/from16 v3, v34

    if-ge v3, v4, :cond_1d8

    .line 5670
    .end local v34    # "j":I
    .local v3, "j":I
    add-int/lit8 v29, v29, 0x4

    .line 5671
    add-int v30, p5, v29

    .line 5672
    .local v30, "idx4":I
    aget-wide v31, p4, v30

    .line 5673
    .local v31, "wk1r":D
    add-int/lit8 v34, v30, 0x1

    aget-wide v35, p4, v34

    .line 5674
    .local v35, "wk1i":D
    add-int/lit8 v34, v30, 0x2

    aget-wide v37, p4, v34

    .line 5675
    .local v37, "wk3r":D
    add-int/lit8 v34, v30, 0x3

    aget-wide v39, p4, v34

    .line 5676
    .local v39, "wk3i":D
    add-int v34, v3, v33

    .line 5677
    .end local v7    # "j1":I
    .local v34, "j1":I
    add-int v7, v34, v33

    .line 5678
    .end local v8    # "j2":I
    .local v7, "j2":I
    add-int v8, v7, v33

    .line 5679
    .end local v9    # "j3":I
    .local v8, "j3":I
    add-int v9, p3, v34

    .line 5680
    .end local v10    # "idx1":I
    .local v9, "idx1":I
    add-int v10, p3, v7

    .line 5681
    .end local v11    # "idx2":I
    .local v10, "idx2":I
    add-int v11, p3, v8

    .line 5682
    .end local v12    # "idx3":I
    .local v11, "idx3":I
    add-int v12, p3, v3

    .line 5683
    .local v12, "idx5":I
    aget-wide v41, p2, v12

    aget-wide v43, p2, v10

    add-double v41, v41, v43

    .line 5684
    .end local v13    # "x0r":D
    .local v41, "x0r":D
    add-int/lit8 v13, v12, 0x1

    aget-wide v13, p2, v13

    add-int/lit8 v43, v10, 0x1

    aget-wide v43, p2, v43

    add-double v13, v13, v43

    .line 5685
    .end local v15    # "x0i":D
    .local v13, "x0i":D
    aget-wide v15, p2, v12

    aget-wide v43, p2, v10

    sub-double v15, v15, v43

    .line 5686
    .end local v17    # "x1r":D
    .local v15, "x1r":D
    add-int/lit8 v17, v12, 0x1

    aget-wide v17, p2, v17

    add-int/lit8 v43, v10, 0x1

    aget-wide v43, p2, v43

    sub-double v17, v17, v43

    .line 5687
    .end local v19    # "x1i":D
    .local v17, "x1i":D
    aget-wide v19, p2, v9

    aget-wide v43, p2, v11

    add-double v19, v19, v43

    .line 5688
    .end local v21    # "x2r":D
    .local v19, "x2r":D
    add-int/lit8 v21, v9, 0x1

    aget-wide v21, p2, v21

    add-int/lit8 v43, v11, 0x1

    aget-wide v43, p2, v43

    add-double v21, v21, v43

    .line 5689
    .end local v23    # "x2i":D
    .local v21, "x2i":D
    aget-wide v23, p2, v9

    aget-wide v43, p2, v11

    sub-double v23, v23, v43

    .line 5690
    .end local v25    # "x3r":D
    .local v23, "x3r":D
    add-int/lit8 v25, v9, 0x1

    aget-wide v25, p2, v25

    add-int/lit8 v43, v11, 0x1

    aget-wide v43, p2, v43

    sub-double v25, v25, v43

    .line 5691
    .end local v27    # "x3i":D
    .local v25, "x3i":D
    add-double v27, v41, v19

    aput-wide v27, p2, v12

    .line 5692
    add-int/lit8 v27, v12, 0x1

    add-double v43, v13, v21

    aput-wide v43, p2, v27

    .line 5693
    sub-double v27, v41, v19

    aput-wide v27, p2, v9

    .line 5694
    add-int/lit8 v27, v9, 0x1

    sub-double v43, v13, v21

    aput-wide v43, p2, v27

    .line 5695
    sub-double v27, v15, v25

    .line 5696
    .end local v41    # "x0r":D
    .local v27, "x0r":D
    add-double v13, v17, v23

    .line 5697
    mul-double v41, v31, v27

    mul-double v43, v35, v13

    sub-double v41, v41, v43

    aput-wide v41, p2, v10

    .line 5698
    add-int/lit8 v41, v10, 0x1

    mul-double v42, v31, v13

    mul-double v44, v35, v27

    add-double v42, v42, v44

    aput-wide v42, p2, v41

    .line 5699
    add-double v27, v15, v25

    .line 5700
    sub-double v13, v17, v23

    .line 5701
    mul-double v41, v37, v27

    mul-double v43, v39, v13

    add-double v41, v41, v43

    aput-wide v41, p2, v11

    .line 5702
    add-int/lit8 v41, v11, 0x1

    mul-double v42, v37, v13

    mul-double v44, v39, v27

    sub-double v42, v42, v44

    aput-wide v42, p2, v41

    .line 5703
    sub-int v41, v33, v3

    .line 5704
    .local v41, "j0":I
    add-int v34, v41, v33

    .line 5705
    add-int v7, v34, v33

    .line 5706
    add-int v8, v7, v33

    .line 5707
    add-int v42, p3, v41

    .line 5708
    .local v42, "idx0":I
    add-int v9, p3, v34

    .line 5709
    add-int v10, p3, v7

    .line 5710
    add-int v11, p3, v8

    .line 5711
    aget-wide v43, p2, v42

    aget-wide v45, p2, v10

    add-double v43, v43, v45

    .line 5712
    .end local v27    # "x0r":D
    .local v43, "x0r":D
    add-int/lit8 v27, v42, 0x1

    aget-wide v27, p2, v27

    add-int/lit8 v45, v10, 0x1

    aget-wide v45, p2, v45

    add-double v27, v27, v45

    .line 5713
    .end local v13    # "x0i":D
    .local v27, "x0i":D
    aget-wide v13, p2, v42

    aget-wide v45, p2, v10

    sub-double v13, v13, v45

    .line 5714
    .end local v15    # "x1r":D
    .local v13, "x1r":D
    add-int/lit8 v15, v42, 0x1

    aget-wide v15, p2, v15

    add-int/lit8 v45, v10, 0x1

    aget-wide v45, p2, v45

    sub-double v15, v15, v45

    .line 5715
    .end local v17    # "x1i":D
    .local v15, "x1i":D
    aget-wide v17, p2, v9

    aget-wide v45, p2, v11

    add-double v17, v17, v45

    .line 5716
    .end local v19    # "x2r":D
    .local v17, "x2r":D
    add-int/lit8 v19, v9, 0x1

    aget-wide v19, p2, v19

    add-int/lit8 v45, v11, 0x1

    aget-wide v45, p2, v45

    add-double v19, v19, v45

    .line 5717
    .end local v21    # "x2i":D
    .local v19, "x2i":D
    aget-wide v21, p2, v9

    aget-wide v45, p2, v11

    sub-double v21, v21, v45

    .line 5718
    .end local v23    # "x3r":D
    .local v21, "x3r":D
    add-int/lit8 v23, v9, 0x1

    aget-wide v23, p2, v23

    add-int/lit8 v45, v11, 0x1

    aget-wide v45, p2, v45

    sub-double v23, v23, v45

    .line 5719
    .end local v25    # "x3i":D
    .local v23, "x3i":D
    add-double v25, v43, v17

    aput-wide v25, p2, v42

    .line 5720
    add-int/lit8 v25, v42, 0x1

    add-double v45, v27, v19

    aput-wide v45, p2, v25

    .line 5721
    sub-double v25, v43, v17

    aput-wide v25, p2, v9

    .line 5722
    add-int/lit8 v25, v9, 0x1

    sub-double v45, v27, v19

    aput-wide v45, p2, v25

    .line 5723
    sub-double v25, v13, v23

    .line 5724
    .end local v43    # "x0r":D
    .local v25, "x0r":D
    add-double v27, v15, v21

    .line 5725
    mul-double v43, v35, v25

    mul-double v45, v31, v27

    sub-double v43, v43, v45

    aput-wide v43, p2, v10

    .line 5726
    add-int/lit8 v43, v10, 0x1

    mul-double v44, v35, v27

    mul-double v46, v31, v25

    add-double v44, v44, v46

    aput-wide v44, p2, v43

    .line 5727
    add-double v25, v13, v23

    .line 5728
    sub-double v27, v15, v21

    .line 5729
    mul-double v43, v39, v25

    mul-double v45, v37, v27

    add-double v43, v43, v45

    aput-wide v43, p2, v11

    .line 5730
    add-int/lit8 v43, v11, 0x1

    mul-double v44, v39, v27

    mul-double v46, v37, v25

    sub-double v44, v44, v46

    aput-wide v44, p2, v43

    .line 5669
    add-int/lit8 v3, v3, 0x2

    move/from16 v32, v3

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move/from16 v7, v34

    move-wide/from16 v48, v15

    move-wide/from16 v15, v27

    move-wide/from16 v27, v23

    move-wide/from16 v23, v19

    move-wide/from16 v19, v48

    move-wide/from16 v50, v13

    move-wide/from16 v13, v25

    move-wide/from16 v25, v21

    move-wide/from16 v21, v17

    move-wide/from16 v17, v50

    goto/16 :goto_81

    .line 5732
    .end local v3    # "j":I
    .end local v30    # "idx4":I
    .end local v31    # "wk1r":D
    .end local v34    # "j1":I
    .end local v35    # "wk1i":D
    .end local v37    # "wk3r":D
    .end local v39    # "wk3i":D
    .end local v41    # "j0":I
    .end local v42    # "idx0":I
    .local v7, "j1":I
    .local v8, "j2":I
    .local v9, "j3":I
    .local v10, "idx1":I
    .local v11, "idx2":I
    .local v12, "idx3":I
    .local v13, "x0r":D
    .local v15, "x0i":D
    .local v17, "x1r":D
    .local v19, "x1i":D
    .local v21, "x2r":D
    .local v23, "x2i":D
    .local v25, "x3r":D
    .local v27, "x3i":D
    :cond_1d8
    move v3, v4

    .line 5733
    .local v3, "j0":I
    add-int v7, v3, v33

    .line 5734
    add-int v8, v7, v33

    .line 5735
    add-int v9, v8, v33

    .line 5736
    add-int v30, p3, v3

    .line 5737
    .local v30, "idx0":I
    add-int v10, p3, v7

    .line 5738
    add-int v11, p3, v8

    .line 5739
    add-int v12, p3, v9

    .line 5740
    aget-wide v31, p2, v30

    aget-wide v35, p2, v11

    add-double v31, v31, v35

    .line 5741
    .end local v13    # "x0r":D
    .local v31, "x0r":D
    add-int/lit8 v13, v30, 0x1

    aget-wide v13, p2, v13

    add-int/lit8 v34, v11, 0x1

    aget-wide v35, p2, v34

    add-double v13, v13, v35

    .line 5742
    .end local v15    # "x0i":D
    .local v13, "x0i":D
    aget-wide v15, p2, v30

    aget-wide v35, p2, v11

    sub-double v15, v15, v35

    .line 5743
    .end local v17    # "x1r":D
    .local v15, "x1r":D
    add-int/lit8 v17, v30, 0x1

    aget-wide v17, p2, v17

    add-int/lit8 v34, v11, 0x1

    aget-wide v35, p2, v34

    sub-double v17, v17, v35

    .line 5744
    .end local v19    # "x1i":D
    .local v17, "x1i":D
    aget-wide v19, p2, v10

    aget-wide v35, p2, v12

    add-double v19, v19, v35

    .line 5745
    .end local v21    # "x2r":D
    .local v19, "x2r":D
    add-int/lit8 v21, v10, 0x1

    aget-wide v21, p2, v21

    add-int/lit8 v34, v12, 0x1

    aget-wide v35, p2, v34

    add-double v21, v21, v35

    .line 5746
    .end local v23    # "x2i":D
    .local v21, "x2i":D
    aget-wide v23, p2, v10

    aget-wide v35, p2, v12

    sub-double v23, v23, v35

    .line 5747
    .end local v25    # "x3r":D
    .local v23, "x3r":D
    add-int/lit8 v25, v10, 0x1

    aget-wide v25, p2, v25

    add-int/lit8 v34, v12, 0x1

    aget-wide v35, p2, v34

    sub-double v25, v25, v35

    .line 5748
    .end local v27    # "x3i":D
    .local v25, "x3i":D
    add-double v27, v31, v19

    aput-wide v27, p2, v30

    .line 5749
    add-int/lit8 v27, v30, 0x1

    add-double v35, v13, v21

    aput-wide v35, p2, v27

    .line 5750
    sub-double v27, v31, v19

    aput-wide v27, p2, v10

    .line 5751
    add-int/lit8 v27, v10, 0x1

    sub-double v35, v13, v21

    aput-wide v35, p2, v27

    .line 5752
    sub-double v27, v15, v25

    .line 5753
    .end local v31    # "x0r":D
    .local v27, "x0r":D
    add-double v13, v17, v23

    .line 5754
    sub-double v31, v27, v13

    mul-double v31, v31, v5

    aput-wide v31, p2, v11

    .line 5755
    add-int/lit8 v31, v11, 0x1

    add-double v35, v13, v27

    mul-double v35, v35, v5

    aput-wide v35, p2, v31

    .line 5756
    add-double v27, v15, v25

    .line 5757
    sub-double v13, v17, v23

    .line 5758
    neg-double v0, v5

    add-double v31, v27, v13

    mul-double v0, v0, v31

    aput-wide v0, p2, v12

    .line 5759
    add-int/lit8 v0, v12, 0x1

    neg-double v1, v5

    sub-double v31, v13, v27

    mul-double v1, v1, v31

    aput-wide v1, p2, v0

    .line 5760
    return-void-no-barrier
.end method

.method private cftmdl2(I[DI[DI)V
    .registers 68
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "w"    # [D
    .param p5, "startw"    # I

    .line 5768
    shr-int/lit8 v0, p1, 0x3

    .line 5769
    .local v0, "mh":I
    const/4 v1, 0x2

    mul-int v2, v1, v0

    .line 5770
    .local v2, "m":I
    add-int/lit8 v3, p5, 0x1

    aget-wide v3, p4, v3

    .line 5771
    .local v3, "wn4r":D
    move v5, v2

    .line 5772
    .local v5, "j1":I
    add-int v6, v5, v2

    .line 5773
    .local v6, "j2":I
    add-int v7, v6, v2

    .line 5774
    .local v7, "j3":I
    add-int v8, p3, v5

    .line 5775
    .local v8, "idx1":I
    add-int v9, p3, v6

    .line 5776
    .local v9, "idx2":I
    add-int v10, p3, v7

    .line 5777
    .local v10, "idx3":I
    aget-wide v11, p2, p3

    add-int/lit8 v13, v9, 0x1

    aget-wide v13, p2, v13

    sub-double/2addr v11, v13

    .line 5778
    .local v11, "x0r":D
    add-int/lit8 v13, p3, 0x1

    aget-wide v13, p2, v13

    aget-wide v15, p2, v9

    add-double/2addr v13, v15

    .line 5779
    .local v13, "x0i":D
    aget-wide v15, p2, p3

    add-int/lit8 v17, v9, 0x1

    aget-wide v17, p2, v17

    add-double v15, v15, v17

    .line 5780
    .local v15, "x1r":D
    add-int/lit8 v17, p3, 0x1

    aget-wide v17, p2, v17

    aget-wide v19, p2, v9

    sub-double v17, v17, v19

    .line 5781
    .local v17, "x1i":D
    aget-wide v19, p2, v8

    add-int/lit8 v21, v10, 0x1

    aget-wide v21, p2, v21

    sub-double v19, v19, v21

    .line 5782
    .local v19, "x2r":D
    add-int/lit8 v21, v8, 0x1

    aget-wide v21, p2, v21

    aget-wide v23, p2, v10

    add-double v21, v21, v23

    .line 5783
    .local v21, "x2i":D
    aget-wide v23, p2, v8

    add-int/lit8 v25, v10, 0x1

    aget-wide v25, p2, v25

    add-double v23, v23, v25

    .line 5784
    .local v23, "x3r":D
    add-int/lit8 v25, v8, 0x1

    aget-wide v25, p2, v25

    aget-wide v27, p2, v10

    sub-double v25, v25, v27

    .line 5785
    .local v25, "x3i":D
    sub-double v27, v19, v21

    mul-double v27, v27, v3

    .line 5786
    .local v27, "y0r":D
    add-double v29, v21, v19

    mul-double v29, v29, v3

    .line 5787
    .local v29, "y0i":D
    add-double v31, v11, v27

    aput-wide v31, p2, p3

    .line 5788
    add-int/lit8 v31, p3, 0x1

    add-double v32, v13, v29

    aput-wide v32, p2, v31

    .line 5789
    sub-double v31, v11, v27

    aput-wide v31, p2, v8

    .line 5790
    add-int/lit8 v31, v8, 0x1

    sub-double v32, v13, v29

    aput-wide v32, p2, v31

    .line 5791
    sub-double v31, v23, v25

    mul-double v31, v31, v3

    .line 5792
    .end local v27    # "y0r":D
    .local v31, "y0r":D
    add-double v27, v25, v23

    mul-double v27, v27, v3

    .line 5793
    .end local v29    # "y0i":D
    .local v27, "y0i":D
    sub-double v29, v15, v27

    aput-wide v29, p2, v9

    .line 5794
    add-int/lit8 v29, v9, 0x1

    add-double v33, v17, v31

    aput-wide v33, p2, v29

    .line 5795
    add-double v29, v15, v27

    aput-wide v29, p2, v10

    .line 5796
    add-int/lit8 v29, v10, 0x1

    sub-double v33, v17, v31

    aput-wide v33, p2, v29

    .line 5797
    const/16 v29, 0x0

    .line 5798
    .local v29, "k":I
    mul-int v30, v1, v2

    .line 5799
    .local v30, "kr":I
    nop

    .local v1, "j":I
    :goto_8f
    if-ge v1, v0, :cond_219

    .line 5800
    add-int/lit8 v29, v29, 0x4

    .line 5801
    add-int v33, p5, v29

    .line 5802
    .local v33, "idx4":I
    aget-wide v34, p4, v33

    .line 5803
    .local v34, "wk1r":D
    add-int/lit8 v36, v33, 0x1

    aget-wide v36, p4, v36

    .line 5804
    .local v36, "wk1i":D
    add-int/lit8 v38, v33, 0x2

    aget-wide v38, p4, v38

    .line 5805
    .local v38, "wk3r":D
    add-int/lit8 v40, v33, 0x3

    aget-wide v40, p4, v40

    .line 5806
    .local v40, "wk3i":D
    add-int/lit8 v30, v30, -0x4

    .line 5807
    add-int v42, p5, v30

    .line 5808
    .local v42, "idx5":I
    aget-wide v43, p4, v42

    .line 5809
    .local v43, "wd1i":D
    add-int/lit8 v45, v42, 0x1

    aget-wide v45, p4, v45

    .line 5810
    .local v45, "wd1r":D
    add-int/lit8 v47, v42, 0x2

    aget-wide v47, p4, v47

    .line 5811
    .local v47, "wd3i":D
    add-int/lit8 v49, v42, 0x3

    aget-wide v49, p4, v49

    .line 5812
    .local v49, "wd3r":D
    add-int v5, v1, v2

    .line 5813
    add-int v6, v5, v2

    .line 5814
    add-int v7, v6, v2

    .line 5815
    add-int v8, p3, v5

    .line 5816
    add-int v9, p3, v6

    .line 5817
    add-int v10, p3, v7

    .line 5818
    add-int v51, p3, v1

    .line 5819
    .local v51, "idx6":I
    aget-wide v52, p2, v51

    add-int/lit8 v54, v9, 0x1

    aget-wide v54, p2, v54

    sub-double v52, v52, v54

    .line 5820
    .end local v11    # "x0r":D
    .local v52, "x0r":D
    add-int/lit8 v11, v51, 0x1

    aget-wide v11, p2, v11

    aget-wide v54, p2, v9

    add-double v11, v11, v54

    .line 5821
    .end local v13    # "x0i":D
    .local v11, "x0i":D
    aget-wide v13, p2, v51

    add-int/lit8 v54, v9, 0x1

    aget-wide v54, p2, v54

    add-double v13, v13, v54

    .line 5822
    .end local v15    # "x1r":D
    .local v13, "x1r":D
    add-int/lit8 v15, v51, 0x1

    aget-wide v15, p2, v15

    aget-wide v54, p2, v9

    sub-double v15, v15, v54

    .line 5823
    .end local v17    # "x1i":D
    .local v15, "x1i":D
    aget-wide v17, p2, v8

    add-int/lit8 v54, v10, 0x1

    aget-wide v54, p2, v54

    sub-double v17, v17, v54

    .line 5824
    .end local v19    # "x2r":D
    .local v17, "x2r":D
    add-int/lit8 v19, v8, 0x1

    aget-wide v19, p2, v19

    aget-wide v54, p2, v10

    add-double v19, v19, v54

    .line 5825
    .end local v21    # "x2i":D
    .local v19, "x2i":D
    aget-wide v21, p2, v8

    add-int/lit8 v54, v10, 0x1

    aget-wide v54, p2, v54

    add-double v21, v21, v54

    .line 5826
    .end local v23    # "x3r":D
    .local v21, "x3r":D
    add-int/lit8 v23, v8, 0x1

    aget-wide v23, p2, v23

    aget-wide v54, p2, v10

    sub-double v23, v23, v54

    .line 5827
    .end local v25    # "x3i":D
    .local v23, "x3i":D
    mul-double v25, v34, v52

    mul-double v54, v36, v11

    sub-double v25, v25, v54

    .line 5828
    .end local v31    # "y0r":D
    .local v25, "y0r":D
    mul-double v31, v34, v11

    mul-double v54, v36, v52

    add-double v31, v31, v54

    .line 5829
    .end local v27    # "y0i":D
    .local v31, "y0i":D
    mul-double v27, v45, v17

    mul-double v54, v43, v19

    sub-double v27, v27, v54

    .line 5830
    .local v27, "y2r":D
    mul-double v54, v45, v19

    mul-double v56, v43, v17

    add-double v54, v54, v56

    .line 5831
    .local v54, "y2i":D
    add-double v56, v25, v27

    aput-wide v56, p2, v51

    .line 5832
    add-int/lit8 v56, v51, 0x1

    add-double v57, v31, v54

    aput-wide v57, p2, v56

    .line 5833
    sub-double v56, v25, v27

    aput-wide v56, p2, v8

    .line 5834
    add-int/lit8 v56, v8, 0x1

    sub-double v57, v31, v54

    aput-wide v57, p2, v56

    .line 5835
    mul-double v56, v38, v13

    mul-double v58, v40, v15

    add-double v56, v56, v58

    .line 5836
    .end local v25    # "y0r":D
    .local v56, "y0r":D
    mul-double v25, v38, v15

    mul-double v58, v40, v13

    sub-double v25, v25, v58

    .line 5837
    .end local v31    # "y0i":D
    .local v25, "y0i":D
    mul-double v31, v49, v21

    mul-double v58, v47, v23

    add-double v31, v31, v58

    .line 5838
    .end local v27    # "y2r":D
    .local v31, "y2r":D
    mul-double v27, v49, v23

    mul-double v58, v47, v21

    sub-double v27, v27, v58

    .line 5839
    .end local v54    # "y2i":D
    .local v27, "y2i":D
    add-double v54, v56, v31

    aput-wide v54, p2, v9

    .line 5840
    add-int/lit8 v54, v9, 0x1

    add-double v58, v25, v27

    aput-wide v58, p2, v54

    .line 5841
    sub-double v54, v56, v31

    aput-wide v54, p2, v10

    .line 5842
    add-int/lit8 v54, v10, 0x1

    sub-double v58, v25, v27

    aput-wide v58, p2, v54

    .line 5843
    sub-int v54, v2, v1

    .line 5844
    .local v54, "j0":I
    add-int v5, v54, v2

    .line 5845
    add-int v6, v5, v2

    .line 5846
    add-int v7, v6, v2

    .line 5847
    add-int v55, p3, v54

    .line 5848
    .local v55, "idx0":I
    add-int v8, p3, v5

    .line 5849
    add-int v9, p3, v6

    .line 5850
    add-int v10, p3, v7

    .line 5851
    aget-wide v58, p2, v55

    add-int/lit8 v60, v9, 0x1

    aget-wide v60, p2, v60

    sub-double v52, v58, v60

    .line 5852
    add-int/lit8 v58, v55, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v9

    add-double v11, v58, v60

    .line 5853
    aget-wide v58, p2, v55

    add-int/lit8 v60, v9, 0x1

    aget-wide v60, p2, v60

    add-double v13, v58, v60

    .line 5854
    add-int/lit8 v58, v55, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v9

    sub-double v15, v58, v60

    .line 5855
    aget-wide v58, p2, v8

    add-int/lit8 v60, v10, 0x1

    aget-wide v60, p2, v60

    sub-double v17, v58, v60

    .line 5856
    add-int/lit8 v58, v8, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v10

    add-double v19, v58, v60

    .line 5857
    aget-wide v58, p2, v8

    add-int/lit8 v60, v10, 0x1

    aget-wide v60, p2, v60

    add-double v21, v58, v60

    .line 5858
    add-int/lit8 v58, v8, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v10

    sub-double v23, v58, v60

    .line 5859
    mul-double v58, v43, v52

    mul-double v60, v45, v11

    sub-double v58, v58, v60

    .line 5860
    .end local v56    # "y0r":D
    .local v58, "y0r":D
    mul-double v56, v43, v11

    mul-double v60, v45, v52

    add-double v56, v56, v60

    .line 5861
    .end local v25    # "y0i":D
    .local v56, "y0i":D
    mul-double v25, v36, v17

    mul-double v60, v34, v19

    sub-double v25, v25, v60

    .line 5862
    .end local v31    # "y2r":D
    .local v25, "y2r":D
    mul-double v31, v36, v19

    mul-double v60, v34, v17

    add-double v31, v31, v60

    .line 5863
    .end local v27    # "y2i":D
    .local v31, "y2i":D
    add-double v27, v58, v25

    aput-wide v27, p2, v55

    .line 5864
    add-int/lit8 v27, v55, 0x1

    add-double v60, v56, v31

    aput-wide v60, p2, v27

    .line 5865
    sub-double v27, v58, v25

    aput-wide v27, p2, v8

    .line 5866
    add-int/lit8 v27, v8, 0x1

    sub-double v60, v56, v31

    aput-wide v60, p2, v27

    .line 5867
    mul-double v27, v47, v13

    mul-double v60, v49, v15

    add-double v27, v27, v60

    .line 5868
    .end local v58    # "y0r":D
    .local v27, "y0r":D
    mul-double v58, v47, v15

    mul-double v60, v49, v13

    sub-double v56, v58, v60

    .line 5869
    mul-double v58, v40, v21

    mul-double v60, v38, v23

    add-double v58, v58, v60

    .line 5870
    .end local v25    # "y2r":D
    .local v58, "y2r":D
    mul-double v25, v40, v23

    mul-double v60, v38, v21

    sub-double v25, v25, v60

    .line 5871
    .end local v31    # "y2i":D
    .local v25, "y2i":D
    add-double v31, v27, v58

    aput-wide v31, p2, v9

    .line 5872
    add-int/lit8 v31, v9, 0x1

    add-double v60, v56, v25

    aput-wide v60, p2, v31

    .line 5873
    sub-double v31, v27, v58

    aput-wide v31, p2, v10

    .line 5874
    add-int/lit8 v31, v10, 0x1

    sub-double v60, v56, v25

    aput-wide v60, p2, v31

    .line 5799
    add-int/lit8 v1, v1, 0x2

    move-wide/from16 v25, v23

    move-wide/from16 v31, v27

    move-wide/from16 v27, v56

    move-wide/from16 v23, v21

    move-wide/from16 v21, v19

    move-wide/from16 v19, v17

    move-wide/from16 v17, v15

    move-wide v15, v13

    move-wide v13, v11

    move-wide/from16 v11, v52

    goto/16 :goto_8f

    .line 5876
    .end local v1    # "j":I
    .end local v33    # "idx4":I
    .end local v34    # "wk1r":D
    .end local v36    # "wk1i":D
    .end local v38    # "wk3r":D
    .end local v40    # "wk3i":D
    .end local v42    # "idx5":I
    .end local v43    # "wd1i":D
    .end local v45    # "wd1r":D
    .end local v47    # "wd3i":D
    .end local v49    # "wd3r":D
    .end local v51    # "idx6":I
    .end local v52    # "x0r":D
    .end local v54    # "j0":I
    .end local v55    # "idx0":I
    .end local v56    # "y0i":D
    .end local v58    # "y2r":D
    .local v11, "x0r":D
    .local v13, "x0i":D
    .local v15, "x1r":D
    .local v17, "x1i":D
    .local v19, "x2r":D
    .local v21, "x2i":D
    .local v23, "x3r":D
    .local v25, "x3i":D
    .local v27, "y0i":D
    .local v31, "y0r":D
    :cond_219
    add-int v1, p5, v2

    aget-wide v33, p4, v1

    .line 5877
    .local v33, "wk1r":D
    add-int v1, p5, v2

    add-int/lit8 v1, v1, 0x1

    aget-wide v35, p4, v1

    .line 5878
    .local v35, "wk1i":D
    move v1, v0

    .line 5879
    .local v1, "j0":I
    add-int v5, v1, v2

    .line 5880
    add-int v6, v5, v2

    .line 5881
    add-int v7, v6, v2

    .line 5882
    add-int v37, p3, v1

    .line 5883
    .local v37, "idx0":I
    add-int v8, p3, v5

    .line 5884
    add-int v9, p3, v6

    .line 5885
    add-int v10, p3, v7

    .line 5886
    aget-wide v38, p2, v37

    add-int/lit8 v40, v9, 0x1

    aget-wide v40, p2, v40

    sub-double v38, v38, v40

    .line 5887
    .end local v11    # "x0r":D
    .local v38, "x0r":D
    add-int/lit8 v11, v37, 0x1

    aget-wide v11, p2, v11

    aget-wide v40, p2, v9

    add-double v11, v11, v40

    .line 5888
    .end local v13    # "x0i":D
    .local v11, "x0i":D
    aget-wide v13, p2, v37

    add-int/lit8 v40, v9, 0x1

    aget-wide v40, p2, v40

    add-double v13, v13, v40

    .line 5889
    .end local v15    # "x1r":D
    .local v13, "x1r":D
    add-int/lit8 v15, v37, 0x1

    aget-wide v15, p2, v15

    aget-wide v40, p2, v9

    sub-double v15, v15, v40

    .line 5890
    .end local v17    # "x1i":D
    .local v15, "x1i":D
    aget-wide v17, p2, v8

    add-int/lit8 v40, v10, 0x1

    aget-wide v40, p2, v40

    sub-double v17, v17, v40

    .line 5891
    .end local v19    # "x2r":D
    .local v17, "x2r":D
    add-int/lit8 v19, v8, 0x1

    aget-wide v19, p2, v19

    aget-wide v40, p2, v10

    add-double v19, v19, v40

    .line 5892
    .end local v21    # "x2i":D
    .local v19, "x2i":D
    aget-wide v21, p2, v8

    add-int/lit8 v40, v10, 0x1

    aget-wide v40, p2, v40

    add-double v21, v21, v40

    .line 5893
    .end local v23    # "x3r":D
    .local v21, "x3r":D
    add-int/lit8 v23, v8, 0x1

    aget-wide v23, p2, v23

    aget-wide v40, p2, v10

    sub-double v23, v23, v40

    .line 5894
    .end local v25    # "x3i":D
    .local v23, "x3i":D
    mul-double v25, v33, v38

    mul-double v40, v35, v11

    sub-double v25, v25, v40

    .line 5895
    .end local v31    # "y0r":D
    .local v25, "y0r":D
    mul-double v31, v33, v11

    mul-double v40, v35, v38

    add-double v31, v31, v40

    .line 5896
    .end local v27    # "y0i":D
    .local v31, "y0i":D
    mul-double v27, v35, v17

    mul-double v40, v33, v19

    sub-double v27, v27, v40

    .line 5897
    .local v27, "y2r":D
    mul-double v40, v35, v19

    mul-double v42, v33, v17

    add-double v40, v40, v42

    .line 5898
    .local v40, "y2i":D
    add-double v42, v25, v27

    aput-wide v42, p2, v37

    .line 5899
    add-int/lit8 v42, v37, 0x1

    add-double v43, v31, v40

    aput-wide v43, p2, v42

    .line 5900
    sub-double v42, v25, v27

    aput-wide v42, p2, v8

    .line 5901
    add-int/lit8 v42, v8, 0x1

    sub-double v43, v31, v40

    aput-wide v43, p2, v42

    .line 5902
    mul-double v42, v35, v13

    mul-double v44, v33, v15

    sub-double v42, v42, v44

    .line 5903
    .end local v25    # "y0r":D
    .local v42, "y0r":D
    mul-double v25, v35, v15

    mul-double v44, v33, v13

    add-double v25, v25, v44

    .line 5904
    .end local v31    # "y0i":D
    .local v25, "y0i":D
    mul-double v31, v33, v21

    mul-double v44, v35, v23

    sub-double v31, v31, v44

    .line 5905
    .end local v27    # "y2r":D
    .local v31, "y2r":D
    mul-double v27, v33, v23

    mul-double v44, v35, v21

    add-double v27, v27, v44

    .line 5906
    .end local v40    # "y2i":D
    .local v27, "y2i":D
    sub-double v40, v42, v31

    aput-wide v40, p2, v9

    .line 5907
    add-int/lit8 v40, v9, 0x1

    sub-double v44, v25, v27

    aput-wide v44, p2, v40

    .line 5908
    add-double v40, v42, v31

    aput-wide v40, p2, v10

    .line 5909
    add-int/lit8 v40, v10, 0x1

    add-double v44, v25, v27

    aput-wide v44, p2, v40

    .line 5910
    return-void-no-barrier
.end method

.method private cftrec4(I[DII[D)V
    .registers 26
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "nw"    # I
    .param p5, "w"    # [D

    .line 5533
    move/from16 v0, p1

    .line 5534
    .local v0, "m":I
    add-int v1, p3, p1

    move v7, v0

    .end local v0    # "m":I
    .local v1, "idx1":I
    .local v7, "m":I
    :goto_5
    move v15, v1

    .line 5535
    .end local v1    # "idx1":I
    .local v15, "idx1":I
    const/16 v0, 0x200

    if-le v7, v0, :cond_1f

    .line 5536
    shr-int/lit8 v0, v7, 0x2

    .line 5537
    .end local v7    # "m":I
    .restart local v0    # "m":I
    sub-int v4, v15, v0

    shr-int/lit8 v1, v0, 0x1

    sub-int v6, p4, v1

    move-object/from16 v1, p0

    move v2, v0

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    .line 5534
    move v7, v0

    move v1, v15

    goto :goto_5

    .line 5539
    .end local v0    # "m":I
    .restart local v7    # "m":I
    :cond_1f
    const/4 v10, 0x1

    sub-int v12, v15, v7

    move-object/from16 v8, p0

    move v9, v7

    move-object/from16 v11, p2

    move/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    .line 5540
    const/4 v0, 0x0

    .line 5541
    .local v0, "k":I
    sub-int v16, p3, v7

    .line 5542
    .local v16, "idx2":I
    sub-int v1, p1, v7

    .local v1, "j":I
    :goto_33
    move/from16 v17, v1

    .end local v1    # "j":I
    .local v17, "j":I
    if-lez v17, :cond_65

    .line 5543
    add-int/lit8 v18, v0, 0x1

    .line 5544
    .end local v0    # "k":I
    .local v18, "k":I
    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v19, v7

    move-object/from16 v7, p5

    .end local v7    # "m":I
    .local v19, "m":I
    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfttree(III[DII[D)I

    move-result v0

    .line 5545
    .local v0, "isplt":I
    add-int v12, v16, v17

    move-object/from16 v8, p0

    move/from16 v9, v19

    move v10, v0

    move-object/from16 v11, p2

    move/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    .line 5542
    sub-int v1, v17, v19

    .end local v17    # "j":I
    .restart local v1    # "j":I
    move/from16 v0, v18

    move/from16 v7, v19

    goto :goto_33

    .line 5547
    .end local v1    # "j":I
    .end local v18    # "k":I
    .end local v19    # "m":I
    .local v0, "k":I
    .restart local v7    # "m":I
    .restart local v17    # "j":I
    :cond_65
    move/from16 v19, v7

    .end local v7    # "m":I
    .restart local v19    # "m":I
    return-void-no-barrier
.end method

.method private cftrec4_th(I[DII[D)V
    .registers 25
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "nw"    # I
    .param p5, "w"    # [D

    move/from16 v12, p1

    .line 5470
    const/4 v0, 0x0

    .line 5471
    .local v0, "idx":I
    const/4 v1, 0x2

    .line 5472
    .local v1, "nthreads":I
    const/4 v2, 0x0

    .line 5473
    .local v2, "idiv4":I
    shr-int/lit8 v3, v12, 0x1

    .line 5474
    .local v3, "m":I
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v4

    if-le v12, v4, :cond_11

    .line 5475
    const/4 v1, 0x4

    .line 5476
    const/4 v2, 0x1

    .line 5477
    shr-int/lit8 v3, v3, 0x1

    .line 5479
    .end local v1    # "nthreads":I
    .end local v2    # "idiv4":I
    .end local v3    # "m":I
    .local v13, "nthreads":I
    .local v14, "m":I
    .local v15, "idiv4":I
    :cond_11
    move v13, v1

    move v15, v2

    move v14, v3

    new-array v11, v13, [Ljava/util/concurrent/Future;

    .line 5480
    .local v11, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    move v3, v14

    .line 5481
    .local v3, "mf":I
    const/4 v1, 0x0

    move/from16 v16, v0

    .end local v0    # "idx":I
    .local v1, "i":I
    .local v16, "idx":I
    :goto_1a
    move v10, v1

    .end local v1    # "i":I
    .local v10, "i":I
    if-ge v10, v13, :cond_65

    .line 5482
    mul-int v0, v10, v14

    add-int v17, p3, v0

    .line 5483
    .local v17, "firstIdx":I
    if-eq v10, v15, :cond_41

    .line 5484
    add-int/lit8 v8, v16, 0x1

    .local v8, "idx":I
    new-instance v9, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v2, v17

    move v4, v12

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[DI)V

    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v16

    .line 5481
    .end local v16    # "idx":I
    move/from16 v16, v8

    move v2, v10

    move-object v0, v11

    goto :goto_61

    .line 5504
    .end local v8    # "idx":I
    .restart local v16    # "idx":I
    :cond_41
    add-int/lit8 v0, v16, 0x1

    .restart local v0    # "idx":I
    new-instance v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;

    move-object v4, v1

    move-object/from16 v5, p0

    move/from16 v6, v17

    move v7, v3

    move v8, v12

    move-object/from16 v9, p2

    move v2, v10

    move-object/from16 v10, p5

    .end local v10    # "i":I
    .local v2, "i":I
    move/from16 v18, v0

    move-object v0, v11

    move/from16 v11, p4

    .end local v11    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .local v0, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .local v18, "idx":I
    invoke-direct/range {v4 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[DI)V

    invoke-static {v1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v0, v16

    .line 5481
    .end local v16    # "idx":I
    .end local v17    # "firstIdx":I
    move/from16 v16, v18

    .end local v18    # "idx":I
    .restart local v16    # "idx":I
    :goto_61
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move-object v11, v0

    goto :goto_1a

    .line 5527
    .end local v0    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v1    # "i":I
    .restart local v10    # "i":I
    .restart local v11    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    :cond_65
    move v2, v10

    move-object v0, v11

    .end local v10    # "i":I
    .end local v11    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .restart local v0    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .restart local v2    # "i":I
    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 5528
    return-void-no-barrier
.end method

.method private cfttree(III[DII[D)I
    .registers 22
    .param p1, "n"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "a"    # [D
    .param p5, "offa"    # I
    .param p6, "nw"    # I
    .param p7, "w"    # [D

    .line 5551
    sub-int v6, p5, p1

    .line 5552
    .local v6, "idx1":I
    and-int/lit8 v0, p3, 0x3

    if-eqz v0, :cond_28

    .line 5553
    and-int/lit8 v7, p3, 0x1

    .line 5554
    .local v7, "isplt":I
    if-eqz v7, :cond_1a

    .line 5555
    add-int v3, v6, p2

    shr-int/lit8 v0, p1, 0x1

    sub-int v5, p6, v0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p4

    move-object/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    goto :goto_63

    .line 5557
    :cond_1a
    add-int v3, v6, p2

    sub-int v5, p6, p1

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p4

    move-object/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    goto :goto_63

    .line 5560
    .end local v7    # "isplt":I
    :cond_28
    move v0, p1

    .line 5561
    .local v0, "m":I
    move v1, v0

    move/from16 v0, p3

    .local v0, "i":I
    .local v1, "m":I
    :goto_2c
    and-int/lit8 v2, v0, 0x3

    if-nez v2, :cond_35

    .line 5562
    shl-int/lit8 v1, v1, 0x2

    .line 5561
    shr-int/lit8 v0, v0, 0x2

    goto :goto_2c

    .line 5564
    :cond_35
    and-int/lit8 v7, v0, 0x1

    .line 5565
    .restart local v7    # "isplt":I
    add-int v2, p5, p2

    .line 5566
    .local v2, "idx2":I
    const/16 v3, 0x80

    if-eqz v7, :cond_51

    .line 5567
    :goto_3d
    if-le v1, v3, :cond_63

    .line 5568
    sub-int v11, v2, v1

    shr-int/lit8 v4, v1, 0x1

    sub-int v13, p6, v4

    move-object v8, p0

    move v9, v1

    move-object/from16 v10, p4

    move-object/from16 v12, p7

    invoke-direct/range {v8 .. v13}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    .line 5569
    shr-int/lit8 v1, v1, 0x2

    goto :goto_3d

    .line 5572
    :cond_51
    :goto_51
    if-le v1, v3, :cond_63

    .line 5573
    sub-int v11, v2, v1

    sub-int v13, p6, v1

    move-object v8, p0

    move v9, v1

    move-object/from16 v10, p4

    move-object/from16 v12, p7

    invoke-direct/range {v8 .. v13}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    .line 5574
    shr-int/lit8 v1, v1, 0x2

    goto :goto_51

    .line 5578
    .end local v0    # "i":I
    .end local v1    # "m":I
    .end local v2    # "idx2":I
    :cond_63
    :goto_63
    return v7
.end method

.method private cftx020([DI)V
    .registers 12
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .line 6425
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x2

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    .line 6426
    .local v0, "x0r":D
    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    neg-double v2, v2

    add-int/lit8 v4, p2, 0x3

    aget-wide v4, p1, v4

    add-double/2addr v2, v4

    .line 6427
    .local v2, "x0i":D
    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x2

    aget-wide v6, p1, v6

    add-double/2addr v4, v6

    aput-wide v4, p1, p2

    .line 6428
    add-int/lit8 v4, p2, 0x1

    aget-wide v5, p1, v4

    add-int/lit8 v7, p2, 0x3

    aget-wide v7, p1, v7

    add-double/2addr v5, v7

    aput-wide v5, p1, v4

    .line 6429
    add-int/lit8 v4, p2, 0x2

    aput-wide v0, p1, v4

    .line 6430
    add-int/lit8 v4, p2, 0x3

    aput-wide v2, p1, v4

    .line 6431
    return-void-no-barrier
.end method

.method private cftxb020([DI)V
    .registers 12
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .line 6436
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x2

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    .line 6437
    .local v0, "x0r":D
    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x3

    aget-wide v4, p1, v4

    sub-double/2addr v2, v4

    .line 6438
    .local v2, "x0i":D
    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x2

    aget-wide v6, p1, v6

    add-double/2addr v4, v6

    aput-wide v4, p1, p2

    .line 6439
    add-int/lit8 v4, p2, 0x1

    aget-wide v5, p1, v4

    add-int/lit8 v7, p2, 0x3

    aget-wide v7, p1, v7

    add-double/2addr v5, v7

    aput-wide v5, p1, v4

    .line 6440
    add-int/lit8 v4, p2, 0x2

    aput-wide v0, p1, v4

    .line 6441
    add-int/lit8 v4, p2, 0x3

    aput-wide v2, p1, v4

    .line 6442
    return-void-no-barrier
.end method

.method private cftxc020([DI)V
    .registers 12
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .line 6446
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x2

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    .line 6447
    .local v0, "x0r":D
    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x3

    aget-wide v4, p1, v4

    add-double/2addr v2, v4

    .line 6448
    .local v2, "x0i":D
    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x2

    aget-wide v6, p1, v6

    add-double/2addr v4, v6

    aput-wide v4, p1, p2

    .line 6449
    add-int/lit8 v4, p2, 0x1

    aget-wide v5, p1, v4

    add-int/lit8 v7, p2, 0x3

    aget-wide v7, p1, v7

    sub-double/2addr v5, v7

    aput-wide v5, p1, v4

    .line 6450
    add-int/lit8 v4, p2, 0x2

    aput-wide v0, p1, v4

    .line 6451
    add-int/lit8 v4, p2, 0x3

    aput-wide v2, p1, v4

    .line 6452
    return-void-no-barrier
.end method

.method private static getReminder(I[I)I
    .registers 6
    .param p0, "n"    # I
    .param p1, "factors"    # [I

    .line 127
    move v0, p0

    .line 129
    .local v0, "reminder":I
    if-lez p0, :cond_16

    .line 133
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_15

    const/4 v2, 0x1

    if-eq v0, v2, :cond_15

    .line 134
    aget v2, p1, v1

    .line 135
    .local v2, "factor":I
    :goto_c
    rem-int v3, v0, v2

    if-nez v3, :cond_12

    .line 136
    div-int/2addr v0, v2

    goto :goto_c

    .line 133
    .end local v2    # "factor":I
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 139
    .end local v1    # "i":I
    :cond_15
    return v0

    .line 130
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "n must be positive integer"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private makect(I[DI)V
    .registers 15
    .param p1, "nc"    # I
    .param p2, "c"    # [D
    .param p3, "startc"    # I

    .line 1048
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1049
    if-le p1, v1, :cond_3c

    .line 1050
    shr-int/lit8 v0, p1, 0x1

    .line 1051
    .local v0, "nch":I
    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 1052
    .local v2, "delta":D
    int-to-double v4, v0

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    aput-wide v4, p2, p3

    .line 1053
    add-int v4, p3, v0

    aget-wide v5, p2, p3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    aput-wide v5, p2, v4

    .line 1054
    nop

    .local v1, "j":I
    :goto_22
    if-ge v1, v0, :cond_3c

    .line 1055
    int-to-double v4, v1

    mul-double/2addr v4, v2

    .line 1056
    .local v4, "deltaj":D
    add-int v6, p3, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    aput-wide v9, p2, v6

    .line 1057
    add-int v6, p3, p1

    sub-int/2addr v6, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    aput-wide v9, p2, v6

    .line 1054
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 1060
    .end local v0    # "nch":I
    .end local v1    # "j":I
    .end local v2    # "delta":D
    .end local v4    # "deltaj":D
    :cond_3c
    return-void-no-barrier
.end method

.method private makeipt(I)V
    .registers 12
    .param p1, "nw"    # I

    .line 1029
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1030
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    const/4 v2, 0x3

    const/16 v3, 0x10

    aput v3, v0, v2

    .line 1031
    const/4 v0, 0x2

    .line 1032
    .local v0, "m":I
    move v2, v0

    move v0, p1

    .local v0, "l":I
    .local v2, "m":I
    :goto_10
    const/16 v3, 0x20

    if-le v0, v3, :cond_35

    .line 1033
    shl-int/lit8 v3, v2, 0x1

    .line 1034
    .local v3, "m2":I
    shl-int/lit8 v4, v3, 0x3

    .line 1035
    .local v4, "q":I
    move v5, v2

    .local v5, "j":I
    :goto_19
    if-ge v5, v3, :cond_31

    .line 1036
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v6, v6, v5

    shl-int/2addr v6, v1

    .line 1037
    .local v6, "p":I
    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    add-int v8, v2, v5

    aput v6, v7, v8

    .line 1038
    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    add-int v8, v3, v5

    add-int v9, v6, v4

    aput v9, v7, v8

    .line 1035
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 1040
    .end local v6    # "p":I
    :cond_31
    move v2, v3

    .line 1032
    shr-int/lit8 v0, v0, 0x2

    goto :goto_10

    .line 1042
    .end local v3    # "m2":I
    .end local v4    # "q":I
    .end local v5    # "j":I
    :cond_35
    return-void-no-barrier
.end method

.method private makewt(I)V
    .registers 31
    .param p1, "nw"    # I

    move-object/from16 v0, p0

    .line 967
    move/from16 v1, p1

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 968
    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    const/4 v4, 0x1

    aput v4, v2, v4

    .line 969
    const/4 v2, 0x2

    if-le v1, v2, :cond_13e

    .line 970
    shr-int/lit8 v5, v1, 0x1

    .line 971
    .local v5, "nwh":I
    const-wide v6, 0x3fe921fb54442d18L    # 0.7853981633974483

    int-to-double v8, v5

    div-double/2addr v6, v8

    .line 972
    .local v6, "delta":D
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v6

    .line 973
    .local v8, "delta2":D
    int-to-double v10, v5

    mul-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 974
    .local v10, "wn4r":D
    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    aput-wide v13, v12, v3

    .line 975
    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    aput-wide v10, v12, v4

    .line 976
    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x3

    const/4 v12, 0x4

    if-ne v5, v12, :cond_48

    .line 977
    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    aput-wide v18, v3, v2

    .line 978
    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    aput-wide v18, v3, v4

    .line 992
    move/from16 v25, v5

    move-wide/from16 v26, v6

    goto :goto_a8

    .line 979
    :cond_48
    if-le v5, v12, :cond_a4

    .line 980
    invoke-direct/range {p0 .. p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makeipt(I)V

    .line 981
    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    div-double v18, v15, v18

    aput-wide v18, v3, v2

    .line 982
    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    mul-double v12, v6, v18

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    div-double v12, v15, v12

    aput-wide v12, v3, v4

    .line 983
    const/4 v3, 0x4

    .local v3, "j":I
    :goto_66
    if-ge v3, v5, :cond_a4

    .line 984
    int-to-double v12, v3

    mul-double/2addr v12, v6

    .line 985
    .local v12, "deltaj":D
    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    move/from16 v24, v3

    mul-double v2, v18, v12

    .line 986
    .end local v3    # "j":I
    .local v2, "deltaj3":D
    .local v24, "j":I
    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    aput-wide v18, v4, v24

    .line 987
    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v14, v24, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    aput-wide v18, v4, v14

    .line 988
    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v14, v24, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    aput-wide v18, v4, v14

    .line 989
    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v14, v24, 0x3

    move/from16 v25, v5

    move-wide/from16 v26, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    .end local v5    # "nwh":I
    .end local v6    # "delta":D
    .local v25, "nwh":I
    .local v26, "delta":D
    neg-double v5, v5

    aput-wide v5, v4, v14

    .line 983
    add-int/lit8 v4, v24, 0x4

    .end local v24    # "j":I
    .local v4, "j":I
    move v3, v4

    move/from16 v5, v25

    move-wide/from16 v6, v26

    const/4 v2, 0x2

    goto :goto_66

    .line 992
    .end local v2    # "deltaj3":D
    .end local v4    # "j":I
    .end local v12    # "deltaj":D
    .end local v25    # "nwh":I
    .end local v26    # "delta":D
    .restart local v5    # "nwh":I
    .restart local v6    # "delta":D
    :cond_a4
    move/from16 v25, v5

    move-wide/from16 v26, v6

    .end local v5    # "nwh":I
    .end local v6    # "delta":D
    .restart local v25    # "nwh":I
    .restart local v26    # "delta":D
    :goto_a8
    move/from16 v2, v25

    const/16 v17, 0x0

    .end local v25    # "nwh":I
    .local v2, "nwh":I
    .local v17, "nw0":I
    :goto_ac
    move/from16 v3, v17

    .line 993
    .end local v17    # "nw0":I
    .local v3, "nw0":I
    const/4 v4, 0x2

    if-le v2, v4, :cond_13e

    .line 994
    add-int v4, v3, v2

    .line 995
    .local v4, "nw1":I
    shr-int/lit8 v2, v2, 0x1

    .line 996
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v5, v4

    .line 997
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v12, v4, 0x1

    aput-wide v10, v5, v12

    .line 998
    const/4 v5, 0x4

    if-ne v2, v5, :cond_df

    .line 999
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v12, v3, 0x4

    aget-wide v12, v5, v12

    .line 1000
    .local v12, "wk1r":D
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v14, v3, 0x5

    aget-wide v17, v5, v14

    .line 1001
    .local v17, "wk1i":D
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v14, v4, 0x2

    aput-wide v12, v5, v14

    .line 1002
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v14, v4, 0x3

    aput-wide v17, v5, v14

    .line 1021
    .end local v12    # "wk1r":D
    .end local v17    # "wk1i":D
    :cond_dc
    const/16 v19, 0x2

    goto :goto_13a

    .line 1003
    :cond_df
    const/4 v5, 0x4

    if-le v2, v5, :cond_dc

    .line 1004
    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v13, v3, 0x4

    aget-wide v12, v12, v13

    .line 1005
    .restart local v12    # "wk1r":D
    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v17, v3, 0x6

    aget-wide v17, v14, v17

    .line 1006
    .local v17, "wk3r":D
    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v19, v4, 0x2

    div-double v20, v15, v12

    aput-wide v20, v14, v19

    .line 1007
    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v19, v4, 0x3

    div-double v20, v15, v17

    aput-wide v20, v14, v19

    .line 1008
    move-wide v13, v12

    move v12, v5

    .local v12, "j":I
    .local v13, "wk1r":D
    :goto_100
    if-ge v12, v2, :cond_dc

    .line 1009
    const/16 v19, 0x2

    mul-int v20, v19, v12

    add-int v20, v3, v20

    .line 1010
    .local v20, "idx1":I
    add-int v21, v4, v12

    .line 1011
    .local v21, "idx2":I
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    aget-wide v13, v5, v20

    .line 1012
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v22, v20, 0x1

    aget-wide v22, v5, v22

    .line 1013
    .local v22, "wk1i":D
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v24, v20, 0x2

    aget-wide v17, v5, v24

    .line 1014
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v24, v20, 0x3

    aget-wide v24, v5, v24

    .line 1015
    .local v24, "wk3i":D
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    aput-wide v13, v5, v21

    .line 1016
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v28, v21, 0x1

    aput-wide v22, v5, v28

    .line 1017
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v28, v21, 0x2

    aput-wide v17, v5, v28

    .line 1018
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v28, v21, 0x3

    aput-wide v24, v5, v28

    .line 1008
    .end local v20    # "idx1":I
    .end local v21    # "idx2":I
    add-int/lit8 v12, v12, 0x4

    const/4 v5, 0x4

    goto :goto_100

    .line 1021
    .end local v12    # "j":I
    .end local v13    # "wk1r":D
    .end local v17    # "wk3r":D
    .end local v22    # "wk1i":D
    .end local v24    # "wk3i":D
    :goto_13a
    move/from16 v17, v4

    .end local v3    # "nw0":I
    .local v17, "nw0":I
    goto/16 :goto_ac

    .line 1024
    .end local v2    # "nwh":I
    .end local v4    # "nw1":I
    .end local v8    # "delta2":D
    .end local v10    # "wn4r":D
    .end local v17    # "nw0":I
    .end local v26    # "delta":D
    :cond_13e
    return-void-no-barrier
.end method

.method private rftbsub(I[DII[DI)V
    .registers 29
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "nc"    # I
    .param p5, "c"    # [D
    .param p6, "startc"    # I

    .line 6486
    shr-int/lit8 v0, p1, 0x1

    .line 6487
    .local v0, "m":I
    const/4 v1, 0x2

    mul-int v2, v1, p4

    div-int/2addr v2, v0

    .line 6488
    .local v2, "ks":I
    const/4 v3, 0x0

    .line 6489
    .local v3, "kk":I
    nop

    .local v1, "j":I
    :goto_8
    if-ge v1, v0, :cond_56

    .line 6490
    sub-int v4, p1, v1

    .line 6491
    .local v4, "k":I
    add-int/2addr v3, v2

    .line 6492
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-int v7, p6, p4

    sub-int/2addr v7, v3

    aget-wide v7, p5, v7

    sub-double/2addr v5, v7

    .line 6493
    .local v5, "wkr":D
    add-int v7, p6, v3

    aget-wide v7, p5, v7

    .line 6494
    .local v7, "wki":D
    add-int v9, p3, v1

    .line 6495
    .local v9, "idx1":I
    add-int v10, p3, v4

    .line 6496
    .local v10, "idx2":I
    aget-wide v11, p2, v9

    aget-wide v13, p2, v10

    sub-double/2addr v11, v13

    .line 6497
    .local v11, "xr":D
    add-int/lit8 v13, v9, 0x1

    aget-wide v13, p2, v13

    add-int/lit8 v15, v10, 0x1

    aget-wide v15, p2, v15

    add-double/2addr v13, v15

    .line 6498
    .local v13, "xi":D
    mul-double v15, v5, v11

    mul-double v17, v7, v13

    sub-double v15, v15, v17

    .line 6499
    .local v15, "yr":D
    mul-double v17, v5, v13

    mul-double v19, v7, v11

    add-double v17, v17, v19

    .line 6500
    .local v17, "yi":D
    aget-wide v19, p2, v9

    sub-double v19, v19, v15

    aput-wide v19, p2, v9

    .line 6501
    add-int/lit8 v19, v9, 0x1

    aget-wide v20, p2, v19

    sub-double v20, v20, v17

    aput-wide v20, p2, v19

    .line 6502
    aget-wide v19, p2, v10

    add-double v19, v19, v15

    aput-wide v19, p2, v10

    .line 6503
    add-int/lit8 v19, v10, 0x1

    aget-wide v20, p2, v19

    sub-double v20, v20, v17

    aput-wide v20, p2, v19

    .line 6489
    add-int/lit8 v1, v1, 0x2

    goto :goto_8

    .line 6505
    .end local v1    # "j":I
    .end local v4    # "k":I
    .end local v5    # "wkr":D
    .end local v7    # "wki":D
    .end local v9    # "idx1":I
    .end local v10    # "idx2":I
    .end local v11    # "xr":D
    .end local v13    # "xi":D
    .end local v15    # "yr":D
    .end local v17    # "yi":D
    :cond_56
    return-void-no-barrier
.end method

.method private rftfsub(I[DII[DI)V
    .registers 29
    .param p1, "n"    # I
    .param p2, "a"    # [D
    .param p3, "offa"    # I
    .param p4, "nc"    # I
    .param p5, "c"    # [D
    .param p6, "startc"    # I

    .line 6459
    shr-int/lit8 v0, p1, 0x1

    .line 6460
    .local v0, "m":I
    const/4 v1, 0x2

    mul-int v2, v1, p4

    div-int/2addr v2, v0

    .line 6461
    .local v2, "ks":I
    const/4 v3, 0x0

    .line 6462
    .local v3, "kk":I
    nop

    .local v1, "j":I
    :goto_8
    if-ge v1, v0, :cond_5a

    .line 6463
    sub-int v4, p1, v1

    .line 6464
    .local v4, "k":I
    add-int/2addr v3, v2

    .line 6465
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-int v7, p6, p4

    sub-int/2addr v7, v3

    aget-wide v7, p5, v7

    sub-double/2addr v5, v7

    .line 6466
    .local v5, "wkr":D
    add-int v7, p6, v3

    aget-wide v7, p5, v7

    .line 6467
    .local v7, "wki":D
    add-int v9, p3, v1

    .line 6468
    .local v9, "idx1":I
    add-int v10, p3, v4

    .line 6469
    .local v10, "idx2":I
    aget-wide v11, p2, v9

    aget-wide v13, p2, v10

    sub-double/2addr v11, v13

    .line 6470
    .local v11, "xr":D
    add-int/lit8 v13, v9, 0x1

    aget-wide v13, p2, v13

    add-int/lit8 v15, v10, 0x1

    aget-wide v15, p2, v15

    add-double/2addr v13, v15

    .line 6471
    .local v13, "xi":D
    mul-double v15, v5, v11

    mul-double v17, v7, v13

    sub-double v15, v15, v17

    .line 6472
    .local v15, "yr":D
    mul-double v17, v5, v13

    mul-double v19, v7, v11

    add-double v17, v17, v19

    .line 6473
    .local v17, "yi":D
    aget-wide v19, p2, v9

    sub-double v19, v19, v15

    aput-wide v19, p2, v9

    .line 6474
    add-int/lit8 v19, v9, 0x1

    add-int/lit8 v20, v9, 0x1

    aget-wide v20, p2, v20

    sub-double v20, v17, v20

    aput-wide v20, p2, v19

    .line 6475
    aget-wide v19, p2, v10

    add-double v19, v19, v15

    aput-wide v19, p2, v10

    .line 6476
    add-int/lit8 v19, v10, 0x1

    add-int/lit8 v20, v10, 0x1

    aget-wide v20, p2, v20

    sub-double v20, v17, v20

    aput-wide v20, p2, v19

    .line 6462
    add-int/lit8 v1, v1, 0x2

    goto :goto_8

    .line 6478
    .end local v1    # "j":I
    .end local v4    # "k":I
    .end local v5    # "wkr":D
    .end local v7    # "wki":D
    .end local v9    # "idx1":I
    .end local v10    # "idx2":I
    .end local v11    # "xr":D
    .end local v13    # "xi":D
    .end local v15    # "yr":D
    .end local v17    # "yi":D
    :cond_5a
    add-int v1, p3, v0

    add-int/lit8 v1, v1, 0x1

    add-int v4, p3, v0

    add-int/lit8 v4, v4, 0x1

    aget-wide v4, p2, v4

    neg-double v4, v4

    aput-wide v4, p2, v1

    .line 6479
    return-void-no-barrier
.end method

.method private scale(D[DIZ)V
    .registers 23
    .param p1, "m"    # D
    .param p3, "a"    # [D
    .param p4, "offa"    # I
    .param p5, "complex"    # Z

    move-object/from16 v7, p0

    .line 6508
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double v9, v0, p1

    .line 6510
    .local v9, "norm":D
    if-eqz p5, :cond_d

    .line 6511
    const/4 v0, 0x2

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/2addr v0, v1

    .local v0, "n2":I
    goto :goto_f

    .line 6513
    .end local v0    # "n2":I
    :cond_d
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    .restart local v0    # "n2":I
    :goto_f
    move v11, v0

    .line 6515
    .end local v0    # "n2":I
    .local v11, "n2":I
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v5

    .line 6516
    .local v5, "nthreads":I
    const/4 v0, 0x1

    if-le v5, v0, :cond_56

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v0

    if-lt v11, v0, :cond_56

    .line 6517
    div-int v12, v11, v5

    .line 6518
    .local v12, "k":I
    new-array v6, v5, [Ljava/util/concurrent/Future;

    .line 6519
    .local v6, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    move v4, v0

    .end local v0    # "i":I
    .local v4, "i":I
    if-ge v4, v5, :cond_50

    .line 6520
    mul-int v0, v4, v12

    add-int v13, p4, v0

    .line 6521
    .local v13, "firstIdx":I
    add-int/lit8 v0, v5, -0x1

    if-ne v4, v0, :cond_31

    add-int v0, p4, v11

    :goto_2f
    move v3, v0

    goto :goto_34

    :cond_31
    add-int v0, v13, v12

    goto :goto_2f

    .line 6522
    .local v3, "lastIdx":I
    :goto_34
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;

    move-object v0, v2

    move-object v1, v7

    move-object v7, v2

    move v2, v13

    move v14, v4

    move-object/from16 v4, p3

    .end local v4    # "i":I
    .local v14, "i":I
    move v15, v5

    move-object v8, v6

    move-wide v5, v9

    .end local v5    # "nthreads":I
    .end local v6    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .local v8, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .local v15, "nthreads":I
    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DD)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v8, v14

    .line 6519
    .end local v3    # "lastIdx":I
    .end local v13    # "firstIdx":I
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "i":I
    .restart local v0    # "i":I
    move-object v6, v8

    move v5, v15

    move-object/from16 v7, p0

    goto :goto_22

    .line 6531
    .end local v0    # "i":I
    .end local v8    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v15    # "nthreads":I
    .restart local v5    # "nthreads":I
    .restart local v6    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    :cond_50
    move v15, v5

    move-object v8, v6

    .end local v5    # "nthreads":I
    .end local v6    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .restart local v8    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .restart local v15    # "nthreads":I
    invoke-static {v8}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 6532
    .end local v8    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v12    # "k":I
    goto :goto_65

    .line 6533
    .end local v15    # "nthreads":I
    .restart local v5    # "nthreads":I
    :cond_56
    move v15, v5

    .end local v5    # "nthreads":I
    .restart local v15    # "nthreads":I
    move/from16 v0, p4

    .restart local v0    # "i":I
    :goto_59
    add-int v1, p4, v11

    if-ge v0, v1, :cond_65

    .line 6534
    aget-wide v1, p3, v0

    mul-double/2addr v1, v9

    aput-wide v1, p3, v0

    .line 6533
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 6538
    .end local v0    # "i":I
    :cond_65
    :goto_65
    return-void-no-barrier
.end method


# virtual methods
.method cfftf([DII)V
    .registers 34
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "isign"    # I

    move-object/from16 v12, p0

    .line 3293
    const/4 v13, 0x1

    new-array v14, v13, [I

    .line 3294
    .local v14, "nac":[I
    iget v0, v12, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x2

    mul-int v15, v1, v0

    .line 3297
    .local v15, "twon":I
    new-array v11, v15, [D

    .line 3299
    .local v11, "ch":[D
    move/from16 v16, v15

    .line 3300
    .local v16, "iw1":I
    iget v0, v12, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x4

    mul-int v17, v2, v0

    .line 3301
    .local v17, "iw2":I
    const/4 v10, 0x0

    aput v10, v14, v10

    .line 3302
    iget-object v0, v12, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v2, v13, v17

    aget-wide v2, v0, v2

    double-to-int v9, v2

    .line 3303
    .local v9, "nf":I
    const/4 v0, 0x0

    .line 3304
    .local v0, "na":I
    const/4 v2, 0x1

    .line 3305
    .local v2, "l1":I
    move/from16 v3, v16

    .line 3306
    .local v3, "iw":I
    move/from16 v19, v0

    move/from16 v18, v2

    move/from16 v20, v3

    .end local v0    # "na":I
    .end local v2    # "l1":I
    .end local v3    # "iw":I
    .local v1, "k1":I
    .local v18, "l1":I
    .local v19, "na":I
    .local v20, "iw":I
    :goto_27
    move v8, v1

    .end local v1    # "k1":I
    .local v8, "k1":I
    add-int/lit8 v0, v9, 0x1

    if-gt v8, v0, :cond_168

    .line 3307
    iget-object v0, v12, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v1, v8, v17

    aget-wide v0, v0, v1

    double-to-int v7, v0

    .line 3308
    .local v7, "ip":I
    mul-int v21, v7, v18

    .line 3309
    .local v21, "l2":I
    iget v0, v12, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v22, v0, v21

    .line 3310
    .local v22, "ido":I
    add-int v23, v22, v22

    .line 3311
    .local v23, "idot":I
    mul-int v24, v23, v18

    .line 3312
    .local v24, "idl1":I
    packed-switch v7, :pswitch_data_17a

    .line 3346
    move/from16 v25, v7

    move/from16 v26, v8

    .end local v7    # "ip":I
    .end local v8    # "k1":I
    .local v25, "ip":I
    .local v26, "k1":I
    if-nez v19, :cond_12e

    .line 3347
    const/16 v27, 0x0

    move-object v0, v12

    move-object v1, v14

    move/from16 v2, v23

    move/from16 v3, v25

    move/from16 v4, v18

    move/from16 v5, v24

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object v8, v11

    move/from16 v28, v9

    move/from16 v9, v27

    .end local v9    # "nf":I
    .local v28, "nf":I
    move v13, v10

    move/from16 v10, v20

    move-object/from16 v29, v11

    move/from16 v11, p3

    .end local v11    # "ch":[D
    .local v29, "ch":[D
    invoke-virtual/range {v0 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passfg([IIIII[DI[DIII)V

    goto/16 :goto_14b

    .line 3338
    .end local v25    # "ip":I
    .end local v26    # "k1":I
    .end local v28    # "nf":I
    .end local v29    # "ch":[D
    .restart local v7    # "ip":I
    .restart local v8    # "k1":I
    .restart local v9    # "nf":I
    .restart local v11    # "ch":[D
    :pswitch_67
    if-nez v19, :cond_80

    .line 3339
    const/4 v6, 0x0

    move-object v0, v12

    move/from16 v1, v23

    move/from16 v2, v18

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v11

    move/from16 v25, v7

    move/from16 v7, v20

    .end local v7    # "ip":I
    .restart local v25    # "ip":I
    move/from16 v26, v8

    move/from16 v8, p3

    .end local v8    # "k1":I
    .restart local v26    # "k1":I
    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf5(II[DI[DIII)V

    goto :goto_96

    .line 3341
    .end local v25    # "ip":I
    .end local v26    # "k1":I
    .restart local v7    # "ip":I
    .restart local v8    # "k1":I
    :cond_80
    move/from16 v25, v7

    move/from16 v26, v8

    .end local v7    # "ip":I
    .end local v8    # "k1":I
    .restart local v25    # "ip":I
    .restart local v26    # "k1":I
    const/4 v4, 0x0

    move-object v0, v12

    move/from16 v1, v23

    move/from16 v2, v18

    move-object v3, v11

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v20

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf5(II[DI[DIII)V

    .line 3343
    :goto_96
    rsub-int/lit8 v0, v19, 0x1

    .line 3344
    .end local v19    # "na":I
    .restart local v0    # "na":I
    goto/16 :goto_125

    .line 3314
    .end local v0    # "na":I
    .end local v25    # "ip":I
    .end local v26    # "k1":I
    .restart local v7    # "ip":I
    .restart local v8    # "k1":I
    .restart local v19    # "na":I
    :pswitch_9a
    move/from16 v25, v7

    move/from16 v26, v8

    .end local v7    # "ip":I
    .end local v8    # "k1":I
    .restart local v25    # "ip":I
    .restart local v26    # "k1":I
    if-nez v19, :cond_b3

    .line 3315
    const/4 v6, 0x0

    move-object v0, v12

    move/from16 v1, v23

    move/from16 v2, v18

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v11

    move/from16 v7, v20

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf4(II[DI[DIII)V

    goto :goto_c5

    .line 3317
    :cond_b3
    const/4 v4, 0x0

    move-object v0, v12

    move/from16 v1, v23

    move/from16 v2, v18

    move-object v3, v11

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v20

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf4(II[DI[DIII)V

    .line 3319
    :goto_c5
    rsub-int/lit8 v0, v19, 0x1

    .line 3320
    .end local v19    # "na":I
    .restart local v0    # "na":I
    goto/16 :goto_125

    .line 3330
    .end local v0    # "na":I
    .end local v25    # "ip":I
    .end local v26    # "k1":I
    .restart local v7    # "ip":I
    .restart local v8    # "k1":I
    .restart local v19    # "na":I
    :pswitch_c9
    move/from16 v25, v7

    move/from16 v26, v8

    .end local v7    # "ip":I
    .end local v8    # "k1":I
    .restart local v25    # "ip":I
    .restart local v26    # "k1":I
    if-nez v19, :cond_e2

    .line 3331
    const/4 v6, 0x0

    move-object v0, v12

    move/from16 v1, v23

    move/from16 v2, v18

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v11

    move/from16 v7, v20

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf3(II[DI[DIII)V

    goto :goto_f4

    .line 3333
    :cond_e2
    const/4 v4, 0x0

    move-object v0, v12

    move/from16 v1, v23

    move/from16 v2, v18

    move-object v3, v11

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v20

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf3(II[DI[DIII)V

    .line 3335
    :goto_f4
    rsub-int/lit8 v0, v19, 0x1

    .line 3336
    .end local v19    # "na":I
    .restart local v0    # "na":I
    goto :goto_125

    .line 3322
    .end local v0    # "na":I
    .end local v25    # "ip":I
    .end local v26    # "k1":I
    .restart local v7    # "ip":I
    .restart local v8    # "k1":I
    .restart local v19    # "na":I
    :pswitch_f7
    move/from16 v25, v7

    move/from16 v26, v8

    .end local v7    # "ip":I
    .end local v8    # "k1":I
    .restart local v25    # "ip":I
    .restart local v26    # "k1":I
    if-nez v19, :cond_110

    .line 3323
    const/4 v6, 0x0

    move-object v0, v12

    move/from16 v1, v23

    move/from16 v2, v18

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v11

    move/from16 v7, v20

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf2(II[DI[DIII)V

    goto :goto_122

    .line 3325
    :cond_110
    const/4 v4, 0x0

    move-object v0, v12

    move/from16 v1, v23

    move/from16 v2, v18

    move-object v3, v11

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v20

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf2(II[DI[DIII)V

    .line 3327
    :goto_122
    rsub-int/lit8 v0, v19, 0x1

    .line 3328
    .end local v19    # "na":I
    .restart local v0    # "na":I
    nop

    .line 3355
    .end local v0    # "na":I
    .end local v9    # "nf":I
    .end local v11    # "ch":[D
    .restart local v19    # "na":I
    .restart local v28    # "nf":I
    .restart local v29    # "ch":[D
    :goto_125
    move/from16 v19, v0

    move/from16 v28, v9

    move-object/from16 v29, v11

    move v0, v13

    move v13, v10

    goto :goto_156

    .line 3349
    .end local v28    # "nf":I
    .end local v29    # "ch":[D
    .restart local v9    # "nf":I
    .restart local v11    # "ch":[D
    :cond_12e
    move/from16 v28, v9

    move v13, v10

    move-object/from16 v29, v11

    .end local v9    # "nf":I
    .end local v11    # "ch":[D
    .restart local v28    # "nf":I
    .restart local v29    # "ch":[D
    const/4 v7, 0x0

    move-object v0, v12

    move-object v1, v14

    move/from16 v2, v23

    move/from16 v3, v25

    move/from16 v4, v18

    move/from16 v5, v24

    move-object/from16 v6, v29

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, v20

    move/from16 v11, p3

    invoke-virtual/range {v0 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passfg([IIIII[DI[DIII)V

    .line 3351
    :goto_14b
    aget v0, v14, v13

    if-eqz v0, :cond_155

    .line 3352
    const/4 v0, 0x1

    rsub-int/lit8 v1, v19, 0x1

    .line 3355
    .end local v19    # "na":I
    .local v1, "na":I
    move/from16 v19, v1

    goto :goto_156

    .end local v1    # "na":I
    .restart local v19    # "na":I
    :cond_155
    const/4 v0, 0x1

    :goto_156
    move/from16 v18, v21

    .line 3356
    add-int/lit8 v7, v25, -0x1

    mul-int v7, v7, v23

    add-int v20, v20, v7

    .line 3306
    add-int/lit8 v1, v26, 0x1

    .end local v26    # "k1":I
    .local v1, "k1":I
    move v10, v13

    move/from16 v9, v28

    move-object/from16 v11, v29

    move v13, v0

    goto/16 :goto_27

    .line 3358
    .end local v1    # "k1":I
    .end local v21    # "l2":I
    .end local v22    # "ido":I
    .end local v23    # "idot":I
    .end local v24    # "idl1":I
    .end local v25    # "ip":I
    .end local v28    # "nf":I
    .end local v29    # "ch":[D
    .restart local v9    # "nf":I
    .restart local v11    # "ch":[D
    :cond_168
    move/from16 v28, v9

    move v13, v10

    move-object/from16 v29, v11

    .end local v9    # "nf":I
    .end local v11    # "ch":[D
    .restart local v28    # "nf":I
    .restart local v29    # "ch":[D
    if-nez v19, :cond_170

    .line 3359
    return-void-no-barrier

    .line 3360
    :cond_170
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v29

    invoke-static {v2, v13, v0, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3362
    .end local v29    # "ch":[D
    .local v2, "ch":[D
    return-void-no-barrier

    :pswitch_data_17a
    .packed-switch 0x2
        :pswitch_f7
        :pswitch_c9
        :pswitch_9a
        :pswitch_67
    .end packed-switch
.end method

.method cffti()V
    .registers 40

    .line 773
    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 774
    return-void-no-barrier

    .line 776
    :cond_8
    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v3, 0x2

    mul-int/2addr v1, v3

    .line 777
    .local v1, "twon":I
    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v5, 0x4

    mul-int/2addr v4, v5

    .line 779
    .local v4, "fourn":I
    const/4 v6, 0x0

    .line 787
    .local v6, "ntry":I
    iget v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    .line 788
    .local v7, "nl":I
    const/4 v8, 0x0

    .line 789
    .local v8, "nf":I
    const/4 v9, 0x0

    .line 793
    .local v9, "j":I
    :goto_15
    add-int/2addr v9, v2

    .line 794
    if-gt v9, v5, :cond_1f

    .line 795
    sget-object v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    add-int/lit8 v11, v9, -0x1

    aget v6, v10, v11

    goto :goto_21

    .line 797
    :cond_1f
    add-int/lit8 v6, v6, 0x2

    .line 799
    :goto_21
    div-int v10, v7, v6

    .line 800
    .local v10, "nq":I
    mul-int v11, v6, v10

    sub-int v11, v7, v11

    .line 801
    .local v11, "nr":I
    if-eqz v11, :cond_2a

    .line 802
    goto :goto_15

    .line 803
    :cond_2a
    add-int/lit8 v8, v8, 0x1

    .line 804
    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v13, v8, 0x1

    add-int/2addr v13, v4

    int-to-double v14, v6

    aput-wide v14, v12, v13

    .line 805
    move v7, v10

    .line 806
    if-ne v6, v3, :cond_57

    if-eq v8, v2, :cond_57

    .line 807
    move v12, v3

    .local v12, "i":I
    :goto_3a
    if-gt v12, v8, :cond_4f

    .line 808
    sub-int v13, v8, v12

    add-int/2addr v13, v3

    .line 809
    .local v13, "ib":I
    add-int v14, v13, v4

    .line 810
    .local v14, "idx":I
    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v16, v14, 0x1

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v17, v5, v14

    aput-wide v17, v15, v16

    .line 807
    .end local v14    # "idx":I
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x4

    goto :goto_3a

    .line 812
    .end local v13    # "ib":I
    :cond_4f
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v13, v3, v4

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    aput-wide v14, v5, v13

    .line 814
    .end local v12    # "i":I
    :cond_57
    if-ne v7, v2, :cond_151

    .line 815
    nop

    .line 817
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    iget v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v12, v12

    aput-wide v12, v5, v4

    .line 818
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v12, v2, v4

    int-to-double v13, v8

    aput-wide v13, v5, v12

    .line 819
    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v14, v5

    div-double/2addr v12, v14

    .line 820
    .local v12, "argh":D
    const/4 v5, 0x1

    .line 821
    .local v5, "i":I
    const/4 v14, 0x1

    .line 822
    .local v14, "l1":I
    nop

    .local v2, "k1":I
    :goto_74
    if-gt v2, v8, :cond_142

    .line 823
    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v16, v2, 0x1

    add-int v16, v16, v4

    move/from16 v20, v4

    aget-wide v3, v15, v16

    .end local v4    # "fourn":I
    .local v20, "fourn":I
    double-to-int v3, v3

    .line 824
    .local v3, "ip":I
    const/4 v4, 0x0

    .line 825
    .local v4, "ld":I
    mul-int v15, v14, v3

    .line 826
    .local v15, "l2":I
    move/from16 v21, v4

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    .end local v4    # "ld":I
    .local v21, "ld":I
    div-int/2addr v4, v15

    .line 827
    .local v4, "ido":I
    add-int v16, v4, v4

    move/from16 v22, v4

    const/16 v17, 0x2

    add-int/lit8 v4, v16, 0x2

    .line 828
    .local v4, "idot":I
    .local v22, "ido":I
    move/from16 v23, v5

    add-int/lit8 v5, v3, -0x1

    .line 829
    .local v5, "ipm":I
    .local v23, "i":I
    const/4 v9, 0x1

    :goto_96
    if-gt v9, v5, :cond_129

    .line 830
    move/from16 v16, v23

    .line 831
    .local v16, "i1":I
    move/from16 v24, v5

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    .end local v5    # "ipm":I
    .local v24, "ipm":I
    add-int/lit8 v18, v23, -0x1

    add-int v18, v18, v1

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    aput-wide v25, v5, v18

    .line 832
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v18, v23, v1

    const-wide/16 v27, 0x0

    aput-wide v27, v5, v18

    .line 833
    add-int v5, v21, v14

    .line 834
    .end local v21    # "ld":I
    .local v5, "ld":I
    const-wide/16 v18, 0x0

    .line 835
    .local v18, "fi":D
    move/from16 v29, v6

    move/from16 v30, v7

    int-to-double v6, v5

    .end local v6    # "ntry":I
    .end local v7    # "nl":I
    .local v29, "ntry":I
    .local v30, "nl":I
    mul-double/2addr v6, v12

    .line 836
    .local v6, "argld":D
    move-wide/from16 v27, v18

    const/16 v18, 0x4

    .local v18, "ii":I
    .local v27, "fi":D
    :goto_bc
    move/from16 v31, v18

    .end local v18    # "ii":I
    .local v31, "ii":I
    move/from16 v32, v5

    move/from16 v5, v31

    if-gt v5, v4, :cond_ef

    .line 837
    .end local v31    # "ii":I
    .local v5, "ii":I
    .local v32, "ld":I
    add-int/lit8 v23, v23, 0x2

    .line 838
    add-double v27, v27, v25

    .line 839
    move/from16 v33, v10

    move/from16 v34, v11

    mul-double v10, v27, v6

    .line 840
    .end local v11    # "nr":I
    .local v10, "arg":D
    .local v33, "nq":I
    .local v34, "nr":I
    add-int v18, v23, v1

    .line 841
    .local v18, "idx":I
    move/from16 v35, v4

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    .end local v4    # "idot":I
    .local v35, "idot":I
    add-int/lit8 v19, v18, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    aput-wide v36, v4, v19

    .line 842
    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    aput-wide v36, v4, v18

    .line 836
    .end local v18    # "idx":I
    add-int/lit8 v18, v5, 0x2

    .end local v5    # "ii":I
    .local v18, "ii":I
    move/from16 v5, v32

    move/from16 v10, v33

    move/from16 v11, v34

    move/from16 v4, v35

    goto :goto_bc

    .line 844
    .end local v18    # "ii":I
    .end local v33    # "nq":I
    .end local v34    # "nr":I
    .end local v35    # "idot":I
    .restart local v4    # "idot":I
    .restart local v5    # "ii":I
    .local v10, "nq":I
    .restart local v11    # "nr":I
    :cond_ef
    move/from16 v35, v4

    move/from16 v33, v10

    move/from16 v34, v11

    .end local v4    # "idot":I
    .end local v10    # "nq":I
    .end local v11    # "nr":I
    .restart local v33    # "nq":I
    .restart local v34    # "nr":I
    .restart local v35    # "idot":I
    const/4 v4, 0x5

    if-le v3, v4, :cond_113

    .line 845
    add-int v4, v16, v1

    .line 846
    .local v4, "idx1":I
    add-int v10, v23, v1

    .line 847
    .local v10, "idx2":I
    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v18, v4, -0x1

    move/from16 v38, v1

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    .end local v1    # "twon":I
    .local v38, "twon":I
    add-int/lit8 v19, v10, -0x1

    aget-wide v25, v1, v19

    aput-wide v25, v11, v18

    .line 848
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v18, v11, v10

    aput-wide v18, v1, v4

    .end local v4    # "idx1":I
    .end local v10    # "idx2":I
    goto :goto_115

    .line 829
    .end local v38    # "twon":I
    .restart local v1    # "twon":I
    :cond_113
    move/from16 v38, v1

    .end local v1    # "twon":I
    .restart local v38    # "twon":I
    :goto_115
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v24

    move/from16 v6, v29

    move/from16 v7, v30

    move/from16 v21, v32

    move/from16 v10, v33

    move/from16 v11, v34

    move/from16 v4, v35

    move/from16 v1, v38

    goto/16 :goto_96

    .line 851
    .end local v16    # "i1":I
    .end local v24    # "ipm":I
    .end local v27    # "fi":D
    .end local v29    # "ntry":I
    .end local v30    # "nl":I
    .end local v32    # "ld":I
    .end local v33    # "nq":I
    .end local v34    # "nr":I
    .end local v35    # "idot":I
    .end local v38    # "twon":I
    .restart local v1    # "twon":I
    .local v4, "idot":I
    .local v5, "ipm":I
    .local v6, "ntry":I
    .restart local v7    # "nl":I
    .local v10, "nq":I
    .restart local v11    # "nr":I
    .restart local v21    # "ld":I
    :cond_129
    move/from16 v38, v1

    move/from16 v35, v4

    move/from16 v24, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v33, v10

    move/from16 v34, v11

    .end local v1    # "twon":I
    .end local v4    # "idot":I
    .end local v5    # "ipm":I
    .end local v6    # "ntry":I
    .end local v7    # "nl":I
    .end local v10    # "nq":I
    .end local v11    # "nr":I
    .restart local v24    # "ipm":I
    .restart local v29    # "ntry":I
    .restart local v30    # "nl":I
    .restart local v33    # "nq":I
    .restart local v34    # "nr":I
    .restart local v35    # "idot":I
    .restart local v38    # "twon":I
    move v14, v15

    .line 822
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v17

    move/from16 v4, v20

    move/from16 v5, v23

    goto/16 :goto_74

    .line 854
    .end local v3    # "ip":I
    .end local v15    # "l2":I
    .end local v20    # "fourn":I
    .end local v21    # "ld":I
    .end local v22    # "ido":I
    .end local v23    # "i":I
    .end local v24    # "ipm":I
    .end local v29    # "ntry":I
    .end local v30    # "nl":I
    .end local v33    # "nq":I
    .end local v34    # "nr":I
    .end local v35    # "idot":I
    .end local v38    # "twon":I
    .restart local v1    # "twon":I
    .local v4, "fourn":I
    .local v5, "i":I
    .restart local v6    # "ntry":I
    .restart local v7    # "nl":I
    .restart local v10    # "nq":I
    .restart local v11    # "nr":I
    :cond_142
    move/from16 v38, v1

    move/from16 v20, v4

    move/from16 v23, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v33, v10

    move/from16 v34, v11

    .end local v1    # "twon":I
    .end local v4    # "fourn":I
    .end local v5    # "i":I
    .end local v6    # "ntry":I
    .end local v7    # "nl":I
    .end local v10    # "nq":I
    .end local v11    # "nr":I
    .restart local v20    # "fourn":I
    .restart local v23    # "i":I
    .restart local v29    # "ntry":I
    .restart local v30    # "nl":I
    .restart local v33    # "nq":I
    .restart local v34    # "nr":I
    .restart local v38    # "twon":I
    return-void-no-barrier

    .line 799
    .end local v2    # "k1":I
    .end local v12    # "argh":D
    .end local v14    # "l1":I
    .end local v20    # "fourn":I
    .end local v23    # "i":I
    .end local v29    # "ntry":I
    .end local v30    # "nl":I
    .end local v33    # "nq":I
    .end local v34    # "nr":I
    .end local v38    # "twon":I
    .restart local v1    # "twon":I
    .restart local v4    # "fourn":I
    .restart local v6    # "ntry":I
    .restart local v7    # "nl":I
    :cond_151
    move/from16 v29, v6

    move/from16 v30, v7

    const/4 v5, 0x4

    .end local v1    # "twon":I
    .end local v4    # "fourn":I
    .end local v6    # "ntry":I
    .end local v7    # "nl":I
    .restart local v20    # "fourn":I
    .restart local v29    # "ntry":I
    .restart local v30    # "nl":I
    .restart local v38    # "twon":I
    goto/16 :goto_21
.end method

.method cffti(II)V
    .registers 42
    .param p1, "n"    # I
    .param p2, "offw"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 683
    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 684
    return-void-no-barrier

    .line 686
    :cond_8
    const/4 v3, 0x2

    mul-int v4, v3, v1

    .line 687
    .local v4, "twon":I
    const/4 v5, 0x4

    mul-int v6, v5, v1

    .line 689
    .local v6, "fourn":I
    const/4 v7, 0x0

    .line 697
    .local v7, "ntry":I
    move v8, v1

    .line 698
    .local v8, "nl":I
    const/4 v9, 0x0

    .line 699
    .local v9, "nf":I
    const/4 v10, 0x0

    .line 703
    .local v10, "j":I
    :goto_12
    add-int/2addr v10, v2

    .line 704
    if-gt v10, v5, :cond_1c

    .line 705
    sget-object v11, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    add-int/lit8 v12, v10, -0x1

    aget v7, v11, v12

    goto :goto_1e

    .line 707
    :cond_1c
    add-int/lit8 v7, v7, 0x2

    .line 709
    :goto_1e
    div-int v11, v8, v7

    .line 710
    .local v11, "nq":I
    mul-int v12, v7, v11

    sub-int v12, v8, v12

    .line 711
    .local v12, "nr":I
    if-eqz v12, :cond_27

    .line 712
    goto :goto_12

    .line 713
    :cond_27
    add-int/lit8 v9, v9, 0x1

    .line 714
    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v14, p2, v9

    add-int/2addr v14, v2

    add-int/2addr v14, v6

    move v15, v6

    int-to-double v5, v7

    .end local v6    # "fourn":I
    .local v15, "fourn":I
    aput-wide v5, v13, v14

    .line 715
    move v8, v11

    .line 716
    if-ne v7, v3, :cond_5b

    if-eq v9, v2, :cond_5b

    .line 717
    move v5, v3

    .local v5, "i":I
    :goto_39
    if-gt v5, v9, :cond_52

    .line 718
    sub-int v6, v9, v5

    add-int/2addr v6, v3

    .line 719
    .local v6, "ib":I
    add-int v13, v6, v15

    .line 720
    .local v13, "idx":I
    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v16, p2, v13

    add-int/lit8 v16, v16, 0x1

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v18, p2, v13

    aget-wide v18, v3, v18

    aput-wide v18, v14, v16

    .line 717
    .end local v13    # "idx":I
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x2

    goto :goto_39

    .line 722
    .end local v6    # "ib":I
    :cond_52
    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v6, p2, 0x2

    add-int/2addr v6, v15

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    aput-wide v13, v3, v6

    .line 724
    .end local v5    # "i":I
    :cond_5b
    if-ne v8, v2, :cond_15b

    .line 725
    nop

    .line 727
    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v5, p2, v15

    int-to-double v13, v1

    aput-wide v13, v3, v5

    .line 728
    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v5, p2, 0x1

    add-int/2addr v5, v15

    int-to-double v13, v9

    aput-wide v13, v3, v5

    .line 729
    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v13, v1

    div-double/2addr v5, v13

    .line 730
    .local v5, "argh":D
    const/4 v3, 0x1

    .line 731
    .local v3, "i":I
    const/4 v13, 0x1

    .line 732
    .local v13, "l1":I
    move v14, v3

    move v3, v2

    .local v3, "k1":I
    .local v14, "i":I
    :goto_78
    if-gt v3, v9, :cond_150

    .line 733
    move/from16 v20, v7

    iget-object v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    .end local v7    # "ntry":I
    .local v20, "ntry":I
    add-int v16, p2, v3

    add-int/lit8 v16, v16, 0x1

    add-int v16, v16, v15

    move/from16 v22, v3

    aget-wide v2, v7, v16

    .end local v3    # "k1":I
    .local v22, "k1":I
    double-to-int v2, v2

    .line 734
    .local v2, "ip":I
    const/4 v3, 0x0

    .line 735
    .local v3, "ld":I
    mul-int v7, v13, v2

    .line 736
    .local v7, "l2":I
    div-int v16, v1, v7

    .line 737
    .local v16, "ido":I
    add-int v18, v16, v16

    const/16 v17, 0x2

    add-int/lit8 v1, v18, 0x2

    .line 738
    .local v1, "idot":I
    move/from16 v23, v3

    add-int/lit8 v3, v2, -0x1

    .line 739
    .local v3, "ipm":I
    .local v23, "ld":I
    const/4 v10, 0x1

    :goto_99
    if-gt v10, v3, :cond_137

    .line 740
    move/from16 v18, v14

    .line 741
    .local v18, "i1":I
    move/from16 v24, v3

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    .end local v3    # "ipm":I
    .local v24, "ipm":I
    add-int v19, p2, v14

    const/16 v21, 0x1

    add-int/lit8 v19, v19, -0x1

    add-int v19, v19, v4

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    aput-wide v25, v3, v19

    .line 742
    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v19, p2, v14

    add-int v19, v19, v4

    const-wide/16 v27, 0x0

    aput-wide v27, v3, v19

    .line 743
    add-int v3, v23, v13

    .line 744
    .end local v23    # "ld":I
    .local v3, "ld":I
    const-wide/16 v27, 0x0

    .line 745
    .local v27, "fi":D
    move/from16 v30, v8

    move/from16 v29, v9

    int-to-double v8, v3

    .end local v8    # "nl":I
    .end local v9    # "nf":I
    .local v29, "nf":I
    .local v30, "nl":I
    mul-double/2addr v8, v5

    .line 746
    .local v8, "argld":D
    move/from16 v19, v14

    const/4 v14, 0x4

    .local v14, "ii":I
    .local v19, "i":I
    :goto_c4
    if-gt v14, v1, :cond_f1

    .line 747
    add-int/lit8 v19, v19, 0x2

    .line 748
    add-double v27, v27, v25

    .line 749
    move-wide/from16 v31, v5

    mul-double v5, v27, v8

    .line 750
    .local v5, "arg":D
    .local v31, "argh":D
    add-int v23, v19, v4

    .line 751
    .local v23, "idx":I
    move/from16 v33, v1

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    .end local v1    # "idot":I
    .local v33, "idot":I
    add-int v34, p2, v23

    const/16 v21, 0x1

    add-int/lit8 v34, v34, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    aput-wide v35, v1, v34

    .line 752
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v34, p2, v23

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v35

    aput-wide v35, v1, v34

    .line 746
    .end local v23    # "idx":I
    add-int/lit8 v14, v14, 0x2

    move-wide/from16 v5, v31

    move/from16 v1, v33

    goto :goto_c4

    .line 754
    .end local v31    # "argh":D
    .end local v33    # "idot":I
    .restart local v1    # "idot":I
    .local v5, "argh":D
    :cond_f1
    move/from16 v33, v1

    move-wide/from16 v31, v5

    .end local v1    # "idot":I
    .end local v5    # "argh":D
    .restart local v31    # "argh":D
    .restart local v33    # "idot":I
    const/4 v1, 0x5

    if-le v2, v1, :cond_11f

    .line 755
    add-int v1, v18, v4

    .line 756
    .local v1, "idx1":I
    add-int v5, v19, v4

    .line 757
    .local v5, "idx2":I
    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v23, p2, v1

    const/16 v21, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v37, v2

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    .end local v2    # "ip":I
    .local v37, "ip":I
    add-int v25, p2, v5

    add-int/lit8 v25, v25, -0x1

    aget-wide v25, v2, v25

    aput-wide v25, v6, v23

    .line 758
    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v6, p2, v1

    move/from16 v38, v1

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    .end local v1    # "idx1":I
    .local v38, "idx1":I
    add-int v23, p2, v5

    aget-wide v25, v1, v23

    aput-wide v25, v2, v6

    .end local v5    # "idx2":I
    .end local v38    # "idx1":I
    goto :goto_123

    .line 739
    .end local v37    # "ip":I
    .restart local v2    # "ip":I
    :cond_11f
    move/from16 v37, v2

    const/16 v21, 0x1

    .end local v2    # "ip":I
    .restart local v37    # "ip":I
    :goto_123
    add-int/lit8 v10, v10, 0x1

    move/from16 v23, v3

    move/from16 v14, v19

    move/from16 v3, v24

    move/from16 v9, v29

    move/from16 v8, v30

    move-wide/from16 v5, v31

    move/from16 v1, v33

    move/from16 v2, v37

    goto/16 :goto_99

    .line 761
    .end local v18    # "i1":I
    .end local v19    # "i":I
    .end local v24    # "ipm":I
    .end local v27    # "fi":D
    .end local v29    # "nf":I
    .end local v30    # "nl":I
    .end local v31    # "argh":D
    .end local v33    # "idot":I
    .end local v37    # "ip":I
    .local v1, "idot":I
    .restart local v2    # "ip":I
    .local v3, "ipm":I
    .local v5, "argh":D
    .local v8, "nl":I
    .restart local v9    # "nf":I
    .local v14, "i":I
    .local v23, "ld":I
    :cond_137
    move/from16 v33, v1

    move/from16 v37, v2

    move/from16 v24, v3

    move-wide/from16 v31, v5

    move/from16 v30, v8

    move/from16 v29, v9

    const/16 v21, 0x1

    .end local v1    # "idot":I
    .end local v2    # "ip":I
    .end local v3    # "ipm":I
    .end local v5    # "argh":D
    .end local v8    # "nl":I
    .end local v9    # "nf":I
    .restart local v24    # "ipm":I
    .restart local v29    # "nf":I
    .restart local v30    # "nl":I
    .restart local v31    # "argh":D
    .restart local v33    # "idot":I
    .restart local v37    # "ip":I
    move v13, v7

    .line 732
    add-int/lit8 v3, v22, 0x1

    .end local v22    # "k1":I
    .local v3, "k1":I
    move/from16 v7, v20

    move/from16 v2, v21

    move/from16 v1, p1

    goto/16 :goto_78

    .line 764
    .end local v16    # "ido":I
    .end local v20    # "ntry":I
    .end local v23    # "ld":I
    .end local v24    # "ipm":I
    .end local v29    # "nf":I
    .end local v30    # "nl":I
    .end local v31    # "argh":D
    .end local v33    # "idot":I
    .end local v37    # "ip":I
    .restart local v5    # "argh":D
    .local v7, "ntry":I
    .restart local v8    # "nl":I
    .restart local v9    # "nf":I
    :cond_150
    move/from16 v22, v3

    move-wide/from16 v31, v5

    move/from16 v20, v7

    move/from16 v30, v8

    move/from16 v29, v9

    .end local v3    # "k1":I
    .end local v5    # "argh":D
    .end local v7    # "ntry":I
    .end local v8    # "nl":I
    .end local v9    # "nf":I
    .restart local v20    # "ntry":I
    .restart local v22    # "k1":I
    .restart local v29    # "nf":I
    .restart local v30    # "nl":I
    .restart local v31    # "argh":D
    return-void-no-barrier

    .line 709
    .end local v11    # "nq":I
    .end local v12    # "nr":I
    .end local v13    # "l1":I
    .end local v14    # "i":I
    .end local v20    # "ntry":I
    .end local v22    # "k1":I
    .end local v29    # "nf":I
    .end local v30    # "nl":I
    .end local v31    # "argh":D
    .restart local v7    # "ntry":I
    .restart local v8    # "nl":I
    .restart local v9    # "nf":I
    :cond_15b
    move/from16 v20, v7

    move/from16 v30, v8

    move/from16 v29, v9

    const/16 v17, 0x2

    move v6, v15

    move/from16 v3, v17

    const/4 v5, 0x4

    .end local v7    # "ntry":I
    .end local v8    # "nl":I
    .end local v9    # "nf":I
    .restart local v20    # "ntry":I
    .restart local v29    # "nf":I
    .restart local v30    # "nl":I
    goto/16 :goto_1e
.end method

.method public complexForward([D)V
    .registers 3
    .param p1, "a"    # [D

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 158
    return-void-no-barrier
.end method

.method public complexForward([DI)V
    .registers 12
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .line 176
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 177
    return-void-no-barrier

    .line 178
    :cond_6
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_30

    goto :goto_2f

    .line 186
    :pswitch_15
    invoke-direct {p0, p1, p2, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_complex([DII)V

    goto :goto_2f

    .line 183
    :pswitch_19
    invoke-virtual {p0, p1, p2, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfftf([DII)V

    .line 184
    goto :goto_2f

    .line 180
    :pswitch_1d
    const/4 v0, 0x2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int v3, v0, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 181
    nop

    .line 189
    :goto_2f
    return-void-no-barrier

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_19
        :pswitch_15
    .end packed-switch
.end method

.method public complexInverse([DIZ)V
    .registers 13
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "scale"    # Z

    .line 227
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 228
    return-void-no-barrier

    .line 229
    :cond_6
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_3c

    goto :goto_2e

    .line 237
    :pswitch_14
    invoke-direct {p0, p1, p2, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_complex([DII)V

    goto :goto_2e

    .line 234
    :pswitch_18
    invoke-virtual {p0, p1, p2, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfftf([DII)V

    .line 235
    goto :goto_2e

    .line 231
    :pswitch_1c
    const/4 v0, 0x2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int v3, v0, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 232
    nop

    .line 240
    :goto_2e
    if-eqz p3, :cond_3a

    .line 241
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v2, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    .line 243
    :cond_3a
    return-void-no-barrier

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_18
        :pswitch_14
    .end packed-switch
.end method

.method public complexInverse([DZ)V
    .registers 4
    .param p1, "a"    # [D
    .param p2, "scale"    # Z

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 208
    return-void-no-barrier
.end method

.method passf2(II[DI[DIII)V
    .registers 43
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I
    .param p8, "isign"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 3367
    move/from16 v3, p7

    .line 3368
    .local v3, "iw1":I
    mul-int v4, v1, v2

    .line 3369
    .local v4, "idx":I
    const/4 v6, 0x2

    if-gt v1, v6, :cond_3f

    .line 3370
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_e
    if-ge v5, v2, :cond_a6

    .line 3371
    mul-int v7, v5, v1

    .line 3372
    .local v7, "idx0":I
    mul-int v8, v6, v7

    add-int v8, p4, v8

    .line 3373
    .local v8, "iidx1":I
    add-int v9, v8, v1

    .line 3374
    .local v9, "iidx2":I
    aget-wide v10, p3, v8

    .line 3375
    .local v10, "a1r":D
    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    .line 3376
    .local v12, "a1i":D
    aget-wide v14, p3, v9

    .line 3377
    .local v14, "a2r":D
    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    .line 3379
    .local v16, "a2i":D
    add-int v18, p6, v7

    .line 3380
    .local v18, "oidx1":I
    add-int v19, v18, v4

    .line 3381
    .local v19, "oidx2":I
    add-double v20, v10, v14

    aput-wide v20, p5, v18

    .line 3382
    add-int/lit8 v20, v18, 0x1

    add-double v21, v12, v16

    aput-wide v21, p5, v20

    .line 3383
    sub-double v20, v10, v14

    aput-wide v20, p5, v19

    .line 3384
    add-int/lit8 v20, v19, 0x1

    sub-double v21, v12, v16

    aput-wide v21, p5, v20

    .line 3370
    .end local v7    # "idx0":I
    .end local v8    # "iidx1":I
    .end local v9    # "iidx2":I
    .end local v10    # "a1r":D
    .end local v12    # "a1i":D
    .end local v14    # "a2r":D
    .end local v16    # "a2i":D
    .end local v18    # "oidx1":I
    .end local v19    # "oidx2":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 3387
    .end local v5    # "k":I
    :cond_3f
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_40
    if-ge v7, v2, :cond_a6

    .line 3388
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_43
    add-int/lit8 v9, v1, -0x1

    if-ge v8, v9, :cond_9c

    .line 3389
    mul-int v9, v7, v1

    .line 3390
    .local v9, "idx0":I
    add-int v10, p4, v8

    mul-int v11, v6, v9

    add-int/2addr v10, v11

    .line 3391
    .local v10, "iidx1":I
    add-int v11, v10, v1

    .line 3392
    .local v11, "iidx2":I
    aget-wide v12, p3, v10

    .line 3393
    .local v12, "i1r":D
    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    .line 3394
    .local v14, "i1i":D
    aget-wide v16, p3, v11

    .line 3395
    .local v16, "i2r":D
    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    .line 3397
    .local v18, "i2i":D
    add-int v20, v8, v3

    .line 3398
    .local v20, "widx1":I
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v21, v5, v20

    .line 3399
    .local v21, "w1r":D
    move/from16 v5, p8

    move/from16 v23, v7

    int-to-double v6, v5

    .end local v7    # "k":I
    .local v23, "k":I
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v24, v20, 0x1

    aget-wide v24, v1, v24

    mul-double v6, v6, v24

    .line 3401
    .local v6, "w1i":D
    sub-double v24, v12, v16

    .line 3402
    .local v24, "t1r":D
    sub-double v26, v14, v18

    .line 3404
    .local v26, "t1i":D
    add-int v1, p6, v8

    add-int/2addr v1, v9

    .line 3405
    .local v1, "oidx1":I
    add-int v28, v1, v4

    .line 3406
    .local v28, "oidx2":I
    add-double v29, v12, v16

    aput-wide v29, p5, v1

    .line 3407
    add-int/lit8 v29, v1, 0x1

    add-double v30, v14, v18

    aput-wide v30, p5, v29

    .line 3408
    mul-double v29, v21, v24

    mul-double v31, v6, v26

    sub-double v29, v29, v31

    aput-wide v29, p5, v28

    .line 3409
    add-int/lit8 v29, v28, 0x1

    mul-double v30, v21, v26

    mul-double v32, v6, v24

    add-double v30, v30, v32

    aput-wide v30, p5, v29

    .line 3388
    .end local v1    # "oidx1":I
    .end local v6    # "w1i":D
    .end local v9    # "idx0":I
    .end local v10    # "iidx1":I
    .end local v11    # "iidx2":I
    .end local v12    # "i1r":D
    .end local v14    # "i1i":D
    .end local v16    # "i2r":D
    .end local v18    # "i2i":D
    .end local v20    # "widx1":I
    .end local v21    # "w1r":D
    .end local v28    # "oidx2":I
    add-int/lit8 v8, v8, 0x2

    move/from16 v7, v23

    move/from16 v1, p1

    const/4 v6, 0x2

    goto :goto_43

    .line 3387
    .end local v8    # "i":I
    .end local v23    # "k":I
    .end local v24    # "t1r":D
    .end local v26    # "t1i":D
    .restart local v7    # "k":I
    :cond_9c
    move/from16 v5, p8

    move/from16 v23, v7

    .end local v7    # "k":I
    .restart local v23    # "k":I
    add-int/lit8 v7, v23, 0x1

    .end local v23    # "k":I
    .restart local v7    # "k":I
    move/from16 v1, p1

    const/4 v6, 0x2

    goto :goto_40

    .line 3413
    .end local v7    # "k":I
    :cond_a6
    move/from16 v5, p8

    return-void-no-barrier
.end method

.method passf3(II[DI[DIII)V
    .registers 79
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I
    .param p8, "isign"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 3425
    move/from16 v6, p8

    const-wide/high16 v7, -0x4020000000000000L    # -0.5

    .line 3426
    .local v7, "taur":D
    const-wide v9, 0x3febb67ae8584cabL    # 0.8660254037844387

    .line 3430
    .local v9, "taui":D
    move/from16 v11, p7

    .line 3431
    .local v11, "iw1":I
    add-int v12, v11, v1

    .line 3433
    .local v12, "iw2":I
    mul-int v13, v2, v1

    .line 3435
    .local v13, "idxt":I
    const-wide v15, 0x3febb67ae8584cabL    # 0.8660254037844387

    const-wide/high16 v17, -0x4020000000000000L    # -0.5

    const/4 v14, 0x2

    const/16 v20, 0x1

    if-ne v1, v14, :cond_a0

    .line 3436
    nop

    .local v20, "k":I
    :goto_22
    move/from16 v21, v20

    .end local v20    # "k":I
    .local v21, "k":I
    move/from16 v14, v21

    if-gt v14, v2, :cond_98

    .line 3437
    .end local v21    # "k":I
    .local v14, "k":I
    const/16 v19, 0x3

    mul-int v20, v19, v14

    const/16 v21, 0x2

    add-int/lit8 v20, v20, -0x2

    mul-int v20, v20, v1

    add-int v20, p4, v20

    .line 3438
    .local v20, "iidx1":I
    add-int v21, v20, v1

    .line 3439
    .local v21, "iidx2":I
    sub-int v23, v20, v1

    .line 3440
    .local v23, "iidx3":I
    aget-wide v24, p3, v20

    .line 3441
    .local v24, "i1r":D
    add-int/lit8 v26, v20, 0x1

    aget-wide v26, p3, v26

    .line 3442
    .local v26, "i1i":D
    aget-wide v28, p3, v21

    .line 3443
    .local v28, "i2r":D
    add-int/lit8 v30, v21, 0x1

    aget-wide v30, p3, v30

    .line 3444
    .local v30, "i2i":D
    aget-wide v32, p3, v23

    .line 3445
    .local v32, "i3r":D
    add-int/lit8 v34, v23, 0x1

    aget-wide v34, p3, v34

    .line 3447
    .local v34, "i3i":D
    add-double v36, v24, v28

    .line 3448
    .local v36, "tr2":D
    mul-double v38, v17, v36

    add-double v38, v32, v38

    .line 3449
    .local v38, "cr2":D
    add-double v40, v26, v30

    .line 3450
    .local v40, "ti2":D
    mul-double v42, v17, v40

    add-double v42, v34, v42

    .line 3451
    .local v42, "ci2":D
    move-wide/from16 v44, v7

    int-to-double v7, v6

    .end local v7    # "taur":D
    .local v44, "taur":D
    mul-double/2addr v7, v15

    sub-double v46, v24, v28

    mul-double v7, v7, v46

    .line 3452
    .local v7, "cr3":D
    move-wide/from16 v48, v9

    int-to-double v9, v6

    .end local v9    # "taui":D
    .local v48, "taui":D
    mul-double/2addr v9, v15

    sub-double v46, v26, v30

    mul-double v9, v9, v46

    .line 3454
    .local v9, "ci3":D
    add-int/lit8 v46, v14, -0x1

    mul-int v46, v46, v1

    add-int v46, p6, v46

    .line 3455
    .local v46, "oidx1":I
    add-int v47, v46, v13

    .line 3456
    .local v47, "oidx2":I
    add-int v50, v47, v13

    .line 3457
    .local v50, "oidx3":I
    aget-wide v51, p3, v23

    add-double v51, v51, v36

    aput-wide v51, p5, v46

    .line 3458
    add-int/lit8 v51, v46, 0x1

    add-double v52, v34, v40

    aput-wide v52, p5, v51

    .line 3459
    sub-double v51, v38, v9

    aput-wide v51, p5, v47

    .line 3460
    add-int/lit8 v51, v47, 0x1

    add-double v52, v42, v7

    aput-wide v52, p5, v51

    .line 3461
    add-double v51, v38, v9

    aput-wide v51, p5, v50

    .line 3462
    add-int/lit8 v51, v50, 0x1

    sub-double v52, v42, v7

    aput-wide v52, p5, v51

    .line 3436
    .end local v20    # "iidx1":I
    .end local v21    # "iidx2":I
    .end local v23    # "iidx3":I
    .end local v24    # "i1r":D
    .end local v26    # "i1i":D
    .end local v28    # "i2r":D
    .end local v30    # "i2i":D
    .end local v32    # "i3r":D
    .end local v34    # "i3i":D
    .end local v46    # "oidx1":I
    .end local v47    # "oidx2":I
    .end local v50    # "oidx3":I
    add-int/lit8 v20, v14, 0x1

    .end local v14    # "k":I
    .local v20, "k":I
    move-wide/from16 v7, v44

    move-wide/from16 v9, v48

    const/4 v14, 0x2

    goto :goto_22

    .line 3509
    .end local v20    # "k":I
    .end local v36    # "tr2":D
    .end local v38    # "cr2":D
    .end local v40    # "ti2":D
    .end local v42    # "ci2":D
    .end local v44    # "taur":D
    .end local v48    # "taui":D
    .local v7, "taur":D
    .local v9, "taui":D
    :cond_98
    move-wide/from16 v44, v7

    move-wide/from16 v48, v9

    move/from16 v61, v11

    .end local v7    # "taur":D
    .end local v9    # "taui":D
    .restart local v44    # "taur":D
    .restart local v48    # "taui":D
    goto/16 :goto_16b

    .line 3465
    .end local v44    # "taur":D
    .end local v48    # "taui":D
    .restart local v7    # "taur":D
    .restart local v9    # "taui":D
    :cond_a0
    move-wide/from16 v44, v7

    move-wide/from16 v48, v9

    .end local v7    # "taur":D
    .end local v9    # "taui":D
    .restart local v20    # "k":I
    .restart local v44    # "taur":D
    .restart local v48    # "taui":D
    :goto_a4
    move/from16 v7, v20

    .end local v20    # "k":I
    .local v7, "k":I
    if-gt v7, v2, :cond_169

    .line 3466
    const/4 v8, 0x3

    mul-int v14, v8, v7

    const/4 v9, 0x2

    sub-int/2addr v14, v9

    mul-int/2addr v14, v1

    add-int v10, p4, v14

    .line 3467
    .local v10, "idx1":I
    add-int/lit8 v14, v7, -0x1

    mul-int/2addr v14, v1

    add-int v14, p6, v14

    .line 3468
    .local v14, "idx2":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_b7
    move/from16 v54, v19

    .end local v19    # "i":I
    .local v54, "i":I
    add-int/lit8 v8, v1, -0x1

    move/from16 v9, v54

    if-ge v9, v8, :cond_15f

    .line 3469
    .end local v54    # "i":I
    .local v9, "i":I
    add-int v54, v9, v10

    .line 3470
    .local v54, "iidx1":I
    add-int v8, v54, v1

    .line 3471
    .local v8, "iidx2":I
    sub-int v19, v54, v1

    .line 3472
    .local v19, "iidx3":I
    aget-wide v20, p3, v54

    .line 3473
    .local v20, "a1r":D
    add-int/lit8 v22, v54, 0x1

    aget-wide v22, p3, v22

    .line 3474
    .local v22, "a1i":D
    aget-wide v24, p3, v8

    .line 3475
    .local v24, "a2r":D
    add-int/lit8 v26, v8, 0x1

    aget-wide v26, p3, v26

    .line 3476
    .local v26, "a2i":D
    aget-wide v28, p3, v19

    .line 3477
    .local v28, "a3r":D
    add-int/lit8 v30, v19, 0x1

    aget-wide v30, p3, v30

    .line 3479
    .local v30, "a3i":D
    add-double v32, v20, v24

    .line 3480
    .local v32, "tr2":D
    mul-double v34, v17, v32

    add-double v34, v28, v34

    .line 3481
    .local v34, "cr2":D
    add-double v36, v22, v26

    .line 3482
    .local v36, "ti2":D
    mul-double v38, v17, v36

    add-double v38, v30, v38

    .line 3483
    .local v38, "ci2":D
    int-to-double v1, v6

    mul-double/2addr v1, v15

    sub-double v40, v20, v24

    mul-double v1, v1, v40

    .line 3484
    .local v1, "cr3":D
    int-to-double v3, v6

    mul-double/2addr v3, v15

    sub-double v40, v22, v26

    mul-double v3, v3, v40

    .line 3485
    .local v3, "ci3":D
    sub-double v40, v34, v3

    .line 3486
    .local v40, "dr2":D
    add-double v42, v34, v3

    .line 3487
    .local v42, "dr3":D
    add-double v46, v38, v1

    .line 3488
    .local v46, "di2":D
    sub-double v50, v38, v1

    .line 3490
    .local v50, "di3":D
    add-int v52, v9, v11

    .line 3491
    .local v52, "widx1":I
    add-int v53, v9, v12

    .line 3492
    .local v53, "widx2":I
    move-wide/from16 v55, v1

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    .end local v1    # "cr3":D
    .local v55, "cr3":D
    aget-wide v1, v1, v52

    .line 3493
    .local v1, "w1r":D
    move-wide/from16 v57, v3

    int-to-double v3, v6

    .end local v3    # "ci3":D
    .local v57, "ci3":D
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v59, v52, 0x1

    aget-wide v59, v5, v59

    mul-double v3, v3, v59

    .line 3494
    .local v3, "w1i":D
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v59, v5, v53

    .line 3495
    .local v59, "w2r":D
    move/from16 v62, v10

    move/from16 v61, v11

    int-to-double v10, v6

    .end local v10    # "idx1":I
    .end local v11    # "iw1":I
    .local v61, "iw1":I
    .local v62, "idx1":I
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v63, v53, 0x1

    aget-wide v63, v5, v63

    mul-double v10, v10, v63

    .line 3497
    .local v10, "w2i":D
    add-int v5, v9, v14

    .line 3498
    .local v5, "oidx1":I
    add-int v63, v5, v13

    .line 3499
    .local v63, "oidx2":I
    add-int v64, v63, v13

    .line 3500
    .local v64, "oidx3":I
    add-double v65, v28, v32

    aput-wide v65, p5, v5

    .line 3501
    add-int/lit8 v65, v5, 0x1

    add-double v66, v30, v36

    aput-wide v66, p5, v65

    .line 3502
    mul-double v65, v1, v40

    mul-double v67, v3, v46

    sub-double v65, v65, v67

    aput-wide v65, p5, v63

    .line 3503
    add-int/lit8 v65, v63, 0x1

    mul-double v66, v1, v46

    mul-double v68, v3, v40

    add-double v66, v66, v68

    aput-wide v66, p5, v65

    .line 3504
    mul-double v65, v59, v42

    mul-double v67, v10, v50

    sub-double v65, v65, v67

    aput-wide v65, p5, v64

    .line 3505
    add-int/lit8 v65, v64, 0x1

    mul-double v66, v59, v50

    mul-double v68, v10, v42

    add-double v66, v66, v68

    aput-wide v66, p5, v65

    .line 3468
    .end local v1    # "w1r":D
    .end local v3    # "w1i":D
    .end local v5    # "oidx1":I
    .end local v8    # "iidx2":I
    .end local v10    # "w2i":D
    .end local v19    # "iidx3":I
    .end local v20    # "a1r":D
    .end local v22    # "a1i":D
    .end local v24    # "a2r":D
    .end local v26    # "a2i":D
    .end local v28    # "a3r":D
    .end local v30    # "a3i":D
    .end local v52    # "widx1":I
    .end local v53    # "widx2":I
    .end local v54    # "iidx1":I
    .end local v59    # "w2r":D
    .end local v63    # "oidx2":I
    .end local v64    # "oidx3":I
    add-int/lit8 v19, v9, 0x2

    .end local v9    # "i":I
    .local v19, "i":I
    move/from16 v11, v61

    move/from16 v10, v62

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v8, 0x3

    const/4 v9, 0x2

    goto/16 :goto_b7

    .line 3465
    .end local v14    # "idx2":I
    .end local v19    # "i":I
    .end local v32    # "tr2":D
    .end local v34    # "cr2":D
    .end local v36    # "ti2":D
    .end local v38    # "ci2":D
    .end local v40    # "dr2":D
    .end local v42    # "dr3":D
    .end local v46    # "di2":D
    .end local v50    # "di3":D
    .end local v55    # "cr3":D
    .end local v57    # "ci3":D
    .end local v61    # "iw1":I
    .end local v62    # "idx1":I
    .restart local v11    # "iw1":I
    :cond_15f
    move/from16 v61, v11

    .end local v11    # "iw1":I
    .restart local v61    # "iw1":I
    add-int/lit8 v20, v7, 0x1

    .end local v7    # "k":I
    .local v20, "k":I
    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_a4

    .line 3509
    .end local v20    # "k":I
    .end local v61    # "iw1":I
    .restart local v11    # "iw1":I
    :cond_169
    move/from16 v61, v11

    .end local v11    # "iw1":I
    .restart local v61    # "iw1":I
    :goto_16b
    return-void-no-barrier
.end method

.method passf4(II[DI[DIII)V
    .registers 92
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I
    .param p8, "isign"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 3518
    move/from16 v5, p8

    move/from16 v6, p7

    .line 3519
    .local v6, "iw1":I
    add-int v7, v6, v1

    .line 3520
    .local v7, "iw2":I
    add-int v8, v7, v1

    .line 3522
    .local v8, "iw3":I
    mul-int v9, v2, v1

    .line 3523
    .local v9, "idx0":I
    const/4 v10, 0x4

    const/4 v11, 0x2

    if-ne v1, v11, :cond_98

    .line 3524
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_15
    move v11, v12

    .end local v12    # "k":I
    .local v11, "k":I
    if-ge v11, v2, :cond_92

    .line 3525
    mul-int v12, v11, v1

    .line 3526
    .local v12, "idxt1":I
    mul-int v13, v10, v12

    add-int v13, p4, v13

    add-int/lit8 v13, v13, 0x1

    .line 3527
    .local v13, "iidx1":I
    add-int v14, v13, v1

    .line 3528
    .local v14, "iidx2":I
    add-int v15, v14, v1

    .line 3529
    .local v15, "iidx3":I
    add-int v16, v15, v1

    .line 3531
    .local v16, "iidx4":I
    add-int/lit8 v17, v13, -0x1

    aget-wide v17, p3, v17

    .line 3532
    .local v17, "i1i":D
    aget-wide v19, p3, v13

    .line 3533
    .local v19, "i1r":D
    add-int/lit8 v21, v14, -0x1

    aget-wide v21, p3, v21

    .line 3534
    .local v21, "i2i":D
    aget-wide v23, p3, v14

    .line 3535
    .local v23, "i2r":D
    add-int/lit8 v25, v15, -0x1

    aget-wide v25, p3, v25

    .line 3536
    .local v25, "i3i":D
    aget-wide v27, p3, v15

    .line 3537
    .local v27, "i3r":D
    add-int/lit8 v29, v16, -0x1

    aget-wide v29, p3, v29

    .line 3538
    .local v29, "i4i":D
    aget-wide v31, p3, v16

    .line 3540
    .local v31, "i4r":D
    sub-double v33, v19, v27

    .line 3541
    .local v33, "ti1":D
    add-double v35, v19, v27

    .line 3542
    .local v35, "ti2":D
    sub-double v37, v31, v23

    .line 3543
    .local v37, "tr4":D
    add-double v39, v23, v31

    .line 3544
    .local v39, "ti3":D
    sub-double v41, v17, v25

    .line 3545
    .local v41, "tr1":D
    add-double v43, v17, v25

    .line 3546
    .local v43, "tr2":D
    sub-double v45, v21, v29

    .line 3547
    .local v45, "ti4":D
    add-double v47, v21, v29

    .line 3549
    .local v47, "tr3":D
    add-int v49, p6, v12

    .line 3550
    .local v49, "oidx1":I
    add-int v50, v49, v9

    .line 3551
    .local v50, "oidx2":I
    add-int v51, v50, v9

    .line 3552
    .local v51, "oidx3":I
    add-int v52, v51, v9

    .line 3553
    .local v52, "oidx4":I
    add-double v53, v43, v47

    aput-wide v53, p5, v49

    .line 3554
    add-int/lit8 v53, v49, 0x1

    add-double v54, v35, v39

    aput-wide v54, p5, v53

    .line 3555
    move/from16 v57, v11

    int-to-double v10, v5

    .end local v11    # "k":I
    .local v57, "k":I
    mul-double v10, v10, v37

    add-double v10, v41, v10

    aput-wide v10, p5, v50

    .line 3556
    add-int/lit8 v10, v50, 0x1

    move/from16 v58, v12

    int-to-double v11, v5

    .end local v12    # "idxt1":I
    .local v58, "idxt1":I
    mul-double v11, v11, v45

    add-double v11, v33, v11

    aput-wide v11, p5, v10

    .line 3557
    sub-double v10, v43, v47

    aput-wide v10, p5, v51

    .line 3558
    add-int/lit8 v10, v51, 0x1

    sub-double v11, v35, v39

    aput-wide v11, p5, v10

    .line 3559
    int-to-double v10, v5

    mul-double v10, v10, v37

    sub-double v10, v41, v10

    aput-wide v10, p5, v52

    .line 3560
    add-int/lit8 v10, v52, 0x1

    int-to-double v11, v5

    mul-double v11, v11, v45

    sub-double v11, v33, v11

    aput-wide v11, p5, v10

    .line 3524
    .end local v13    # "iidx1":I
    .end local v14    # "iidx2":I
    .end local v15    # "iidx3":I
    .end local v16    # "iidx4":I
    .end local v17    # "i1i":D
    .end local v19    # "i1r":D
    .end local v21    # "i2i":D
    .end local v23    # "i2r":D
    .end local v25    # "i3i":D
    .end local v27    # "i3r":D
    .end local v29    # "i4i":D
    .end local v31    # "i4r":D
    .end local v49    # "oidx1":I
    .end local v50    # "oidx2":I
    .end local v51    # "oidx3":I
    .end local v52    # "oidx4":I
    .end local v58    # "idxt1":I
    add-int/lit8 v12, v57, 0x1

    .end local v57    # "k":I
    .local v12, "k":I
    const/4 v10, 0x4

    goto :goto_15

    .line 3620
    .end local v12    # "k":I
    .end local v33    # "ti1":D
    .end local v35    # "ti2":D
    .end local v37    # "tr4":D
    .end local v39    # "ti3":D
    .end local v41    # "tr1":D
    .end local v43    # "tr2":D
    .end local v45    # "ti4":D
    .end local v47    # "tr3":D
    :cond_92
    move/from16 v66, v6

    move/from16 v67, v7

    goto/16 :goto_198

    .line 3563
    :cond_98
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_99
    if-ge v10, v2, :cond_194

    .line 3564
    mul-int v11, v10, v1

    .line 3565
    .local v11, "idx1":I
    add-int/lit8 v13, p4, 0x1

    const/4 v14, 0x4

    mul-int v15, v14, v11

    add-int/2addr v13, v15

    .line 3566
    .local v13, "idx2":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_a4
    move/from16 v59, v15

    .end local v15    # "i":I
    .local v59, "i":I
    add-int/lit8 v12, v1, -0x1

    move/from16 v2, v59

    if-ge v2, v12, :cond_188

    .line 3567
    .end local v59    # "i":I
    .local v2, "i":I
    add-int v59, v2, v13

    .line 3568
    .local v59, "iidx1":I
    add-int v12, v59, v1

    .line 3569
    .local v12, "iidx2":I
    add-int v15, v12, v1

    .line 3570
    .local v15, "iidx3":I
    add-int v16, v15, v1

    .line 3571
    .restart local v16    # "iidx4":I
    add-int/lit8 v17, v59, -0x1

    aget-wide v17, p3, v17

    .line 3572
    .restart local v17    # "i1i":D
    aget-wide v19, p3, v59

    .line 3573
    .restart local v19    # "i1r":D
    add-int/lit8 v21, v12, -0x1

    aget-wide v21, p3, v21

    .line 3574
    .restart local v21    # "i2i":D
    aget-wide v23, p3, v12

    .line 3575
    .restart local v23    # "i2r":D
    add-int/lit8 v25, v15, -0x1

    aget-wide v25, p3, v25

    .line 3576
    .restart local v25    # "i3i":D
    aget-wide v27, p3, v15

    .line 3577
    .restart local v27    # "i3r":D
    add-int/lit8 v29, v16, -0x1

    aget-wide v29, p3, v29

    .line 3578
    .restart local v29    # "i4i":D
    aget-wide v31, p3, v16

    .line 3580
    .restart local v31    # "i4r":D
    sub-double v33, v19, v27

    .line 3581
    .restart local v33    # "ti1":D
    add-double v35, v19, v27

    .line 3582
    .restart local v35    # "ti2":D
    add-double v37, v23, v31

    .line 3583
    .local v37, "ti3":D
    sub-double v39, v31, v23

    .line 3584
    .local v39, "tr4":D
    sub-double v41, v17, v25

    .line 3585
    .restart local v41    # "tr1":D
    add-double v43, v17, v25

    .line 3586
    .restart local v43    # "tr2":D
    sub-double v45, v21, v29

    .line 3587
    .restart local v45    # "ti4":D
    add-double v47, v21, v29

    .line 3588
    .restart local v47    # "tr3":D
    sub-double v49, v43, v47

    .line 3589
    .local v49, "cr3":D
    sub-double v51, v35, v37

    .line 3590
    .local v51, "ci3":D
    int-to-double v3, v5

    mul-double v3, v3, v39

    add-double v3, v41, v3

    .line 3591
    .local v3, "cr2":D
    move/from16 v61, v12

    move/from16 v60, v13

    int-to-double v12, v5

    .end local v12    # "iidx2":I
    .end local v13    # "idx2":I
    .local v60, "idx2":I
    .local v61, "iidx2":I
    mul-double v12, v12, v39

    sub-double v12, v41, v12

    .line 3592
    .local v12, "cr4":D
    move-wide/from16 v62, v12

    int-to-double v12, v5

    .end local v12    # "cr4":D
    .local v62, "cr4":D
    mul-double v12, v12, v45

    add-double v12, v33, v12

    .line 3593
    .local v12, "ci2":D
    move-wide/from16 v64, v12

    int-to-double v12, v5

    .end local v12    # "ci2":D
    .local v64, "ci2":D
    mul-double v12, v12, v45

    sub-double v12, v33, v12

    .line 3595
    .local v12, "ci4":D
    add-int v53, v2, v6

    .line 3596
    .local v53, "widx1":I
    add-int v54, v2, v7

    .line 3597
    .local v54, "widx2":I
    add-int v55, v2, v8

    .line 3598
    .local v55, "widx3":I
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v56, v1, v53

    .line 3599
    .local v56, "w1r":D
    move/from16 v66, v6

    move/from16 v67, v7

    int-to-double v6, v5

    .end local v6    # "iw1":I
    .end local v7    # "iw2":I
    .local v66, "iw1":I
    .local v67, "iw2":I
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v58, v53, 0x1

    aget-wide v68, v1, v58

    mul-double v6, v6, v68

    .line 3600
    .local v6, "w1i":D
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v68, v1, v54

    .line 3601
    .local v68, "w2r":D
    move-wide/from16 v70, v12

    int-to-double v12, v5

    .end local v12    # "ci4":D
    .local v70, "ci4":D
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v58, v54, 0x1

    aget-wide v72, v1, v58

    mul-double v12, v12, v72

    .line 3602
    .local v12, "w2i":D
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v72, v1, v55

    .line 3603
    .local v72, "w3r":D
    move-wide/from16 v74, v12

    int-to-double v12, v5

    .end local v12    # "w2i":D
    .local v74, "w2i":D
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v58, v55, 0x1

    aget-wide v76, v1, v58

    mul-double v12, v12, v76

    .line 3605
    .local v12, "w3i":D
    add-int v1, p6, v2

    add-int/2addr v1, v11

    .line 3606
    .local v1, "oidx1":I
    add-int v58, v1, v9

    .line 3607
    .local v58, "oidx2":I
    add-int v76, v58, v9

    .line 3608
    .local v76, "oidx3":I
    add-int v77, v76, v9

    .line 3609
    .local v77, "oidx4":I
    add-double v78, v43, v47

    aput-wide v78, p5, v1

    .line 3610
    add-int/lit8 v78, v1, 0x1

    add-double v79, v35, v37

    aput-wide v79, p5, v78

    .line 3611
    mul-double v78, v56, v3

    mul-double v80, v6, v64

    sub-double v78, v78, v80

    aput-wide v78, p5, v58

    .line 3612
    add-int/lit8 v78, v58, 0x1

    mul-double v79, v56, v64

    mul-double v81, v6, v3

    add-double v79, v79, v81

    aput-wide v79, p5, v78

    .line 3613
    mul-double v78, v68, v49

    mul-double v80, v74, v51

    sub-double v78, v78, v80

    aput-wide v78, p5, v76

    .line 3614
    add-int/lit8 v78, v76, 0x1

    mul-double v79, v68, v51

    mul-double v81, v74, v49

    add-double v79, v79, v81

    aput-wide v79, p5, v78

    .line 3615
    mul-double v78, v72, v62

    mul-double v80, v12, v70

    sub-double v78, v78, v80

    aput-wide v78, p5, v77

    .line 3616
    add-int/lit8 v78, v77, 0x1

    mul-double v79, v72, v70

    mul-double v81, v12, v62

    add-double v79, v79, v81

    aput-wide v79, p5, v78

    .line 3566
    .end local v1    # "oidx1":I
    .end local v6    # "w1i":D
    .end local v12    # "w3i":D
    .end local v15    # "iidx3":I
    .end local v16    # "iidx4":I
    .end local v17    # "i1i":D
    .end local v19    # "i1r":D
    .end local v21    # "i2i":D
    .end local v23    # "i2r":D
    .end local v25    # "i3i":D
    .end local v27    # "i3r":D
    .end local v29    # "i4i":D
    .end local v31    # "i4r":D
    .end local v53    # "widx1":I
    .end local v54    # "widx2":I
    .end local v55    # "widx3":I
    .end local v56    # "w1r":D
    .end local v58    # "oidx2":I
    .end local v59    # "iidx1":I
    .end local v61    # "iidx2":I
    .end local v68    # "w2r":D
    .end local v72    # "w3r":D
    .end local v74    # "w2i":D
    .end local v76    # "oidx3":I
    .end local v77    # "oidx4":I
    add-int/lit8 v15, v2, 0x2

    .end local v2    # "i":I
    .local v15, "i":I
    move/from16 v13, v60

    move/from16 v6, v66

    move/from16 v7, v67

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_a4

    .line 3563
    .end local v3    # "cr2":D
    .end local v11    # "idx1":I
    .end local v15    # "i":I
    .end local v33    # "ti1":D
    .end local v35    # "ti2":D
    .end local v37    # "ti3":D
    .end local v39    # "tr4":D
    .end local v41    # "tr1":D
    .end local v43    # "tr2":D
    .end local v45    # "ti4":D
    .end local v47    # "tr3":D
    .end local v49    # "cr3":D
    .end local v51    # "ci3":D
    .end local v60    # "idx2":I
    .end local v62    # "cr4":D
    .end local v64    # "ci2":D
    .end local v66    # "iw1":I
    .end local v67    # "iw2":I
    .end local v70    # "ci4":D
    .local v6, "iw1":I
    .restart local v7    # "iw2":I
    :cond_188
    move/from16 v66, v6

    move/from16 v67, v7

    .end local v6    # "iw1":I
    .end local v7    # "iw2":I
    .restart local v66    # "iw1":I
    .restart local v67    # "iw2":I
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_99

    .line 3620
    .end local v10    # "k":I
    .end local v66    # "iw1":I
    .end local v67    # "iw2":I
    .restart local v6    # "iw1":I
    .restart local v7    # "iw2":I
    :cond_194
    move/from16 v66, v6

    move/from16 v67, v7

    .end local v6    # "iw1":I
    .end local v7    # "iw2":I
    .restart local v66    # "iw1":I
    .restart local v67    # "iw2":I
    :goto_198
    return-void-no-barrier
.end method

.method passf5(II[DI[DIII)V
    .registers 140
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I
    .param p8, "isign"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 3628
    move/from16 v6, p8

    const-wide v7, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    .line 3629
    .local v7, "tr11":D
    const-wide v9, 0x3fee6f0e134454ffL    # 0.9510565162951535

    .line 3630
    .local v9, "ti11":D
    const-wide v11, -0x40161c8864680b59L    # -0.8090169943749473

    .line 3631
    .local v11, "tr12":D
    const-wide v13, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    .line 3635
    .local v13, "ti12":D
    move/from16 v15, p7

    .line 3636
    .local v15, "iw1":I
    add-int v16, v15, v1

    .line 3637
    .local v16, "iw2":I
    add-int v17, v16, v1

    .line 3638
    .local v17, "iw3":I
    add-int v18, v17, v1

    .line 3640
    .local v18, "iw4":I
    mul-int v19, v2, v1

    .line 3642
    .local v19, "idx0":I
    move-wide/from16 v20, v7

    const/4 v7, 0x2

    .end local v7    # "tr11":D
    .local v20, "tr11":D
    const-wide v22, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    const-wide v24, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v26, -0x40161c8864680b59L    # -0.8090169943749473

    const-wide v28, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    const/4 v8, 0x1

    if-ne v1, v7, :cond_125

    .line 3643
    move v7, v8

    .local v7, "k":I
    :goto_41
    if-gt v7, v2, :cond_11d

    .line 3644
    const/16 v30, 0x5

    mul-int v30, v30, v7

    add-int/lit8 v30, v30, -0x4

    mul-int v30, v30, v1

    add-int v30, p4, v30

    add-int/lit8 v30, v30, 0x1

    .line 3645
    .local v30, "iidx1":I
    add-int v31, v30, v1

    .line 3646
    .local v31, "iidx2":I
    sub-int v32, v30, v1

    .line 3647
    .local v32, "iidx3":I
    add-int v33, v31, v1

    .line 3648
    .local v33, "iidx4":I
    add-int v34, v33, v1

    .line 3650
    .local v34, "iidx5":I
    add-int/lit8 v35, v30, -0x1

    aget-wide v35, p3, v35

    .line 3651
    .local v35, "i1i":D
    aget-wide v37, p3, v30

    .line 3652
    .local v37, "i1r":D
    add-int/lit8 v39, v31, -0x1

    aget-wide v39, p3, v39

    .line 3653
    .local v39, "i2i":D
    aget-wide v41, p3, v31

    .line 3654
    .local v41, "i2r":D
    add-int/lit8 v43, v32, -0x1

    aget-wide v43, p3, v43

    .line 3655
    .local v43, "i3i":D
    aget-wide v45, p3, v32

    .line 3656
    .local v45, "i3r":D
    add-int/lit8 v47, v33, -0x1

    aget-wide v47, p3, v47

    .line 3657
    .local v47, "i4i":D
    aget-wide v49, p3, v33

    .line 3658
    .local v49, "i4r":D
    add-int/lit8 v51, v34, -0x1

    aget-wide v51, p3, v51

    .line 3659
    .local v51, "i5i":D
    aget-wide v53, p3, v34

    .line 3661
    .local v53, "i5r":D
    sub-double v55, v37, v53

    .line 3662
    .local v55, "ti5":D
    add-double v57, v37, v53

    .line 3663
    .local v57, "ti2":D
    sub-double v59, v41, v49

    .line 3664
    .local v59, "ti4":D
    add-double v61, v41, v49

    .line 3665
    .local v61, "ti3":D
    sub-double v63, v35, v51

    .line 3666
    .local v63, "tr5":D
    add-double v65, v35, v51

    .line 3667
    .local v65, "tr2":D
    sub-double v67, v39, v47

    .line 3668
    .local v67, "tr4":D
    add-double v69, v39, v47

    .line 3669
    .local v69, "tr3":D
    mul-double v71, v28, v65

    add-double v71, v43, v71

    mul-double v73, v26, v69

    add-double v71, v71, v73

    .line 3670
    .local v71, "cr2":D
    mul-double v73, v28, v57

    add-double v73, v45, v73

    mul-double v75, v26, v61

    add-double v73, v73, v75

    .line 3671
    .local v73, "ci2":D
    mul-double v75, v26, v65

    add-double v75, v43, v75

    mul-double v77, v28, v69

    add-double v75, v75, v77

    .line 3672
    .local v75, "cr3":D
    mul-double v77, v26, v57

    add-double v77, v45, v77

    mul-double v79, v28, v61

    add-double v77, v77, v79

    .line 3673
    .local v77, "ci3":D
    move-wide/from16 v81, v9

    int-to-double v8, v6

    .end local v9    # "ti11":D
    .local v81, "ti11":D
    mul-double v79, v24, v63

    mul-double v84, v22, v67

    add-double v79, v79, v84

    mul-double v8, v8, v79

    .line 3674
    .local v8, "cr5":D
    move-wide/from16 v86, v11

    int-to-double v10, v6

    .end local v11    # "tr12":D
    .local v86, "tr12":D
    mul-double v79, v24, v55

    mul-double v84, v22, v59

    add-double v79, v79, v84

    mul-double v10, v10, v79

    .line 3675
    .local v10, "ci5":D
    move-wide/from16 v88, v13

    int-to-double v12, v6

    .end local v13    # "ti12":D
    .local v88, "ti12":D
    mul-double v79, v22, v63

    mul-double v84, v24, v67

    sub-double v79, v79, v84

    mul-double v12, v12, v79

    .line 3676
    .local v12, "cr4":D
    int-to-double v3, v6

    mul-double v79, v22, v55

    mul-double v84, v24, v59

    sub-double v79, v79, v84

    mul-double v3, v3, v79

    .line 3678
    .local v3, "ci4":D
    add-int/lit8 v14, v7, -0x1

    mul-int/2addr v14, v1

    add-int v14, p6, v14

    .line 3679
    .local v14, "oidx1":I
    add-int v79, v14, v19

    .line 3680
    .local v79, "oidx2":I
    add-int v80, v79, v19

    .line 3681
    .local v80, "oidx3":I
    add-int v84, v80, v19

    .line 3682
    .local v84, "oidx4":I
    add-int v85, v84, v19

    .line 3683
    .local v85, "oidx5":I
    add-double v92, v43, v65

    add-double v92, v92, v69

    aput-wide v92, p5, v14

    .line 3684
    add-int/lit8 v92, v14, 0x1

    add-double v93, v45, v57

    add-double v93, v93, v61

    aput-wide v93, p5, v92

    .line 3685
    sub-double v92, v71, v10

    aput-wide v92, p5, v79

    .line 3686
    add-int/lit8 v92, v79, 0x1

    add-double v93, v73, v8

    aput-wide v93, p5, v92

    .line 3687
    sub-double v92, v75, v3

    aput-wide v92, p5, v80

    .line 3688
    add-int/lit8 v92, v80, 0x1

    add-double v93, v77, v12

    aput-wide v93, p5, v92

    .line 3689
    add-double v92, v75, v3

    aput-wide v92, p5, v84

    .line 3690
    add-int/lit8 v92, v84, 0x1

    sub-double v93, v77, v12

    aput-wide v93, p5, v92

    .line 3691
    add-double v92, v71, v10

    aput-wide v92, p5, v85

    .line 3692
    add-int/lit8 v92, v85, 0x1

    sub-double v93, v73, v8

    aput-wide v93, p5, v92

    .line 3643
    .end local v14    # "oidx1":I
    .end local v30    # "iidx1":I
    .end local v31    # "iidx2":I
    .end local v32    # "iidx3":I
    .end local v33    # "iidx4":I
    .end local v34    # "iidx5":I
    .end local v35    # "i1i":D
    .end local v37    # "i1r":D
    .end local v39    # "i2i":D
    .end local v41    # "i2r":D
    .end local v43    # "i3i":D
    .end local v45    # "i3r":D
    .end local v47    # "i4i":D
    .end local v49    # "i4r":D
    .end local v51    # "i5i":D
    .end local v53    # "i5r":D
    .end local v79    # "oidx2":I
    .end local v80    # "oidx3":I
    .end local v84    # "oidx4":I
    .end local v85    # "oidx5":I
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v9, v81

    move-wide/from16 v11, v86

    move-wide/from16 v13, v88

    const/4 v8, 0x1

    goto/16 :goto_41

    .line 3771
    .end local v3    # "ci4":D
    .end local v7    # "k":I
    .end local v8    # "cr5":D
    .end local v10    # "ci5":D
    .end local v12    # "cr4":D
    .end local v55    # "ti5":D
    .end local v57    # "ti2":D
    .end local v59    # "ti4":D
    .end local v61    # "ti3":D
    .end local v63    # "tr5":D
    .end local v65    # "tr2":D
    .end local v67    # "tr4":D
    .end local v69    # "tr3":D
    .end local v71    # "cr2":D
    .end local v73    # "ci2":D
    .end local v75    # "cr3":D
    .end local v77    # "ci3":D
    .end local v81    # "ti11":D
    .end local v86    # "tr12":D
    .end local v88    # "ti12":D
    .restart local v9    # "ti11":D
    .restart local v11    # "tr12":D
    .restart local v13    # "ti12":D
    :cond_11d
    move-wide/from16 v81, v9

    move-wide/from16 v86, v11

    move-wide/from16 v88, v13

    .end local v9    # "ti11":D
    .end local v11    # "tr12":D
    .end local v13    # "ti12":D
    .restart local v81    # "ti11":D
    .restart local v86    # "tr12":D
    .restart local v88    # "ti12":D
    goto/16 :goto_293

    .line 3695
    .end local v81    # "ti11":D
    .end local v86    # "tr12":D
    .end local v88    # "ti12":D
    .restart local v9    # "ti11":D
    .restart local v11    # "tr12":D
    .restart local v13    # "ti12":D
    :cond_125
    move-wide/from16 v81, v9

    move-wide/from16 v86, v11

    move-wide/from16 v88, v13

    .end local v9    # "ti11":D
    .end local v11    # "tr12":D
    .end local v13    # "ti12":D
    .restart local v81    # "ti11":D
    .restart local v86    # "tr12":D
    .restart local v88    # "ti12":D
    const/16 v83, 0x1

    .local v83, "k":I
    :goto_12d
    move/from16 v3, v83

    .end local v83    # "k":I
    .local v3, "k":I
    if-gt v3, v2, :cond_293

    .line 3696
    add-int/lit8 v7, p4, 0x1

    mul-int/lit8 v8, v3, 0x5

    add-int/lit8 v8, v8, -0x4

    mul-int/2addr v8, v1

    add-int/2addr v7, v8

    .line 3697
    .local v7, "idx1":I
    add-int/lit8 v8, v3, -0x1

    mul-int/2addr v8, v1

    add-int v8, p6, v8

    .line 3698
    .local v8, "idx2":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_13f
    add-int/lit8 v10, v1, -0x1

    if-ge v9, v10, :cond_289

    .line 3699
    add-int v10, v9, v7

    .line 3700
    .local v10, "iidx1":I
    add-int v11, v10, v1

    .line 3701
    .local v11, "iidx2":I
    sub-int v12, v10, v1

    .line 3702
    .local v12, "iidx3":I
    add-int v13, v11, v1

    .line 3703
    .local v13, "iidx4":I
    add-int v14, v13, v1

    .line 3704
    .local v14, "iidx5":I
    add-int/lit8 v30, v10, -0x1

    aget-wide v32, p3, v30

    .line 3705
    .local v32, "i1i":D
    aget-wide v34, p3, v10

    .line 3706
    .local v34, "i1r":D
    add-int/lit8 v30, v11, -0x1

    aget-wide v36, p3, v30

    .line 3707
    .local v36, "i2i":D
    aget-wide v38, p3, v11

    .line 3708
    .local v38, "i2r":D
    add-int/lit8 v30, v12, -0x1

    aget-wide v40, p3, v30

    .line 3709
    .local v40, "i3i":D
    aget-wide v42, p3, v12

    .line 3710
    .local v42, "i3r":D
    add-int/lit8 v30, v13, -0x1

    aget-wide v44, p3, v30

    .line 3711
    .local v44, "i4i":D
    aget-wide v46, p3, v13

    .line 3712
    .local v46, "i4r":D
    add-int/lit8 v30, v14, -0x1

    aget-wide v48, p3, v30

    .line 3713
    .local v48, "i5i":D
    aget-wide v50, p3, v14

    .line 3715
    .local v50, "i5r":D
    sub-double v52, v34, v50

    .line 3716
    .local v52, "ti5":D
    add-double v54, v34, v50

    .line 3717
    .local v54, "ti2":D
    sub-double v56, v38, v46

    .line 3718
    .local v56, "ti4":D
    add-double v58, v38, v46

    .line 3719
    .local v58, "ti3":D
    sub-double v60, v32, v48

    .line 3720
    .local v60, "tr5":D
    add-double v62, v32, v48

    .line 3721
    .local v62, "tr2":D
    sub-double v64, v36, v44

    .line 3722
    .local v64, "tr4":D
    add-double v66, v36, v44

    .line 3723
    .local v66, "tr3":D
    mul-double v68, v28, v62

    add-double v68, v40, v68

    mul-double v70, v26, v66

    add-double v68, v68, v70

    .line 3724
    .local v68, "cr2":D
    mul-double v70, v28, v54

    add-double v70, v42, v70

    mul-double v72, v26, v58

    add-double v70, v70, v72

    .line 3725
    .local v70, "ci2":D
    mul-double v72, v26, v62

    add-double v72, v40, v72

    mul-double v74, v28, v66

    add-double v72, v72, v74

    .line 3726
    .local v72, "cr3":D
    mul-double v74, v26, v54

    add-double v74, v42, v74

    mul-double v76, v28, v58

    add-double v74, v74, v76

    .line 3727
    .local v74, "ci3":D
    int-to-double v1, v6

    mul-double v76, v24, v60

    mul-double v78, v22, v64

    add-double v76, v76, v78

    mul-double v1, v1, v76

    .line 3728
    .local v1, "cr5":D
    move/from16 v95, v10

    move/from16 v96, v11

    int-to-double v10, v6

    .end local v10    # "iidx1":I
    .end local v11    # "iidx2":I
    .local v95, "iidx1":I
    .local v96, "iidx2":I
    mul-double v76, v24, v52

    mul-double v78, v22, v56

    add-double v76, v76, v78

    mul-double v10, v10, v76

    .line 3729
    .local v10, "ci5":D
    move/from16 v97, v12

    move/from16 v98, v13

    int-to-double v12, v6

    .end local v12    # "iidx3":I
    .end local v13    # "iidx4":I
    .local v97, "iidx3":I
    .local v98, "iidx4":I
    mul-double v76, v22, v60

    mul-double v78, v24, v64

    sub-double v76, v76, v78

    mul-double v12, v12, v76

    .line 3730
    .local v12, "cr4":D
    move/from16 v99, v3

    int-to-double v3, v6

    .end local v3    # "k":I
    .local v99, "k":I
    mul-double v76, v22, v52

    mul-double v78, v24, v56

    sub-double v76, v76, v78

    mul-double v3, v3, v76

    .line 3731
    .local v3, "ci4":D
    sub-double v76, v72, v3

    .line 3732
    .local v76, "dr3":D
    add-double v78, v72, v3

    .line 3733
    .local v78, "dr4":D
    add-double v83, v74, v12

    .line 3734
    .local v83, "di3":D
    sub-double v90, v74, v12

    .line 3735
    .local v90, "di4":D
    add-double v92, v68, v10

    .line 3736
    .local v92, "dr5":D
    sub-double v100, v68, v10

    .line 3737
    .local v100, "dr2":D
    sub-double v102, v70, v1

    .line 3738
    .local v102, "di5":D
    add-double v104, v70, v1

    .line 3740
    .local v104, "di2":D
    add-int v30, v9, v15

    .line 3741
    .local v30, "widx1":I
    add-int v80, v9, v16

    .line 3742
    .local v80, "widx2":I
    add-int v85, v9, v17

    .line 3743
    .local v85, "widx3":I
    add-int v94, v9, v18

    .line 3744
    .local v94, "widx4":I
    move-wide/from16 v106, v1

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    .end local v1    # "cr5":D
    .local v106, "cr5":D
    aget-wide v1, v1, v30

    .line 3745
    .local v1, "w1r":D
    move-wide/from16 v108, v3

    int-to-double v3, v6

    .end local v3    # "ci4":D
    .local v108, "ci4":D
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v110, v30, 0x1

    aget-wide v110, v5, v110

    mul-double v3, v3, v110

    .line 3746
    .local v3, "w1i":D
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v110, v5, v80

    .line 3747
    .local v110, "w2r":D
    move-wide/from16 v112, v10

    int-to-double v10, v6

    .end local v10    # "ci5":D
    .local v112, "ci5":D
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v114, v80, 0x1

    aget-wide v114, v5, v114

    mul-double v10, v10, v114

    .line 3748
    .local v10, "w2i":D
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v114, v5, v85

    .line 3749
    .local v114, "w3r":D
    move-wide/from16 v116, v12

    int-to-double v12, v6

    .end local v12    # "cr4":D
    .local v116, "cr4":D
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v118, v85, 0x1

    aget-wide v118, v5, v118

    mul-double v12, v12, v118

    .line 3750
    .local v12, "w3i":D
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v118, v5, v94

    .line 3751
    .local v118, "w4r":D
    move-wide/from16 v120, v12

    int-to-double v12, v6

    .end local v12    # "w3i":D
    .local v120, "w3i":D
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v122, v94, 0x1

    aget-wide v122, v5, v122

    mul-double v12, v12, v122

    .line 3753
    .local v12, "w4i":D
    add-int v5, v9, v8

    .line 3754
    .local v5, "oidx1":I
    add-int v122, v5, v19

    .line 3755
    .local v122, "oidx2":I
    add-int v123, v122, v19

    .line 3756
    .local v123, "oidx3":I
    add-int v124, v123, v19

    .line 3757
    .local v124, "oidx4":I
    add-int v125, v124, v19

    .line 3758
    .local v125, "oidx5":I
    add-double v126, v40, v62

    add-double v126, v126, v66

    aput-wide v126, p5, v5

    .line 3759
    add-int/lit8 v126, v5, 0x1

    add-double v127, v42, v54

    add-double v127, v127, v58

    aput-wide v127, p5, v126

    .line 3760
    mul-double v126, v1, v100

    mul-double v128, v3, v104

    sub-double v126, v126, v128

    aput-wide v126, p5, v122

    .line 3761
    add-int/lit8 v126, v122, 0x1

    mul-double v127, v1, v104

    mul-double v129, v3, v100

    add-double v127, v127, v129

    aput-wide v127, p5, v126

    .line 3762
    mul-double v126, v110, v76

    mul-double v128, v10, v83

    sub-double v126, v126, v128

    aput-wide v126, p5, v123

    .line 3763
    add-int/lit8 v126, v123, 0x1

    mul-double v127, v110, v83

    mul-double v129, v10, v76

    add-double v127, v127, v129

    aput-wide v127, p5, v126

    .line 3764
    mul-double v126, v114, v78

    mul-double v128, v120, v90

    sub-double v126, v126, v128

    aput-wide v126, p5, v124

    .line 3765
    add-int/lit8 v126, v124, 0x1

    mul-double v127, v114, v90

    mul-double v129, v120, v78

    add-double v127, v127, v129

    aput-wide v127, p5, v126

    .line 3766
    mul-double v126, v118, v92

    mul-double v128, v12, v102

    sub-double v126, v126, v128

    aput-wide v126, p5, v125

    .line 3767
    add-int/lit8 v126, v125, 0x1

    mul-double v127, v118, v102

    mul-double v129, v12, v92

    add-double v127, v127, v129

    aput-wide v127, p5, v126

    .line 3698
    .end local v1    # "w1r":D
    .end local v3    # "w1i":D
    .end local v5    # "oidx1":I
    .end local v10    # "w2i":D
    .end local v12    # "w4i":D
    .end local v14    # "iidx5":I
    .end local v30    # "widx1":I
    .end local v32    # "i1i":D
    .end local v34    # "i1r":D
    .end local v36    # "i2i":D
    .end local v38    # "i2r":D
    .end local v40    # "i3i":D
    .end local v42    # "i3r":D
    .end local v44    # "i4i":D
    .end local v46    # "i4r":D
    .end local v48    # "i5i":D
    .end local v50    # "i5r":D
    .end local v80    # "widx2":I
    .end local v85    # "widx3":I
    .end local v94    # "widx4":I
    .end local v95    # "iidx1":I
    .end local v96    # "iidx2":I
    .end local v97    # "iidx3":I
    .end local v98    # "iidx4":I
    .end local v110    # "w2r":D
    .end local v114    # "w3r":D
    .end local v118    # "w4r":D
    .end local v120    # "w3i":D
    .end local v122    # "oidx2":I
    .end local v123    # "oidx3":I
    .end local v124    # "oidx4":I
    .end local v125    # "oidx5":I
    add-int/lit8 v9, v9, 0x2

    move/from16 v3, v99

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_13f

    .line 3695
    .end local v7    # "idx1":I
    .end local v8    # "idx2":I
    .end local v9    # "i":I
    .end local v52    # "ti5":D
    .end local v54    # "ti2":D
    .end local v56    # "ti4":D
    .end local v58    # "ti3":D
    .end local v60    # "tr5":D
    .end local v62    # "tr2":D
    .end local v64    # "tr4":D
    .end local v66    # "tr3":D
    .end local v68    # "cr2":D
    .end local v70    # "ci2":D
    .end local v72    # "cr3":D
    .end local v74    # "ci3":D
    .end local v76    # "dr3":D
    .end local v78    # "dr4":D
    .end local v83    # "di3":D
    .end local v90    # "di4":D
    .end local v92    # "dr5":D
    .end local v99    # "k":I
    .end local v100    # "dr2":D
    .end local v102    # "di5":D
    .end local v104    # "di2":D
    .end local v106    # "cr5":D
    .end local v108    # "ci4":D
    .end local v112    # "ci5":D
    .end local v116    # "cr4":D
    .local v3, "k":I
    :cond_289
    move/from16 v99, v3

    .end local v3    # "k":I
    .restart local v99    # "k":I
    add-int/lit8 v83, v99, 0x1

    .end local v99    # "k":I
    .local v83, "k":I
    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_12d

    .line 3771
    .end local v83    # "k":I
    :cond_293
    :goto_293
    return-void-no-barrier
.end method

.method passfg([IIIII[DI[DIII)V
    .registers 74
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

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 3782
    move/from16 v10, p11

    move/from16 v11, p10

    .line 3783
    .local v11, "iw1":I
    div-int/lit8 v12, v2, 0x2

    .line 3784
    .local v12, "idot":I
    add-int/lit8 v13, v3, 0x1

    const/4 v14, 0x2

    div-int/2addr v13, v14

    .line 3785
    .local v13, "ipph":I
    mul-int v15, v3, v2

    .line 3786
    .local v15, "idp":I
    const/16 v16, 0x0

    const/16 v17, 0x1

    if-lt v2, v4, :cond_ac

    .line 3787
    move/from16 v18, v17

    .local v18, "j":I
    :goto_26
    move/from16 v19, v18

    .end local v18    # "j":I
    .local v19, "j":I
    move/from16 v14, v19

    if-ge v14, v13, :cond_7e

    .line 3788
    .end local v19    # "j":I
    .local v14, "j":I
    sub-int v18, v3, v14

    .line 3789
    .local v18, "jc":I
    mul-int v19, v14, v2

    .line 3790
    .local v19, "idx1":I
    mul-int v21, v18, v2

    .line 3791
    .local v21, "idx2":I
    move/from16 v22, v16

    .local v22, "k":I
    :goto_34
    move/from16 v23, v22

    .end local v22    # "k":I
    .local v23, "k":I
    move/from16 v24, v12

    move/from16 v12, v23

    if-ge v12, v4, :cond_76

    .line 3792
    .end local v23    # "k":I
    .local v12, "k":I
    .local v24, "idot":I
    mul-int v23, v12, v2

    .line 3793
    .local v23, "idx3":I
    mul-int v22, v19, v4

    add-int v22, v23, v22

    .line 3794
    .local v22, "idx4":I
    mul-int v25, v21, v4

    add-int v25, v23, v25

    .line 3795
    .local v25, "idx5":I
    mul-int v26, v23, v3

    .line 3796
    .local v26, "idx6":I
    move/from16 v27, v16

    .local v27, "i":I
    :goto_4a
    move/from16 v28, v27

    .end local v27    # "i":I
    .local v28, "i":I
    move/from16 v1, v28

    if-ge v1, v2, :cond_71

    .line 3797
    .end local v28    # "i":I
    .local v1, "i":I
    add-int v27, v9, v1

    .line 3798
    .local v27, "oidx1":I
    add-int v28, v7, v1

    add-int v28, v28, v19

    add-int v28, v28, v26

    aget-wide v30, v6, v28

    .line 3799
    .local v30, "i1r":D
    add-int v28, v7, v1

    add-int v28, v28, v21

    add-int v28, v28, v26

    aget-wide v32, v6, v28

    .line 3800
    .local v32, "i2r":D
    add-int v28, v27, v22

    add-double v34, v30, v32

    aput-wide v34, v8, v28

    .line 3801
    add-int v28, v27, v25

    sub-double v34, v30, v32

    aput-wide v34, v8, v28

    .line 3796
    .end local v27    # "oidx1":I
    .end local v30    # "i1r":D
    .end local v32    # "i2r":D
    add-int/lit8 v27, v1, 0x1

    .end local v1    # "i":I
    .local v27, "i":I
    goto :goto_4a

    .line 3791
    .end local v22    # "idx4":I
    .end local v23    # "idx3":I
    .end local v25    # "idx5":I
    .end local v26    # "idx6":I
    .end local v27    # "i":I
    :cond_71
    add-int/lit8 v22, v12, 0x1

    .end local v12    # "k":I
    .local v22, "k":I
    move/from16 v12, v24

    goto :goto_34

    .line 3787
    .end local v19    # "idx1":I
    .end local v21    # "idx2":I
    .end local v22    # "k":I
    :cond_76
    add-int/lit8 v1, v14, 0x1

    .end local v14    # "j":I
    .local v1, "j":I
    move/from16 v18, v1

    move/from16 v12, v24

    const/4 v14, 0x2

    goto :goto_26

    .line 3805
    .end local v1    # "j":I
    .end local v18    # "jc":I
    .end local v24    # "idot":I
    .local v12, "idot":I
    :cond_7e
    move/from16 v24, v12

    .end local v12    # "idot":I
    .restart local v24    # "idot":I
    move/from16 v1, v16

    .local v1, "k":I
    :goto_82
    if-ge v1, v4, :cond_a8

    .line 3806
    mul-int v12, v1, v2

    .line 3807
    .local v12, "idxt1":I
    mul-int v14, v12, v3

    .line 3808
    .local v14, "idxt2":I
    move/from16 v18, v16

    .local v18, "i":I
    :goto_8a
    move/from16 v36, v18

    .end local v18    # "i":I
    .local v36, "i":I
    move/from16 v37, v15

    move/from16 v15, v36

    if-ge v15, v2, :cond_a3

    .line 3809
    .end local v36    # "i":I
    .local v15, "i":I
    .local v37, "idp":I
    add-int v18, v9, v15

    add-int v18, v18, v12

    add-int v19, v7, v15

    add-int v19, v19, v14

    aget-wide v21, v6, v19

    aput-wide v21, v8, v18

    .line 3808
    add-int/lit8 v18, v15, 0x1

    .end local v15    # "i":I
    .restart local v18    # "i":I
    move/from16 v15, v37

    goto :goto_8a

    .line 3805
    .end local v12    # "idxt1":I
    .end local v14    # "idxt2":I
    .end local v18    # "i":I
    :cond_a3
    add-int/lit8 v1, v1, 0x1

    move/from16 v15, v37

    goto :goto_82

    .line 3840
    .end local v1    # "k":I
    .end local v37    # "idp":I
    .local v15, "idp":I
    :cond_a8
    move/from16 v37, v15

    .end local v15    # "idp":I
    .restart local v37    # "idp":I
    goto/16 :goto_124

    .line 3813
    .end local v24    # "idot":I
    .end local v37    # "idp":I
    .local v12, "idot":I
    .restart local v15    # "idp":I
    :cond_ac
    move/from16 v24, v12

    move/from16 v37, v15

    .end local v12    # "idot":I
    .end local v15    # "idp":I
    .restart local v24    # "idot":I
    .restart local v37    # "idp":I
    move/from16 v1, v17

    .local v1, "j":I
    :goto_b2
    if-ge v1, v13, :cond_107

    .line 3814
    sub-int v12, v3, v1

    .line 3815
    .local v12, "jc":I
    mul-int v14, v1, v4

    mul-int/2addr v14, v2

    .line 3816
    .local v14, "idxt1":I
    mul-int v15, v12, v4

    mul-int/2addr v15, v2

    .line 3817
    .local v15, "idxt2":I
    mul-int v18, v1, v2

    .line 3818
    .local v18, "idxt3":I
    mul-int v19, v12, v2

    .line 3819
    .local v19, "idxt4":I
    move/from16 v21, v16

    .local v21, "i":I
    :goto_c2
    move/from16 v38, v21

    .end local v21    # "i":I
    .local v38, "i":I
    move/from16 v39, v12

    move/from16 v12, v38

    if-ge v12, v2, :cond_102

    .line 3820
    .end local v38    # "i":I
    .local v12, "i":I
    .local v39, "jc":I
    move/from16 v21, v16

    .local v21, "k":I
    :goto_cc
    move/from16 v40, v21

    .end local v21    # "k":I
    .local v40, "k":I
    move/from16 v10, v40

    if-ge v10, v4, :cond_fb

    .line 3821
    .end local v40    # "k":I
    .local v10, "k":I
    mul-int v40, v10, v2

    .line 3822
    .local v40, "idx1":I
    mul-int v21, v40, v3

    .line 3823
    .local v21, "idx2":I
    add-int v22, v9, v12

    .line 3824
    .local v22, "idx3":I
    add-int v23, v7, v12

    .line 3825
    .local v23, "idx4":I
    add-int v25, v23, v18

    add-int v25, v25, v21

    aget-wide v25, v6, v25

    .line 3826
    .local v25, "i1r":D
    add-int v27, v23, v19

    add-int v27, v27, v21

    aget-wide v27, v6, v27

    .line 3827
    .local v27, "i2r":D
    add-int v30, v22, v40

    add-int v30, v30, v14

    add-double v31, v25, v27

    aput-wide v31, v8, v30

    .line 3828
    add-int v30, v22, v40

    add-int v30, v30, v15

    sub-double v31, v25, v27

    aput-wide v31, v8, v30

    .line 3820
    .end local v21    # "idx2":I
    .end local v22    # "idx3":I
    .end local v23    # "idx4":I
    .end local v25    # "i1r":D
    .end local v27    # "i2r":D
    .end local v40    # "idx1":I
    add-int/lit8 v21, v10, 0x1

    .end local v10    # "k":I
    .local v21, "k":I
    move/from16 v10, p11

    goto :goto_cc

    .line 3819
    .end local v21    # "k":I
    :cond_fb
    add-int/lit8 v21, v12, 0x1

    .end local v12    # "i":I
    .local v21, "i":I
    move/from16 v12, v39

    move/from16 v10, p11

    goto :goto_c2

    .line 3813
    .end local v14    # "idxt1":I
    .end local v15    # "idxt2":I
    .end local v18    # "idxt3":I
    .end local v19    # "idxt4":I
    .end local v21    # "i":I
    :cond_102
    add-int/lit8 v1, v1, 0x1

    move/from16 v10, p11

    goto :goto_b2

    .line 3832
    .end local v1    # "j":I
    .end local v39    # "jc":I
    :cond_107
    move/from16 v1, v16

    .local v1, "i":I
    :goto_109
    if-ge v1, v2, :cond_124

    .line 3833
    move/from16 v10, v16

    .restart local v10    # "k":I
    :goto_10d
    if-ge v10, v4, :cond_121

    .line 3834
    mul-int v12, v10, v2

    .line 3835
    .local v12, "idx1":I
    add-int v14, v9, v1

    add-int/2addr v14, v12

    add-int v15, v7, v1

    mul-int v18, v12, v3

    add-int v15, v15, v18

    aget-wide v18, v6, v15

    aput-wide v18, v8, v14

    .line 3833
    .end local v12    # "idx1":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_10d

    .line 3832
    .end local v10    # "k":I
    :cond_121
    add-int/lit8 v1, v1, 0x1

    goto :goto_109

    .line 3840
    .end local v1    # "i":I
    :cond_124
    :goto_124
    const/4 v1, 0x2

    rsub-int/lit8 v14, v2, 0x2

    .line 3841
    .local v14, "idl":I
    const/4 v1, 0x0

    .line 3842
    .local v1, "inc":I
    add-int/lit8 v10, v3, -0x1

    mul-int/2addr v10, v5

    .line 3843
    .local v10, "idxt0":I
    move v12, v1

    move/from16 v1, v17

    .local v1, "l":I
    .local v12, "inc":I
    :goto_12e
    if-ge v1, v13, :cond_1f8

    .line 3844
    sub-int v15, v3, v1

    .line 3845
    .local v15, "lc":I
    add-int/2addr v14, v2

    .line 3846
    mul-int v18, v1, v5

    .line 3847
    .local v18, "idxt1":I
    mul-int v19, v15, v5

    .line 3848
    .local v19, "idxt2":I
    add-int v21, v14, v11

    .line 3849
    .local v21, "idxt3":I
    move/from16 v41, v15

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    .end local v15    # "lc":I
    .local v41, "lc":I
    add-int/lit8 v22, v21, -0x2

    aget-wide v22, v15, v22

    .line 3850
    .local v22, "w1r":D
    move/from16 v15, p11

    int-to-double v3, v15

    move/from16 v42, v1

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    .end local v1    # "l":I
    .local v42, "l":I
    add-int/lit8 v25, v21, -0x1

    aget-wide v25, v1, v25

    mul-double v3, v3, v25

    .line 3851
    .local v3, "w1i":D
    move/from16 v1, v16

    .local v1, "ik":I
    :goto_150
    if-ge v1, v5, :cond_171

    .line 3852
    add-int v25, v7, v1

    .line 3853
    .local v25, "idx1":I
    add-int v26, v9, v1

    .line 3854
    .local v26, "idx2":I
    add-int v27, v25, v18

    aget-wide v30, v8, v26

    add-int v28, v26, v5

    aget-wide v32, v8, v28

    mul-double v32, v32, v22

    add-double v30, v30, v32

    aput-wide v30, v6, v27

    .line 3855
    add-int v27, v25, v19

    add-int v28, v26, v10

    aget-wide v30, v8, v28

    mul-double v30, v30, v3

    aput-wide v30, v6, v27

    .line 3851
    .end local v25    # "idx1":I
    .end local v26    # "idx2":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_150

    .line 3857
    .end local v1    # "ik":I
    :cond_171
    move v1, v14

    .line 3858
    .local v1, "idlj":I
    add-int/2addr v12, v2

    .line 3859
    move/from16 v25, v1

    const/4 v1, 0x2

    .local v1, "j":I
    .local v25, "idlj":I
    :goto_176
    if-ge v1, v13, :cond_1e4

    .line 3860
    move-wide/from16 v43, v3

    move/from16 v3, p3

    sub-int v4, v3, v1

    .line 3861
    .end local v3    # "w1i":D
    .local v4, "jc":I
    .local v43, "w1i":D
    move/from16 v45, v10

    add-int v10, v25, v12

    .line 3862
    .end local v25    # "idlj":I
    .local v10, "idlj":I
    .local v45, "idxt0":I
    move/from16 v46, v12

    move/from16 v12, v37

    if-le v10, v12, :cond_189

    .line 3863
    .end local v37    # "idp":I
    .local v12, "idp":I
    .local v46, "inc":I
    sub-int/2addr v10, v12

    .line 3864
    .end local v10    # "idlj":I
    .restart local v25    # "idlj":I
    :cond_189
    move/from16 v25, v10

    add-int v10, v25, v11

    .line 3865
    .local v10, "idxt4":I
    move/from16 v47, v12

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    .end local v12    # "idp":I
    .local v47, "idp":I
    add-int/lit8 v26, v10, -0x2

    aget-wide v26, v12, v26

    .line 3866
    .local v26, "w2r":D
    move/from16 v48, v11

    int-to-double v11, v15

    .end local v11    # "iw1":I
    .local v48, "iw1":I
    move/from16 v49, v14

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    .end local v14    # "idl":I
    .local v49, "idl":I
    add-int/lit8 v28, v10, -0x1

    aget-wide v30, v14, v28

    mul-double v11, v11, v30

    .line 3867
    .local v11, "w2i":D
    mul-int v14, v1, v5

    .line 3868
    .local v14, "idxt5":I
    mul-int v28, v4, v5

    .line 3869
    .local v28, "idxt6":I
    move/from16 v30, v16

    .local v30, "ik":I
    :goto_1a8
    move/from16 v50, v30

    .end local v30    # "ik":I
    .local v50, "ik":I
    move/from16 v51, v4

    move/from16 v4, v50

    if-ge v4, v5, :cond_1d5

    .line 3870
    .end local v50    # "ik":I
    .local v4, "ik":I
    .local v51, "jc":I
    add-int v30, v7, v4

    .line 3871
    .local v30, "idx1":I
    add-int v31, v9, v4

    .line 3872
    .local v31, "idx2":I
    add-int v32, v30, v18

    aget-wide v33, v6, v32

    add-int v35, v31, v14

    aget-wide v35, v8, v35

    mul-double v35, v35, v26

    add-double v33, v33, v35

    aput-wide v33, v6, v32

    .line 3873
    add-int v32, v30, v19

    aget-wide v33, v6, v32

    add-int v35, v31, v28

    aget-wide v35, v8, v35

    mul-double v35, v35, v11

    add-double v33, v33, v35

    aput-wide v33, v6, v32

    .line 3869
    .end local v30    # "idx1":I
    .end local v31    # "idx2":I
    add-int/lit8 v30, v4, 0x1

    .end local v4    # "ik":I
    .local v30, "ik":I
    move/from16 v4, v51

    goto :goto_1a8

    .line 3859
    .end local v10    # "idxt4":I
    .end local v14    # "idxt5":I
    .end local v28    # "idxt6":I
    .end local v30    # "ik":I
    :cond_1d5
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v3, v43

    move/from16 v10, v45

    move/from16 v12, v46

    move/from16 v37, v47

    move/from16 v11, v48

    move/from16 v14, v49

    goto :goto_176

    .line 3843
    .end local v1    # "j":I
    .end local v18    # "idxt1":I
    .end local v19    # "idxt2":I
    .end local v21    # "idxt3":I
    .end local v26    # "w2r":D
    .end local v43    # "w1i":D
    .end local v45    # "idxt0":I
    .end local v46    # "inc":I
    .end local v47    # "idp":I
    .end local v48    # "iw1":I
    .end local v49    # "idl":I
    .end local v51    # "jc":I
    .restart local v3    # "w1i":D
    .local v10, "idxt0":I
    .local v11, "iw1":I
    .local v12, "inc":I
    .local v14, "idl":I
    .restart local v37    # "idp":I
    :cond_1e4
    move-wide/from16 v43, v3

    move/from16 v45, v10

    move/from16 v48, v11

    move/from16 v46, v12

    move/from16 v49, v14

    move/from16 v47, v37

    move/from16 v3, p3

    .end local v3    # "w1i":D
    .end local v10    # "idxt0":I
    .end local v11    # "iw1":I
    .end local v12    # "inc":I
    .end local v14    # "idl":I
    .end local v37    # "idp":I
    .restart local v43    # "w1i":D
    .restart local v45    # "idxt0":I
    .restart local v46    # "inc":I
    .restart local v47    # "idp":I
    .restart local v48    # "iw1":I
    .restart local v49    # "idl":I
    add-int/lit8 v1, v42, 0x1

    .end local v42    # "l":I
    .local v1, "l":I
    move/from16 v4, p4

    goto/16 :goto_12e

    .line 3877
    .end local v22    # "w1r":D
    .end local v25    # "idlj":I
    .end local v41    # "lc":I
    .end local v43    # "w1i":D
    .end local v45    # "idxt0":I
    .end local v46    # "inc":I
    .end local v47    # "idp":I
    .end local v48    # "iw1":I
    .end local v49    # "idl":I
    .restart local v10    # "idxt0":I
    .restart local v11    # "iw1":I
    .restart local v12    # "inc":I
    .restart local v14    # "idl":I
    .restart local v37    # "idp":I
    :cond_1f8
    move/from16 v42, v1

    move/from16 v45, v10

    move/from16 v48, v11

    move v1, v12

    move/from16 v47, v37

    move/from16 v15, p11

    .end local v10    # "idxt0":I
    .end local v11    # "iw1":I
    .end local v12    # "inc":I
    .end local v37    # "idp":I
    .local v1, "inc":I
    .restart local v42    # "l":I
    .restart local v45    # "idxt0":I
    .restart local v47    # "idp":I
    .restart local v48    # "iw1":I
    move/from16 v4, v17

    .local v4, "j":I
    :goto_205
    if-ge v4, v13, :cond_21f

    .line 3878
    mul-int v10, v4, v5

    .line 3879
    .local v10, "idxt1":I
    move/from16 v11, v16

    .local v11, "ik":I
    :goto_20b
    if-ge v11, v5, :cond_21c

    .line 3880
    add-int v12, v9, v11

    .line 3881
    .local v12, "idx1":I
    aget-wide v18, v8, v12

    add-int v21, v12, v10

    aget-wide v21, v8, v21

    add-double v18, v18, v21

    aput-wide v18, v8, v12

    .line 3879
    .end local v12    # "idx1":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_20b

    .line 3877
    .end local v10    # "idxt1":I
    .end local v11    # "ik":I
    :cond_21c
    add-int/lit8 v4, v4, 0x1

    goto :goto_205

    .line 3884
    .end local v4    # "j":I
    :cond_21f
    move/from16 v4, v17

    .restart local v4    # "j":I
    :goto_221
    if-ge v4, v13, :cond_269

    .line 3885
    sub-int v10, v3, v4

    .line 3886
    .local v10, "jc":I
    mul-int v11, v4, v5

    .line 3887
    .local v11, "idx1":I
    mul-int v12, v10, v5

    .line 3888
    .local v12, "idx2":I
    move/from16 v18, v17

    .local v18, "ik":I
    :goto_22b
    move/from16 v52, v18

    .end local v18    # "ik":I
    .local v52, "ik":I
    move/from16 v53, v1

    move/from16 v1, v52

    if-ge v1, v5, :cond_264

    .line 3889
    .end local v52    # "ik":I
    .local v1, "ik":I
    .local v53, "inc":I
    add-int v18, v9, v1

    .line 3890
    .local v18, "idx3":I
    add-int v19, v7, v1

    .line 3891
    .local v19, "idx4":I
    add-int v21, v19, v11

    .line 3892
    .local v21, "iidx1":I
    add-int v22, v19, v12

    .line 3893
    .local v22, "iidx2":I
    add-int/lit8 v23, v21, -0x1

    aget-wide v25, v6, v23

    .line 3894
    .local v25, "i1i":D
    aget-wide v27, v6, v21

    .line 3895
    .local v27, "i1r":D
    add-int/lit8 v23, v22, -0x1

    aget-wide v30, v6, v23

    .line 3896
    .local v30, "i2i":D
    aget-wide v32, v6, v22

    .line 3898
    .restart local v32    # "i2r":D
    add-int v23, v18, v11

    .line 3899
    .local v23, "oidx1":I
    add-int v34, v18, v12

    .line 3900
    .local v34, "oidx2":I
    add-int/lit8 v35, v23, -0x1

    sub-double v36, v25, v32

    aput-wide v36, v8, v35

    .line 3901
    add-int/lit8 v35, v34, -0x1

    add-double v36, v25, v32

    aput-wide v36, v8, v35

    .line 3902
    add-double v35, v27, v30

    aput-wide v35, v8, v23

    .line 3903
    sub-double v35, v27, v30

    aput-wide v35, v8, v34

    .line 3888
    .end local v18    # "idx3":I
    .end local v19    # "idx4":I
    .end local v21    # "iidx1":I
    .end local v22    # "iidx2":I
    .end local v23    # "oidx1":I
    .end local v25    # "i1i":D
    .end local v27    # "i1r":D
    .end local v30    # "i2i":D
    .end local v32    # "i2r":D
    .end local v34    # "oidx2":I
    add-int/lit8 v18, v1, 0x2

    .end local v1    # "ik":I
    .local v18, "ik":I
    move/from16 v1, v53

    goto :goto_22b

    .line 3884
    .end local v11    # "idx1":I
    .end local v12    # "idx2":I
    .end local v18    # "ik":I
    :cond_264
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v53

    goto :goto_221

    .line 3906
    .end local v4    # "j":I
    .end local v10    # "jc":I
    .end local v53    # "inc":I
    .local v1, "inc":I
    :cond_269
    move/from16 v53, v1

    .end local v1    # "inc":I
    .restart local v53    # "inc":I
    aput v17, p1, v16

    .line 3907
    const/4 v4, 0x2

    if-ne v2, v4, :cond_271

    .line 3908
    return-void-no-barrier

    .line 3909
    :cond_271
    aput v16, p1, v16

    .line 3910
    invoke-static {v8, v9, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3911
    move/from16 v4, p4

    mul-int v10, v4, v2

    .line 3912
    .local v10, "idx0":I
    move/from16 v11, v17

    .local v11, "j":I
    :goto_27c
    if-ge v11, v3, :cond_2a4

    .line 3913
    mul-int v12, v11, v10

    .line 3914
    .local v12, "idx1":I
    move/from16 v18, v16

    .local v18, "k":I
    :goto_282
    move/from16 v54, v18

    .end local v18    # "k":I
    .local v54, "k":I
    move/from16 v1, v54

    if-ge v1, v4, :cond_2a1

    .line 3915
    .end local v54    # "k":I
    .local v1, "k":I
    mul-int v54, v1, v2

    .line 3916
    .local v54, "idx2":I
    add-int v18, v9, v54

    add-int v18, v18, v12

    .line 3917
    .local v18, "oidx1":I
    add-int v19, v7, v54

    add-int v19, v19, v12

    .line 3918
    .local v19, "iidx1":I
    aget-wide v21, v8, v18

    aput-wide v21, v6, v19

    .line 3919
    add-int/lit8 v21, v19, 0x1

    add-int/lit8 v22, v18, 0x1

    aget-wide v22, v8, v22

    aput-wide v22, v6, v21

    .line 3914
    .end local v18    # "oidx1":I
    .end local v19    # "iidx1":I
    .end local v54    # "idx2":I
    add-int/lit8 v18, v1, 0x1

    .end local v1    # "k":I
    .local v18, "k":I
    goto :goto_282

    .line 3912
    .end local v12    # "idx1":I
    .end local v18    # "k":I
    :cond_2a1
    add-int/lit8 v11, v11, 0x1

    goto :goto_27c

    .line 3922
    .end local v11    # "j":I
    :cond_2a4
    move/from16 v11, v24

    if-gt v11, v4, :cond_329

    .line 3923
    .end local v24    # "idot":I
    .local v11, "idot":I
    const/4 v12, 0x0

    .line 3924
    .local v12, "idij":I
    move/from16 v18, v12

    move/from16 v12, v17

    .local v12, "j":I
    .local v18, "idij":I
    :goto_2ad
    if-ge v12, v3, :cond_321

    .line 3925
    add-int/lit8 v18, v18, 0x2

    .line 3926
    mul-int v19, v12, v4

    mul-int v19, v19, v2

    .line 3927
    .local v19, "idx1":I
    move/from16 v20, v18

    const/16 v18, 0x3

    .local v18, "i":I
    .local v20, "idij":I
    :goto_2b9
    move/from16 v55, v18

    .end local v18    # "i":I
    .local v55, "i":I
    move/from16 v1, v55

    if-ge v1, v2, :cond_314

    .line 3928
    .end local v55    # "i":I
    .local v1, "i":I
    add-int/lit8 v20, v20, 0x2

    .line 3929
    add-int v18, v20, v48

    add-int/lit8 v18, v18, -0x1

    .line 3930
    .local v18, "idx2":I
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v21, v18, -0x1

    aget-wide v21, v5, v21

    .line 3931
    .local v21, "w1r":D
    move/from16 v56, v10

    move/from16 v57, v11

    int-to-double v10, v15

    .end local v10    # "idx0":I
    .end local v11    # "idot":I
    .local v56, "idx0":I
    .local v57, "idot":I
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v23, v5, v18

    mul-double v10, v10, v23

    .line 3932
    .local v10, "w1i":D
    add-int v5, v7, v1

    .line 3933
    .local v5, "idx3":I
    add-int v23, v9, v1

    .line 3934
    .local v23, "idx4":I
    move/from16 v24, v16

    .local v24, "k":I
    :goto_2dc
    move/from16 v58, v24

    .end local v24    # "k":I
    .local v58, "k":I
    move/from16 v59, v13

    move/from16 v13, v58

    if-ge v13, v4, :cond_309

    .line 3935
    .end local v58    # "k":I
    .local v13, "k":I
    .local v59, "ipph":I
    mul-int v58, v13, v2

    add-int v58, v58, v19

    .line 3936
    .local v58, "idx5":I
    add-int v24, v5, v58

    .line 3937
    .local v24, "iidx1":I
    add-int v25, v23, v58

    .line 3938
    .local v25, "oidx1":I
    add-int/lit8 v26, v25, -0x1

    aget-wide v26, v8, v26

    .line 3939
    .local v26, "o1i":D
    aget-wide v28, v8, v25

    .line 3940
    .local v28, "o1r":D
    add-int/lit8 v30, v24, -0x1

    mul-double v31, v21, v26

    mul-double v33, v10, v28

    sub-double v31, v31, v33

    aput-wide v31, v6, v30

    .line 3941
    mul-double v30, v21, v28

    mul-double v32, v10, v26

    add-double v30, v30, v32

    aput-wide v30, v6, v24

    .line 3934
    .end local v24    # "iidx1":I
    .end local v25    # "oidx1":I
    .end local v26    # "o1i":D
    .end local v28    # "o1r":D
    .end local v58    # "idx5":I
    add-int/lit8 v24, v13, 0x1

    .end local v13    # "k":I
    .local v24, "k":I
    move/from16 v13, v59

    goto :goto_2dc

    .line 3927
    .end local v5    # "idx3":I
    .end local v18    # "idx2":I
    .end local v23    # "idx4":I
    .end local v24    # "k":I
    :cond_309
    add-int/lit8 v18, v1, 0x2

    .end local v1    # "i":I
    .local v18, "i":I
    move/from16 v10, v56

    move/from16 v11, v57

    move/from16 v13, v59

    move/from16 v5, p5

    goto :goto_2b9

    .line 3924
    .end local v18    # "i":I
    .end local v19    # "idx1":I
    .end local v21    # "w1r":D
    .end local v56    # "idx0":I
    .end local v57    # "idot":I
    .end local v59    # "ipph":I
    .local v10, "idx0":I
    .restart local v11    # "idot":I
    .local v13, "ipph":I
    :cond_314
    move/from16 v56, v10

    move/from16 v57, v11

    move/from16 v59, v13

    .end local v10    # "idx0":I
    .end local v11    # "idot":I
    .end local v13    # "ipph":I
    .restart local v56    # "idx0":I
    .restart local v57    # "idot":I
    .restart local v59    # "ipph":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v18, v20

    move/from16 v5, p5

    goto :goto_2ad

    .line 3968
    .end local v12    # "j":I
    .end local v20    # "idij":I
    .end local v56    # "idx0":I
    .end local v57    # "idot":I
    .end local v59    # "ipph":I
    .restart local v10    # "idx0":I
    .restart local v11    # "idot":I
    .restart local v13    # "ipph":I
    .local v18, "idij":I
    :cond_321
    move/from16 v56, v10

    move/from16 v57, v11

    move/from16 v59, v13

    .end local v10    # "idx0":I
    .end local v11    # "idot":I
    .end local v13    # "ipph":I
    .restart local v56    # "idx0":I
    .restart local v57    # "idot":I
    .restart local v59    # "ipph":I
    goto/16 :goto_396

    .line 3946
    .end local v18    # "idij":I
    .end local v56    # "idx0":I
    .end local v57    # "idot":I
    .end local v59    # "ipph":I
    .restart local v10    # "idx0":I
    .restart local v11    # "idot":I
    .restart local v13    # "ipph":I
    :cond_329
    move/from16 v56, v10

    move/from16 v57, v11

    move/from16 v59, v13

    .end local v10    # "idx0":I
    .end local v11    # "idot":I
    .end local v13    # "ipph":I
    .restart local v56    # "idx0":I
    .restart local v57    # "idot":I
    .restart local v59    # "ipph":I
    const/4 v1, 0x2

    sub-int/2addr v1, v2

    .line 3947
    .local v1, "idj":I
    nop

    .local v17, "j":I
    :goto_332
    move/from16 v5, v17

    .end local v17    # "j":I
    .local v5, "j":I
    if-ge v5, v3, :cond_396

    .line 3948
    add-int/2addr v1, v2

    .line 3949
    mul-int v10, v5, v4

    mul-int/2addr v10, v2

    .line 3950
    .local v10, "idx1":I
    move/from16 v11, v16

    .local v11, "k":I
    :goto_33c
    if-ge v11, v4, :cond_38d

    .line 3951
    move v12, v1

    .line 3952
    .local v12, "idij":I
    mul-int v13, v11, v2

    add-int/2addr v13, v10

    .line 3953
    .local v13, "idx3":I
    move/from16 v17, v12

    const/4 v12, 0x3

    .local v12, "i":I
    .local v17, "idij":I
    :goto_345
    if-ge v12, v2, :cond_384

    .line 3954
    add-int/lit8 v17, v17, 0x2

    .line 3955
    add-int/lit8 v18, v17, -0x1

    add-int v18, v18, v48

    .line 3956
    .local v18, "idx2":I
    move/from16 v60, v1

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    .end local v1    # "idj":I
    .local v60, "idj":I
    add-int/lit8 v19, v18, -0x1

    aget-wide v19, v1, v19

    .line 3957
    .local v19, "w1r":D
    int-to-double v1, v15

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v21, v3, v18

    mul-double v1, v1, v21

    .line 3958
    .local v1, "w1i":D
    add-int v3, v7, v12

    add-int/2addr v3, v13

    .line 3959
    .local v3, "iidx1":I
    add-int v21, v9, v12

    add-int v21, v21, v13

    .line 3960
    .local v21, "oidx1":I
    add-int/lit8 v22, v21, -0x1

    aget-wide v22, v8, v22

    .line 3961
    .local v22, "o1i":D
    aget-wide v24, v8, v21

    .line 3962
    .local v24, "o1r":D
    add-int/lit8 v26, v3, -0x1

    mul-double v27, v19, v22

    mul-double v29, v1, v24

    sub-double v27, v27, v29

    aput-wide v27, v6, v26

    .line 3963
    mul-double v26, v19, v24

    mul-double v28, v1, v22

    add-double v26, v26, v28

    aput-wide v26, v6, v3

    .line 3953
    .end local v3    # "iidx1":I
    .end local v18    # "idx2":I
    .end local v21    # "oidx1":I
    .end local v22    # "o1i":D
    .end local v24    # "o1r":D
    add-int/lit8 v12, v12, 0x2

    move/from16 v1, v60

    move/from16 v2, p2

    move/from16 v3, p3

    goto :goto_345

    .line 3950
    .end local v12    # "i":I
    .end local v13    # "idx3":I
    .end local v19    # "w1r":D
    .end local v60    # "idj":I
    .local v1, "idj":I
    :cond_384
    move/from16 v60, v1

    .end local v1    # "idj":I
    .restart local v60    # "idj":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p2

    move/from16 v3, p3

    goto :goto_33c

    .line 3947
    .end local v10    # "idx1":I
    .end local v11    # "k":I
    .end local v17    # "idij":I
    .end local v60    # "idj":I
    .restart local v1    # "idj":I
    :cond_38d
    move/from16 v60, v1

    .end local v1    # "idj":I
    .restart local v60    # "idj":I
    add-int/lit8 v17, v5, 0x1

    .end local v5    # "j":I
    .local v17, "j":I
    move/from16 v2, p2

    move/from16 v3, p3

    goto :goto_332

    .line 3968
    .end local v17    # "j":I
    .end local v60    # "idj":I
    :cond_396
    :goto_396
    return-void-no-barrier
.end method

.method radb2(II[DI[DII)V
    .registers 51
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1906
    move/from16 v3, p7

    .line 1908
    .local v3, "iw1":I
    mul-int v4, v2, v1

    .line 1909
    .local v4, "idx0":I
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_b
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v6, v2, :cond_2d

    .line 1910
    mul-int v9, v6, v1

    .line 1911
    .local v9, "idx1":I
    mul-int/2addr v7, v9

    .line 1912
    .local v7, "idx2":I
    add-int v10, v7, v1

    .line 1913
    .local v10, "idx3":I
    add-int v11, p6, v9

    .line 1914
    .local v11, "oidx1":I
    add-int v12, p4, v7

    .line 1915
    .local v12, "iidx1":I
    add-int v13, p4, v1

    sub-int/2addr v13, v8

    add-int/2addr v13, v10

    .line 1916
    .local v13, "iidx2":I
    aget-wide v14, p3, v12

    .line 1917
    .local v14, "i1r":D
    aget-wide v16, p3, v13

    .line 1918
    .local v16, "i2r":D
    add-double v18, v14, v16

    aput-wide v18, p5, v11

    .line 1919
    add-int v8, v11, v4

    sub-double v18, v14, v16

    aput-wide v18, p5, v8

    .line 1909
    .end local v7    # "idx2":I
    .end local v9    # "idx1":I
    .end local v10    # "idx3":I
    .end local v11    # "oidx1":I
    .end local v12    # "iidx1":I
    .end local v13    # "iidx2":I
    .end local v14    # "i1r":D
    .end local v16    # "i2r":D
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 1921
    .end local v6    # "k":I
    :cond_2d
    if-ge v1, v7, :cond_30

    .line 1922
    return-void-no-barrier

    .line 1923
    :cond_30
    if-eq v1, v7, :cond_a8

    .line 1924
    const/4 v6, 0x0

    .restart local v6    # "k":I
    :goto_33
    if-ge v6, v2, :cond_a3

    .line 1925
    mul-int v9, v6, v1

    .line 1926
    .restart local v9    # "idx1":I
    mul-int v10, v7, v9

    .line 1927
    .local v10, "idx2":I
    add-int v11, v10, v1

    .line 1928
    .local v11, "idx3":I
    add-int v12, v9, v4

    .line 1929
    .local v12, "idx4":I
    move v13, v7

    .local v13, "i":I
    :goto_3e
    move/from16 v20, v13

    .end local v13    # "i":I
    .local v20, "i":I
    move/from16 v5, v20

    if-ge v5, v1, :cond_9f

    .line 1930
    .end local v20    # "i":I
    .local v5, "i":I
    sub-int v13, v1, v5

    .line 1931
    .local v13, "ic":I
    add-int/lit8 v20, v5, -0x1

    add-int v20, v20, v3

    .line 1932
    .local v20, "idx5":I
    add-int v14, p6, v5

    .line 1933
    .local v14, "idx6":I
    add-int v15, p4, v5

    .line 1934
    .local v15, "idx7":I
    add-int v16, p4, v13

    .line 1935
    .local v16, "idx8":I
    iget-object v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v17, v20, -0x1

    aget-wide v17, v7, v17

    .line 1936
    .local v17, "w1r":D
    iget-object v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v22, v7, v20

    .line 1937
    .local v22, "w1i":D
    add-int v7, v15, v10

    .line 1938
    .local v7, "iidx1":I
    add-int v19, v16, v11

    .line 1939
    .local v19, "iidx2":I
    add-int v24, v14, v9

    .line 1940
    .local v24, "oidx1":I
    add-int v25, v14, v12

    .line 1941
    .local v25, "oidx2":I
    add-int/lit8 v26, v7, -0x1

    aget-wide v26, p3, v26

    add-int/lit8 v28, v19, -0x1

    aget-wide v28, p3, v28

    sub-double v26, v26, v28

    .line 1942
    .local v26, "t1r":D
    aget-wide v28, p3, v7

    aget-wide v30, p3, v19

    add-double v28, v28, v30

    .line 1943
    .local v28, "t1i":D
    aget-wide v30, p3, v7

    .line 1944
    .local v30, "i1i":D
    add-int/lit8 v32, v7, -0x1

    aget-wide v32, p3, v32

    .line 1945
    .local v32, "i1r":D
    aget-wide v34, p3, v19

    .line 1946
    .local v34, "i2i":D
    add-int/lit8 v36, v19, -0x1

    aget-wide v36, p3, v36

    .line 1948
    .local v36, "i2r":D
    add-int/lit8 v38, v24, -0x1

    add-double v39, v32, v36

    aput-wide v39, p5, v38

    .line 1949
    sub-double v38, v30, v34

    aput-wide v38, p5, v24

    .line 1950
    add-int/lit8 v38, v25, -0x1

    mul-double v39, v17, v26

    mul-double v41, v22, v28

    sub-double v39, v39, v41

    aput-wide v39, p5, v38

    .line 1951
    mul-double v38, v17, v28

    mul-double v40, v22, v26

    add-double v38, v38, v40

    aput-wide v38, p5, v25

    .line 1929
    .end local v7    # "iidx1":I
    .end local v14    # "idx6":I
    .end local v15    # "idx7":I
    .end local v16    # "idx8":I
    .end local v19    # "iidx2":I
    .end local v20    # "idx5":I
    .end local v24    # "oidx1":I
    .end local v25    # "oidx2":I
    .end local v30    # "i1i":D
    .end local v32    # "i1r":D
    .end local v34    # "i2i":D
    .end local v36    # "i2r":D
    add-int/lit8 v5, v5, 0x2

    move v13, v5

    const/4 v7, 0x2

    goto :goto_3e

    .line 1924
    .end local v9    # "idx1":I
    .end local v10    # "idx2":I
    .end local v11    # "idx3":I
    .end local v12    # "idx4":I
    .end local v13    # "ic":I
    .end local v17    # "w1r":D
    .end local v22    # "w1i":D
    .end local v26    # "t1r":D
    .end local v28    # "t1i":D
    :cond_9f
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x2

    goto :goto_33

    .line 1954
    .end local v5    # "i":I
    .end local v6    # "k":I
    :cond_a3
    rem-int/lit8 v5, v1, 0x2

    if-ne v5, v8, :cond_a8

    .line 1955
    return-void-no-barrier

    .line 1957
    :cond_a8
    const/16 v21, 0x0

    .local v21, "k":I
    :goto_aa
    move/from16 v5, v21

    .end local v21    # "k":I
    .local v5, "k":I
    if-ge v5, v2, :cond_cf

    .line 1958
    mul-int v6, v5, v1

    .line 1959
    .local v6, "idx1":I
    const/4 v7, 0x2

    mul-int v9, v7, v6

    .line 1960
    .local v9, "idx2":I
    add-int v10, p6, v1

    sub-int/2addr v10, v8

    add-int/2addr v10, v6

    .line 1961
    .local v10, "oidx1":I
    add-int v11, p4, v9

    add-int/2addr v11, v1

    .line 1962
    .local v11, "iidx1":I
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    add-int/lit8 v14, v11, -0x1

    aget-wide v14, p3, v14

    mul-double/2addr v12, v14

    aput-wide v12, p5, v10

    .line 1963
    add-int v12, v10, v4

    const-wide/high16 v13, -0x4000000000000000L    # -2.0

    aget-wide v15, p3, v11

    mul-double/2addr v13, v15

    aput-wide v13, p5, v12

    .line 1957
    .end local v6    # "idx1":I
    .end local v9    # "idx2":I
    .end local v10    # "oidx1":I
    .end local v11    # "iidx1":I
    add-int/lit8 v21, v5, 0x1

    .end local v5    # "k":I
    .restart local v21    # "k":I
    goto :goto_aa

    .line 1965
    .end local v21    # "k":I
    :cond_cf
    return-void-no-barrier
.end method

.method radb3(II[DI[DII)V
    .registers 85
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 2057
    const-wide/high16 v3, -0x4020000000000000L    # -0.5

    .line 2058
    .local v3, "taur":D
    const-wide v5, 0x3febb67ae8584cabL    # 0.8660254037844387

    .line 2062
    .local v5, "taui":D
    move/from16 v7, p7

    .line 2063
    .local v7, "iw1":I
    add-int v8, v7, v1

    .line 2065
    .local v8, "iw2":I
    const/4 v9, 0x0

    move v10, v9

    .local v10, "k":I
    :goto_13
    const/4 v11, 0x3

    const-wide/high16 v12, -0x4020000000000000L    # -0.5

    const/4 v14, 0x2

    if-ge v10, v2, :cond_55

    .line 2066
    mul-int v15, v10, v1

    .line 2067
    .local v15, "idx1":I
    mul-int/2addr v11, v15

    add-int v11, p4, v11

    .line 2068
    .local v11, "iidx1":I
    mul-int v16, v14, v1

    add-int v16, v11, v16

    .line 2069
    .local v16, "iidx2":I
    aget-wide v17, p3, v11

    .line 2071
    .local v17, "i1i":D
    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    add-int/lit8 v21, v16, -0x1

    aget-wide v21, p3, v21

    mul-double v19, v19, v21

    .line 2072
    .local v19, "tr2":D
    mul-double v12, v12, v19

    add-double v12, v17, v12

    .line 2073
    .local v12, "cr2":D
    const-wide v21, 0x3ffbb67ae8584cabL    # 1.7320508075688774

    aget-wide v23, p3, v16

    mul-double v21, v21, v23

    .line 2075
    .local v21, "ci3":D
    add-int v23, p6, v15

    add-double v24, v17, v19

    aput-wide v24, p5, v23

    .line 2076
    add-int v23, v10, v2

    mul-int v23, v23, v1

    add-int v23, p6, v23

    sub-double v24, v12, v21

    aput-wide v24, p5, v23

    .line 2077
    mul-int/2addr v14, v2

    add-int/2addr v14, v10

    mul-int/2addr v14, v1

    add-int v14, p6, v14

    add-double v23, v12, v21

    aput-wide v23, p5, v14

    .line 2065
    .end local v11    # "iidx1":I
    .end local v15    # "idx1":I
    .end local v16    # "iidx2":I
    .end local v17    # "i1i":D
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 2079
    .end local v10    # "k":I
    .end local v12    # "cr2":D
    .end local v19    # "tr2":D
    .end local v21    # "ci3":D
    :cond_55
    const/4 v10, 0x1

    if-ne v1, v10, :cond_59

    .line 2080
    return-void-no-barrier

    .line 2081
    :cond_59
    mul-int v10, v2, v1

    .line 2082
    .local v10, "idx0":I
    nop

    .local v9, "k":I
    :goto_5c
    if-ge v9, v2, :cond_113

    .line 2083
    mul-int v15, v9, v1

    .line 2084
    .restart local v15    # "idx1":I
    mul-int v16, v11, v15

    .line 2085
    .local v16, "idx2":I
    add-int v17, v16, v1

    .line 2086
    .local v17, "idx3":I
    add-int v18, v17, v1

    .line 2087
    .local v18, "idx4":I
    add-int v19, v15, v10

    .line 2088
    .local v19, "idx5":I
    add-int v20, v19, v10

    .line 2089
    .local v20, "idx6":I
    move/from16 v21, v14

    .local v21, "i":I
    :goto_6c
    move/from16 v26, v21

    .end local v21    # "i":I
    .local v26, "i":I
    move/from16 v11, v26

    if-ge v11, v1, :cond_10c

    .line 2090
    .end local v26    # "i":I
    .local v11, "i":I
    sub-int v21, v1, v11

    .line 2091
    .local v21, "ic":I
    add-int v22, p4, v11

    .line 2092
    .local v22, "idx7":I
    add-int v23, p4, v21

    .line 2093
    .local v23, "idx8":I
    add-int v24, p6, v11

    .line 2094
    .local v24, "idx9":I
    add-int v25, v22, v16

    .line 2095
    .local v25, "iidx1":I
    add-int v26, v22, v18

    .line 2096
    .local v26, "iidx2":I
    add-int v27, v23, v17

    .line 2098
    .local v27, "iidx3":I
    add-int/lit8 v28, v25, -0x1

    aget-wide v28, p3, v28

    .line 2099
    .local v28, "i1i":D
    aget-wide v30, p3, v25

    .line 2100
    .local v30, "i1r":D
    add-int/lit8 v32, v26, -0x1

    aget-wide v32, p3, v32

    .line 2101
    .local v32, "i2i":D
    aget-wide v34, p3, v26

    .line 2102
    .local v34, "i2r":D
    add-int/lit8 v36, v27, -0x1

    aget-wide v36, p3, v36

    .line 2103
    .local v36, "i3i":D
    aget-wide v38, p3, v27

    .line 2105
    .local v38, "i3r":D
    add-double v40, v32, v36

    .line 2106
    .local v40, "tr2":D
    mul-double v42, v12, v40

    add-double v42, v28, v42

    .line 2107
    .local v42, "cr2":D
    sub-double v44, v34, v38

    .line 2108
    .local v44, "ti2":D
    mul-double v46, v12, v44

    add-double v46, v30, v46

    .line 2109
    .local v46, "ci2":D
    sub-double v48, v32, v36

    const-wide v50, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v48, v48, v50

    .line 2110
    .local v48, "cr3":D
    add-double v52, v34, v38

    mul-double v50, v50, v52

    .line 2111
    .local v50, "ci3":D
    sub-double v52, v42, v50

    .line 2112
    .local v52, "dr2":D
    add-double v54, v42, v50

    .line 2113
    .local v54, "dr3":D
    add-double v56, v46, v48

    .line 2114
    .local v56, "di2":D
    sub-double v58, v46, v48

    .line 2116
    .local v58, "di3":D
    add-int/lit8 v60, v11, -0x1

    add-int v60, v60, v7

    .line 2117
    .local v60, "widx1":I
    add-int/lit8 v61, v11, -0x1

    add-int v61, v61, v8

    .line 2119
    .local v61, "widx2":I
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v62, v60, -0x1

    aget-wide v62, v1, v62

    .line 2120
    .local v62, "w1r":D
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v64, v1, v60

    .line 2121
    .local v64, "w1i":D
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v66, v61, -0x1

    aget-wide v66, v1, v66

    .line 2122
    .local v66, "w2r":D
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v68, v1, v61

    .line 2124
    .local v68, "w2i":D
    add-int v1, v24, v15

    .line 2125
    .local v1, "oidx1":I
    add-int v70, v24, v19

    .line 2126
    .local v70, "oidx2":I
    add-int v71, v24, v20

    .line 2128
    .local v71, "oidx3":I
    add-int/lit8 v72, v1, -0x1

    add-double v73, v28, v40

    aput-wide v73, p5, v72

    .line 2129
    add-double v72, v30, v44

    aput-wide v72, p5, v1

    .line 2130
    add-int/lit8 v72, v70, -0x1

    mul-double v73, v62, v52

    mul-double v75, v64, v56

    sub-double v73, v73, v75

    aput-wide v73, p5, v72

    .line 2131
    mul-double v72, v62, v56

    mul-double v74, v64, v52

    add-double v72, v72, v74

    aput-wide v72, p5, v70

    .line 2132
    add-int/lit8 v72, v71, -0x1

    mul-double v73, v66, v54

    mul-double v75, v68, v58

    sub-double v73, v73, v75

    aput-wide v73, p5, v72

    .line 2133
    mul-double v72, v66, v58

    mul-double v74, v68, v54

    add-double v72, v72, v74

    aput-wide v72, p5, v71

    .line 2089
    .end local v1    # "oidx1":I
    .end local v22    # "idx7":I
    .end local v23    # "idx8":I
    .end local v24    # "idx9":I
    .end local v25    # "iidx1":I
    .end local v26    # "iidx2":I
    .end local v27    # "iidx3":I
    .end local v28    # "i1i":D
    .end local v30    # "i1r":D
    .end local v32    # "i2i":D
    .end local v34    # "i2r":D
    .end local v36    # "i3i":D
    .end local v38    # "i3r":D
    .end local v60    # "widx1":I
    .end local v61    # "widx2":I
    .end local v70    # "oidx2":I
    .end local v71    # "oidx3":I
    add-int/lit8 v1, v11, 0x2

    .end local v11    # "i":I
    .local v1, "i":I
    move/from16 v21, v1

    move/from16 v1, p1

    const/4 v11, 0x3

    goto/16 :goto_6c

    .line 2082
    .end local v1    # "i":I
    .end local v15    # "idx1":I
    .end local v16    # "idx2":I
    .end local v17    # "idx3":I
    .end local v18    # "idx4":I
    .end local v19    # "idx5":I
    .end local v20    # "idx6":I
    .end local v21    # "ic":I
    .end local v40    # "tr2":D
    .end local v42    # "cr2":D
    .end local v44    # "ti2":D
    .end local v46    # "ci2":D
    .end local v48    # "cr3":D
    .end local v50    # "ci3":D
    .end local v52    # "dr2":D
    .end local v54    # "dr3":D
    .end local v56    # "di2":D
    .end local v58    # "di3":D
    .end local v62    # "w1r":D
    .end local v64    # "w1i":D
    .end local v66    # "w2r":D
    .end local v68    # "w2i":D
    .restart local v11    # "i":I
    :cond_10c
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p1

    const/4 v11, 0x3

    goto/16 :goto_5c

    .line 2136
    .end local v9    # "k":I
    .end local v11    # "i":I
    :cond_113
    return-void-no-barrier
.end method

.method radb4(II[DI[DII)V
    .registers 106
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 2278
    const-wide v3, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    .line 2283
    .local v3, "sqrt2":D
    move/from16 v5, p7

    .line 2284
    .local v5, "iw1":I
    add-int v6, v5, v1

    .line 2285
    .local v6, "iw2":I
    add-int v7, v6, v1

    .line 2287
    .local v7, "iw3":I
    mul-int v8, v2, v1

    .line 2288
    .local v8, "idx0":I
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_14
    const/4 v11, 0x4

    const/4 v9, 0x1

    if-ge v10, v2, :cond_62

    .line 2289
    mul-int v13, v10, v1

    .line 2290
    .local v13, "idx1":I
    mul-int/2addr v11, v13

    .line 2291
    .local v11, "idx2":I
    add-int v14, v13, v8

    .line 2292
    .local v14, "idx3":I
    add-int v15, v14, v8

    .line 2293
    .local v15, "idx4":I
    add-int v16, v15, v8

    .line 2294
    .local v16, "idx5":I
    add-int v17, v11, v1

    .line 2295
    .local v17, "idx6":I
    add-int v18, v17, v1

    .line 2296
    .local v18, "idx7":I
    add-int v19, v18, v1

    .line 2298
    .local v19, "idx8":I
    add-int v20, p4, v11

    aget-wide v20, p3, v20

    .line 2299
    .local v20, "i1r":D
    add-int v22, p4, v18

    aget-wide v22, p3, v22

    .line 2300
    .local v22, "i2r":D
    add-int v24, p4, v1

    add-int/lit8 v24, v24, -0x1

    add-int v24, v24, v19

    aget-wide v24, p3, v24

    .line 2301
    .local v24, "i3r":D
    add-int v26, p4, v1

    add-int/lit8 v26, v26, -0x1

    add-int v26, v26, v17

    aget-wide v26, p3, v26

    .line 2303
    .local v26, "i4r":D
    sub-double v28, v20, v24

    .line 2304
    .local v28, "tr1":D
    add-double v30, v20, v24

    .line 2305
    .local v30, "tr2":D
    add-double v32, v26, v26

    .line 2306
    .local v32, "tr3":D
    add-double v34, v22, v22

    .line 2308
    .local v34, "tr4":D
    add-int v9, p6, v13

    add-double v36, v30, v32

    aput-wide v36, p5, v9

    .line 2309
    add-int v9, p6, v14

    sub-double v36, v28, v34

    aput-wide v36, p5, v9

    .line 2310
    add-int v9, p6, v15

    sub-double v36, v30, v32

    aput-wide v36, p5, v9

    .line 2311
    add-int v9, p6, v16

    add-double v36, v28, v34

    aput-wide v36, p5, v9

    .line 2288
    .end local v11    # "idx2":I
    .end local v13    # "idx1":I
    .end local v14    # "idx3":I
    .end local v15    # "idx4":I
    .end local v16    # "idx5":I
    .end local v17    # "idx6":I
    .end local v18    # "idx7":I
    .end local v19    # "idx8":I
    .end local v20    # "i1r":D
    .end local v22    # "i2r":D
    .end local v24    # "i3r":D
    .end local v26    # "i4r":D
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 2313
    .end local v10    # "k":I
    .end local v28    # "tr1":D
    .end local v30    # "tr2":D
    .end local v32    # "tr3":D
    .end local v34    # "tr4":D
    :cond_62
    const/4 v10, 0x2

    if-ge v1, v10, :cond_66

    .line 2314
    return-void-no-barrier

    .line 2315
    :cond_66
    if-eq v1, v10, :cond_152

    .line 2316
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_69
    move/from16 v38, v13

    .end local v13    # "k":I
    .local v38, "k":I
    move/from16 v10, v38

    if-ge v10, v2, :cond_14c

    .line 2317
    .end local v38    # "k":I
    .restart local v10    # "k":I
    mul-int v38, v10, v1

    .line 2318
    .local v38, "idx1":I
    add-int v13, v38, v8

    .line 2319
    .local v13, "idx2":I
    add-int v14, v13, v8

    .line 2320
    .restart local v14    # "idx3":I
    add-int v15, v14, v8

    .line 2321
    .restart local v15    # "idx4":I
    mul-int v16, v11, v38

    .line 2322
    .restart local v16    # "idx5":I
    add-int v17, v16, v1

    .line 2323
    .restart local v17    # "idx6":I
    add-int v18, v17, v1

    .line 2324
    .restart local v18    # "idx7":I
    add-int v19, v18, v1

    .line 2325
    .restart local v19    # "idx8":I
    const/16 v20, 0x2

    .local v20, "i":I
    :goto_81
    move/from16 v40, v20

    .end local v20    # "i":I
    .local v40, "i":I
    move/from16 v11, v40

    if-ge v11, v1, :cond_145

    .line 2326
    .end local v40    # "i":I
    .local v11, "i":I
    sub-int v20, v1, v11

    .line 2327
    .local v20, "ic":I
    add-int/lit8 v40, v11, -0x1

    add-int v40, v40, v5

    .line 2328
    .local v40, "widx1":I
    add-int/lit8 v21, v11, -0x1

    add-int v21, v21, v6

    .line 2329
    .local v21, "widx2":I
    add-int/lit8 v22, v11, -0x1

    add-int v22, v22, v7

    .line 2330
    .local v22, "widx3":I
    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v23, v40, -0x1

    aget-wide v23, v9, v23

    .line 2331
    .local v23, "w1r":D
    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v25, v9, v40

    .line 2332
    .local v25, "w1i":D
    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v27, v21, -0x1

    aget-wide v27, v9, v27

    .line 2333
    .local v27, "w2r":D
    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v29, v9, v21

    .line 2334
    .local v29, "w2i":D
    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v31, v22, -0x1

    aget-wide v31, v9, v31

    .line 2335
    .local v31, "w3r":D
    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v33, v9, v22

    .line 2337
    .local v33, "w3i":D
    add-int v9, p4, v11

    .line 2338
    .local v9, "idx12":I
    add-int v35, p4, v20

    .line 2339
    .local v35, "idx13":I
    add-int v36, p6, v11

    .line 2341
    .local v36, "idx14":I
    add-int v37, v9, v16

    .line 2342
    .local v37, "iidx1":I
    add-int v42, v35, v17

    .line 2343
    .local v42, "iidx2":I
    add-int v43, v9, v18

    .line 2344
    .local v43, "iidx3":I
    add-int v44, v35, v19

    .line 2346
    .local v44, "iidx4":I
    add-int/lit8 v45, v37, -0x1

    aget-wide v45, p3, v45

    .line 2347
    .local v45, "i1i":D
    aget-wide v47, p3, v37

    .line 2348
    .local v47, "i1r":D
    add-int/lit8 v49, v42, -0x1

    aget-wide v49, p3, v49

    .line 2349
    .local v49, "i2i":D
    aget-wide v51, p3, v42

    .line 2350
    .local v51, "i2r":D
    add-int/lit8 v53, v43, -0x1

    aget-wide v53, p3, v53

    .line 2351
    .local v53, "i3i":D
    aget-wide v55, p3, v43

    .line 2352
    .local v55, "i3r":D
    add-int/lit8 v57, v44, -0x1

    aget-wide v57, p3, v57

    .line 2353
    .local v57, "i4i":D
    aget-wide v59, p3, v44

    .line 2355
    .local v59, "i4r":D
    add-double v61, v47, v59

    .line 2356
    .local v61, "ti1":D
    sub-double v63, v47, v59

    .line 2357
    .local v63, "ti2":D
    sub-double v65, v55, v51

    .line 2358
    .local v65, "ti3":D
    add-double v67, v55, v51

    .line 2359
    .local v67, "tr4":D
    sub-double v69, v45, v57

    .line 2360
    .local v69, "tr1":D
    add-double v71, v45, v57

    .line 2361
    .local v71, "tr2":D
    sub-double v73, v53, v49

    .line 2362
    .local v73, "ti4":D
    add-double v75, v53, v49

    .line 2363
    .local v75, "tr3":D
    sub-double v77, v71, v75

    .line 2364
    .local v77, "cr3":D
    sub-double v79, v63, v65

    .line 2365
    .local v79, "ci3":D
    sub-double v81, v69, v67

    .line 2366
    .local v81, "cr2":D
    add-double v83, v69, v67

    .line 2367
    .local v83, "cr4":D
    add-double v85, v61, v73

    .line 2368
    .local v85, "ci2":D
    sub-double v87, v61, v73

    .line 2370
    .local v87, "ci4":D
    add-int v89, v36, v38

    .line 2371
    .local v89, "oidx1":I
    add-int v90, v36, v13

    .line 2372
    .local v90, "oidx2":I
    add-int v91, v36, v14

    .line 2373
    .local v91, "oidx3":I
    add-int v92, v36, v15

    .line 2375
    .local v92, "oidx4":I
    add-int/lit8 v93, v89, -0x1

    add-double v94, v71, v75

    aput-wide v94, p5, v93

    .line 2376
    add-double v93, v63, v65

    aput-wide v93, p5, v89

    .line 2377
    add-int/lit8 v93, v90, -0x1

    mul-double v94, v23, v81

    mul-double v96, v25, v85

    sub-double v94, v94, v96

    aput-wide v94, p5, v93

    .line 2378
    mul-double v93, v23, v85

    mul-double v95, v25, v81

    add-double v93, v93, v95

    aput-wide v93, p5, v90

    .line 2379
    add-int/lit8 v93, v91, -0x1

    mul-double v94, v27, v77

    mul-double v96, v29, v79

    sub-double v94, v94, v96

    aput-wide v94, p5, v93

    .line 2380
    mul-double v93, v27, v79

    mul-double v95, v29, v77

    add-double v93, v93, v95

    aput-wide v93, p5, v91

    .line 2381
    add-int/lit8 v93, v92, -0x1

    mul-double v94, v31, v83

    mul-double v96, v33, v87

    sub-double v94, v94, v96

    aput-wide v94, p5, v93

    .line 2382
    mul-double v93, v31, v87

    mul-double v95, v33, v83

    add-double v93, v93, v95

    aput-wide v93, p5, v92

    .line 2325
    .end local v9    # "idx12":I
    .end local v21    # "widx2":I
    .end local v22    # "widx3":I
    .end local v35    # "idx13":I
    .end local v36    # "idx14":I
    .end local v37    # "iidx1":I
    .end local v40    # "widx1":I
    .end local v42    # "iidx2":I
    .end local v43    # "iidx3":I
    .end local v44    # "iidx4":I
    .end local v45    # "i1i":D
    .end local v47    # "i1r":D
    .end local v49    # "i2i":D
    .end local v51    # "i2r":D
    .end local v53    # "i3i":D
    .end local v55    # "i3r":D
    .end local v57    # "i4i":D
    .end local v59    # "i4r":D
    .end local v89    # "oidx1":I
    .end local v90    # "oidx2":I
    .end local v91    # "oidx3":I
    .end local v92    # "oidx4":I
    add-int/lit8 v9, v11, 0x2

    .end local v11    # "i":I
    .local v9, "i":I
    move/from16 v20, v9

    const/4 v9, 0x1

    const/4 v11, 0x4

    goto/16 :goto_81

    .line 2316
    .end local v9    # "i":I
    .end local v13    # "idx2":I
    .end local v14    # "idx3":I
    .end local v15    # "idx4":I
    .end local v16    # "idx5":I
    .end local v17    # "idx6":I
    .end local v18    # "idx7":I
    .end local v19    # "idx8":I
    .end local v20    # "ic":I
    .end local v23    # "w1r":D
    .end local v25    # "w1i":D
    .end local v27    # "w2r":D
    .end local v29    # "w2i":D
    .end local v31    # "w3r":D
    .end local v33    # "w3i":D
    .end local v38    # "idx1":I
    .end local v61    # "ti1":D
    .end local v63    # "ti2":D
    .end local v65    # "ti3":D
    .end local v67    # "tr4":D
    .end local v69    # "tr1":D
    .end local v71    # "tr2":D
    .end local v73    # "ti4":D
    .end local v75    # "tr3":D
    .end local v77    # "cr3":D
    .end local v79    # "ci3":D
    .end local v81    # "cr2":D
    .end local v83    # "cr4":D
    .end local v85    # "ci2":D
    .end local v87    # "ci4":D
    .restart local v11    # "i":I
    :cond_145
    add-int/lit8 v13, v10, 0x1

    .end local v10    # "k":I
    .local v13, "k":I
    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x4

    goto/16 :goto_69

    .line 2385
    .end local v11    # "i":I
    .end local v13    # "k":I
    :cond_14c
    rem-int/lit8 v9, v1, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_152

    .line 2386
    return-void-no-barrier

    .line 2388
    :cond_152
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_153
    move v9, v12

    .end local v12    # "k":I
    .local v9, "k":I
    if-ge v9, v2, :cond_1b8

    .line 2389
    mul-int v10, v9, v1

    .line 2390
    .local v10, "idx1":I
    const/4 v11, 0x4

    mul-int v12, v11, v10

    .line 2391
    .local v12, "idx2":I
    add-int v13, v10, v8

    .line 2392
    .local v13, "idx3":I
    add-int v14, v13, v8

    .line 2393
    .local v14, "idx4":I
    add-int v15, v14, v8

    .line 2394
    .local v15, "idx5":I
    add-int v16, v12, v1

    .line 2395
    .local v16, "idx6":I
    add-int v17, v16, v1

    .line 2396
    .local v17, "idx7":I
    add-int v18, v17, v1

    .line 2397
    .local v18, "idx8":I
    add-int v19, p4, v1

    .line 2398
    .local v19, "idx9":I
    add-int v20, p6, v1

    .line 2400
    .local v20, "idx10":I
    add-int/lit8 v21, v19, -0x1

    add-int v21, v21, v12

    aget-wide v21, p3, v21

    .line 2401
    .local v21, "i1r":D
    add-int/lit8 v23, v19, -0x1

    add-int v23, v23, v17

    aget-wide v23, p3, v23

    .line 2402
    .local v23, "i2r":D
    add-int v25, p4, v16

    aget-wide v25, p3, v25

    .line 2403
    .local v25, "i3r":D
    add-int v27, p4, v18

    aget-wide v27, p3, v27

    .line 2405
    .local v27, "i4r":D
    add-double v29, v25, v27

    .line 2406
    .local v29, "ti1":D
    sub-double v31, v27, v25

    .line 2407
    .local v31, "ti2":D
    sub-double v33, v21, v23

    .line 2408
    .local v33, "tr1":D
    add-double v35, v21, v23

    .line 2410
    .local v35, "tr2":D
    add-int/lit8 v37, v20, -0x1

    add-int v37, v37, v10

    add-double v38, v35, v35

    aput-wide v38, p5, v37

    .line 2411
    add-int/lit8 v37, v20, -0x1

    add-int v37, v37, v13

    const-wide v38, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    sub-double v40, v33, v29

    mul-double v38, v38, v40

    aput-wide v38, p5, v37

    .line 2412
    add-int/lit8 v37, v20, -0x1

    add-int v37, v37, v14

    add-double v38, v31, v31

    aput-wide v38, p5, v37

    .line 2413
    add-int/lit8 v37, v20, -0x1

    add-int v37, v37, v15

    const-wide v38, -0x40095f619980c433L    # -1.4142135623730951

    add-double v40, v33, v29

    mul-double v38, v38, v40

    aput-wide v38, p5, v37

    .line 2388
    .end local v10    # "idx1":I
    .end local v12    # "idx2":I
    .end local v13    # "idx3":I
    .end local v14    # "idx4":I
    .end local v15    # "idx5":I
    .end local v16    # "idx6":I
    .end local v17    # "idx7":I
    .end local v18    # "idx8":I
    .end local v19    # "idx9":I
    .end local v20    # "idx10":I
    .end local v21    # "i1r":D
    .end local v23    # "i2r":D
    .end local v25    # "i3r":D
    .end local v27    # "i4r":D
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "k":I
    .local v12, "k":I
    goto :goto_153

    .line 2415
    .end local v12    # "k":I
    .end local v29    # "ti1":D
    .end local v31    # "ti2":D
    .end local v33    # "tr1":D
    .end local v35    # "tr2":D
    :cond_1b8
    return-void-no-barrier
.end method

.method radb5(II[DI[DII)V
    .registers 150
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 2564
    const-wide v3, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    .line 2565
    .local v3, "tr11":D
    const-wide v5, 0x3fee6f0e134454ffL    # 0.9510565162951535

    .line 2566
    .local v5, "ti11":D
    const-wide v7, -0x40161c8864680b59L    # -0.8090169943749473

    .line 2567
    .local v7, "tr12":D
    const-wide v9, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    .line 2571
    .local v9, "ti12":D
    move/from16 v11, p7

    .line 2572
    .local v11, "iw1":I
    add-int v12, v11, v1

    .line 2573
    .local v12, "iw2":I
    add-int v13, v12, v1

    .line 2574
    .local v13, "iw3":I
    add-int v14, v13, v1

    .line 2576
    .local v14, "iw4":I
    mul-int v15, v2, v1

    .line 2577
    .local v15, "idx0":I
    const/16 v16, 0x0

    move/from16 v17, v16

    .local v17, "k":I
    :goto_28
    move/from16 v18, v17

    .end local v17    # "k":I
    .local v18, "k":I
    const/16 v17, 0x5

    const-wide v19, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    const-wide v21, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v23, -0x40161c8864680b59L    # -0.8090169943749473

    const-wide v25, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    move-wide/from16 v27, v3

    const/4 v3, 0x1

    .end local v3    # "tr11":D
    .local v27, "tr11":D
    move/from16 v4, v18

    if-ge v4, v2, :cond_bf

    .line 2578
    .end local v18    # "k":I
    .local v4, "k":I
    mul-int v18, v4, v1

    .line 2579
    .local v18, "idx1":I
    mul-int v17, v17, v18

    .line 2580
    .local v17, "idx2":I
    add-int v29, v17, v1

    .line 2581
    .local v29, "idx3":I
    add-int v30, v29, v1

    .line 2582
    .local v30, "idx4":I
    add-int v31, v30, v1

    .line 2583
    .local v31, "idx5":I
    add-int v32, v31, v1

    .line 2584
    .local v32, "idx6":I
    add-int v33, v18, v15

    .line 2585
    .local v33, "idx7":I
    add-int v34, v33, v15

    .line 2586
    .local v34, "idx8":I
    add-int v35, v34, v15

    .line 2587
    .local v35, "idx9":I
    add-int v36, v35, v15

    .line 2588
    .local v36, "idx10":I
    add-int v37, p4, v1

    add-int/lit8 v37, v37, -0x1

    .line 2590
    .local v37, "idx11":I
    add-int v3, p4, v17

    aget-wide v38, p3, v3

    .line 2592
    .local v38, "i1r":D
    add-int v3, p4, v30

    aget-wide v40, p3, v3

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    mul-double v40, v40, v42

    .line 2593
    .local v40, "ti5":D
    add-int v3, p4, v32

    aget-wide v44, p3, v3

    mul-double v44, v44, v42

    .line 2594
    .local v44, "ti4":D
    add-int v3, v37, v29

    aget-wide v46, p3, v3

    mul-double v46, v46, v42

    .line 2595
    .local v46, "tr2":D
    add-int v3, v37, v31

    aget-wide v48, p3, v3

    mul-double v42, v42, v48

    .line 2596
    .local v42, "tr3":D
    mul-double v48, v25, v46

    add-double v48, v38, v48

    mul-double v50, v23, v42

    add-double v48, v48, v50

    .line 2597
    .local v48, "cr2":D
    mul-double v23, v23, v46

    add-double v23, v38, v23

    mul-double v25, v25, v42

    add-double v23, v23, v25

    .line 2598
    .local v23, "cr3":D
    mul-double v25, v21, v40

    mul-double v50, v19, v44

    add-double v25, v25, v50

    .line 2599
    .local v25, "ci5":D
    mul-double v19, v19, v40

    mul-double v21, v21, v44

    sub-double v19, v19, v21

    .line 2601
    .local v19, "ci4":D
    add-int v3, p6, v18

    add-double v21, v38, v46

    add-double v21, v21, v42

    aput-wide v21, p5, v3

    .line 2602
    add-int v3, p6, v33

    sub-double v21, v48, v25

    aput-wide v21, p5, v3

    .line 2603
    add-int v3, p6, v34

    sub-double v21, v23, v19

    aput-wide v21, p5, v3

    .line 2604
    add-int v3, p6, v35

    add-double v21, v23, v19

    aput-wide v21, p5, v3

    .line 2605
    add-int v3, p6, v36

    add-double v21, v48, v25

    aput-wide v21, p5, v3

    .line 2577
    .end local v17    # "idx2":I
    .end local v18    # "idx1":I
    .end local v29    # "idx3":I
    .end local v30    # "idx4":I
    .end local v31    # "idx5":I
    .end local v32    # "idx6":I
    .end local v33    # "idx7":I
    .end local v34    # "idx8":I
    .end local v35    # "idx9":I
    .end local v36    # "idx10":I
    .end local v37    # "idx11":I
    .end local v38    # "i1r":D
    add-int/lit8 v17, v4, 0x1

    .end local v4    # "k":I
    .local v17, "k":I
    move-wide/from16 v3, v27

    goto/16 :goto_28

    .line 2607
    .end local v17    # "k":I
    .end local v19    # "ci4":D
    .end local v23    # "cr3":D
    .end local v25    # "ci5":D
    .end local v40    # "ti5":D
    .end local v42    # "tr3":D
    .end local v44    # "ti4":D
    .end local v46    # "tr2":D
    .end local v48    # "cr2":D
    :cond_bf
    if-ne v1, v3, :cond_c2

    .line 2608
    return-void-no-barrier

    .line 2609
    :cond_c2
    nop

    .local v16, "k":I
    :goto_c3
    move/from16 v3, v16

    .end local v16    # "k":I
    .local v3, "k":I
    if-ge v3, v2, :cond_215

    .line 2610
    mul-int v4, v3, v1

    .line 2611
    .local v4, "idx1":I
    mul-int v16, v17, v4

    .line 2612
    .local v16, "idx2":I
    add-int v18, v16, v1

    .line 2613
    .local v18, "idx3":I
    add-int v29, v18, v1

    .line 2614
    .local v29, "idx4":I
    add-int v30, v29, v1

    .line 2615
    .local v30, "idx5":I
    add-int v31, v30, v1

    .line 2616
    .local v31, "idx6":I
    add-int v32, v4, v15

    .line 2617
    .local v32, "idx7":I
    add-int v33, v32, v15

    .line 2618
    .local v33, "idx8":I
    add-int v34, v33, v15

    .line 2619
    .local v34, "idx9":I
    add-int v35, v34, v15

    .line 2620
    .local v35, "idx10":I
    const/16 v36, 0x2

    .local v36, "i":I
    :goto_dd
    move/from16 v52, v36

    .end local v36    # "i":I
    .local v52, "i":I
    move/from16 v2, v52

    if-ge v2, v1, :cond_20d

    .line 2621
    .end local v52    # "i":I
    .local v2, "i":I
    sub-int v36, v1, v2

    .line 2622
    .local v36, "ic":I
    add-int/lit8 v52, v2, -0x1

    add-int v52, v52, v11

    .line 2623
    .local v52, "widx1":I
    add-int/lit8 v37, v2, -0x1

    add-int v37, v37, v12

    .line 2624
    .local v37, "widx2":I
    add-int/lit8 v38, v2, -0x1

    add-int v38, v38, v13

    .line 2625
    .local v38, "widx3":I
    add-int/lit8 v39, v2, -0x1

    add-int v39, v39, v14

    .line 2626
    .local v39, "widx4":I
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v40, v52, -0x1

    aget-wide v40, v1, v40

    .line 2627
    .local v40, "w1r":D
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v42, v1, v52

    .line 2628
    .local v42, "w1i":D
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v44, v37, -0x1

    aget-wide v44, v1, v44

    .line 2629
    .local v44, "w2r":D
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v46, v1, v37

    .line 2630
    .local v46, "w2i":D
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v48, v38, -0x1

    aget-wide v48, v1, v48

    .line 2631
    .local v48, "w3r":D
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v50, v1, v38

    .line 2632
    .local v50, "w3i":D
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v53, v39, -0x1

    aget-wide v53, v1, v53

    .line 2633
    .local v53, "w4r":D
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v55, v1, v39

    .line 2635
    .local v55, "w4i":D
    add-int v1, p4, v2

    .line 2636
    .local v1, "idx15":I
    add-int v57, p4, v36

    .line 2637
    .local v57, "idx16":I
    add-int v58, p6, v2

    .line 2639
    .local v58, "idx17":I
    add-int v59, v1, v16

    .line 2640
    .local v59, "iidx1":I
    add-int v60, v57, v18

    .line 2641
    .local v60, "iidx2":I
    add-int v61, v1, v29

    .line 2642
    .local v61, "iidx3":I
    add-int v62, v57, v30

    .line 2643
    .local v62, "iidx4":I
    add-int v63, v1, v31

    .line 2645
    .local v63, "iidx5":I
    add-int/lit8 v64, v59, -0x1

    aget-wide v64, p3, v64

    .line 2646
    .local v64, "i1i":D
    aget-wide v66, p3, v59

    .line 2647
    .local v66, "i1r":D
    add-int/lit8 v68, v60, -0x1

    aget-wide v68, p3, v68

    .line 2648
    .local v68, "i2i":D
    aget-wide v70, p3, v60

    .line 2649
    .local v70, "i2r":D
    add-int/lit8 v72, v61, -0x1

    aget-wide v72, p3, v72

    .line 2650
    .local v72, "i3i":D
    aget-wide v74, p3, v61

    .line 2651
    .local v74, "i3r":D
    add-int/lit8 v76, v62, -0x1

    aget-wide v76, p3, v76

    .line 2652
    .local v76, "i4i":D
    aget-wide v78, p3, v62

    .line 2653
    .local v78, "i4r":D
    add-int/lit8 v80, v63, -0x1

    aget-wide v80, p3, v80

    .line 2654
    .local v80, "i5i":D
    aget-wide v82, p3, v63

    .line 2656
    .local v82, "i5r":D
    add-double v84, v74, v70

    .line 2657
    .local v84, "ti5":D
    sub-double v86, v74, v70

    .line 2658
    .local v86, "ti2":D
    add-double v88, v82, v78

    .line 2659
    .local v88, "ti4":D
    sub-double v90, v82, v78

    .line 2660
    .local v90, "ti3":D
    sub-double v92, v72, v68

    .line 2661
    .local v92, "tr5":D
    add-double v94, v72, v68

    .line 2662
    .local v94, "tr2":D
    sub-double v96, v80, v76

    .line 2663
    .local v96, "tr4":D
    add-double v98, v80, v76

    .line 2665
    .local v98, "tr3":D
    mul-double v100, v25, v94

    add-double v100, v64, v100

    mul-double v102, v23, v98

    add-double v100, v100, v102

    .line 2666
    .local v100, "cr2":D
    mul-double v102, v25, v86

    add-double v102, v66, v102

    mul-double v104, v23, v90

    add-double v102, v102, v104

    .line 2667
    .local v102, "ci2":D
    mul-double v104, v23, v94

    add-double v104, v64, v104

    mul-double v106, v25, v98

    add-double v104, v104, v106

    .line 2668
    .local v104, "cr3":D
    mul-double v106, v23, v86

    add-double v106, v66, v106

    mul-double v108, v25, v90

    add-double v106, v106, v108

    .line 2669
    .local v106, "ci3":D
    mul-double v108, v21, v92

    mul-double v110, v19, v96

    add-double v108, v108, v110

    .line 2670
    .local v108, "cr5":D
    mul-double v110, v21, v84

    mul-double v112, v19, v88

    add-double v110, v110, v112

    .line 2671
    .local v110, "ci5":D
    mul-double v112, v19, v92

    mul-double v114, v21, v96

    sub-double v112, v112, v114

    .line 2672
    .local v112, "cr4":D
    mul-double v114, v19, v84

    mul-double v116, v21, v88

    sub-double v114, v114, v116

    .line 2673
    .local v114, "ci4":D
    sub-double v116, v104, v114

    .line 2674
    .local v116, "dr3":D
    add-double v118, v104, v114

    .line 2675
    .local v118, "dr4":D
    add-double v120, v106, v112

    .line 2676
    .local v120, "di3":D
    sub-double v122, v106, v112

    .line 2677
    .local v122, "di4":D
    add-double v124, v100, v110

    .line 2678
    .local v124, "dr5":D
    sub-double v126, v100, v110

    .line 2679
    .local v126, "dr2":D
    sub-double v128, v102, v108

    .line 2680
    .local v128, "di5":D
    add-double v130, v102, v108

    .line 2682
    .local v130, "di2":D
    add-int v132, v58, v4

    .line 2683
    .local v132, "oidx1":I
    add-int v133, v58, v32

    .line 2684
    .local v133, "oidx2":I
    add-int v134, v58, v33

    .line 2685
    .local v134, "oidx3":I
    add-int v135, v58, v34

    .line 2686
    .local v135, "oidx4":I
    add-int v136, v58, v35

    .line 2688
    .local v136, "oidx5":I
    add-int/lit8 v137, v132, -0x1

    add-double v138, v64, v94

    add-double v138, v138, v98

    aput-wide v138, p5, v137

    .line 2689
    add-double v137, v66, v86

    add-double v137, v137, v90

    aput-wide v137, p5, v132

    .line 2690
    add-int/lit8 v137, v133, -0x1

    mul-double v138, v40, v126

    mul-double v140, v42, v130

    sub-double v138, v138, v140

    aput-wide v138, p5, v137

    .line 2691
    mul-double v137, v40, v130

    mul-double v139, v42, v126

    add-double v137, v137, v139

    aput-wide v137, p5, v133

    .line 2692
    add-int/lit8 v137, v134, -0x1

    mul-double v138, v44, v116

    mul-double v140, v46, v120

    sub-double v138, v138, v140

    aput-wide v138, p5, v137

    .line 2693
    mul-double v137, v44, v120

    mul-double v139, v46, v116

    add-double v137, v137, v139

    aput-wide v137, p5, v134

    .line 2694
    add-int/lit8 v137, v135, -0x1

    mul-double v138, v48, v118

    mul-double v140, v50, v122

    sub-double v138, v138, v140

    aput-wide v138, p5, v137

    .line 2695
    mul-double v137, v48, v122

    mul-double v139, v50, v118

    add-double v137, v137, v139

    aput-wide v137, p5, v135

    .line 2696
    add-int/lit8 v137, v136, -0x1

    mul-double v138, v53, v124

    mul-double v140, v55, v128

    sub-double v138, v138, v140

    aput-wide v138, p5, v137

    .line 2697
    mul-double v137, v53, v128

    mul-double v139, v55, v124

    add-double v137, v137, v139

    aput-wide v137, p5, v136

    .line 2620
    .end local v1    # "idx15":I
    .end local v37    # "widx2":I
    .end local v38    # "widx3":I
    .end local v39    # "widx4":I
    .end local v52    # "widx1":I
    .end local v57    # "idx16":I
    .end local v58    # "idx17":I
    .end local v59    # "iidx1":I
    .end local v60    # "iidx2":I
    .end local v61    # "iidx3":I
    .end local v62    # "iidx4":I
    .end local v63    # "iidx5":I
    .end local v64    # "i1i":D
    .end local v66    # "i1r":D
    .end local v68    # "i2i":D
    .end local v70    # "i2r":D
    .end local v72    # "i3i":D
    .end local v74    # "i3r":D
    .end local v76    # "i4i":D
    .end local v78    # "i4r":D
    .end local v80    # "i5i":D
    .end local v82    # "i5r":D
    .end local v132    # "oidx1":I
    .end local v133    # "oidx2":I
    .end local v134    # "oidx3":I
    .end local v135    # "oidx4":I
    .end local v136    # "oidx5":I
    add-int/lit8 v1, v2, 0x2

    .end local v2    # "i":I
    .local v1, "i":I
    move/from16 v36, v1

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_dd

    .line 2609
    .end local v1    # "i":I
    .end local v4    # "idx1":I
    .end local v16    # "idx2":I
    .end local v18    # "idx3":I
    .end local v29    # "idx4":I
    .end local v30    # "idx5":I
    .end local v31    # "idx6":I
    .end local v32    # "idx7":I
    .end local v33    # "idx8":I
    .end local v34    # "idx9":I
    .end local v35    # "idx10":I
    .end local v36    # "ic":I
    .end local v40    # "w1r":D
    .end local v42    # "w1i":D
    .end local v44    # "w2r":D
    .end local v46    # "w2i":D
    .end local v48    # "w3r":D
    .end local v50    # "w3i":D
    .end local v53    # "w4r":D
    .end local v55    # "w4i":D
    .end local v84    # "ti5":D
    .end local v86    # "ti2":D
    .end local v88    # "ti4":D
    .end local v90    # "ti3":D
    .end local v92    # "tr5":D
    .end local v94    # "tr2":D
    .end local v96    # "tr4":D
    .end local v98    # "tr3":D
    .end local v100    # "cr2":D
    .end local v102    # "ci2":D
    .end local v104    # "cr3":D
    .end local v106    # "ci3":D
    .end local v108    # "cr5":D
    .end local v110    # "ci5":D
    .end local v112    # "cr4":D
    .end local v114    # "ci4":D
    .end local v116    # "dr3":D
    .end local v118    # "dr4":D
    .end local v120    # "di3":D
    .end local v122    # "di4":D
    .end local v124    # "dr5":D
    .end local v126    # "dr2":D
    .end local v128    # "di5":D
    .end local v130    # "di2":D
    .restart local v2    # "i":I
    :cond_20d
    add-int/lit8 v16, v3, 0x1

    .end local v3    # "k":I
    .local v16, "k":I
    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_c3

    .line 2700
    .end local v2    # "i":I
    .end local v16    # "k":I
    :cond_215
    return-void-no-barrier
.end method

.method radbg(IIII[DI[DII)V
    .registers 87
    .param p1, "ido"    # I
    .param p2, "ip"    # I
    .param p3, "l1"    # I
    .param p4, "idl1"    # I
    .param p5, "in"    # [D
    .param p6, "in_off"    # I
    .param p7, "out"    # [D
    .param p8, "out_off"    # I
    .param p9, "offset"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 2999
    move/from16 v9, p9

    .line 3001
    .local v9, "iw1":I
    int-to-double v10, v2

    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v12, v10

    .line 3002
    .local v12, "arg":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 3003
    .local v10, "dcp":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 3004
    .local v14, "dsp":D
    add-int/lit8 v16, v1, -0x1

    const/16 v17, 0x2

    move-wide/from16 v18, v12

    div-int/lit8 v12, v16, 0x2

    .line 3005
    .local v12, "nbd":I
    .local v18, "arg":D
    add-int/lit8 v13, v2, 0x1

    div-int/lit8 v13, v13, 0x2

    .line 3006
    .local v13, "ipph":I
    mul-int v16, v2, v1

    .line 3007
    .local v16, "idx0":I
    const/16 v20, 0x0

    if-lt v1, v3, :cond_68

    .line 3008
    move/from16 v21, v20

    .local v21, "k":I
    :goto_37
    move/from16 v22, v21

    .end local v21    # "k":I
    .local v22, "k":I
    move/from16 v0, v22

    if-ge v0, v3, :cond_63

    .line 3009
    .end local v22    # "k":I
    .local v0, "k":I
    mul-int v22, v0, v1

    .line 3010
    .local v22, "idx1":I
    mul-int v21, v0, v16

    .line 3011
    .local v21, "idx2":I
    move/from16 v24, v20

    .local v24, "i":I
    :goto_43
    move/from16 v25, v24

    .end local v24    # "i":I
    .local v25, "i":I
    move/from16 v26, v9

    move/from16 v9, v25

    if-ge v9, v1, :cond_5c

    .line 3012
    .end local v25    # "i":I
    .local v9, "i":I
    .local v26, "iw1":I
    add-int v24, v8, v9

    add-int v24, v24, v22

    add-int v25, v6, v9

    add-int v25, v25, v21

    aget-wide v27, v5, v25

    aput-wide v27, v7, v24

    .line 3011
    add-int/lit8 v24, v9, 0x1

    .end local v9    # "i":I
    .restart local v24    # "i":I
    move/from16 v9, v26

    goto :goto_43

    .line 3008
    .end local v21    # "idx2":I
    .end local v22    # "idx1":I
    .end local v24    # "i":I
    :cond_5c
    add-int/lit8 v21, v0, 0x1

    .end local v0    # "k":I
    .local v21, "k":I
    move/from16 v9, v26

    move-object/from16 v0, p0

    goto :goto_37

    .line 3024
    .end local v21    # "k":I
    .end local v26    # "iw1":I
    .local v9, "iw1":I
    :cond_63
    move/from16 v26, v9

    move-wide/from16 v30, v14

    .end local v9    # "iw1":I
    .restart local v26    # "iw1":I
    goto :goto_94

    .line 3016
    .end local v26    # "iw1":I
    .restart local v9    # "iw1":I
    :cond_68
    move/from16 v26, v9

    .end local v9    # "iw1":I
    .restart local v26    # "iw1":I
    move/from16 v0, v20

    .local v0, "i":I
    :goto_6c
    if-ge v0, v1, :cond_92

    .line 3017
    add-int v9, v8, v0

    .line 3018
    .local v9, "idx1":I
    add-int v21, v6, v0

    .line 3019
    .local v21, "idx2":I
    move/from16 v22, v20

    .local v22, "k":I
    :goto_74
    move/from16 v29, v22

    .end local v22    # "k":I
    .local v29, "k":I
    move-wide/from16 v30, v14

    move/from16 v14, v29

    if-ge v14, v3, :cond_8d

    .line 3020
    .end local v29    # "k":I
    .local v14, "k":I
    .local v30, "dsp":D
    mul-int v29, v14, v1

    add-int v29, v9, v29

    mul-int v15, v14, v16

    add-int v15, v21, v15

    aget-wide v24, v5, v15

    aput-wide v24, v7, v29

    .line 3019
    add-int/lit8 v22, v14, 0x1

    .end local v14    # "k":I
    .restart local v22    # "k":I
    move-wide/from16 v14, v30

    goto :goto_74

    .line 3016
    .end local v9    # "idx1":I
    .end local v21    # "idx2":I
    .end local v22    # "k":I
    :cond_8d
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v14, v30

    goto :goto_6c

    .line 3024
    .end local v0    # "i":I
    .end local v30    # "dsp":D
    .local v14, "dsp":D
    :cond_92
    move-wide/from16 v30, v14

    .end local v14    # "dsp":D
    .restart local v30    # "dsp":D
    :goto_94
    add-int v0, v6, v1

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    .line 3025
    .local v0, "iidx0":I
    move v14, v9

    .local v14, "j":I
    :goto_99
    if-ge v14, v13, :cond_db

    .line 3026
    sub-int v15, v2, v14

    .line 3027
    .local v15, "jc":I
    mul-int v21, v17, v14

    .line 3028
    .local v21, "j2":I
    mul-int v22, v14, v3

    mul-int v22, v22, v1

    .line 3029
    .local v22, "idx1":I
    mul-int v24, v15, v3

    mul-int v24, v24, v1

    .line 3030
    .local v24, "idx2":I
    mul-int v25, v21, v1

    .line 3031
    .local v25, "idx3":I
    move/from16 v27, v20

    .local v27, "k":I
    :goto_ab
    move/from16 v32, v27

    .end local v27    # "k":I
    .local v32, "k":I
    move/from16 v9, v32

    if-ge v9, v3, :cond_d7

    .line 3032
    .end local v32    # "k":I
    .local v9, "k":I
    mul-int v32, v9, v1

    .line 3033
    .local v32, "idx4":I
    mul-int v27, v32, v2

    .line 3034
    .local v27, "idx5":I
    add-int v28, v0, v25

    add-int v28, v28, v27

    sub-int v28, v28, v1

    .line 3035
    .local v28, "iidx1":I
    add-int v29, v6, v25

    add-int v29, v29, v27

    .line 3036
    .local v29, "iidx2":I
    aget-wide v34, v5, v28

    .line 3037
    .local v34, "i1r":D
    aget-wide v36, v5, v29

    .line 3039
    .local v36, "i2r":D
    add-int v38, v8, v32

    add-int v38, v38, v22

    add-double v39, v34, v34

    aput-wide v39, v7, v38

    .line 3040
    add-int v38, v8, v32

    add-int v38, v38, v24

    add-double v39, v36, v36

    aput-wide v39, v7, v38

    .line 3031
    .end local v27    # "idx5":I
    .end local v28    # "iidx1":I
    .end local v29    # "iidx2":I
    .end local v32    # "idx4":I
    .end local v34    # "i1r":D
    .end local v36    # "i2r":D
    add-int/lit8 v27, v9, 0x1

    .end local v9    # "k":I
    .local v27, "k":I
    const/4 v9, 0x1

    goto :goto_ab

    .line 3025
    .end local v22    # "idx1":I
    .end local v24    # "idx2":I
    .end local v25    # "idx3":I
    .end local v27    # "k":I
    :cond_d7
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x1

    goto :goto_99

    .line 3044
    .end local v14    # "j":I
    .end local v15    # "jc":I
    .end local v21    # "j2":I
    :cond_db
    const/4 v9, 0x1

    if-eq v1, v9, :cond_1da

    .line 3045
    if-lt v12, v3, :cond_15f

    .line 3046
    const/4 v9, 0x1

    .local v9, "j":I
    :goto_e1
    if-ge v9, v13, :cond_159

    .line 3047
    sub-int v14, v2, v9

    .line 3048
    .local v14, "jc":I
    mul-int v15, v9, v3

    mul-int/2addr v15, v1

    .line 3049
    .local v15, "idx1":I
    mul-int v21, v14, v3

    mul-int v21, v21, v1

    .line 3050
    .local v21, "idx2":I
    mul-int v22, v17, v9

    mul-int v22, v22, v1

    .line 3051
    .local v22, "idx3":I
    move/from16 v24, v20

    .local v24, "k":I
    :goto_f2
    move/from16 v41, v24

    .end local v24    # "k":I
    .local v41, "k":I
    move/from16 v42, v0

    move/from16 v0, v41

    if-ge v0, v3, :cond_152

    .line 3052
    .end local v41    # "k":I
    .local v0, "k":I
    .local v42, "iidx0":I
    mul-int v41, v0, v1

    add-int v41, v41, v15

    .line 3053
    .local v41, "idx4":I
    mul-int v24, v0, v1

    add-int v24, v24, v21

    .line 3054
    .local v24, "idx5":I
    mul-int v25, v0, v2

    mul-int v25, v25, v1

    add-int v25, v25, v22

    .line 3055
    .local v25, "idx6":I
    move/from16 v27, v17

    .local v27, "i":I
    :goto_10a
    move/from16 v43, v27

    .end local v27    # "i":I
    .local v43, "i":I
    move/from16 v44, v14

    move/from16 v14, v43

    if-ge v14, v1, :cond_14b

    .line 3056
    .end local v43    # "i":I
    .local v14, "i":I
    .local v44, "jc":I
    sub-int v27, v1, v14

    .line 3057
    .local v27, "ic":I
    add-int v28, v8, v14

    .line 3058
    .local v28, "idx7":I
    add-int v29, v6, v27

    .line 3059
    .local v29, "idx8":I
    add-int v32, v6, v14

    .line 3060
    .local v32, "idx9":I
    add-int v34, v28, v41

    .line 3061
    .local v34, "oidx1":I
    add-int v35, v28, v24

    .line 3062
    .local v35, "oidx2":I
    add-int v36, v32, v25

    .line 3063
    .local v36, "iidx1":I
    add-int v37, v29, v25

    sub-int v37, v37, v1

    .line 3064
    .local v37, "iidx2":I
    add-int/lit8 v38, v36, -0x1

    aget-wide v38, v5, v38

    .line 3065
    .local v38, "a1i":D
    aget-wide v45, v5, v36

    .line 3066
    .local v45, "a1r":D
    add-int/lit8 v40, v37, -0x1

    aget-wide v47, v5, v40

    .line 3067
    .local v47, "a2i":D
    aget-wide v49, v5, v37

    .line 3069
    .local v49, "a2r":D
    add-int/lit8 v40, v34, -0x1

    add-double v51, v38, v47

    aput-wide v51, v7, v40

    .line 3070
    add-int/lit8 v40, v35, -0x1

    sub-double v51, v38, v47

    aput-wide v51, v7, v40

    .line 3071
    sub-double v51, v45, v49

    aput-wide v51, v7, v34

    .line 3072
    add-double v51, v45, v49

    aput-wide v51, v7, v35

    .line 3055
    .end local v28    # "idx7":I
    .end local v29    # "idx8":I
    .end local v32    # "idx9":I
    .end local v34    # "oidx1":I
    .end local v35    # "oidx2":I
    .end local v36    # "iidx1":I
    .end local v37    # "iidx2":I
    .end local v38    # "a1i":D
    .end local v45    # "a1r":D
    .end local v47    # "a2i":D
    .end local v49    # "a2r":D
    add-int/lit8 v14, v14, 0x2

    move/from16 v27, v14

    move/from16 v14, v44

    goto :goto_10a

    .line 3051
    .end local v14    # "i":I
    .end local v24    # "idx5":I
    .end local v25    # "idx6":I
    .end local v27    # "ic":I
    .end local v41    # "idx4":I
    :cond_14b
    add-int/lit8 v24, v0, 0x1

    .end local v0    # "k":I
    .local v24, "k":I
    move/from16 v0, v42

    move/from16 v14, v44

    goto :goto_f2

    .line 3046
    .end local v15    # "idx1":I
    .end local v21    # "idx2":I
    .end local v22    # "idx3":I
    .end local v24    # "k":I
    .end local v44    # "jc":I
    .local v14, "jc":I
    :cond_152
    move/from16 v44, v14

    .end local v14    # "jc":I
    .restart local v44    # "jc":I
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v42

    goto :goto_e1

    .line 3110
    .end local v9    # "j":I
    .end local v42    # "iidx0":I
    .end local v44    # "jc":I
    .local v0, "iidx0":I
    :cond_159
    move/from16 v42, v0

    move/from16 v56, v12

    .end local v0    # "iidx0":I
    .restart local v42    # "iidx0":I
    goto/16 :goto_1de

    .line 3077
    .end local v42    # "iidx0":I
    .restart local v0    # "iidx0":I
    :cond_15f
    move/from16 v42, v0

    .end local v0    # "iidx0":I
    .restart local v42    # "iidx0":I
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_162
    if-ge v0, v13, :cond_1d7

    .line 3078
    sub-int v9, v2, v0

    .line 3079
    .local v9, "jc":I
    mul-int v14, v0, v3

    mul-int/2addr v14, v1

    .line 3080
    .local v14, "idx1":I
    mul-int v15, v9, v3

    mul-int/2addr v15, v1

    .line 3081
    .local v15, "idx2":I
    mul-int v21, v17, v0

    mul-int v21, v21, v1

    .line 3082
    .local v21, "idx3":I
    move/from16 v22, v17

    .local v22, "i":I
    :goto_172
    move/from16 v53, v22

    .end local v22    # "i":I
    .local v53, "i":I
    move/from16 v54, v9

    move/from16 v9, v53

    if-ge v9, v1, :cond_1d2

    .line 3083
    .end local v53    # "i":I
    .local v9, "i":I
    .local v54, "jc":I
    sub-int v22, v1, v9

    .line 3084
    .local v22, "ic":I
    add-int v24, v8, v9

    .line 3085
    .local v24, "idx7":I
    add-int v25, v6, v22

    .line 3086
    .local v25, "idx8":I
    add-int v27, v6, v9

    .line 3087
    .local v27, "idx9":I
    move/from16 v28, v20

    .local v28, "k":I
    :goto_184
    move/from16 v55, v28

    .end local v28    # "k":I
    .local v55, "k":I
    move/from16 v56, v12

    move/from16 v12, v55

    if-ge v12, v3, :cond_1c9

    .line 3088
    .end local v55    # "k":I
    .local v12, "k":I
    .local v56, "nbd":I
    mul-int v55, v12, v1

    add-int v55, v55, v14

    .line 3089
    .local v55, "idx4":I
    mul-int v28, v12, v1

    add-int v28, v28, v15

    .line 3090
    .local v28, "idx5":I
    mul-int v29, v12, v2

    mul-int v29, v29, v1

    add-int v29, v29, v21

    .line 3091
    .local v29, "idx6":I
    add-int v32, v24, v55

    .line 3092
    .local v32, "oidx1":I
    add-int v34, v24, v28

    .line 3093
    .local v34, "oidx2":I
    add-int v35, v27, v29

    .line 3094
    .local v35, "iidx1":I
    add-int v36, v25, v29

    sub-int v36, v36, v1

    .line 3095
    .local v36, "iidx2":I
    add-int/lit8 v37, v35, -0x1

    aget-wide v37, v5, v37

    .line 3096
    .local v37, "a1i":D
    aget-wide v39, v5, v35

    .line 3097
    .local v39, "a1r":D
    add-int/lit8 v41, v36, -0x1

    aget-wide v43, v5, v41

    .line 3098
    .local v43, "a2i":D
    aget-wide v45, v5, v36

    .line 3100
    .local v45, "a2r":D
    add-int/lit8 v41, v32, -0x1

    add-double v47, v37, v43

    aput-wide v47, v7, v41

    .line 3101
    add-int/lit8 v41, v34, -0x1

    sub-double v47, v37, v43

    aput-wide v47, v7, v41

    .line 3102
    sub-double v47, v39, v45

    aput-wide v47, v7, v32

    .line 3103
    add-double v47, v39, v45

    aput-wide v47, v7, v34

    .line 3087
    .end local v28    # "idx5":I
    .end local v29    # "idx6":I
    .end local v32    # "oidx1":I
    .end local v34    # "oidx2":I
    .end local v35    # "iidx1":I
    .end local v36    # "iidx2":I
    .end local v37    # "a1i":D
    .end local v39    # "a1r":D
    .end local v43    # "a2i":D
    .end local v45    # "a2r":D
    .end local v55    # "idx4":I
    add-int/lit8 v28, v12, 0x1

    .end local v12    # "k":I
    .local v28, "k":I
    move/from16 v12, v56

    goto :goto_184

    .line 3082
    .end local v24    # "idx7":I
    .end local v25    # "idx8":I
    .end local v27    # "idx9":I
    .end local v28    # "k":I
    :cond_1c9
    add-int/lit8 v9, v9, 0x2

    move/from16 v22, v9

    move/from16 v9, v54

    move/from16 v12, v56

    goto :goto_172

    .line 3077
    .end local v9    # "i":I
    .end local v14    # "idx1":I
    .end local v15    # "idx2":I
    .end local v21    # "idx3":I
    .end local v22    # "ic":I
    .end local v56    # "nbd":I
    .local v12, "nbd":I
    :cond_1d2
    move/from16 v56, v12

    .end local v12    # "nbd":I
    .restart local v56    # "nbd":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_162

    .line 3110
    .end local v0    # "j":I
    .end local v54    # "jc":I
    .end local v56    # "nbd":I
    .restart local v12    # "nbd":I
    :cond_1d7
    move/from16 v56, v12

    .end local v12    # "nbd":I
    .restart local v56    # "nbd":I
    goto :goto_1de

    .end local v42    # "iidx0":I
    .end local v56    # "nbd":I
    .local v0, "iidx0":I
    .restart local v12    # "nbd":I
    :cond_1da
    move/from16 v42, v0

    move/from16 v56, v12

    .end local v0    # "iidx0":I
    .end local v12    # "nbd":I
    .restart local v42    # "iidx0":I
    .restart local v56    # "nbd":I
    :goto_1de
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 3111
    .local v14, "ar1":D
    const-wide/16 v21, 0x0

    .line 3112
    .local v21, "ai1":D
    add-int/lit8 v0, v2, -0x1

    mul-int/2addr v0, v4

    .line 3113
    .local v0, "idx01":I
    const/4 v9, 0x1

    .local v9, "l":I
    :goto_1e6
    if-ge v9, v13, :cond_28e

    .line 3114
    sub-int v12, v2, v9

    .line 3115
    .local v12, "lc":I
    mul-double v24, v10, v14

    mul-double v27, v30, v21

    sub-double v24, v24, v27

    .line 3116
    .local v24, "ar1h":D
    mul-double v27, v10, v21

    mul-double v34, v30, v14

    add-double v21, v27, v34

    .line 3117
    move-wide/from16 v14, v24

    .line 3118
    mul-int v27, v9, v4

    .line 3119
    .local v27, "idx1":I
    mul-int v28, v12, v4

    .line 3120
    .local v28, "idx2":I
    move/from16 v29, v20

    .local v29, "ik":I
    :goto_1fe
    move/from16 v57, v29

    .end local v29    # "ik":I
    .local v57, "ik":I
    move-wide/from16 v58, v10

    move/from16 v10, v57

    if-ge v10, v4, :cond_227

    .line 3121
    .end local v57    # "ik":I
    .local v10, "ik":I
    .local v58, "dcp":D
    add-int v11, v6, v10

    .line 3122
    .local v11, "idx3":I
    add-int v29, v8, v10

    .line 3123
    .local v29, "idx4":I
    add-int v32, v11, v27

    aget-wide v34, v7, v29

    add-int v36, v29, v4

    aget-wide v36, v7, v36

    mul-double v36, v36, v14

    add-double v34, v34, v36

    aput-wide v34, v5, v32

    .line 3124
    add-int v32, v11, v28

    add-int v34, v29, v0

    aget-wide v34, v7, v34

    mul-double v34, v34, v21

    aput-wide v34, v5, v32

    .line 3120
    .end local v11    # "idx3":I
    .end local v29    # "idx4":I
    add-int/lit8 v29, v10, 0x1

    .end local v10    # "ik":I
    .local v29, "ik":I
    move-wide/from16 v10, v58

    goto :goto_1fe

    .line 3126
    .end local v29    # "ik":I
    :cond_227
    move-wide v10, v14

    .line 3127
    .local v10, "dc2":D
    move-wide/from16 v34, v21

    .line 3128
    .local v34, "ds2":D
    move-wide/from16 v36, v14

    .line 3129
    .local v36, "ar2":D
    move-wide/from16 v38, v21

    .line 3130
    .local v38, "ai2":D
    move/from16 v29, v17

    .local v29, "j":I
    :goto_230
    move/from16 v60, v29

    .end local v29    # "j":I
    .local v60, "j":I
    move/from16 v61, v0

    move/from16 v0, v60

    if-ge v0, v13, :cond_284

    .line 3131
    .end local v60    # "j":I
    .local v0, "j":I
    .local v61, "idx01":I
    sub-int v29, v2, v0

    .line 3132
    .local v29, "jc":I
    mul-double v40, v10, v36

    mul-double v43, v34, v38

    sub-double v40, v40, v43

    .line 3133
    .local v40, "ar2h":D
    mul-double v43, v10, v38

    mul-double v45, v34, v36

    add-double v38, v43, v45

    .line 3134
    move-wide/from16 v36, v40

    .line 3135
    mul-int v60, v0, v4

    .line 3136
    .local v60, "idx5":I
    mul-int v32, v29, v4

    .line 3137
    .local v32, "idx6":I
    move/from16 v43, v20

    .local v43, "ik":I
    :goto_24e
    move/from16 v62, v43

    .end local v43    # "ik":I
    .local v62, "ik":I
    move-wide/from16 v63, v10

    move/from16 v10, v62

    if-ge v10, v4, :cond_27b

    .line 3138
    .end local v62    # "ik":I
    .local v10, "ik":I
    .local v63, "dc2":D
    add-int v11, v6, v10

    .line 3139
    .local v11, "idx7":I
    add-int v43, v8, v10

    .line 3140
    .local v43, "idx8":I
    add-int v44, v11, v27

    aget-wide v45, v5, v44

    add-int v47, v43, v60

    aget-wide v47, v7, v47

    mul-double v47, v47, v36

    add-double v45, v45, v47

    aput-wide v45, v5, v44

    .line 3141
    add-int v44, v11, v28

    aget-wide v45, v5, v44

    add-int v47, v43, v32

    aget-wide v47, v7, v47

    mul-double v47, v47, v38

    add-double v45, v45, v47

    aput-wide v45, v5, v44

    .line 3137
    .end local v11    # "idx7":I
    .end local v43    # "idx8":I
    add-int/lit8 v43, v10, 0x1

    .end local v10    # "ik":I
    .local v43, "ik":I
    move-wide/from16 v10, v63

    goto :goto_24e

    .line 3130
    .end local v32    # "idx6":I
    .end local v43    # "ik":I
    .end local v60    # "idx5":I
    :cond_27b
    add-int/lit8 v0, v0, 0x1

    move/from16 v29, v0

    move/from16 v0, v61

    move-wide/from16 v10, v63

    goto :goto_230

    .line 3113
    .end local v0    # "j":I
    .end local v27    # "idx1":I
    .end local v28    # "idx2":I
    .end local v29    # "jc":I
    .end local v40    # "ar2h":D
    .end local v63    # "dc2":D
    .local v10, "dc2":D
    :cond_284
    move-wide/from16 v63, v10

    .end local v10    # "dc2":D
    .restart local v63    # "dc2":D
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v10, v58

    move/from16 v0, v61

    goto/16 :goto_1e6

    .line 3145
    .end local v9    # "l":I
    .end local v12    # "lc":I
    .end local v24    # "ar1h":D
    .end local v34    # "ds2":D
    .end local v36    # "ar2":D
    .end local v38    # "ai2":D
    .end local v58    # "dcp":D
    .end local v61    # "idx01":I
    .end local v63    # "dc2":D
    .local v0, "idx01":I
    .local v10, "dcp":D
    :cond_28e
    move/from16 v61, v0

    move-wide/from16 v58, v10

    .end local v0    # "idx01":I
    .end local v10    # "dcp":D
    .restart local v58    # "dcp":D
    .restart local v61    # "idx01":I
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_293
    if-ge v0, v13, :cond_2ad

    .line 3146
    mul-int v9, v0, v4

    .line 3147
    .local v9, "idx1":I
    move/from16 v10, v20

    .local v10, "ik":I
    :goto_299
    if-ge v10, v4, :cond_2aa

    .line 3148
    add-int v11, v8, v10

    .line 3149
    .local v11, "idx2":I
    aget-wide v24, v7, v11

    add-int v12, v11, v9

    aget-wide v27, v7, v12

    add-double v24, v24, v27

    aput-wide v24, v7, v11

    .line 3147
    .end local v11    # "idx2":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_299

    .line 3145
    .end local v9    # "idx1":I
    .end local v10    # "ik":I
    :cond_2aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_293

    .line 3152
    .end local v0    # "j":I
    :cond_2ad
    const/4 v0, 0x1

    .restart local v0    # "j":I
    :goto_2ae
    if-ge v0, v13, :cond_2de

    .line 3153
    sub-int v9, v2, v0

    .line 3154
    .local v9, "jc":I
    mul-int v10, v0, v3

    mul-int/2addr v10, v1

    .line 3155
    .local v10, "idx1":I
    mul-int v11, v9, v3

    mul-int/2addr v11, v1

    .line 3156
    .restart local v11    # "idx2":I
    move/from16 v12, v20

    .local v12, "k":I
    :goto_2ba
    if-ge v12, v3, :cond_2db

    .line 3157
    mul-int v24, v12, v1

    .line 3158
    .local v24, "idx3":I
    add-int v25, v8, v24

    .line 3159
    .local v25, "oidx1":I
    add-int v27, v6, v24

    add-int v27, v27, v10

    .line 3160
    .local v27, "iidx1":I
    add-int v28, v6, v24

    add-int v28, v28, v11

    .line 3161
    .local v28, "iidx2":I
    aget-wide v34, v5, v27

    .line 3162
    .local v34, "i1r":D
    aget-wide v36, v5, v28

    .line 3164
    .local v36, "i2r":D
    add-int v29, v25, v10

    sub-double v38, v34, v36

    aput-wide v38, v7, v29

    .line 3165
    add-int v29, v25, v11

    add-double v38, v34, v36

    aput-wide v38, v7, v29

    .line 3156
    .end local v24    # "idx3":I
    .end local v25    # "oidx1":I
    .end local v27    # "iidx1":I
    .end local v28    # "iidx2":I
    .end local v34    # "i1r":D
    .end local v36    # "i2r":D
    add-int/lit8 v12, v12, 0x1

    goto :goto_2ba

    .line 3152
    .end local v10    # "idx1":I
    .end local v11    # "idx2":I
    .end local v12    # "k":I
    :cond_2db
    add-int/lit8 v0, v0, 0x1

    goto :goto_2ae

    .line 3169
    .end local v0    # "j":I
    .end local v9    # "jc":I
    :cond_2de
    const/4 v9, 0x1

    if-ne v1, v9, :cond_2e2

    .line 3170
    return-void-no-barrier

    .line 3171
    :cond_2e2
    move/from16 v0, v56

    if-lt v0, v3, :cond_34f

    .line 3172
    .end local v56    # "nbd":I
    .local v0, "nbd":I
    move v10, v9

    .local v10, "j":I
    :goto_2e7
    if-ge v10, v13, :cond_34b

    .line 3173
    sub-int v11, v2, v10

    .line 3174
    .local v11, "jc":I
    mul-int v12, v10, v3

    mul-int/2addr v12, v1

    .line 3175
    .local v12, "idx1":I
    mul-int v24, v11, v3

    mul-int v24, v24, v1

    .line 3176
    .local v24, "idx2":I
    move/from16 v25, v20

    .local v25, "k":I
    :goto_2f4
    move/from16 v65, v25

    .end local v25    # "k":I
    .local v65, "k":I
    move/from16 v9, v65

    if-ge v9, v3, :cond_345

    .line 3177
    .end local v65    # "k":I
    .local v9, "k":I
    mul-int v65, v9, v1

    .line 3178
    .local v65, "idx3":I
    move/from16 v25, v17

    .local v25, "i":I
    :goto_2fe
    move/from16 v67, v25

    .end local v25    # "i":I
    .local v67, "i":I
    move/from16 v68, v11

    move/from16 v11, v67

    if-ge v11, v1, :cond_33f

    .line 3179
    .end local v67    # "i":I
    .local v11, "i":I
    .local v68, "jc":I
    add-int v25, v8, v11

    .line 3180
    .local v25, "idx4":I
    add-int v27, v6, v11

    .line 3181
    .local v27, "idx5":I
    add-int v28, v25, v65

    add-int v28, v28, v12

    .line 3182
    .local v28, "oidx1":I
    add-int v29, v25, v65

    add-int v29, v29, v24

    .line 3183
    .local v29, "oidx2":I
    add-int v32, v27, v65

    add-int v32, v32, v12

    .line 3184
    .local v32, "iidx1":I
    add-int v33, v27, v65

    add-int v33, v33, v24

    .line 3185
    .local v33, "iidx2":I
    add-int/lit8 v34, v32, -0x1

    aget-wide v34, v5, v34

    .line 3186
    .local v34, "i1i":D
    aget-wide v36, v5, v32

    .line 3187
    .local v36, "i1r":D
    add-int/lit8 v38, v33, -0x1

    aget-wide v38, v5, v38

    .line 3188
    .local v38, "i2i":D
    aget-wide v40, v5, v33

    .line 3190
    .local v40, "i2r":D
    add-int/lit8 v43, v28, -0x1

    sub-double v44, v34, v40

    aput-wide v44, v7, v43

    .line 3191
    add-int/lit8 v43, v29, -0x1

    add-double v44, v34, v40

    aput-wide v44, v7, v43

    .line 3192
    add-double v43, v36, v38

    aput-wide v43, v7, v28

    .line 3193
    sub-double v43, v36, v38

    aput-wide v43, v7, v29

    .line 3178
    .end local v25    # "idx4":I
    .end local v27    # "idx5":I
    .end local v28    # "oidx1":I
    .end local v29    # "oidx2":I
    .end local v32    # "iidx1":I
    .end local v33    # "iidx2":I
    .end local v34    # "i1i":D
    .end local v36    # "i1r":D
    .end local v38    # "i2i":D
    .end local v40    # "i2r":D
    add-int/lit8 v25, v11, 0x2

    .end local v11    # "i":I
    .local v25, "i":I
    move/from16 v11, v68

    goto :goto_2fe

    .line 3176
    .end local v25    # "i":I
    .end local v65    # "idx3":I
    :cond_33f
    add-int/lit8 v25, v9, 0x1

    .end local v9    # "k":I
    .local v25, "k":I
    move/from16 v11, v68

    const/4 v9, 0x1

    goto :goto_2f4

    .line 3172
    .end local v12    # "idx1":I
    .end local v24    # "idx2":I
    .end local v25    # "k":I
    .end local v68    # "jc":I
    .local v11, "jc":I
    :cond_345
    move/from16 v68, v11

    .end local v11    # "jc":I
    .restart local v68    # "jc":I
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x1

    goto :goto_2e7

    .line 3224
    .end local v10    # "j":I
    .end local v68    # "jc":I
    :cond_34b
    move/from16 v72, v13

    goto/16 :goto_3b7

    .line 3198
    :cond_34f
    const/4 v9, 0x1

    .local v9, "j":I
    :goto_350
    if-ge v9, v13, :cond_3b5

    .line 3199
    sub-int v10, v2, v9

    .line 3200
    .local v10, "jc":I
    mul-int v11, v9, v3

    mul-int/2addr v11, v1

    .line 3201
    .local v11, "idx1":I
    mul-int v12, v10, v3

    mul-int/2addr v12, v1

    .line 3202
    .local v12, "idx2":I
    move/from16 v24, v17

    .local v24, "i":I
    :goto_35c
    move/from16 v69, v24

    .end local v24    # "i":I
    .local v69, "i":I
    move/from16 v70, v10

    move/from16 v10, v69

    if-ge v10, v1, :cond_3b0

    .line 3203
    .end local v69    # "i":I
    .local v10, "i":I
    .local v70, "jc":I
    add-int v24, v8, v10

    .line 3204
    .local v24, "idx4":I
    add-int v25, v6, v10

    .line 3205
    .local v25, "idx5":I
    move/from16 v27, v20

    .local v27, "k":I
    :goto_36a
    move/from16 v71, v27

    .end local v27    # "k":I
    .local v71, "k":I
    move/from16 v72, v13

    move/from16 v13, v71

    if-ge v13, v3, :cond_3a9

    .line 3206
    .end local v71    # "k":I
    .local v13, "k":I
    .local v72, "ipph":I
    mul-int v71, v13, v1

    .line 3207
    .local v71, "idx3":I
    add-int v27, v24, v71

    add-int v27, v27, v11

    .line 3208
    .local v27, "oidx1":I
    add-int v28, v24, v71

    add-int v28, v28, v12

    .line 3209
    .local v28, "oidx2":I
    add-int v29, v25, v71

    add-int v29, v29, v11

    .line 3210
    .local v29, "iidx1":I
    add-int v32, v25, v71

    add-int v32, v32, v12

    .line 3211
    .local v32, "iidx2":I
    add-int/lit8 v33, v29, -0x1

    aget-wide v33, v5, v33

    .line 3212
    .local v33, "i1i":D
    aget-wide v35, v5, v29

    .line 3213
    .local v35, "i1r":D
    add-int/lit8 v37, v32, -0x1

    aget-wide v37, v5, v37

    .line 3214
    .local v37, "i2i":D
    aget-wide v39, v5, v32

    .line 3216
    .local v39, "i2r":D
    add-int/lit8 v41, v27, -0x1

    sub-double v43, v33, v39

    aput-wide v43, v7, v41

    .line 3217
    add-int/lit8 v41, v28, -0x1

    add-double v43, v33, v39

    aput-wide v43, v7, v41

    .line 3218
    add-double v43, v35, v37

    aput-wide v43, v7, v27

    .line 3219
    sub-double v43, v35, v37

    aput-wide v43, v7, v28

    .line 3205
    .end local v27    # "oidx1":I
    .end local v28    # "oidx2":I
    .end local v29    # "iidx1":I
    .end local v32    # "iidx2":I
    .end local v33    # "i1i":D
    .end local v35    # "i1r":D
    .end local v37    # "i2i":D
    .end local v39    # "i2r":D
    .end local v71    # "idx3":I
    add-int/lit8 v27, v13, 0x1

    .end local v13    # "k":I
    .local v27, "k":I
    move/from16 v13, v72

    goto :goto_36a

    .line 3202
    .end local v24    # "idx4":I
    .end local v25    # "idx5":I
    .end local v27    # "k":I
    :cond_3a9
    add-int/lit8 v24, v10, 0x2

    .end local v10    # "i":I
    .local v24, "i":I
    move/from16 v10, v70

    move/from16 v13, v72

    goto :goto_35c

    .line 3198
    .end local v11    # "idx1":I
    .end local v12    # "idx2":I
    .end local v24    # "i":I
    .end local v72    # "ipph":I
    .local v13, "ipph":I
    :cond_3b0
    move/from16 v72, v13

    .end local v13    # "ipph":I
    .restart local v72    # "ipph":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_350

    .line 3224
    .end local v9    # "j":I
    .end local v70    # "jc":I
    .end local v72    # "ipph":I
    .restart local v13    # "ipph":I
    :cond_3b5
    move/from16 v72, v13

    .end local v13    # "ipph":I
    .restart local v72    # "ipph":I
    :goto_3b7
    invoke-static {v7, v8, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3225
    const/4 v9, 0x1

    .restart local v9    # "j":I
    :goto_3bb
    if-ge v9, v2, :cond_3d5

    .line 3226
    mul-int v10, v9, v3

    mul-int/2addr v10, v1

    .line 3227
    .local v10, "idx1":I
    move/from16 v11, v20

    .local v11, "k":I
    :goto_3c2
    if-ge v11, v3, :cond_3d2

    .line 3228
    mul-int v12, v11, v1

    add-int/2addr v12, v10

    .line 3229
    .restart local v12    # "idx2":I
    add-int v13, v6, v12

    add-int v24, v8, v12

    aget-wide v24, v7, v24

    aput-wide v24, v5, v13

    .line 3227
    .end local v12    # "idx2":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_3c2

    .line 3225
    .end local v10    # "idx1":I
    .end local v11    # "k":I
    :cond_3d2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3bb

    .line 3232
    .end local v9    # "j":I
    :cond_3d5
    if-gt v0, v3, :cond_449

    .line 3233
    neg-int v9, v1

    .line 3234
    .local v9, "is":I
    const/16 v66, 0x1

    .local v66, "j":I
    :goto_3da
    move/from16 v10, v66

    .end local v66    # "j":I
    .local v10, "j":I
    if-ge v10, v2, :cond_444

    .line 3235
    add-int/2addr v9, v1

    .line 3236
    add-int/lit8 v11, v9, -0x1

    .line 3237
    .local v11, "idij":I
    mul-int v12, v10, v3

    mul-int/2addr v12, v1

    .line 3238
    .local v12, "idx1":I
    move v13, v11

    move/from16 v11, v17

    .local v11, "i":I
    .local v13, "idij":I
    :goto_3e7
    if-ge v11, v1, :cond_437

    .line 3239
    add-int/lit8 v13, v13, 0x2

    .line 3240
    add-int v24, v13, v26

    .line 3241
    .local v24, "idx2":I
    move/from16 v73, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    .end local v0    # "nbd":I
    .local v73, "nbd":I
    add-int/lit8 v23, v24, -0x1

    aget-wide v27, v4, v23

    .line 3242
    .local v27, "w1r":D
    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v32, v4, v24

    .line 3243
    .local v32, "w1i":D
    add-int v4, v6, v11

    .line 3244
    .local v4, "idx4":I
    add-int v23, v8, v11

    .line 3245
    .local v23, "idx5":I
    move/from16 v25, v20

    .local v25, "k":I
    :goto_401
    move/from16 v74, v25

    .end local v25    # "k":I
    .local v74, "k":I
    move/from16 v75, v9

    move/from16 v9, v74

    if-ge v9, v3, :cond_42e

    .line 3246
    .end local v74    # "k":I
    .local v9, "k":I
    .local v75, "is":I
    mul-int v74, v9, v1

    add-int v74, v74, v12

    .line 3247
    .local v74, "idx3":I
    add-int v25, v4, v74

    .line 3248
    .local v25, "iidx1":I
    add-int v29, v23, v74

    .line 3249
    .local v29, "oidx1":I
    add-int/lit8 v34, v29, -0x1

    aget-wide v34, v7, v34

    .line 3250
    .local v34, "o1i":D
    aget-wide v36, v7, v29

    .line 3252
    .local v36, "o1r":D
    add-int/lit8 v38, v25, -0x1

    mul-double v39, v27, v34

    mul-double v43, v32, v36

    sub-double v39, v39, v43

    aput-wide v39, v5, v38

    .line 3253
    mul-double v38, v27, v36

    mul-double v40, v32, v34

    add-double v38, v38, v40

    aput-wide v38, v5, v25

    .line 3245
    .end local v25    # "iidx1":I
    .end local v29    # "oidx1":I
    .end local v34    # "o1i":D
    .end local v36    # "o1r":D
    .end local v74    # "idx3":I
    add-int/lit8 v25, v9, 0x1

    .end local v9    # "k":I
    .local v25, "k":I
    move/from16 v9, v75

    goto :goto_401

    .line 3238
    .end local v4    # "idx4":I
    .end local v23    # "idx5":I
    .end local v24    # "idx2":I
    .end local v25    # "k":I
    :cond_42e
    add-int/lit8 v11, v11, 0x2

    move/from16 v0, v73

    move/from16 v9, v75

    move/from16 v4, p4

    goto :goto_3e7

    .line 3234
    .end local v11    # "i":I
    .end local v12    # "idx1":I
    .end local v27    # "w1r":D
    .end local v32    # "w1i":D
    .end local v73    # "nbd":I
    .end local v75    # "is":I
    .restart local v0    # "nbd":I
    .local v9, "is":I
    :cond_437
    move/from16 v73, v0

    move/from16 v75, v9

    move-object/from16 v0, p0

    .end local v0    # "nbd":I
    .end local v9    # "is":I
    .restart local v73    # "nbd":I
    .restart local v75    # "is":I
    add-int/lit8 v66, v10, 0x1

    .end local v10    # "j":I
    .restart local v66    # "j":I
    move/from16 v0, v73

    move/from16 v4, p4

    goto :goto_3da

    .line 3284
    .end local v13    # "idij":I
    .end local v66    # "j":I
    .end local v73    # "nbd":I
    .end local v75    # "is":I
    .restart local v0    # "nbd":I
    .restart local v9    # "is":I
    :cond_444
    move/from16 v73, v0

    move-object/from16 v0, p0

    .end local v0    # "nbd":I
    .restart local v73    # "nbd":I
    goto :goto_4a5

    .line 3258
    .end local v9    # "is":I
    .end local v73    # "nbd":I
    .restart local v0    # "nbd":I
    :cond_449
    move/from16 v73, v0

    move-object/from16 v0, p0

    .end local v0    # "nbd":I
    .restart local v73    # "nbd":I
    neg-int v4, v1

    .line 3259
    .local v4, "is":I
    move v9, v4

    const/16 v66, 0x1

    .end local v4    # "is":I
    .restart local v9    # "is":I
    .restart local v66    # "j":I
    :goto_451
    move/from16 v4, v66

    .end local v66    # "j":I
    .local v4, "j":I
    if-ge v4, v2, :cond_4a5

    .line 3260
    add-int/2addr v9, v1

    .line 3261
    mul-int v10, v4, v3

    mul-int/2addr v10, v1

    .line 3262
    .local v10, "idx1":I
    move/from16 v11, v20

    .local v11, "k":I
    :goto_45b
    if-ge v11, v3, :cond_4a0

    .line 3263
    add-int/lit8 v12, v9, -0x1

    .line 3264
    .local v12, "idij":I
    mul-int v13, v11, v1

    add-int/2addr v13, v10

    .line 3265
    .local v13, "idx3":I
    move/from16 v23, v12

    move/from16 v12, v17

    .local v12, "i":I
    .local v23, "idij":I
    :goto_466
    if-ge v12, v1, :cond_49b

    .line 3266
    add-int/lit8 v23, v23, 0x2

    .line 3267
    add-int v24, v23, v26

    .line 3268
    .restart local v24    # "idx2":I
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v25, v24, -0x1

    aget-wide v27, v1, v25

    .line 3269
    .restart local v27    # "w1r":D
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v32, v1, v24

    .line 3270
    .restart local v32    # "w1i":D
    add-int v1, v6, v12

    .line 3271
    .local v1, "idx4":I
    add-int v25, v8, v12

    .line 3272
    .local v25, "idx5":I
    add-int v29, v1, v13

    .line 3273
    .local v29, "iidx1":I
    add-int v34, v25, v13

    .line 3274
    .local v34, "oidx1":I
    add-int/lit8 v35, v34, -0x1

    aget-wide v35, v7, v35

    .line 3275
    .local v35, "o1i":D
    aget-wide v37, v7, v34

    .line 3277
    .local v37, "o1r":D
    add-int/lit8 v39, v29, -0x1

    mul-double v40, v27, v35

    mul-double v43, v32, v37

    sub-double v40, v40, v43

    aput-wide v40, v5, v39

    .line 3278
    mul-double v39, v27, v37

    mul-double v43, v32, v35

    add-double v39, v39, v43

    aput-wide v39, v5, v29

    .line 3265
    .end local v1    # "idx4":I
    .end local v24    # "idx2":I
    .end local v25    # "idx5":I
    .end local v29    # "iidx1":I
    .end local v34    # "oidx1":I
    .end local v35    # "o1i":D
    .end local v37    # "o1r":D
    add-int/lit8 v12, v12, 0x2

    move/from16 v1, p1

    goto :goto_466

    .line 3262
    .end local v12    # "i":I
    .end local v13    # "idx3":I
    .end local v27    # "w1r":D
    .end local v32    # "w1i":D
    :cond_49b
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    goto :goto_45b

    .line 3259
    .end local v10    # "idx1":I
    .end local v11    # "k":I
    .end local v23    # "idij":I
    :cond_4a0
    add-int/lit8 v66, v4, 0x1

    .end local v4    # "j":I
    .restart local v66    # "j":I
    move/from16 v1, p1

    goto :goto_451

    .line 3284
    .end local v66    # "j":I
    :cond_4a5
    :goto_4a5
    return-void-no-barrier
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

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1837
    move/from16 v3, p7

    .line 1838
    .local v3, "iw1":I
    mul-int v4, v2, v1

    .line 1839
    .local v4, "idx0":I
    const/4 v5, 0x2

    mul-int v6, v5, v1

    .line 1840
    .local v6, "idx1":I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_e
    const/4 v9, 0x1

    if-ge v8, v2, :cond_2d

    .line 1841
    mul-int v10, v8, v6

    add-int v10, p6, v10

    .line 1842
    .local v10, "oidx1":I
    add-int v11, v10, v6

    sub-int/2addr v11, v9

    .line 1843
    .local v11, "oidx2":I
    mul-int v9, v8, v1

    add-int v9, p4, v9

    .line 1844
    .local v9, "iidx1":I
    add-int v12, v9, v4

    .line 1846
    .local v12, "iidx2":I
    aget-wide v13, p3, v9

    .line 1847
    .local v13, "i1r":D
    aget-wide v15, p3, v12

    .line 1849
    .local v15, "i2r":D
    add-double v17, v13, v15

    aput-wide v17, p5, v10

    .line 1850
    sub-double v17, v13, v15

    aput-wide v17, p5, v11

    .line 1840
    .end local v9    # "iidx1":I
    .end local v10    # "oidx1":I
    .end local v11    # "oidx2":I
    .end local v12    # "iidx2":I
    .end local v13    # "i1r":D
    .end local v15    # "i2r":D
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 1852
    .end local v8    # "k":I
    :cond_2d
    if-ge v1, v5, :cond_30

    .line 1853
    return-void-no-barrier

    .line 1854
    :cond_30
    if-eq v1, v5, :cond_9e

    .line 1855
    move v8, v6

    const/4 v6, 0x0

    .local v6, "k":I
    .local v8, "idx1":I
    :goto_34
    if-ge v6, v2, :cond_98

    .line 1856
    mul-int v8, v6, v1

    .line 1857
    mul-int v10, v5, v8

    .line 1858
    .local v10, "idx2":I
    add-int v11, v10, v1

    .line 1859
    .local v11, "idx3":I
    add-int v12, v8, v4

    .line 1860
    .local v12, "idx4":I
    move v13, v5

    .local v13, "i":I
    :goto_3f
    move/from16 v19, v13

    .end local v13    # "i":I
    .local v19, "i":I
    move/from16 v7, v19

    if-ge v7, v1, :cond_94

    .line 1861
    .end local v19    # "i":I
    .local v7, "i":I
    sub-int v13, v1, v7

    .line 1862
    .local v13, "ic":I
    add-int/lit8 v19, v7, -0x1

    add-int v19, v19, v3

    .line 1863
    .local v19, "widx1":I
    add-int v14, p6, v7

    add-int/2addr v14, v10

    .line 1864
    .local v14, "oidx1":I
    add-int v15, p6, v13

    add-int/2addr v15, v11

    .line 1865
    .local v15, "oidx2":I
    add-int v16, p4, v7

    add-int v16, v16, v8

    .line 1866
    .local v16, "iidx1":I
    add-int v17, p4, v7

    add-int v17, v17, v12

    .line 1868
    .local v17, "iidx2":I
    add-int/lit8 v18, v16, -0x1

    aget-wide v21, p3, v18

    .line 1869
    .local v21, "a1i":D
    aget-wide v23, p3, v16

    .line 1870
    .local v23, "a1r":D
    add-int/lit8 v18, v17, -0x1

    aget-wide v25, p3, v18

    .line 1871
    .local v25, "a2i":D
    aget-wide v27, p3, v17

    .line 1873
    .local v27, "a2r":D
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v18, v19, -0x1

    aget-wide v29, v5, v18

    .line 1874
    .local v29, "w1r":D
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v31, v5, v19

    .line 1876
    .local v31, "w1i":D
    mul-double v33, v29, v25

    mul-double v35, v31, v27

    add-double v33, v33, v35

    .line 1877
    .local v33, "t1r":D
    mul-double v35, v29, v27

    mul-double v37, v31, v25

    sub-double v35, v35, v37

    .line 1879
    .local v35, "t1i":D
    add-double v37, v23, v35

    aput-wide v37, p5, v14

    .line 1880
    add-int/lit8 v5, v14, -0x1

    add-double v37, v21, v33

    aput-wide v37, p5, v5

    .line 1882
    sub-double v37, v35, v23

    aput-wide v37, p5, v15

    .line 1883
    add-int/lit8 v5, v15, -0x1

    sub-double v37, v21, v33

    aput-wide v37, p5, v5

    .line 1860
    .end local v14    # "oidx1":I
    .end local v15    # "oidx2":I
    .end local v16    # "iidx1":I
    .end local v17    # "iidx2":I
    .end local v19    # "widx1":I
    .end local v21    # "a1i":D
    .end local v23    # "a1r":D
    .end local v25    # "a2i":D
    .end local v27    # "a2r":D
    add-int/lit8 v5, v7, 0x2

    .end local v7    # "i":I
    .local v5, "i":I
    move v13, v5

    const/4 v5, 0x2

    goto :goto_3f

    .line 1855
    .end local v5    # "i":I
    .end local v13    # "ic":I
    .end local v29    # "w1r":D
    .end local v31    # "w1i":D
    .end local v33    # "t1r":D
    .end local v35    # "t1i":D
    .restart local v7    # "i":I
    :cond_94
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x2

    goto :goto_34

    .line 1886
    .end local v6    # "k":I
    .end local v7    # "i":I
    .end local v10    # "idx2":I
    .end local v11    # "idx3":I
    .end local v12    # "idx4":I
    :cond_98
    rem-int/lit8 v5, v1, 0x2

    if-ne v5, v9, :cond_9d

    .line 1887
    return-void-no-barrier

    .line 1889
    :cond_9d
    move v6, v8

    .end local v8    # "idx1":I
    .local v6, "idx1":I
    :cond_9e
    const/4 v5, 0x2

    mul-int/2addr v5, v6

    .line 1890
    .local v5, "idx2":I
    const/16 v20, 0x0

    .local v20, "k":I
    :goto_a2
    move/from16 v7, v20

    .end local v20    # "k":I
    .local v7, "k":I
    if-ge v7, v2, :cond_c2

    .line 1891
    mul-int v6, v7, v1

    .line 1892
    add-int v8, p6, v5

    add-int/2addr v8, v1

    .line 1893
    .local v8, "oidx1":I
    add-int v10, p4, v1

    sub-int/2addr v10, v9

    add-int/2addr v10, v6

    .line 1895
    .local v10, "iidx1":I
    add-int v11, v10, v4

    move/from16 v39, v10

    aget-wide v9, p3, v11

    .end local v10    # "iidx1":I
    .local v39, "iidx1":I
    neg-double v9, v9

    aput-wide v9, p5, v8

    .line 1896
    add-int/lit8 v9, v8, -0x1

    aget-wide v10, p3, v39

    aput-wide v10, p5, v9

    .line 1890
    .end local v8    # "oidx1":I
    .end local v39    # "iidx1":I
    add-int/lit8 v20, v7, 0x1

    .end local v7    # "k":I
    .restart local v20    # "k":I
    const/4 v9, 0x1

    goto :goto_a2

    .line 1898
    .end local v20    # "k":I
    :cond_c2
    return-void-no-barrier
.end method

.method radf3(II[DI[DII)V
    .registers 85
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1971
    const-wide/high16 v3, -0x4020000000000000L    # -0.5

    .line 1972
    .local v3, "taur":D
    const-wide v5, 0x3febb67ae8584cabL    # 0.8660254037844387

    .line 1976
    .local v5, "taui":D
    move/from16 v7, p7

    .line 1977
    .local v7, "iw1":I
    add-int v8, v7, v1

    .line 1979
    .local v8, "iw2":I
    mul-int v9, v2, v1

    .line 1980
    .local v9, "idx0":I
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_14
    const-wide/high16 v12, -0x4020000000000000L    # -0.5

    const-wide v14, 0x3febb67ae8584cabL    # 0.8660254037844387

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/4 v10, 0x1

    if-ge v11, v2, :cond_5a

    .line 1981
    mul-int v19, v11, v1

    .line 1982
    .local v19, "idx1":I
    mul-int v17, v17, v9

    .line 1983
    .local v17, "idx3":I
    mul-int v20, v16, v11

    add-int/lit8 v20, v20, 0x1

    mul-int v20, v20, v1

    .line 1984
    .local v20, "idx4":I
    add-int v21, p4, v19

    .line 1985
    .local v21, "iidx1":I
    add-int v22, v21, v9

    .line 1986
    .local v22, "iidx2":I
    add-int v23, v21, v17

    .line 1987
    .local v23, "iidx3":I
    aget-wide v24, p3, v21

    .line 1988
    .local v24, "i1r":D
    aget-wide v26, p3, v22

    .line 1989
    .local v26, "i2r":D
    aget-wide v28, p3, v23

    .line 1990
    .local v28, "i3r":D
    add-double v30, v26, v28

    .line 1991
    .local v30, "cr2":D
    mul-int v16, v16, v19

    add-int v16, p6, v16

    add-double v32, v24, v30

    aput-wide v32, p5, v16

    .line 1992
    add-int v16, p6, v20

    add-int v16, v16, v1

    sub-double v32, v28, v26

    mul-double v14, v14, v32

    aput-wide v14, p5, v16

    .line 1993
    add-int v14, p6, v1

    sub-int/2addr v14, v10

    add-int v14, v14, v20

    mul-double v12, v12, v30

    add-double v12, v24, v12

    aput-wide v12, p5, v14

    .line 1980
    .end local v17    # "idx3":I
    .end local v19    # "idx1":I
    .end local v20    # "idx4":I
    .end local v21    # "iidx1":I
    .end local v22    # "iidx2":I
    .end local v23    # "iidx3":I
    .end local v24    # "i1r":D
    .end local v26    # "i2r":D
    .end local v28    # "i3r":D
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    .line 1995
    .end local v11    # "k":I
    .end local v30    # "cr2":D
    :cond_5a
    if-ne v1, v10, :cond_5d

    .line 1996
    return-void-no-barrier

    .line 1997
    :cond_5d
    const/16 v18, 0x0

    .local v18, "k":I
    :goto_5f
    move/from16 v10, v18

    .end local v18    # "k":I
    .local v10, "k":I
    if-ge v10, v2, :cond_115

    .line 1998
    mul-int v11, v10, v1

    .line 1999
    .local v11, "idx3":I
    mul-int v18, v16, v11

    .line 2000
    .local v18, "idx4":I
    add-int v19, v11, v9

    .line 2001
    .local v19, "idx5":I
    add-int v20, v19, v9

    .line 2002
    .local v20, "idx6":I
    add-int v21, v18, v1

    .line 2003
    .local v21, "idx7":I
    add-int v22, v21, v1

    .line 2004
    .local v22, "idx8":I
    move/from16 v23, v17

    .local v23, "i":I
    :goto_71
    move/from16 v34, v23

    .end local v23    # "i":I
    .local v34, "i":I
    move/from16 v2, v34

    if-ge v2, v1, :cond_10d

    .line 2005
    .end local v34    # "i":I
    .local v2, "i":I
    sub-int v23, v1, v2

    .line 2006
    .local v23, "ic":I
    add-int/lit8 v34, v2, -0x1

    add-int v34, v34, v7

    .line 2007
    .local v34, "widx1":I
    add-int/lit8 v24, v2, -0x1

    add-int v24, v24, v8

    .line 2009
    .local v24, "widx2":I
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v25, v34, -0x1

    aget-wide v25, v1, v25

    .line 2010
    .local v25, "w1r":D
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v27, v1, v34

    .line 2011
    .local v27, "w1i":D
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v29, v24, -0x1

    aget-wide v29, v1, v29

    .line 2012
    .local v29, "w2r":D
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v31, v1, v24

    .line 2014
    .local v31, "w2i":D
    add-int v1, p4, v2

    .line 2015
    .local v1, "idx9":I
    add-int v33, p6, v2

    .line 2016
    .local v33, "idx10":I
    add-int v35, p6, v23

    .line 2017
    .local v35, "idx11":I
    add-int v36, v1, v11

    .line 2018
    .local v36, "iidx1":I
    add-int v37, v1, v19

    .line 2019
    .local v37, "iidx2":I
    add-int v38, v1, v20

    .line 2021
    .local v38, "iidx3":I
    add-int/lit8 v39, v36, -0x1

    aget-wide v39, p3, v39

    .line 2022
    .local v39, "i1i":D
    aget-wide v41, p3, v36

    .line 2023
    .local v41, "i1r":D
    add-int/lit8 v43, v37, -0x1

    aget-wide v43, p3, v43

    .line 2024
    .local v43, "i2i":D
    aget-wide v45, p3, v37

    .line 2025
    .local v45, "i2r":D
    add-int/lit8 v47, v38, -0x1

    aget-wide v47, p3, v47

    .line 2026
    .local v47, "i3i":D
    aget-wide v49, p3, v38

    .line 2028
    .local v49, "i3r":D
    mul-double v51, v25, v43

    mul-double v53, v27, v45

    add-double v51, v51, v53

    .line 2029
    .local v51, "dr2":D
    mul-double v53, v25, v45

    mul-double v55, v27, v43

    sub-double v53, v53, v55

    .line 2030
    .local v53, "di2":D
    mul-double v55, v29, v47

    mul-double v57, v31, v49

    add-double v55, v55, v57

    .line 2031
    .local v55, "dr3":D
    mul-double v57, v29, v49

    mul-double v59, v31, v47

    sub-double v57, v57, v59

    .line 2032
    .local v57, "di3":D
    add-double v59, v51, v55

    .line 2033
    .local v59, "cr2":D
    add-double v61, v53, v57

    .line 2034
    .local v61, "ci2":D
    mul-double v63, v12, v59

    add-double v63, v39, v63

    .line 2035
    .local v63, "tr2":D
    mul-double v65, v12, v61

    add-double v65, v41, v65

    .line 2036
    .local v65, "ti2":D
    sub-double v67, v53, v57

    mul-double v67, v67, v14

    .line 2037
    .local v67, "tr3":D
    sub-double v69, v55, v51

    mul-double v69, v69, v14

    .line 2039
    .local v69, "ti3":D
    add-int v71, v33, v18

    .line 2040
    .local v71, "oidx1":I
    add-int v72, v35, v21

    .line 2041
    .local v72, "oidx2":I
    add-int v73, v33, v22

    .line 2043
    .local v73, "oidx3":I
    add-int/lit8 v74, v71, -0x1

    add-double v75, v39, v59

    aput-wide v75, p5, v74

    .line 2044
    add-double v74, v41, v61

    aput-wide v74, p5, v71

    .line 2045
    add-int/lit8 v74, v72, -0x1

    sub-double v75, v63, v67

    aput-wide v75, p5, v74

    .line 2046
    sub-double v74, v69, v65

    aput-wide v74, p5, v72

    .line 2047
    add-int/lit8 v74, v73, -0x1

    add-double v75, v63, v67

    aput-wide v75, p5, v74

    .line 2048
    add-double v74, v65, v69

    aput-wide v74, p5, v73

    .line 2004
    .end local v1    # "idx9":I
    .end local v24    # "widx2":I
    .end local v33    # "idx10":I
    .end local v34    # "widx1":I
    .end local v35    # "idx11":I
    .end local v36    # "iidx1":I
    .end local v37    # "iidx2":I
    .end local v38    # "iidx3":I
    .end local v39    # "i1i":D
    .end local v41    # "i1r":D
    .end local v43    # "i2i":D
    .end local v45    # "i2r":D
    .end local v47    # "i3i":D
    .end local v49    # "i3r":D
    .end local v71    # "oidx1":I
    .end local v72    # "oidx2":I
    .end local v73    # "oidx3":I
    add-int/lit8 v1, v2, 0x2

    .end local v2    # "i":I
    .local v1, "i":I
    move/from16 v23, v1

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_71

    .line 1997
    .end local v1    # "i":I
    .end local v11    # "idx3":I
    .end local v18    # "idx4":I
    .end local v19    # "idx5":I
    .end local v20    # "idx6":I
    .end local v21    # "idx7":I
    .end local v22    # "idx8":I
    .end local v23    # "ic":I
    .end local v25    # "w1r":D
    .end local v27    # "w1i":D
    .end local v29    # "w2r":D
    .end local v31    # "w2i":D
    .end local v51    # "dr2":D
    .end local v53    # "di2":D
    .end local v55    # "dr3":D
    .end local v57    # "di3":D
    .end local v59    # "cr2":D
    .end local v61    # "ci2":D
    .end local v63    # "tr2":D
    .end local v65    # "ti2":D
    .end local v67    # "tr3":D
    .end local v69    # "ti3":D
    .restart local v2    # "i":I
    :cond_10d
    add-int/lit8 v18, v10, 0x1

    .end local v10    # "k":I
    .local v18, "k":I
    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_5f

    .line 2051
    .end local v2    # "i":I
    .end local v18    # "k":I
    :cond_115
    return-void-no-barrier
.end method

.method radf4(II[DI[DII)V
    .registers 103
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 2142
    const-wide v3, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    .line 2146
    .local v3, "hsqt2":D
    move/from16 v5, p7

    .line 2147
    .local v5, "iw1":I
    add-int v6, p7, v1

    .line 2148
    .local v6, "iw2":I
    add-int v7, v6, v1

    .line 2149
    .local v7, "iw3":I
    mul-int v8, v2, v1

    .line 2150
    .local v8, "idx0":I
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_14
    const/4 v11, 0x4

    if-ge v10, v2, :cond_57

    .line 2151
    mul-int v12, v10, v1

    .line 2152
    .local v12, "idx1":I
    mul-int/2addr v11, v12

    .line 2153
    .local v11, "idx2":I
    add-int v13, v12, v8

    .line 2154
    .local v13, "idx3":I
    add-int v14, v13, v8

    .line 2155
    .local v14, "idx4":I
    add-int v15, v14, v8

    .line 2156
    .local v15, "idx5":I
    add-int v16, v11, v1

    .line 2157
    .local v16, "idx6":I
    add-int v17, p4, v12

    aget-wide v17, p3, v17

    .line 2158
    .local v17, "i1r":D
    add-int v19, p4, v13

    aget-wide v19, p3, v19

    .line 2159
    .local v19, "i2r":D
    add-int v21, p4, v14

    aget-wide v21, p3, v21

    .line 2160
    .local v21, "i3r":D
    add-int v23, p4, v15

    aget-wide v23, p3, v23

    .line 2162
    .local v23, "i4r":D
    add-double v25, v19, v23

    .line 2163
    .local v25, "tr1":D
    add-double v27, v17, v21

    .line 2165
    .local v27, "tr2":D
    add-int v29, p6, v11

    .line 2166
    .local v29, "oidx1":I
    add-int v30, p6, v16

    add-int v30, v30, v1

    .line 2168
    .local v30, "oidx2":I
    add-double v31, v25, v27

    aput-wide v31, p5, v29

    .line 2169
    add-int/lit8 v31, v30, -0x1

    add-int v31, v31, v1

    add-int v31, v31, v1

    sub-double v32, v27, v25

    aput-wide v32, p5, v31

    .line 2170
    add-int/lit8 v31, v30, -0x1

    sub-double v32, v17, v21

    aput-wide v32, p5, v31

    .line 2171
    sub-double v31, v23, v19

    aput-wide v31, p5, v30

    .line 2150
    .end local v11    # "idx2":I
    .end local v12    # "idx1":I
    .end local v13    # "idx3":I
    .end local v14    # "idx4":I
    .end local v15    # "idx5":I
    .end local v16    # "idx6":I
    .end local v17    # "i1r":D
    .end local v19    # "i2r":D
    .end local v21    # "i3r":D
    .end local v23    # "i4r":D
    .end local v29    # "oidx1":I
    .end local v30    # "oidx2":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 2173
    .end local v10    # "k":I
    .end local v25    # "tr1":D
    .end local v27    # "tr2":D
    :cond_57
    const/4 v10, 0x2

    if-ge v1, v10, :cond_5b

    .line 2174
    return-void-no-barrier

    .line 2175
    :cond_5b
    if-eq v1, v10, :cond_154

    .line 2176
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_5e
    move/from16 v34, v12

    .end local v12    # "k":I
    .local v34, "k":I
    move/from16 v9, v34

    if-ge v9, v2, :cond_14a

    .line 2177
    .end local v34    # "k":I
    .local v9, "k":I
    mul-int v34, v9, v1

    .line 2178
    .local v34, "idx1":I
    add-int v12, v34, v8

    .line 2179
    .local v12, "idx2":I
    add-int v13, v12, v8

    .line 2180
    .restart local v13    # "idx3":I
    add-int v14, v13, v8

    .line 2181
    .restart local v14    # "idx4":I
    mul-int v15, v11, v34

    .line 2182
    .restart local v15    # "idx5":I
    add-int v16, v15, v1

    .line 2183
    .restart local v16    # "idx6":I
    add-int v17, v16, v1

    .line 2184
    .local v17, "idx7":I
    add-int v18, v17, v1

    .line 2185
    .local v18, "idx8":I
    move/from16 v19, v10

    .local v19, "i":I
    :goto_76
    move/from16 v36, v19

    .end local v19    # "i":I
    .local v36, "i":I
    move/from16 v10, v36

    if-ge v10, v1, :cond_141

    .line 2186
    .end local v36    # "i":I
    .local v10, "i":I
    sub-int v19, v1, v10

    .line 2187
    .local v19, "ic":I
    add-int/lit8 v36, v10, -0x1

    add-int v36, v36, v5

    .line 2188
    .local v36, "widx1":I
    add-int/lit8 v20, v10, -0x1

    add-int v20, v20, v6

    .line 2189
    .local v20, "widx2":I
    add-int/lit8 v21, v10, -0x1

    add-int v21, v21, v7

    .line 2190
    .local v21, "widx3":I
    move-wide/from16 v37, v3

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    .end local v3    # "hsqt2":D
    .local v37, "hsqt2":D
    add-int/lit8 v4, v36, -0x1

    aget-wide v3, v3, v4

    .line 2191
    .local v3, "w1r":D
    move/from16 v39, v5

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    .end local v5    # "iw1":I
    .local v39, "iw1":I
    aget-wide v22, v5, v36

    .line 2192
    .local v22, "w1i":D
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v24, v20, -0x1

    aget-wide v24, v5, v24

    .line 2193
    .local v24, "w2r":D
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v26, v5, v20

    .line 2194
    .local v26, "w2i":D
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v28, v21, -0x1

    aget-wide v28, v5, v28

    .line 2195
    .local v28, "w3r":D
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v30, v5, v21

    .line 2197
    .local v30, "w3i":D
    add-int v5, p4, v10

    .line 2198
    .local v5, "idx9":I
    add-int v32, p6, v10

    .line 2199
    .local v32, "idx10":I
    add-int v33, p6, v19

    .line 2200
    .local v33, "idx11":I
    add-int v40, v5, v34

    .line 2201
    .local v40, "iidx1":I
    add-int v41, v5, v12

    .line 2202
    .local v41, "iidx2":I
    add-int v42, v5, v13

    .line 2203
    .local v42, "iidx3":I
    add-int v43, v5, v14

    .line 2205
    .local v43, "iidx4":I
    add-int/lit8 v44, v40, -0x1

    aget-wide v44, p3, v44

    .line 2206
    .local v44, "i1i":D
    aget-wide v46, p3, v40

    .line 2207
    .local v46, "i1r":D
    add-int/lit8 v48, v41, -0x1

    aget-wide v48, p3, v48

    .line 2208
    .local v48, "i2i":D
    aget-wide v50, p3, v41

    .line 2209
    .local v50, "i2r":D
    add-int/lit8 v52, v42, -0x1

    aget-wide v52, p3, v52

    .line 2210
    .local v52, "i3i":D
    aget-wide v54, p3, v42

    .line 2211
    .local v54, "i3r":D
    add-int/lit8 v56, v43, -0x1

    aget-wide v56, p3, v56

    .line 2212
    .local v56, "i4i":D
    aget-wide v58, p3, v43

    .line 2214
    .local v58, "i4r":D
    mul-double v60, v3, v48

    mul-double v62, v22, v50

    add-double v60, v60, v62

    .line 2215
    .local v60, "cr2":D
    mul-double v62, v3, v50

    mul-double v64, v22, v48

    sub-double v62, v62, v64

    .line 2216
    .local v62, "ci2":D
    mul-double v64, v24, v52

    mul-double v66, v26, v54

    add-double v64, v64, v66

    .line 2217
    .local v64, "cr3":D
    mul-double v66, v24, v54

    mul-double v68, v26, v52

    sub-double v66, v66, v68

    .line 2218
    .local v66, "ci3":D
    mul-double v68, v28, v56

    mul-double v70, v30, v58

    add-double v68, v68, v70

    .line 2219
    .local v68, "cr4":D
    mul-double v70, v28, v58

    mul-double v72, v30, v56

    sub-double v70, v70, v72

    .line 2220
    .local v70, "ci4":D
    add-double v72, v60, v68

    .line 2221
    .local v72, "tr1":D
    sub-double v74, v68, v60

    .line 2222
    .local v74, "tr4":D
    add-double v76, v62, v70

    .line 2223
    .local v76, "ti1":D
    sub-double v78, v62, v70

    .line 2224
    .local v78, "ti4":D
    add-double v80, v46, v66

    .line 2225
    .local v80, "ti2":D
    sub-double v82, v46, v66

    .line 2226
    .local v82, "ti3":D
    add-double v84, v44, v64

    .line 2227
    .local v84, "tr2":D
    sub-double v86, v44, v64

    .line 2229
    .local v86, "tr3":D
    add-int v88, v32, v15

    .line 2230
    .local v88, "oidx1":I
    add-int v89, v33, v16

    .line 2231
    .local v89, "oidx2":I
    add-int v90, v32, v17

    .line 2232
    .local v90, "oidx3":I
    add-int v91, v33, v18

    .line 2234
    .local v91, "oidx4":I
    add-int/lit8 v92, v88, -0x1

    add-double v93, v72, v84

    aput-wide v93, p5, v92

    .line 2235
    add-int/lit8 v92, v91, -0x1

    sub-double v93, v84, v72

    aput-wide v93, p5, v92

    .line 2236
    add-double v92, v76, v80

    aput-wide v92, p5, v88

    .line 2237
    sub-double v92, v76, v80

    aput-wide v92, p5, v91

    .line 2238
    add-int/lit8 v92, v90, -0x1

    add-double v93, v78, v86

    aput-wide v93, p5, v92

    .line 2239
    add-int/lit8 v92, v89, -0x1

    sub-double v93, v86, v78

    aput-wide v93, p5, v92

    .line 2240
    add-double v92, v74, v82

    aput-wide v92, p5, v90

    .line 2241
    sub-double v92, v74, v82

    aput-wide v92, p5, v89

    .line 2185
    .end local v5    # "idx9":I
    .end local v20    # "widx2":I
    .end local v21    # "widx3":I
    .end local v32    # "idx10":I
    .end local v33    # "idx11":I
    .end local v36    # "widx1":I
    .end local v40    # "iidx1":I
    .end local v41    # "iidx2":I
    .end local v42    # "iidx3":I
    .end local v43    # "iidx4":I
    .end local v44    # "i1i":D
    .end local v46    # "i1r":D
    .end local v48    # "i2i":D
    .end local v50    # "i2r":D
    .end local v52    # "i3i":D
    .end local v54    # "i3r":D
    .end local v56    # "i4i":D
    .end local v58    # "i4r":D
    .end local v88    # "oidx1":I
    .end local v89    # "oidx2":I
    .end local v90    # "oidx3":I
    .end local v91    # "oidx4":I
    add-int/lit8 v5, v10, 0x2

    .end local v10    # "i":I
    .local v5, "i":I
    move/from16 v19, v5

    move-wide/from16 v3, v37

    move/from16 v5, v39

    const/4 v10, 0x2

    goto/16 :goto_76

    .line 2176
    .end local v12    # "idx2":I
    .end local v13    # "idx3":I
    .end local v14    # "idx4":I
    .end local v15    # "idx5":I
    .end local v16    # "idx6":I
    .end local v17    # "idx7":I
    .end local v18    # "idx8":I
    .end local v19    # "ic":I
    .end local v22    # "w1i":D
    .end local v24    # "w2r":D
    .end local v26    # "w2i":D
    .end local v28    # "w3r":D
    .end local v30    # "w3i":D
    .end local v34    # "idx1":I
    .end local v37    # "hsqt2":D
    .end local v39    # "iw1":I
    .end local v60    # "cr2":D
    .end local v62    # "ci2":D
    .end local v64    # "cr3":D
    .end local v66    # "ci3":D
    .end local v68    # "cr4":D
    .end local v70    # "ci4":D
    .end local v72    # "tr1":D
    .end local v74    # "tr4":D
    .end local v76    # "ti1":D
    .end local v78    # "ti4":D
    .end local v80    # "ti2":D
    .end local v82    # "ti3":D
    .end local v84    # "tr2":D
    .end local v86    # "tr3":D
    .local v3, "hsqt2":D
    .local v5, "iw1":I
    .restart local v10    # "i":I
    :cond_141
    move-wide/from16 v37, v3

    move/from16 v39, v5

    .end local v3    # "hsqt2":D
    .end local v5    # "iw1":I
    .restart local v37    # "hsqt2":D
    .restart local v39    # "iw1":I
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "k":I
    .local v12, "k":I
    const/4 v10, 0x2

    goto/16 :goto_5e

    .line 2244
    .end local v10    # "i":I
    .end local v12    # "k":I
    .end local v37    # "hsqt2":D
    .end local v39    # "iw1":I
    .restart local v3    # "hsqt2":D
    .restart local v5    # "iw1":I
    :cond_14a
    move-wide/from16 v37, v3

    move/from16 v39, v5

    .end local v3    # "hsqt2":D
    .end local v5    # "iw1":I
    .restart local v37    # "hsqt2":D
    .restart local v39    # "iw1":I
    rem-int/lit8 v3, v1, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_158

    .line 2245
    return-void-no-barrier

    .line 2247
    .end local v37    # "hsqt2":D
    .end local v39    # "iw1":I
    .restart local v3    # "hsqt2":D
    .restart local v5    # "iw1":I
    :cond_154
    move-wide/from16 v37, v3

    move/from16 v39, v5

    .end local v3    # "hsqt2":D
    .end local v5    # "iw1":I
    .restart local v37    # "hsqt2":D
    .restart local v39    # "iw1":I
    :cond_158
    const/16 v35, 0x0

    .local v35, "k":I
    :goto_15a
    move/from16 v3, v35

    .end local v35    # "k":I
    .local v3, "k":I
    if-ge v3, v2, :cond_1bb

    .line 2248
    mul-int v4, v3, v1

    .line 2249
    .local v4, "idx1":I
    mul-int v5, v11, v4

    .line 2250
    .local v5, "idx2":I
    add-int v9, v4, v8

    .line 2251
    .local v9, "idx3":I
    add-int v10, v9, v8

    .line 2252
    .local v10, "idx4":I
    add-int v12, v10, v8

    .line 2253
    .local v12, "idx5":I
    add-int v13, v5, v1

    .line 2254
    .local v13, "idx6":I
    add-int v14, v13, v1

    .line 2255
    .local v14, "idx7":I
    add-int v15, v14, v1

    .line 2256
    .local v15, "idx8":I
    add-int v16, p4, v1

    .line 2257
    .local v16, "idx9":I
    add-int v17, p6, v1

    .line 2259
    .local v17, "idx10":I
    add-int/lit8 v18, v16, -0x1

    add-int v18, v18, v4

    aget-wide v18, p3, v18

    .line 2260
    .local v18, "i1i":D
    add-int/lit8 v20, v16, -0x1

    add-int v20, v20, v9

    aget-wide v20, p3, v20

    .line 2261
    .local v20, "i2i":D
    add-int/lit8 v22, v16, -0x1

    add-int v22, v22, v10

    aget-wide v22, p3, v22

    .line 2262
    .local v22, "i3i":D
    add-int/lit8 v24, v16, -0x1

    add-int v24, v24, v12

    aget-wide v24, p3, v24

    .line 2264
    .local v24, "i4i":D
    const-wide v26, -0x40195f619980c433L    # -0.7071067811865476

    add-double v28, v20, v24

    mul-double v26, v26, v28

    .line 2265
    .local v26, "ti1":D
    const-wide v28, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    sub-double v30, v20, v24

    mul-double v28, v28, v30

    .line 2267
    .local v28, "tr1":D
    add-int/lit8 v30, v17, -0x1

    add-int v30, v30, v5

    add-double v31, v28, v18

    aput-wide v31, p5, v30

    .line 2268
    add-int/lit8 v30, v17, -0x1

    add-int v30, v30, v14

    sub-double v31, v18, v28

    aput-wide v31, p5, v30

    .line 2269
    add-int v30, p6, v13

    sub-double v31, v26, v22

    aput-wide v31, p5, v30

    .line 2270
    add-int v30, p6, v15

    add-double v31, v26, v22

    aput-wide v31, p5, v30

    .line 2247
    .end local v4    # "idx1":I
    .end local v5    # "idx2":I
    .end local v9    # "idx3":I
    .end local v10    # "idx4":I
    .end local v12    # "idx5":I
    .end local v13    # "idx6":I
    .end local v14    # "idx7":I
    .end local v15    # "idx8":I
    .end local v16    # "idx9":I
    .end local v17    # "idx10":I
    .end local v18    # "i1i":D
    .end local v20    # "i2i":D
    .end local v22    # "i3i":D
    .end local v24    # "i4i":D
    add-int/lit8 v35, v3, 0x1

    .end local v3    # "k":I
    .restart local v35    # "k":I
    goto :goto_15a

    .line 2272
    .end local v26    # "ti1":D
    .end local v28    # "tr1":D
    .end local v35    # "k":I
    :cond_1bb
    return-void-no-barrier
.end method

.method radf5(II[DI[DII)V
    .registers 149
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "in"    # [D
    .param p4, "in_off"    # I
    .param p5, "out"    # [D
    .param p6, "out_off"    # I
    .param p7, "offset"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 2421
    const-wide v3, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    .line 2422
    .local v3, "tr11":D
    const-wide v5, 0x3fee6f0e134454ffL    # 0.9510565162951535

    .line 2423
    .local v5, "ti11":D
    const-wide v7, -0x40161c8864680b59L    # -0.8090169943749473

    .line 2424
    .local v7, "tr12":D
    const-wide v9, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    .line 2428
    .local v9, "ti12":D
    move/from16 v11, p7

    .line 2429
    .local v11, "iw1":I
    add-int v12, v11, v1

    .line 2430
    .local v12, "iw2":I
    add-int v13, v12, v1

    .line 2431
    .local v13, "iw3":I
    add-int v14, v13, v1

    .line 2433
    .local v14, "iw4":I
    mul-int v15, v2, v1

    .line 2434
    .local v15, "idx0":I
    const/16 v16, 0x0

    move/from16 v17, v16

    .local v17, "k":I
    :goto_28
    move/from16 v18, v17

    .end local v17    # "k":I
    .local v18, "k":I
    const/16 v17, 0x5

    const-wide v19, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    const-wide v21, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v23, -0x40161c8864680b59L    # -0.8090169943749473

    const-wide v25, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    move-wide/from16 v27, v3

    const/4 v3, 0x1

    .end local v3    # "tr11":D
    .local v27, "tr11":D
    move/from16 v4, v18

    if-ge v4, v2, :cond_b5

    .line 2435
    .end local v18    # "k":I
    .local v4, "k":I
    mul-int v18, v4, v1

    .line 2436
    .local v18, "idx1":I
    mul-int v17, v17, v18

    .line 2437
    .local v17, "idx2":I
    add-int v29, v17, v1

    .line 2438
    .local v29, "idx3":I
    add-int v30, v29, v1

    .line 2439
    .local v30, "idx4":I
    add-int v31, v30, v1

    .line 2440
    .local v31, "idx5":I
    add-int v32, v31, v1

    .line 2441
    .local v32, "idx6":I
    add-int v33, v18, v15

    .line 2442
    .local v33, "idx7":I
    add-int v34, v33, v15

    .line 2443
    .local v34, "idx8":I
    add-int v35, v34, v15

    .line 2444
    .local v35, "idx9":I
    add-int v36, v35, v15

    .line 2445
    .local v36, "idx10":I
    add-int v37, p6, v1

    add-int/lit8 v37, v37, -0x1

    .line 2447
    .local v37, "idx11":I
    add-int v3, p4, v18

    aget-wide v38, p3, v3

    .line 2448
    .local v38, "i1r":D
    add-int v3, p4, v33

    aget-wide v40, p3, v3

    .line 2449
    .local v40, "i2r":D
    add-int v3, p4, v34

    aget-wide v42, p3, v3

    .line 2450
    .local v42, "i3r":D
    add-int v3, p4, v35

    aget-wide v44, p3, v3

    .line 2451
    .local v44, "i4r":D
    add-int v3, p4, v36

    aget-wide v46, p3, v3

    .line 2453
    .local v46, "i5r":D
    add-double v48, v46, v40

    .line 2454
    .local v48, "cr2":D
    sub-double v50, v46, v40

    .line 2455
    .local v50, "ci5":D
    add-double v52, v44, v42

    .line 2456
    .local v52, "cr3":D
    sub-double v54, v44, v42

    .line 2458
    .local v54, "ci4":D
    add-int v3, p6, v17

    add-double v56, v38, v48

    add-double v56, v56, v52

    aput-wide v56, p5, v3

    .line 2459
    add-int v3, v37, v29

    mul-double v56, v25, v48

    add-double v56, v38, v56

    mul-double v58, v23, v52

    add-double v56, v56, v58

    aput-wide v56, p5, v3

    .line 2460
    add-int v3, p6, v30

    mul-double v56, v21, v50

    mul-double v58, v19, v54

    add-double v56, v56, v58

    aput-wide v56, p5, v3

    .line 2461
    add-int v3, v37, v31

    mul-double v23, v23, v48

    add-double v23, v38, v23

    mul-double v25, v25, v52

    add-double v23, v23, v25

    aput-wide v23, p5, v3

    .line 2462
    add-int v3, p6, v32

    mul-double v19, v19, v50

    mul-double v21, v21, v54

    sub-double v19, v19, v21

    aput-wide v19, p5, v3

    .line 2434
    .end local v17    # "idx2":I
    .end local v18    # "idx1":I
    .end local v29    # "idx3":I
    .end local v30    # "idx4":I
    .end local v31    # "idx5":I
    .end local v32    # "idx6":I
    .end local v33    # "idx7":I
    .end local v34    # "idx8":I
    .end local v35    # "idx9":I
    .end local v36    # "idx10":I
    .end local v37    # "idx11":I
    .end local v38    # "i1r":D
    .end local v40    # "i2r":D
    .end local v42    # "i3r":D
    .end local v44    # "i4r":D
    .end local v46    # "i5r":D
    add-int/lit8 v17, v4, 0x1

    .end local v4    # "k":I
    .local v17, "k":I
    move-wide/from16 v3, v27

    goto/16 :goto_28

    .line 2464
    .end local v17    # "k":I
    .end local v48    # "cr2":D
    .end local v50    # "ci5":D
    .end local v52    # "cr3":D
    .end local v54    # "ci4":D
    :cond_b5
    if-ne v1, v3, :cond_b8

    .line 2465
    return-void-no-barrier

    .line 2466
    :cond_b8
    nop

    .local v16, "k":I
    :goto_b9
    move/from16 v3, v16

    .end local v16    # "k":I
    .local v3, "k":I
    if-ge v3, v2, :cond_21d

    .line 2467
    mul-int v4, v3, v1

    .line 2468
    .local v4, "idx1":I
    mul-int v16, v17, v4

    .line 2469
    .local v16, "idx2":I
    add-int v18, v16, v1

    .line 2470
    .local v18, "idx3":I
    add-int v29, v18, v1

    .line 2471
    .local v29, "idx4":I
    add-int v30, v29, v1

    .line 2472
    .local v30, "idx5":I
    add-int v31, v30, v1

    .line 2473
    .local v31, "idx6":I
    add-int v32, v4, v15

    .line 2474
    .local v32, "idx7":I
    add-int v33, v32, v15

    .line 2475
    .local v33, "idx8":I
    add-int v34, v33, v15

    .line 2476
    .local v34, "idx9":I
    add-int v35, v34, v15

    .line 2477
    .local v35, "idx10":I
    const/16 v36, 0x2

    .local v36, "i":I
    :goto_d3
    move/from16 v60, v36

    .end local v36    # "i":I
    .local v60, "i":I
    move/from16 v2, v60

    if-ge v2, v1, :cond_20f

    .line 2478
    .end local v60    # "i":I
    .local v2, "i":I
    add-int/lit8 v60, v2, -0x1

    add-int v60, v60, v11

    .line 2479
    .local v60, "widx1":I
    add-int/lit8 v36, v2, -0x1

    add-int v36, v36, v12

    .line 2480
    .local v36, "widx2":I
    add-int/lit8 v37, v2, -0x1

    add-int v37, v37, v13

    .line 2481
    .local v37, "widx3":I
    add-int/lit8 v38, v2, -0x1

    add-int v38, v38, v14

    .line 2482
    .local v38, "widx4":I
    move-wide/from16 v61, v5

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    .end local v5    # "ti11":D
    .local v61, "ti11":D
    add-int/lit8 v6, v60, -0x1

    aget-wide v5, v5, v6

    .line 2483
    .local v5, "w1r":D
    move-wide/from16 v63, v7

    iget-object v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    .end local v7    # "tr12":D
    .local v63, "tr12":D
    aget-wide v7, v7, v60

    .line 2484
    .local v7, "w1i":D
    move-wide/from16 v65, v9

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    .end local v9    # "ti12":D
    .local v65, "ti12":D
    add-int/lit8 v10, v36, -0x1

    aget-wide v9, v9, v10

    .line 2485
    .local v9, "w2r":D
    move/from16 v67, v11

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    .end local v11    # "iw1":I
    .local v67, "iw1":I
    aget-wide v39, v11, v36

    .line 2486
    .local v39, "w2i":D
    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v41, v37, -0x1

    aget-wide v41, v11, v41

    .line 2487
    .local v41, "w3r":D
    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v43, v11, v37

    .line 2488
    .local v43, "w3i":D
    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v45, v38, -0x1

    aget-wide v45, v11, v45

    .line 2489
    .local v45, "w4r":D
    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v47, v11, v38

    .line 2491
    .local v47, "w4i":D
    sub-int v11, v1, v2

    .line 2492
    .local v11, "ic":I
    add-int v49, p4, v2

    .line 2493
    .local v49, "idx15":I
    add-int v50, p6, v2

    .line 2494
    .local v50, "idx16":I
    add-int v51, p6, v11

    .line 2496
    .local v51, "idx17":I
    add-int v52, v49, v4

    .line 2497
    .local v52, "iidx1":I
    add-int v53, v49, v32

    .line 2498
    .local v53, "iidx2":I
    add-int v54, v49, v33

    .line 2499
    .local v54, "iidx3":I
    add-int v55, v49, v34

    .line 2500
    .local v55, "iidx4":I
    add-int v56, v49, v35

    .line 2502
    .local v56, "iidx5":I
    add-int/lit8 v57, v52, -0x1

    aget-wide v57, p3, v57

    .line 2503
    .local v57, "i1i":D
    aget-wide v68, p3, v52

    .line 2504
    .local v68, "i1r":D
    add-int/lit8 v59, v53, -0x1

    aget-wide v70, p3, v59

    .line 2505
    .local v70, "i2i":D
    aget-wide v72, p3, v53

    .line 2506
    .local v72, "i2r":D
    add-int/lit8 v59, v54, -0x1

    aget-wide v74, p3, v59

    .line 2507
    .local v74, "i3i":D
    aget-wide v76, p3, v54

    .line 2508
    .local v76, "i3r":D
    add-int/lit8 v59, v55, -0x1

    aget-wide v78, p3, v59

    .line 2509
    .local v78, "i4i":D
    aget-wide v80, p3, v55

    .line 2510
    .local v80, "i4r":D
    add-int/lit8 v59, v56, -0x1

    aget-wide v82, p3, v59

    .line 2511
    .local v82, "i5i":D
    aget-wide v84, p3, v56

    .line 2513
    .local v84, "i5r":D
    mul-double v86, v5, v70

    mul-double v88, v7, v72

    add-double v86, v86, v88

    .line 2514
    .local v86, "dr2":D
    mul-double v88, v5, v72

    mul-double v90, v7, v70

    sub-double v88, v88, v90

    .line 2515
    .local v88, "di2":D
    mul-double v90, v9, v74

    mul-double v92, v39, v76

    add-double v90, v90, v92

    .line 2516
    .local v90, "dr3":D
    mul-double v92, v9, v76

    mul-double v94, v39, v74

    sub-double v92, v92, v94

    .line 2517
    .local v92, "di3":D
    mul-double v94, v41, v78

    mul-double v96, v43, v80

    add-double v94, v94, v96

    .line 2518
    .local v94, "dr4":D
    mul-double v96, v41, v80

    mul-double v98, v43, v78

    sub-double v96, v96, v98

    .line 2519
    .local v96, "di4":D
    mul-double v98, v45, v82

    mul-double v100, v47, v84

    add-double v98, v98, v100

    .line 2520
    .local v98, "dr5":D
    mul-double v100, v45, v84

    mul-double v102, v47, v82

    sub-double v100, v100, v102

    .line 2522
    .local v100, "di5":D
    add-double v102, v86, v98

    .line 2523
    .local v102, "cr2":D
    sub-double v104, v98, v86

    .line 2524
    .local v104, "ci5":D
    sub-double v106, v88, v100

    .line 2525
    .local v106, "cr5":D
    add-double v108, v88, v100

    .line 2526
    .local v108, "ci2":D
    add-double v110, v90, v94

    .line 2527
    .local v110, "cr3":D
    sub-double v112, v94, v90

    .line 2528
    .local v112, "ci4":D
    sub-double v114, v92, v96

    .line 2529
    .local v114, "cr4":D
    add-double v116, v92, v96

    .line 2531
    .local v116, "ci3":D
    mul-double v118, v25, v102

    add-double v118, v57, v118

    mul-double v120, v23, v110

    add-double v118, v118, v120

    .line 2532
    .local v118, "tr2":D
    mul-double v120, v25, v108

    add-double v120, v68, v120

    mul-double v122, v23, v116

    add-double v120, v120, v122

    .line 2533
    .local v120, "ti2":D
    mul-double v122, v23, v102

    add-double v122, v57, v122

    mul-double v124, v25, v110

    add-double v122, v122, v124

    .line 2534
    .local v122, "tr3":D
    mul-double v124, v23, v108

    add-double v124, v68, v124

    mul-double v126, v25, v116

    add-double v124, v124, v126

    .line 2535
    .local v124, "ti3":D
    mul-double v126, v21, v106

    mul-double v128, v19, v114

    add-double v126, v126, v128

    .line 2536
    .local v126, "tr5":D
    mul-double v128, v21, v104

    mul-double v130, v19, v112

    add-double v128, v128, v130

    .line 2537
    .local v128, "ti5":D
    mul-double v130, v19, v106

    mul-double v132, v21, v114

    sub-double v130, v130, v132

    .line 2538
    .local v130, "tr4":D
    mul-double v132, v19, v104

    mul-double v134, v21, v112

    sub-double v132, v132, v134

    .line 2540
    .local v132, "ti4":D
    add-int v59, v50, v16

    .line 2541
    .local v59, "oidx1":I
    add-int v134, v51, v18

    .line 2542
    .local v134, "oidx2":I
    add-int v135, v50, v29

    .line 2543
    .local v135, "oidx3":I
    add-int v136, v51, v30

    .line 2544
    .local v136, "oidx4":I
    add-int v137, v50, v31

    .line 2546
    .local v137, "oidx5":I
    add-int/lit8 v138, v59, -0x1

    add-double v139, v57, v102

    add-double v139, v139, v110

    aput-wide v139, p5, v138

    .line 2547
    add-double v138, v68, v108

    add-double v138, v138, v116

    aput-wide v138, p5, v59

    .line 2548
    add-int/lit8 v138, v135, -0x1

    add-double v139, v118, v126

    aput-wide v139, p5, v138

    .line 2549
    add-int/lit8 v138, v134, -0x1

    sub-double v139, v118, v126

    aput-wide v139, p5, v138

    .line 2550
    add-double v138, v120, v128

    aput-wide v138, p5, v135

    .line 2551
    sub-double v138, v128, v120

    aput-wide v138, p5, v134

    .line 2552
    add-int/lit8 v138, v137, -0x1

    add-double v139, v122, v130

    aput-wide v139, p5, v138

    .line 2553
    add-int/lit8 v138, v136, -0x1

    sub-double v139, v122, v130

    aput-wide v139, p5, v138

    .line 2554
    add-double v138, v124, v132

    aput-wide v138, p5, v137

    .line 2555
    sub-double v138, v132, v124

    aput-wide v138, p5, v136

    .line 2477
    .end local v36    # "widx2":I
    .end local v37    # "widx3":I
    .end local v38    # "widx4":I
    .end local v49    # "idx15":I
    .end local v50    # "idx16":I
    .end local v51    # "idx17":I
    .end local v52    # "iidx1":I
    .end local v53    # "iidx2":I
    .end local v54    # "iidx3":I
    .end local v55    # "iidx4":I
    .end local v56    # "iidx5":I
    .end local v57    # "i1i":D
    .end local v59    # "oidx1":I
    .end local v60    # "widx1":I
    .end local v68    # "i1r":D
    .end local v70    # "i2i":D
    .end local v72    # "i2r":D
    .end local v74    # "i3i":D
    .end local v76    # "i3r":D
    .end local v78    # "i4i":D
    .end local v80    # "i4r":D
    .end local v82    # "i5i":D
    .end local v84    # "i5r":D
    .end local v134    # "oidx2":I
    .end local v135    # "oidx3":I
    .end local v136    # "oidx4":I
    .end local v137    # "oidx5":I
    add-int/lit8 v36, v2, 0x2

    .end local v2    # "i":I
    .local v36, "i":I
    move-wide/from16 v5, v61

    move-wide/from16 v7, v63

    move-wide/from16 v9, v65

    move/from16 v11, v67

    move/from16 v2, p2

    goto/16 :goto_d3

    .line 2466
    .end local v4    # "idx1":I
    .end local v16    # "idx2":I
    .end local v18    # "idx3":I
    .end local v29    # "idx4":I
    .end local v30    # "idx5":I
    .end local v31    # "idx6":I
    .end local v32    # "idx7":I
    .end local v33    # "idx8":I
    .end local v34    # "idx9":I
    .end local v35    # "idx10":I
    .end local v36    # "i":I
    .end local v39    # "w2i":D
    .end local v41    # "w3r":D
    .end local v43    # "w3i":D
    .end local v45    # "w4r":D
    .end local v47    # "w4i":D
    .end local v61    # "ti11":D
    .end local v63    # "tr12":D
    .end local v65    # "ti12":D
    .end local v67    # "iw1":I
    .end local v86    # "dr2":D
    .end local v88    # "di2":D
    .end local v90    # "dr3":D
    .end local v92    # "di3":D
    .end local v94    # "dr4":D
    .end local v96    # "di4":D
    .end local v98    # "dr5":D
    .end local v100    # "di5":D
    .end local v102    # "cr2":D
    .end local v104    # "ci5":D
    .end local v106    # "cr5":D
    .end local v108    # "ci2":D
    .end local v110    # "cr3":D
    .end local v112    # "ci4":D
    .end local v114    # "cr4":D
    .end local v116    # "ci3":D
    .end local v118    # "tr2":D
    .end local v120    # "ti2":D
    .end local v122    # "tr3":D
    .end local v124    # "ti3":D
    .end local v126    # "tr5":D
    .end local v128    # "ti5":D
    .end local v130    # "tr4":D
    .end local v132    # "ti4":D
    .restart local v2    # "i":I
    .local v5, "ti11":D
    .local v7, "tr12":D
    .local v9, "ti12":D
    .local v11, "iw1":I
    :cond_20f
    move-wide/from16 v61, v5

    move-wide/from16 v63, v7

    move-wide/from16 v65, v9

    move/from16 v67, v11

    .end local v5    # "ti11":D
    .end local v7    # "tr12":D
    .end local v9    # "ti12":D
    .end local v11    # "iw1":I
    .restart local v61    # "ti11":D
    .restart local v63    # "tr12":D
    .restart local v65    # "ti12":D
    .restart local v67    # "iw1":I
    add-int/lit8 v16, v3, 0x1

    .end local v3    # "k":I
    .local v16, "k":I
    move/from16 v2, p2

    goto/16 :goto_b9

    .line 2558
    .end local v2    # "i":I
    .end local v16    # "k":I
    .end local v61    # "ti11":D
    .end local v63    # "tr12":D
    .end local v65    # "ti12":D
    .end local v67    # "iw1":I
    .restart local v5    # "ti11":D
    .restart local v7    # "tr12":D
    .restart local v9    # "ti12":D
    .restart local v11    # "iw1":I
    :cond_21d
    move-wide/from16 v61, v5

    move-wide/from16 v63, v7

    move-wide/from16 v65, v9

    move/from16 v67, v11

    .end local v5    # "ti11":D
    .end local v7    # "tr12":D
    .end local v9    # "ti12":D
    .end local v11    # "iw1":I
    .restart local v61    # "ti11":D
    .restart local v63    # "tr12":D
    .restart local v65    # "ti12":D
    .restart local v67    # "iw1":I
    return-void-no-barrier
.end method

.method radfg(IIII[DI[DII)V
    .registers 77
    .param p1, "ido"    # I
    .param p2, "ip"    # I
    .param p3, "l1"    # I
    .param p4, "idl1"    # I
    .param p5, "in"    # [D
    .param p6, "in_off"    # I
    .param p7, "out"    # [D
    .param p8, "out_off"    # I
    .param p9, "offset"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 2708
    move/from16 v9, p9

    .line 2710
    .local v9, "iw1":I
    int-to-double v10, v2

    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v12, v10

    .line 2711
    .local v12, "arg":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 2712
    .local v10, "dcp":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 2713
    .local v14, "dsp":D
    add-int/lit8 v16, v2, 0x1

    const/16 v17, 0x2

    move-wide/from16 v18, v12

    div-int/lit8 v12, v16, 0x2

    .line 2714
    .local v12, "ipph":I
    .local v18, "arg":D
    add-int/lit8 v13, v1, -0x1

    div-int/lit8 v13, v13, 0x2

    .line 2715
    .local v13, "nbd":I
    const/16 v16, 0x0

    move-wide/from16 v20, v14

    const/4 v14, 0x1

    .end local v14    # "dsp":D
    .local v20, "dsp":D
    if-eq v1, v14, :cond_1eb

    .line 2716
    move/from16 v15, v16

    .local v15, "ik":I
    :goto_38
    if-ge v15, v4, :cond_45

    .line 2717
    add-int v22, v8, v15

    add-int v23, v6, v15

    aget-wide v23, v5, v23

    aput-wide v23, v7, v22

    .line 2716
    add-int/lit8 v15, v15, 0x1

    goto :goto_38

    .line 2718
    .end local v15    # "ik":I
    :cond_45
    move v15, v14

    .local v15, "j":I
    :goto_46
    if-ge v15, v2, :cond_68

    .line 2719
    mul-int v22, v15, v3

    mul-int v22, v22, v1

    .line 2720
    .local v22, "idx1":I
    move/from16 v23, v16

    .local v23, "k":I
    :goto_4e
    move/from16 v25, v23

    .end local v23    # "k":I
    .local v25, "k":I
    move/from16 v14, v25

    if-ge v14, v3, :cond_64

    .line 2721
    .end local v25    # "k":I
    .local v14, "k":I
    mul-int v25, v14, v1

    add-int v25, v25, v22

    .line 2722
    .local v25, "idx2":I
    add-int v23, v8, v25

    add-int v24, v6, v25

    aget-wide v27, v5, v24

    aput-wide v27, v7, v23

    .line 2720
    .end local v25    # "idx2":I
    add-int/lit8 v23, v14, 0x1

    .end local v14    # "k":I
    .restart local v23    # "k":I
    const/4 v14, 0x1

    goto :goto_4e

    .line 2718
    .end local v22    # "idx1":I
    .end local v23    # "k":I
    :cond_64
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x1

    goto :goto_46

    .line 2725
    .end local v15    # "j":I
    :cond_68
    if-gt v13, v3, :cond_d4

    .line 2726
    neg-int v14, v1

    .line 2727
    .local v14, "is":I
    move v15, v14

    const/4 v14, 0x1

    .local v14, "j":I
    .local v15, "is":I
    :goto_6d
    if-ge v14, v2, :cond_cf

    .line 2728
    add-int/2addr v15, v1

    .line 2729
    add-int/lit8 v22, v15, -0x1

    .line 2730
    .local v22, "idij":I
    mul-int v23, v14, v3

    mul-int v23, v23, v1

    .line 2731
    .local v23, "idx1":I
    move/from16 v24, v22

    move/from16 v22, v17

    .local v22, "i":I
    .local v24, "idij":I
    :goto_7a
    move/from16 v29, v22

    .end local v22    # "i":I
    .local v29, "i":I
    move/from16 v30, v15

    move/from16 v15, v29

    if-ge v15, v1, :cond_c6

    .line 2732
    .end local v29    # "i":I
    .local v15, "i":I
    .local v30, "is":I
    add-int/lit8 v24, v24, 0x2

    .line 2733
    add-int v22, v24, v9

    .line 2734
    .local v22, "idx2":I
    add-int v25, v6, v15

    .line 2735
    .local v25, "idx4":I
    add-int v27, v8, v15

    .line 2736
    .local v27, "idx5":I
    move-wide/from16 v31, v10

    iget-object v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    .end local v10    # "dcp":D
    .local v31, "dcp":D
    add-int/lit8 v11, v22, -0x1

    aget-wide v10, v10, v11

    .line 2737
    .local v10, "w1r":D
    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v28, v4, v22

    .line 2738
    .local v28, "w1i":D
    move/from16 v4, v16

    .local v4, "k":I
    :goto_98
    if-ge v4, v3, :cond_bd

    .line 2739
    mul-int v34, v4, v1

    add-int v34, v34, v23

    .line 2740
    .local v34, "idx3":I
    add-int v35, v27, v34

    .line 2741
    .local v35, "oidx1":I
    add-int v36, v25, v34

    .line 2742
    .local v36, "iidx1":I
    add-int/lit8 v37, v36, -0x1

    aget-wide v37, v5, v37

    .line 2743
    .local v37, "i1i":D
    aget-wide v39, v5, v36

    .line 2745
    .local v39, "i1r":D
    add-int/lit8 v41, v35, -0x1

    mul-double v42, v10, v37

    mul-double v44, v28, v39

    add-double v42, v42, v44

    aput-wide v42, v7, v41

    .line 2746
    mul-double v41, v10, v39

    mul-double v43, v28, v37

    sub-double v41, v41, v43

    aput-wide v41, v7, v35

    .line 2738
    .end local v34    # "idx3":I
    .end local v35    # "oidx1":I
    .end local v36    # "iidx1":I
    .end local v37    # "i1i":D
    .end local v39    # "i1r":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_98

    .line 2731
    .end local v4    # "k":I
    .end local v22    # "idx2":I
    .end local v25    # "idx4":I
    .end local v27    # "idx5":I
    :cond_bd
    add-int/lit8 v22, v15, 0x2

    .end local v15    # "i":I
    .local v22, "i":I
    move/from16 v15, v30

    move-wide/from16 v10, v31

    move/from16 v4, p4

    goto :goto_7a

    .line 2727
    .end local v22    # "i":I
    .end local v23    # "idx1":I
    .end local v28    # "w1i":D
    .end local v31    # "dcp":D
    .local v10, "dcp":D
    :cond_c6
    move-wide/from16 v31, v10

    .end local v10    # "dcp":D
    .restart local v31    # "dcp":D
    add-int/lit8 v14, v14, 0x1

    move/from16 v15, v30

    move/from16 v4, p4

    goto :goto_6d

    .line 2774
    .end local v14    # "j":I
    .end local v24    # "idij":I
    .end local v30    # "is":I
    .end local v31    # "dcp":D
    .restart local v10    # "dcp":D
    .local v15, "is":I
    :cond_cf
    move-wide/from16 v31, v10

    move/from16 v46, v9

    .end local v10    # "dcp":D
    .restart local v31    # "dcp":D
    goto :goto_130

    .line 2751
    .end local v15    # "is":I
    .end local v31    # "dcp":D
    .restart local v10    # "dcp":D
    :cond_d4
    move-wide/from16 v31, v10

    .end local v10    # "dcp":D
    .restart local v31    # "dcp":D
    neg-int v4, v1

    .line 2752
    .local v4, "is":I
    move v15, v4

    const/4 v4, 0x1

    .local v4, "j":I
    .restart local v15    # "is":I
    :goto_d9
    if-ge v4, v2, :cond_12e

    .line 2753
    add-int/2addr v15, v1

    .line 2754
    mul-int v10, v4, v3

    mul-int/2addr v10, v1

    .line 2755
    .local v10, "idx1":I
    move/from16 v11, v16

    .local v11, "k":I
    :goto_e1
    if-ge v11, v3, :cond_129

    .line 2756
    add-int/lit8 v14, v15, -0x1

    .line 2757
    .local v14, "idij":I
    mul-int v22, v11, v1

    add-int v22, v22, v10

    .line 2758
    .local v22, "idx3":I
    move/from16 v23, v14

    move/from16 v14, v17

    .local v14, "i":I
    .local v23, "idij":I
    :goto_ed
    if-ge v14, v1, :cond_124

    .line 2759
    add-int/lit8 v23, v23, 0x2

    .line 2760
    add-int v24, v23, v9

    .line 2761
    .local v24, "idx2":I
    move/from16 v46, v9

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    .end local v9    # "iw1":I
    .local v46, "iw1":I
    add-int/lit8 v25, v24, -0x1

    aget-wide v27, v9, v25

    .line 2762
    .local v27, "w1r":D
    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v29, v9, v24

    .line 2763
    .local v29, "w1i":D
    add-int v9, v8, v14

    add-int v9, v9, v22

    .line 2764
    .local v9, "oidx1":I
    add-int v25, v6, v14

    add-int v25, v25, v22

    .line 2765
    .local v25, "iidx1":I
    add-int/lit8 v34, v25, -0x1

    aget-wide v34, v5, v34

    .line 2766
    .local v34, "i1i":D
    aget-wide v36, v5, v25

    .line 2768
    .local v36, "i1r":D
    add-int/lit8 v38, v9, -0x1

    mul-double v39, v27, v34

    mul-double v41, v29, v36

    add-double v39, v39, v41

    aput-wide v39, v7, v38

    .line 2769
    mul-double v38, v27, v36

    mul-double v40, v29, v34

    sub-double v38, v38, v40

    aput-wide v38, v7, v9

    .line 2758
    .end local v9    # "oidx1":I
    .end local v24    # "idx2":I
    .end local v25    # "iidx1":I
    .end local v34    # "i1i":D
    .end local v36    # "i1r":D
    add-int/lit8 v14, v14, 0x2

    move/from16 v9, v46

    goto :goto_ed

    .line 2755
    .end local v14    # "i":I
    .end local v22    # "idx3":I
    .end local v27    # "w1r":D
    .end local v29    # "w1i":D
    .end local v46    # "iw1":I
    .local v9, "iw1":I
    :cond_124
    move/from16 v46, v9

    .end local v9    # "iw1":I
    .restart local v46    # "iw1":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_e1

    .line 2752
    .end local v10    # "idx1":I
    .end local v11    # "k":I
    .end local v23    # "idij":I
    .end local v46    # "iw1":I
    .restart local v9    # "iw1":I
    :cond_129
    move/from16 v46, v9

    .end local v9    # "iw1":I
    .restart local v46    # "iw1":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_d9

    .line 2774
    .end local v4    # "j":I
    .end local v46    # "iw1":I
    .restart local v9    # "iw1":I
    :cond_12e
    move/from16 v46, v9

    .end local v9    # "iw1":I
    .restart local v46    # "iw1":I
    :goto_130
    if-lt v13, v3, :cond_18f

    .line 2775
    const/4 v4, 0x1

    .restart local v4    # "j":I
    :goto_133
    if-ge v4, v12, :cond_18c

    .line 2776
    sub-int v9, v2, v4

    .line 2777
    .local v9, "jc":I
    mul-int v10, v4, v3

    mul-int/2addr v10, v1

    .line 2778
    .restart local v10    # "idx1":I
    mul-int v11, v9, v3

    mul-int/2addr v11, v1

    .line 2779
    .local v11, "idx2":I
    move/from16 v14, v16

    .local v14, "k":I
    :goto_13f
    if-ge v14, v3, :cond_187

    .line 2780
    mul-int v22, v14, v1

    add-int v22, v22, v10

    .line 2781
    .restart local v22    # "idx3":I
    mul-int v23, v14, v1

    add-int v23, v23, v11

    .line 2782
    .local v23, "idx4":I
    move/from16 v24, v17

    .local v24, "i":I
    :goto_14b
    move/from16 v47, v24

    .end local v24    # "i":I
    .local v47, "i":I
    move/from16 v0, v47

    if-ge v0, v1, :cond_182

    .line 2783
    .end local v47    # "i":I
    .local v0, "i":I
    add-int v24, v6, v0

    .line 2784
    .local v24, "idx5":I
    add-int v25, v8, v0

    .line 2785
    .local v25, "idx6":I
    add-int v27, v24, v22

    .line 2786
    .local v27, "iidx1":I
    add-int v28, v24, v23

    .line 2787
    .local v28, "iidx2":I
    add-int v29, v25, v22

    .line 2788
    .local v29, "oidx1":I
    add-int v30, v25, v23

    .line 2789
    .local v30, "oidx2":I
    add-int/lit8 v34, v29, -0x1

    aget-wide v34, v7, v34

    .line 2790
    .local v34, "o1i":D
    aget-wide v36, v7, v29

    .line 2791
    .local v36, "o1r":D
    add-int/lit8 v38, v30, -0x1

    aget-wide v38, v7, v38

    .line 2792
    .local v38, "o2i":D
    aget-wide v40, v7, v30

    .line 2794
    .local v40, "o2r":D
    add-int/lit8 v42, v27, -0x1

    add-double v43, v34, v38

    aput-wide v43, v5, v42

    .line 2795
    add-double v42, v36, v40

    aput-wide v42, v5, v27

    .line 2797
    add-int/lit8 v42, v28, -0x1

    sub-double v43, v36, v40

    aput-wide v43, v5, v42

    .line 2798
    sub-double v42, v38, v34

    aput-wide v42, v5, v28

    .line 2782
    .end local v24    # "idx5":I
    .end local v25    # "idx6":I
    .end local v27    # "iidx1":I
    .end local v28    # "iidx2":I
    .end local v29    # "oidx1":I
    .end local v30    # "oidx2":I
    .end local v34    # "o1i":D
    .end local v36    # "o1r":D
    .end local v38    # "o2i":D
    .end local v40    # "o2r":D
    add-int/lit8 v24, v0, 0x2

    .end local v0    # "i":I
    .local v24, "i":I
    move-object/from16 v0, p0

    goto :goto_14b

    .line 2779
    .end local v22    # "idx3":I
    .end local v23    # "idx4":I
    .end local v24    # "i":I
    :cond_182
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    goto :goto_13f

    .line 2775
    .end local v10    # "idx1":I
    .end local v11    # "idx2":I
    .end local v14    # "k":I
    :cond_187
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_133

    .line 2833
    .end local v4    # "j":I
    .end local v9    # "jc":I
    :cond_18c
    move/from16 v0, p4

    goto :goto_1f4

    .line 2803
    :cond_18f
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_190
    if-ge v0, v12, :cond_18c

    .line 2804
    sub-int v4, v2, v0

    .line 2805
    .local v4, "jc":I
    mul-int v9, v0, v3

    mul-int/2addr v9, v1

    .line 2806
    .local v9, "idx1":I
    mul-int v10, v4, v3

    mul-int/2addr v10, v1

    .line 2807
    .local v10, "idx2":I
    move/from16 v11, v17

    .local v11, "i":I
    :goto_19c
    if-ge v11, v1, :cond_1e6

    .line 2808
    add-int v14, v6, v11

    .line 2809
    .local v14, "idx5":I
    add-int v22, v8, v11

    .line 2810
    .local v22, "idx6":I
    move/from16 v23, v16

    .local v23, "k":I
    :goto_1a4
    move/from16 v48, v23

    .end local v23    # "k":I
    .local v48, "k":I
    move/from16 v49, v4

    move/from16 v4, v48

    if-ge v4, v3, :cond_1e1

    .line 2811
    .end local v48    # "k":I
    .local v4, "k":I
    .local v49, "jc":I
    mul-int v48, v4, v1

    add-int v48, v48, v9

    .line 2812
    .local v48, "idx3":I
    mul-int v23, v4, v1

    add-int v23, v23, v10

    .line 2813
    .local v23, "idx4":I
    add-int v24, v14, v48

    .line 2814
    .local v24, "iidx1":I
    add-int v25, v14, v23

    .line 2815
    .local v25, "iidx2":I
    add-int v27, v22, v48

    .line 2816
    .local v27, "oidx1":I
    add-int v28, v22, v23

    .line 2817
    .local v28, "oidx2":I
    add-int/lit8 v29, v27, -0x1

    aget-wide v29, v7, v29

    .line 2818
    .local v29, "o1i":D
    aget-wide v34, v7, v27

    .line 2819
    .local v34, "o1r":D
    add-int/lit8 v36, v28, -0x1

    aget-wide v36, v7, v36

    .line 2820
    .local v36, "o2i":D
    aget-wide v38, v7, v28

    .line 2822
    .local v38, "o2r":D
    add-int/lit8 v40, v24, -0x1

    add-double v41, v29, v36

    aput-wide v41, v5, v40

    .line 2823
    add-double v40, v34, v38

    aput-wide v40, v5, v24

    .line 2824
    add-int/lit8 v40, v25, -0x1

    sub-double v41, v34, v38

    aput-wide v41, v5, v40

    .line 2825
    sub-double v40, v36, v29

    aput-wide v40, v5, v25

    .line 2810
    .end local v23    # "idx4":I
    .end local v24    # "iidx1":I
    .end local v25    # "iidx2":I
    .end local v27    # "oidx1":I
    .end local v28    # "oidx2":I
    .end local v29    # "o1i":D
    .end local v34    # "o1r":D
    .end local v36    # "o2i":D
    .end local v38    # "o2r":D
    .end local v48    # "idx3":I
    add-int/lit8 v23, v4, 0x1

    .end local v4    # "k":I
    .local v23, "k":I
    move/from16 v4, v49

    goto :goto_1a4

    .line 2807
    .end local v14    # "idx5":I
    .end local v22    # "idx6":I
    .end local v23    # "k":I
    :cond_1e1
    add-int/lit8 v11, v11, 0x2

    move/from16 v4, v49

    goto :goto_19c

    .line 2803
    .end local v9    # "idx1":I
    .end local v10    # "idx2":I
    .end local v11    # "i":I
    .end local v49    # "jc":I
    .local v4, "jc":I
    :cond_1e6
    move/from16 v49, v4

    .end local v4    # "jc":I
    .restart local v49    # "jc":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_190

    .line 2831
    .end local v0    # "j":I
    .end local v15    # "is":I
    .end local v31    # "dcp":D
    .end local v46    # "iw1":I
    .end local v49    # "jc":I
    .local v9, "iw1":I
    .local v10, "dcp":D
    :cond_1eb
    move/from16 v46, v9

    move-wide/from16 v31, v10

    .end local v9    # "iw1":I
    .end local v10    # "dcp":D
    .restart local v31    # "dcp":D
    .restart local v46    # "iw1":I
    move/from16 v0, p4

    invoke-static {v7, v8, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2833
    :goto_1f4
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_1f5
    if-ge v4, v12, :cond_224

    .line 2834
    sub-int v9, v2, v4

    .line 2835
    .local v9, "jc":I
    mul-int v10, v4, v3

    mul-int/2addr v10, v1

    .line 2836
    .local v10, "idx1":I
    mul-int v11, v9, v3

    mul-int/2addr v11, v1

    .line 2837
    .local v11, "idx2":I
    move/from16 v14, v16

    .local v14, "k":I
    :goto_201
    if-ge v14, v3, :cond_221

    .line 2838
    mul-int v15, v14, v1

    add-int/2addr v15, v10

    .line 2839
    .local v15, "idx3":I
    mul-int v22, v14, v1

    add-int v22, v22, v11

    .line 2840
    .local v22, "idx4":I
    add-int v23, v8, v15

    .line 2841
    .local v23, "oidx1":I
    add-int v24, v8, v22

    .line 2842
    .local v24, "oidx2":I
    aget-wide v27, v7, v23

    .line 2843
    .local v27, "o1r":D
    aget-wide v29, v7, v24

    .line 2845
    .local v29, "o2r":D
    add-int v25, v6, v15

    add-double v33, v27, v29

    aput-wide v33, v5, v25

    .line 2846
    add-int v25, v6, v22

    sub-double v33, v29, v27

    aput-wide v33, v5, v25

    .line 2837
    .end local v15    # "idx3":I
    .end local v22    # "idx4":I
    .end local v23    # "oidx1":I
    .end local v24    # "oidx2":I
    .end local v27    # "o1r":D
    .end local v29    # "o2r":D
    add-int/lit8 v14, v14, 0x1

    goto :goto_201

    .line 2833
    .end local v10    # "idx1":I
    .end local v11    # "idx2":I
    .end local v14    # "k":I
    :cond_221
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f5

    .line 2850
    .end local v4    # "j":I
    .end local v9    # "jc":I
    :cond_224
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 2851
    .local v9, "ar1":D
    const-wide/16 v14, 0x0

    .line 2852
    .local v14, "ai1":D
    add-int/lit8 v4, v2, -0x1

    mul-int/2addr v4, v0

    .line 2853
    .local v4, "idx0":I
    move-wide v10, v9

    const/4 v9, 0x1

    .local v9, "l":I
    .local v10, "ar1":D
    :goto_22d
    if-ge v9, v12, :cond_2ca

    .line 2854
    sub-int v22, v2, v9

    .line 2855
    .local v22, "lc":I
    mul-double v23, v31, v10

    mul-double v27, v20, v14

    sub-double v23, v23, v27

    .line 2856
    .local v23, "ar1h":D
    mul-double v27, v31, v14

    mul-double v29, v20, v10

    add-double v14, v27, v29

    .line 2857
    move-wide/from16 v10, v23

    .line 2858
    mul-int v25, v9, v0

    .line 2859
    .local v25, "idx1":I
    mul-int v27, v22, v0

    .line 2860
    .local v27, "idx2":I
    move/from16 v28, v16

    .local v28, "ik":I
    :goto_245
    move/from16 v50, v28

    .end local v28    # "ik":I
    .local v50, "ik":I
    move/from16 v51, v13

    move/from16 v13, v50

    if-ge v13, v0, :cond_26e

    .line 2861
    .end local v50    # "ik":I
    .local v13, "ik":I
    .local v51, "nbd":I
    add-int v28, v8, v13

    .line 2862
    .local v28, "idx3":I
    add-int v29, v6, v13

    .line 2863
    .local v29, "idx4":I
    add-int v30, v28, v25

    aget-wide v33, v5, v29

    add-int v35, v29, v0

    aget-wide v35, v5, v35

    mul-double v35, v35, v10

    add-double v33, v33, v35

    aput-wide v33, v7, v30

    .line 2864
    add-int v30, v28, v27

    add-int v33, v29, v4

    aget-wide v33, v5, v33

    mul-double v33, v33, v14

    aput-wide v33, v7, v30

    .line 2860
    .end local v28    # "idx3":I
    .end local v29    # "idx4":I
    add-int/lit8 v28, v13, 0x1

    .end local v13    # "ik":I
    .local v28, "ik":I
    move/from16 v13, v51

    goto :goto_245

    .line 2866
    .end local v28    # "ik":I
    :cond_26e
    move-wide/from16 v28, v10

    .line 2867
    .local v28, "dc2":D
    move-wide/from16 v33, v14

    .line 2868
    .local v33, "ds2":D
    move-wide/from16 v35, v10

    .line 2869
    .local v35, "ar2":D
    move-wide/from16 v37, v14

    .line 2870
    .local v37, "ai2":D
    move/from16 v13, v17

    .local v13, "j":I
    :goto_278
    if-ge v13, v12, :cond_2c2

    .line 2871
    sub-int v30, v2, v13

    .line 2872
    .local v30, "jc":I
    mul-double v39, v28, v35

    mul-double v41, v33, v37

    sub-double v39, v39, v41

    .line 2873
    .local v39, "ar2h":D
    mul-double v41, v28, v37

    mul-double v43, v33, v35

    add-double v37, v41, v43

    .line 2874
    move-wide/from16 v35, v39

    .line 2875
    mul-int v41, v13, v0

    .line 2876
    .local v41, "idx3":I
    mul-int v42, v30, v0

    .line 2877
    .local v42, "idx4":I
    move/from16 v43, v16

    .local v43, "ik":I
    :goto_290
    move/from16 v52, v43

    .end local v43    # "ik":I
    .local v52, "ik":I
    move/from16 v53, v4

    move/from16 v4, v52

    if-ge v4, v0, :cond_2bd

    .line 2878
    .end local v52    # "ik":I
    .local v4, "ik":I
    .local v53, "idx0":I
    add-int v43, v8, v4

    .line 2879
    .local v43, "idx5":I
    add-int v44, v6, v4

    .line 2880
    .local v44, "idx6":I
    add-int v45, v43, v25

    aget-wide v48, v7, v45

    add-int v47, v44, v41

    aget-wide v54, v5, v47

    mul-double v54, v54, v35

    add-double v48, v48, v54

    aput-wide v48, v7, v45

    .line 2881
    add-int v45, v43, v27

    aget-wide v48, v7, v45

    add-int v47, v44, v42

    aget-wide v54, v5, v47

    mul-double v54, v54, v37

    add-double v48, v48, v54

    aput-wide v48, v7, v45

    .line 2877
    .end local v43    # "idx5":I
    .end local v44    # "idx6":I
    add-int/lit8 v43, v4, 0x1

    .end local v4    # "ik":I
    .local v43, "ik":I
    move/from16 v4, v53

    goto :goto_290

    .line 2870
    .end local v41    # "idx3":I
    .end local v42    # "idx4":I
    .end local v43    # "ik":I
    :cond_2bd
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v53

    goto :goto_278

    .line 2853
    .end local v13    # "j":I
    .end local v25    # "idx1":I
    .end local v27    # "idx2":I
    .end local v30    # "jc":I
    .end local v39    # "ar2h":D
    .end local v53    # "idx0":I
    .local v4, "idx0":I
    :cond_2c2
    move/from16 v53, v4

    .end local v4    # "idx0":I
    .restart local v53    # "idx0":I
    add-int/lit8 v9, v9, 0x1

    move/from16 v13, v51

    goto/16 :goto_22d

    .line 2885
    .end local v9    # "l":I
    .end local v22    # "lc":I
    .end local v23    # "ar1h":D
    .end local v28    # "dc2":D
    .end local v33    # "ds2":D
    .end local v35    # "ar2":D
    .end local v37    # "ai2":D
    .end local v51    # "nbd":I
    .end local v53    # "idx0":I
    .restart local v4    # "idx0":I
    .local v13, "nbd":I
    :cond_2ca
    move/from16 v53, v4

    move/from16 v51, v13

    .end local v4    # "idx0":I
    .end local v13    # "nbd":I
    .restart local v51    # "nbd":I
    .restart local v53    # "idx0":I
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_2cf
    if-ge v4, v12, :cond_2eb

    .line 2886
    mul-int v9, v4, v0

    .line 2887
    .local v9, "idx1":I
    move/from16 v13, v16

    .local v13, "ik":I
    :goto_2d5
    if-ge v13, v0, :cond_2e8

    .line 2888
    add-int v22, v8, v13

    aget-wide v23, v7, v22

    add-int v25, v6, v13

    add-int v25, v25, v9

    aget-wide v27, v5, v25

    add-double v23, v23, v27

    aput-wide v23, v7, v22

    .line 2887
    add-int/lit8 v13, v13, 0x1

    goto :goto_2d5

    .line 2885
    .end local v9    # "idx1":I
    .end local v13    # "ik":I
    :cond_2e8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2cf

    .line 2892
    .end local v4    # "j":I
    :cond_2eb
    if-lt v1, v3, :cond_313

    .line 2893
    move/from16 v4, v16

    .local v4, "k":I
    :goto_2ef
    if-ge v4, v3, :cond_331

    .line 2894
    mul-int v9, v4, v1

    .line 2895
    .restart local v9    # "idx1":I
    mul-int v13, v9, v2

    .line 2896
    .local v13, "idx2":I
    move/from16 v22, v16

    .local v22, "i":I
    :goto_2f7
    move/from16 v56, v22

    .end local v22    # "i":I
    .local v56, "i":I
    move/from16 v0, v56

    if-ge v0, v1, :cond_30e

    .line 2897
    .end local v56    # "i":I
    .local v0, "i":I
    add-int v22, v6, v0

    add-int v22, v22, v13

    add-int v23, v8, v0

    add-int v23, v23, v9

    aget-wide v23, v7, v23

    aput-wide v23, v5, v22

    .line 2896
    add-int/lit8 v22, v0, 0x1

    .end local v0    # "i":I
    .restart local v22    # "i":I
    move/from16 v0, p4

    goto :goto_2f7

    .line 2893
    .end local v9    # "idx1":I
    .end local v13    # "idx2":I
    .end local v22    # "i":I
    :cond_30e
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p4

    goto :goto_2ef

    .line 2901
    .end local v4    # "k":I
    :cond_313
    move/from16 v0, v16

    .restart local v0    # "i":I
    :goto_315
    if-ge v0, v1, :cond_331

    .line 2902
    move/from16 v4, v16

    .restart local v4    # "k":I
    :goto_319
    if-ge v4, v3, :cond_32e

    .line 2903
    mul-int v9, v4, v1

    .line 2904
    .restart local v9    # "idx1":I
    add-int v13, v6, v0

    mul-int v22, v9, v2

    add-int v13, v13, v22

    add-int v22, v8, v0

    add-int v22, v22, v9

    aget-wide v22, v7, v22

    aput-wide v22, v5, v13

    .line 2902
    .end local v9    # "idx1":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_319

    .line 2901
    .end local v4    # "k":I
    :cond_32e
    add-int/lit8 v0, v0, 0x1

    goto :goto_315

    .line 2908
    .end local v0    # "i":I
    :cond_331
    mul-int v0, v2, v1

    .line 2909
    .local v0, "idx01":I
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_334
    if-ge v4, v12, :cond_37a

    .line 2910
    sub-int v9, v2, v4

    .line 2911
    .local v9, "jc":I
    mul-int v13, v17, v4

    .line 2912
    .local v13, "j2":I
    mul-int v22, v4, v3

    mul-int v22, v22, v1

    .line 2913
    .local v22, "idx1":I
    mul-int v23, v9, v3

    mul-int v23, v23, v1

    .line 2914
    .local v23, "idx2":I
    mul-int v24, v13, v1

    .line 2915
    .local v24, "idx3":I
    move/from16 v25, v16

    .local v25, "k":I
    :goto_346
    move/from16 v57, v25

    .end local v25    # "k":I
    .local v57, "k":I
    move/from16 v58, v9

    move/from16 v9, v57

    if-ge v9, v3, :cond_377

    .line 2916
    .end local v57    # "k":I
    .local v9, "k":I
    .local v58, "jc":I
    mul-int v57, v9, v1

    .line 2917
    .local v57, "idx4":I
    add-int v25, v57, v22

    .line 2918
    .local v25, "idx5":I
    add-int v27, v57, v23

    .line 2919
    .local v27, "idx6":I
    mul-int v28, v9, v0

    .line 2920
    .local v28, "idx7":I
    add-int v29, v6, v1

    const/16 v26, 0x1

    add-int/lit8 v29, v29, -0x1

    add-int v29, v29, v24

    sub-int v29, v29, v1

    add-int v29, v29, v28

    add-int v30, v8, v25

    aget-wide v33, v7, v30

    aput-wide v33, v5, v29

    .line 2921
    add-int v29, v6, v24

    add-int v29, v29, v28

    add-int v30, v8, v27

    aget-wide v33, v7, v30

    aput-wide v33, v5, v29

    .line 2915
    .end local v25    # "idx5":I
    .end local v27    # "idx6":I
    .end local v28    # "idx7":I
    .end local v57    # "idx4":I
    add-int/lit8 v25, v9, 0x1

    .end local v9    # "k":I
    .local v25, "k":I
    move/from16 v9, v58

    goto :goto_346

    .line 2909
    .end local v22    # "idx1":I
    .end local v23    # "idx2":I
    .end local v24    # "idx3":I
    .end local v25    # "k":I
    :cond_377
    add-int/lit8 v4, v4, 0x1

    goto :goto_334

    .line 2924
    .end local v4    # "j":I
    .end local v13    # "j2":I
    .end local v58    # "jc":I
    :cond_37a
    const/4 v4, 0x1

    if-ne v1, v4, :cond_37e

    .line 2925
    return-void-no-barrier

    .line 2926
    :cond_37e
    move/from16 v13, v51

    if-lt v13, v3, :cond_3fa

    .line 2927
    .end local v51    # "nbd":I
    .local v13, "nbd":I
    nop

    .restart local v4    # "j":I
    :goto_383
    if-ge v4, v12, :cond_3f6

    .line 2928
    sub-int v9, v2, v4

    .line 2929
    .local v9, "jc":I
    mul-int v22, v17, v4

    .line 2930
    .local v22, "j2":I
    mul-int v23, v4, v3

    mul-int v23, v23, v1

    .line 2931
    .local v23, "idx1":I
    mul-int v24, v9, v3

    mul-int v24, v24, v1

    .line 2932
    .local v24, "idx2":I
    mul-int v25, v22, v1

    .line 2933
    .local v25, "idx3":I
    move/from16 v26, v16

    .local v26, "k":I
    :goto_395
    move/from16 v59, v26

    .end local v26    # "k":I
    .local v59, "k":I
    move/from16 v60, v9

    move/from16 v9, v59

    if-ge v9, v3, :cond_3f1

    .line 2934
    .end local v59    # "k":I
    .local v9, "k":I
    .local v60, "jc":I
    mul-int v59, v9, v0

    .line 2935
    .local v59, "idx4":I
    mul-int v26, v9, v1

    .line 2936
    .local v26, "idx5":I
    move/from16 v27, v17

    .local v27, "i":I
    :goto_3a3
    move/from16 v61, v27

    .end local v27    # "i":I
    .local v61, "i":I
    move-wide/from16 v62, v10

    move/from16 v10, v61

    if-ge v10, v1, :cond_3ea

    .line 2937
    .end local v61    # "i":I
    .local v10, "i":I
    .local v62, "ar1":D
    sub-int v11, v1, v10

    .line 2938
    .local v11, "ic":I
    add-int v27, v6, v10

    .line 2939
    .local v27, "idx6":I
    add-int v28, v6, v11

    .line 2940
    .restart local v28    # "idx7":I
    add-int v29, v8, v10

    .line 2941
    .local v29, "idx8":I
    add-int v30, v27, v25

    add-int v30, v30, v59

    .line 2942
    .local v30, "iidx1":I
    add-int v33, v28, v25

    sub-int v33, v33, v1

    add-int v33, v33, v59

    .line 2943
    .local v33, "iidx2":I
    add-int v34, v29, v26

    add-int v34, v34, v23

    .line 2944
    .local v34, "oidx1":I
    add-int v35, v29, v26

    add-int v35, v35, v24

    .line 2945
    .local v35, "oidx2":I
    add-int/lit8 v36, v34, -0x1

    aget-wide v36, v7, v36

    .line 2946
    .local v36, "o1i":D
    aget-wide v38, v7, v34

    .line 2947
    .local v38, "o1r":D
    add-int/lit8 v40, v35, -0x1

    aget-wide v40, v7, v40

    .line 2948
    .local v40, "o2i":D
    aget-wide v42, v7, v35

    .line 2950
    .local v42, "o2r":D
    add-int/lit8 v44, v30, -0x1

    add-double v48, v36, v40

    aput-wide v48, v5, v44

    .line 2951
    add-int/lit8 v44, v33, -0x1

    sub-double v48, v36, v40

    aput-wide v48, v5, v44

    .line 2952
    add-double v44, v38, v42

    aput-wide v44, v5, v30

    .line 2953
    sub-double v44, v42, v38

    aput-wide v44, v5, v33

    .line 2936
    .end local v27    # "idx6":I
    .end local v28    # "idx7":I
    .end local v29    # "idx8":I
    .end local v30    # "iidx1":I
    .end local v33    # "iidx2":I
    .end local v34    # "oidx1":I
    .end local v35    # "oidx2":I
    .end local v36    # "o1i":D
    .end local v38    # "o1r":D
    .end local v40    # "o2i":D
    .end local v42    # "o2r":D
    add-int/lit8 v27, v10, 0x2

    .end local v10    # "i":I
    .local v27, "i":I
    move-wide/from16 v10, v62

    goto :goto_3a3

    .line 2933
    .end local v11    # "ic":I
    .end local v26    # "idx5":I
    .end local v27    # "i":I
    .end local v59    # "idx4":I
    :cond_3ea
    add-int/lit8 v26, v9, 0x1

    .end local v9    # "k":I
    .local v26, "k":I
    move/from16 v9, v60

    move-wide/from16 v10, v62

    goto :goto_395

    .line 2927
    .end local v23    # "idx1":I
    .end local v24    # "idx2":I
    .end local v25    # "idx3":I
    .end local v26    # "k":I
    .end local v62    # "ar1":D
    .local v10, "ar1":D
    :cond_3f1
    move-wide/from16 v62, v10

    .end local v10    # "ar1":D
    .restart local v62    # "ar1":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_383

    .line 2989
    .end local v4    # "j":I
    .end local v22    # "j2":I
    .end local v60    # "jc":I
    .end local v62    # "ar1":D
    .restart local v10    # "ar1":D
    :cond_3f6
    move-wide/from16 v62, v10

    .end local v10    # "ar1":D
    .restart local v62    # "ar1":D
    goto/16 :goto_46e

    .line 2958
    .end local v62    # "ar1":D
    .restart local v10    # "ar1":D
    :cond_3fa
    move-wide/from16 v62, v10

    .end local v10    # "ar1":D
    .restart local v4    # "j":I
    .restart local v62    # "ar1":D
    :goto_3fc
    if-ge v4, v12, :cond_46e

    .line 2959
    sub-int v9, v2, v4

    .line 2960
    .local v9, "jc":I
    mul-int v10, v17, v4

    .line 2961
    .local v10, "j2":I
    mul-int v11, v4, v3

    mul-int/2addr v11, v1

    .line 2962
    .local v11, "idx1":I
    mul-int v22, v9, v3

    mul-int v22, v22, v1

    .line 2963
    .local v22, "idx2":I
    mul-int v23, v10, v1

    .line 2964
    .local v23, "idx3":I
    move/from16 v24, v17

    .local v24, "i":I
    :goto_40d
    move/from16 v64, v24

    .end local v24    # "i":I
    .local v64, "i":I
    move/from16 v2, v64

    if-ge v2, v1, :cond_467

    .line 2965
    .end local v64    # "i":I
    .local v2, "i":I
    sub-int v24, v1, v2

    .line 2966
    .local v24, "ic":I
    add-int v25, v6, v2

    .line 2967
    .local v25, "idx6":I
    add-int v26, v6, v24

    .line 2968
    .local v26, "idx7":I
    add-int v27, v8, v2

    .line 2969
    .local v27, "idx8":I
    move/from16 v28, v16

    .local v28, "k":I
    :goto_41d
    move/from16 v65, v28

    .end local v28    # "k":I
    .local v65, "k":I
    move/from16 v6, v65

    if-ge v6, v3, :cond_45e

    .line 2970
    .end local v65    # "k":I
    .local v6, "k":I
    mul-int v65, v6, v0

    .line 2971
    .local v65, "idx4":I
    mul-int v28, v6, v1

    .line 2972
    .local v28, "idx5":I
    add-int v29, v25, v23

    add-int v29, v29, v65

    .line 2973
    .local v29, "iidx1":I
    add-int v30, v26, v23

    sub-int v30, v30, v1

    add-int v30, v30, v65

    .line 2974
    .local v30, "iidx2":I
    add-int v33, v27, v28

    add-int v33, v33, v11

    .line 2975
    .local v33, "oidx1":I
    add-int v34, v27, v28

    add-int v34, v34, v22

    .line 2976
    .local v34, "oidx2":I
    add-int/lit8 v35, v33, -0x1

    aget-wide v35, v7, v35

    .line 2977
    .local v35, "o1i":D
    aget-wide v37, v7, v33

    .line 2978
    .local v37, "o1r":D
    add-int/lit8 v39, v34, -0x1

    aget-wide v39, v7, v39

    .line 2979
    .local v39, "o2i":D
    aget-wide v41, v7, v34

    .line 2981
    .local v41, "o2r":D
    add-int/lit8 v43, v29, -0x1

    add-double v44, v35, v39

    aput-wide v44, v5, v43

    .line 2982
    add-int/lit8 v43, v30, -0x1

    sub-double v44, v35, v39

    aput-wide v44, v5, v43

    .line 2983
    add-double v43, v37, v41

    aput-wide v43, v5, v29

    .line 2984
    sub-double v43, v41, v37

    aput-wide v43, v5, v30

    .line 2969
    .end local v28    # "idx5":I
    .end local v29    # "iidx1":I
    .end local v30    # "iidx2":I
    .end local v33    # "oidx1":I
    .end local v34    # "oidx2":I
    .end local v35    # "o1i":D
    .end local v37    # "o1r":D
    .end local v39    # "o2i":D
    .end local v41    # "o2r":D
    .end local v65    # "idx4":I
    add-int/lit8 v28, v6, 0x1

    .end local v6    # "k":I
    .local v28, "k":I
    move/from16 v6, p6

    goto :goto_41d

    .line 2964
    .end local v25    # "idx6":I
    .end local v26    # "idx7":I
    .end local v27    # "idx8":I
    .end local v28    # "k":I
    :cond_45e
    add-int/lit8 v2, v2, 0x2

    move/from16 v24, v2

    move/from16 v2, p2

    move/from16 v6, p6

    goto :goto_40d

    .line 2958
    .end local v2    # "i":I
    .end local v11    # "idx1":I
    .end local v22    # "idx2":I
    .end local v23    # "idx3":I
    .end local v24    # "ic":I
    :cond_467
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, p2

    move/from16 v6, p6

    goto :goto_3fc

    .line 2989
    .end local v4    # "j":I
    .end local v9    # "jc":I
    .end local v10    # "j2":I
    :cond_46e
    :goto_46e
    return-void-no-barrier
.end method

.method public realForward([D)V
    .registers 3
    .param p1, "a"    # [D

    .line 273
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    .line 274
    return-void-no-barrier
.end method

.method public realForward([DI)V
    .registers 11
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    .line 305
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 306
    return-void-no-barrier

    .line 308
    :cond_6
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_70

    goto :goto_6e

    .line 332
    :pswitch_14
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_forward([DI)V

    goto :goto_6e

    .line 323
    :pswitch_18
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    .line 324
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v0, v1

    .local v0, "k":I
    :goto_1e
    const/4 v1, 0x2

    if-lt v0, v1, :cond_32

    .line 325
    add-int v1, p2, v0

    .line 326
    .local v1, "idx":I
    aget-wide v2, p1, v1

    .line 327
    .local v2, "tmp":D
    add-int/lit8 v4, v1, -0x1

    aget-wide v4, p1, v4

    aput-wide v4, p1, v1

    .line 328
    add-int/lit8 v4, v1, -0x1

    aput-wide v2, p1, v4

    .line 324
    .end local v1    # "idx":I
    .end local v2    # "tmp":D
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 330
    .end local v0    # "k":I
    :cond_32
    goto :goto_6e

    .line 312
    :pswitch_33
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_52

    .line 313
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 314
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rftfsub(I[DII[DI)V

    goto :goto_59

    .line 315
    :cond_52
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ne v0, v1, :cond_59

    .line 316
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftx020([DI)V

    .line 318
    :cond_59
    :goto_59
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    .line 319
    .local v0, "xi":D
    aget-wide v2, p1, p2

    add-int/lit8 v4, p2, 0x1

    aget-wide v4, p1, v4

    add-double/2addr v2, v4

    aput-wide v2, p1, p2

    .line 320
    add-int/lit8 v2, p2, 0x1

    aput-wide v0, p1, v2

    .line 321
    nop

    .line 335
    .end local v0    # "xi":D
    :goto_6e
    return-void-no-barrier

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_33
        :pswitch_18
        :pswitch_14
    .end packed-switch
.end method

.method public realForwardFull([D)V
    .registers 3
    .param p1, "a"    # [D

    .line 349
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForwardFull([DI)V

    .line 350
    return-void-no-barrier
.end method

.method public realForwardFull([DI)V
    .registers 22
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 366
    move/from16 v9, p2

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v10, 0x2

    mul-int v11, v10, v0

    .line 367
    .local v11, "twon":I
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v12, 0x0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_e6

    goto/16 :goto_e5

    .line 425
    :pswitch_1d
    const/4 v0, -0x1

    invoke-direct {v7, v8, v9, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_full([DII)V

    goto/16 :goto_e5

    .line 403
    :pswitch_23
    invoke-virtual/range {p0 .. p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    .line 405
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/2addr v0, v10

    if-nez v0, :cond_2f

    .line 406
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v10

    .local v0, "m":I
    goto :goto_33

    .line 408
    .end local v0    # "m":I
    :cond_2f
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, v1

    div-int/2addr v0, v10

    .line 410
    .restart local v0    # "m":I
    :goto_33
    move v2, v1

    .local v2, "k":I
    :goto_34
    if-ge v2, v0, :cond_4e

    .line 411
    add-int v3, v9, v11

    mul-int v4, v10, v2

    sub-int/2addr v3, v4

    .line 412
    .local v3, "idx1":I
    mul-int v4, v10, v2

    add-int/2addr v4, v9

    .line 413
    .local v4, "idx2":I
    add-int/lit8 v5, v3, 0x1

    aget-wide v14, v8, v4

    neg-double v14, v14

    aput-wide v14, v8, v5

    .line 414
    add-int/lit8 v5, v4, -0x1

    aget-wide v5, v8, v5

    aput-wide v5, v8, v3

    .line 410
    .end local v3    # "idx1":I
    .end local v4    # "idx2":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 416
    .end local v2    # "k":I
    :cond_4e
    nop

    .local v1, "k":I
    :goto_4f
    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v1, v2, :cond_66

    .line 417
    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v2, v9

    sub-int/2addr v2, v1

    .line 418
    .local v2, "idx":I
    add-int/lit8 v3, v2, 0x1

    aget-wide v3, v8, v3

    .line 419
    .local v3, "tmp":D
    add-int/lit8 v5, v2, 0x1

    aget-wide v14, v8, v2

    aput-wide v14, v8, v5

    .line 420
    aput-wide v3, v8, v2

    .line 416
    .end local v2    # "idx":I
    .end local v3    # "tmp":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 422
    .end local v1    # "k":I
    :cond_66
    add-int/lit8 v1, v9, 0x1

    aput-wide v12, v8, v1

    .line 423
    goto/16 :goto_e5

    .line 369
    .end local v0    # "m":I
    :pswitch_6c
    invoke-virtual/range {p0 .. p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    .line 370
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v14

    .line 371
    .local v14, "nthreads":I
    const/4 v0, 0x0

    if-le v14, v1, :cond_b5

    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v2, v10

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v3

    if-le v2, v3, :cond_b5

    .line 372
    new-array v15, v14, [Ljava/util/concurrent/Future;

    .line 373
    .local v15, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v1, v10

    div-int v16, v1, v14

    .line 374
    .local v16, "k":I
    nop

    .local v0, "i":I
    :goto_87
    move v6, v0

    .end local v0    # "i":I
    .local v6, "i":I
    if-ge v6, v14, :cond_b1

    .line 375
    mul-int v17, v6, v16

    .line 376
    .local v17, "firstIdx":I
    add-int/lit8 v0, v14, -0x1

    if-ne v6, v0, :cond_95

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v10

    :goto_93
    move v3, v0

    goto :goto_98

    :cond_95
    add-int v0, v17, v16

    goto :goto_93

    .line 377
    .local v3, "lastIdx":I
    :goto_98
    new-instance v5, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;

    move-object v0, v5

    move-object v1, v7

    move/from16 v2, v17

    move v4, v9

    move-object v12, v5

    move v5, v11

    move v13, v6

    move-object v6, v8

    .end local v6    # "i":I
    .local v13, "i":I
    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D)V

    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v15, v13

    .line 374
    .end local v3    # "lastIdx":I
    .end local v17    # "firstIdx":I
    add-int/lit8 v0, v13, 0x1

    .end local v13    # "i":I
    .restart local v0    # "i":I
    const-wide/16 v12, 0x0

    goto :goto_87

    .line 389
    .end local v0    # "i":I
    :cond_b1
    invoke-static {v15}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 390
    .end local v15    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v16    # "k":I
    goto :goto_d4

    .line 392
    :cond_b5
    nop

    .local v0, "k":I
    :goto_b6
    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v2, v10

    if-ge v0, v2, :cond_d4

    .line 393
    mul-int v2, v10, v0

    .line 394
    .local v2, "idx1":I
    sub-int v3, v11, v2

    rem-int/2addr v3, v11

    add-int/2addr v3, v9

    .line 395
    .local v3, "idx2":I
    add-int v4, v9, v2

    aget-wide v4, v8, v4

    aput-wide v4, v8, v3

    .line 396
    add-int/lit8 v4, v3, 0x1

    add-int v5, v9, v2

    add-int/2addr v5, v1

    aget-wide v5, v8, v5

    neg-double v5, v5

    aput-wide v5, v8, v4

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    .line 399
    .end local v0    # "k":I
    .end local v2    # "idx1":I
    .end local v3    # "idx2":I
    :cond_d4
    :goto_d4
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, v9

    add-int/lit8 v1, v9, 0x1

    aget-wide v1, v8, v1

    neg-double v1, v1

    aput-wide v1, v8, v0

    .line 400
    add-int/lit8 v0, v9, 0x1

    const-wide/16 v1, 0x0

    aput-wide v1, v8, v0

    .line 401
    nop

    .line 428
    .end local v14    # "nthreads":I
    :goto_e5
    return-void-no-barrier

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_23
        :pswitch_1d
    .end packed-switch
.end method

.method public realInverse([DIZ)V
    .registers 12
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "scale"    # Z

    .line 490
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 491
    return-void-no-barrier

    .line 492
    :cond_6
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v7, 0x2

    packed-switch v0, :pswitch_data_9a

    goto/16 :goto_98

    .line 519
    :pswitch_16
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_inverse([DI)V

    .line 520
    if-eqz p3, :cond_98

    .line 521
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto/16 :goto_98

    .line 507
    :pswitch_27
    nop

    .local v7, "k":I
    :goto_28
    move v0, v7

    .end local v7    # "k":I
    .local v0, "k":I
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_3e

    .line 508
    add-int v1, p2, v0

    .line 509
    .local v1, "idx":I
    add-int/lit8 v2, v1, -0x1

    aget-wide v2, p1, v2

    .line 510
    .local v2, "tmp":D
    add-int/lit8 v4, v1, -0x1

    aget-wide v5, p1, v1

    aput-wide v5, p1, v4

    .line 511
    aput-wide v2, p1, v1

    .line 507
    .end local v1    # "idx":I
    .end local v2    # "tmp":D
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "k":I
    .restart local v7    # "k":I
    goto :goto_28

    .line 513
    .end local v7    # "k":I
    :cond_3e
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftb([DI)V

    .line 514
    if-eqz p3, :cond_98

    .line 515
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto :goto_98

    .line 494
    :pswitch_4e
    add-int/lit8 v0, p2, 0x1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    aget-wide v3, p1, p2

    add-int/lit8 v5, p2, 0x1

    aget-wide v5, p1, v5

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    aput-wide v1, p1, v0

    .line 495
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    aput-wide v0, p1, p2

    .line 496
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_84

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

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    goto :goto_8b

    .line 499
    :cond_84
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ne v0, v1, :cond_8b

    .line 500
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftxc020([DI)V

    .line 502
    :cond_8b
    :goto_8b
    if-eqz p3, :cond_98

    .line 503
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v7

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    .line 526
    :cond_98
    :goto_98
    return-void-no-barrier

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_27
        :pswitch_16
    .end packed-switch
.end method

.method public realInverse([DZ)V
    .registers 4
    .param p1, "a"    # [D
    .param p2, "scale"    # Z

    .line 458
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse([DIZ)V

    .line 459
    return-void-no-barrier
.end method

.method protected realInverse2([DIZ)V
    .registers 14
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "scale"    # Z

    move-object v7, p0

    .line 628
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_7

    .line 629
    return-void-no-barrier

    .line 630
    :cond_7
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_cc

    goto/16 :goto_ca

    .line 674
    :pswitch_16
    invoke-direct {v7, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_inverse2([DI)V

    .line 675
    if-eqz p3, :cond_ca

    .line 676
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto/16 :goto_ca

    .line 648
    :pswitch_27
    invoke-virtual {v7, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    .line 649
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v0, v6

    .local v0, "k":I
    :goto_2d
    const/4 v8, 0x2

    if-lt v0, v8, :cond_41

    .line 650
    add-int v1, p2, v0

    .line 651
    .local v1, "idx":I
    aget-wide v2, p1, v1

    .line 652
    .local v2, "tmp":D
    add-int/lit8 v4, v1, -0x1

    aget-wide v4, p1, v4

    aput-wide v4, p1, v1

    .line 653
    add-int/lit8 v4, v1, -0x1

    aput-wide v2, p1, v4

    .line 649
    .end local v1    # "idx":I
    .end local v2    # "tmp":D
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    .line 655
    .end local v0    # "k":I
    :cond_41
    if-eqz p3, :cond_4d

    .line 656
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    .line 659
    :cond_4d
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/2addr v0, v8

    if-nez v0, :cond_64

    .line 660
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v8

    .line 661
    .local v0, "m":I
    move v1, v6

    .local v1, "i":I
    :goto_56
    if-ge v1, v0, :cond_ca

    .line 662
    mul-int v2, v8, v1

    add-int/2addr v2, p2

    add-int/2addr v2, v6

    .line 663
    .local v2, "idx":I
    aget-wide v3, p1, v2

    neg-double v3, v3

    aput-wide v3, p1, v2

    .line 661
    .end local v2    # "idx":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 666
    .end local v0    # "m":I
    .end local v1    # "i":I
    :cond_64
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v0, v6

    div-int/2addr v0, v8

    .line 667
    .restart local v0    # "m":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_69
    if-ge v1, v0, :cond_77

    .line 668
    mul-int v2, v8, v1

    add-int/2addr v2, p2

    add-int/2addr v2, v6

    .line 669
    .restart local v2    # "idx":I
    aget-wide v3, p1, v2

    neg-double v3, v3

    aput-wide v3, p1, v2

    .line 667
    .end local v2    # "idx":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 672
    .end local v1    # "i":I
    :cond_77
    goto :goto_ca

    .line 634
    .end local v0    # "m":I
    :pswitch_78
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_97

    .line 635
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    .line 636
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rftbsub(I[DII[DI)V

    goto :goto_a9

    .line 637
    :cond_97
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ne v0, v1, :cond_a9

    .line 638
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    .line 640
    :cond_a9
    :goto_a9
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    sub-double v8, v0, v2

    .line 641
    .local v8, "xi":D
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    add-double/2addr v0, v2

    aput-wide v0, p1, p2

    .line 642
    add-int/lit8 v0, p2, 0x1

    aput-wide v8, p1, v0

    .line 643
    if-eqz p3, :cond_ca

    .line 644
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    .line 680
    .end local v8    # "xi":D
    :cond_ca
    :goto_ca
    return-void-no-barrier

    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_78
        :pswitch_27
        :pswitch_16
    .end packed-switch
.end method

.method public realInverseFull([DIZ)V
    .registers 22
    .param p1, "a"    # [D
    .param p2, "offa"    # I
    .param p3, "scale"    # Z

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 556
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v10, 0x2

    mul-int v11, v10, v0

    .line 557
    .local v11, "twon":I
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v12, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_10e

    .line 625
    move v14, v11

    .end local v11    # "twon":I
    .local v14, "twon":I
    goto/16 :goto_10c

    .line 619
    .end local v14    # "twon":I
    .restart local v11    # "twon":I
    :pswitch_1e
    invoke-direct {v7, v8, v9, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_full([DII)V

    .line 620
    if-eqz p3, :cond_2d

    .line 621
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x1

    move-object v0, v7

    move-object v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    .line 625
    .end local v11    # "twon":I
    .restart local v14    # "twon":I
    :cond_2d
    move v14, v11

    goto/16 :goto_10c

    .line 593
    .end local v14    # "twon":I
    .restart local v11    # "twon":I
    :pswitch_30
    invoke-virtual/range {p0 .. p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    .line 594
    if-eqz p3, :cond_3f

    .line 595
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    .line 598
    :cond_3f
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/2addr v0, v10

    if-nez v0, :cond_48

    .line 599
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v10

    .local v0, "m":I
    goto :goto_4c

    .line 601
    .end local v0    # "m":I
    :cond_48
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, v6

    div-int/2addr v0, v10

    .line 603
    .restart local v0    # "m":I
    :goto_4c
    move v1, v6

    .local v1, "k":I
    :goto_4d
    if-ge v1, v0, :cond_6f

    .line 604
    mul-int v2, v10, v1

    add-int/2addr v2, v9

    .line 605
    .local v2, "idx1":I
    add-int v3, v9, v11

    mul-int v4, v10, v1

    sub-int/2addr v3, v4

    .line 606
    .local v3, "idx2":I
    aget-wide v4, v8, v2

    neg-double v4, v4

    aput-wide v4, v8, v2

    .line 607
    add-int/lit8 v4, v3, 0x1

    move v14, v11

    aget-wide v10, v8, v2

    .end local v11    # "twon":I
    .restart local v14    # "twon":I
    neg-double v10, v10

    aput-wide v10, v8, v4

    .line 608
    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v8, v4

    aput-wide v4, v8, v3

    .line 603
    .end local v2    # "idx1":I
    .end local v3    # "idx2":I
    add-int/lit8 v1, v1, 0x1

    move v11, v14

    const/4 v10, 0x2

    goto :goto_4d

    .line 610
    .end local v1    # "k":I
    .end local v14    # "twon":I
    .restart local v11    # "twon":I
    :cond_6f
    move v14, v11

    .end local v11    # "twon":I
    .local v6, "k":I
    .restart local v14    # "twon":I
    :goto_70
    move v1, v6

    .end local v6    # "k":I
    .restart local v1    # "k":I
    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v1, v2, :cond_88

    .line 611
    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v2, v9

    sub-int/2addr v2, v1

    .line 612
    .local v2, "idx":I
    add-int/lit8 v3, v2, 0x1

    aget-wide v3, v8, v3

    .line 613
    .local v3, "tmp":D
    add-int/lit8 v5, v2, 0x1

    aget-wide v10, v8, v2

    aput-wide v10, v8, v5

    .line 614
    aput-wide v3, v8, v2

    .line 610
    .end local v2    # "idx":I
    .end local v3    # "tmp":D
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "k":I
    .restart local v6    # "k":I
    goto :goto_70

    .line 616
    .end local v6    # "k":I
    :cond_88
    add-int/lit8 v1, v9, 0x1

    aput-wide v12, v8, v1

    .line 617
    goto/16 :goto_10c

    .line 559
    .end local v0    # "m":I
    .end local v14    # "twon":I
    .restart local v11    # "twon":I
    :pswitch_8e
    move v14, v11

    .end local v11    # "twon":I
    .restart local v14    # "twon":I
    invoke-virtual/range {p0 .. p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    .line 560
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v10

    .line 561
    .local v10, "nthreads":I
    const/4 v0, 0x0

    if-le v10, v6, :cond_da

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v3

    if-le v1, v3, :cond_da

    .line 562
    new-array v11, v10, [Ljava/util/concurrent/Future;

    .line 563
    .local v11, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v1, v2

    div-int v15, v1, v10

    .line 564
    .local v15, "k":I
    nop

    .local v0, "i":I
    :goto_ab
    move v6, v0

    .end local v0    # "i":I
    .local v6, "i":I
    if-ge v6, v10, :cond_d6

    .line 565
    mul-int v16, v6, v15

    .line 566
    .local v16, "firstIdx":I
    add-int/lit8 v0, v10, -0x1

    if-ne v6, v0, :cond_ba

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    :goto_b8
    move v3, v0

    goto :goto_bd

    :cond_ba
    add-int v0, v16, v15

    goto :goto_b8

    .line 567
    .local v3, "lastIdx":I
    :goto_bd
    new-instance v5, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;

    move-object v0, v5

    move-object v1, v7

    move/from16 v2, v16

    move v4, v9

    move-object v12, v5

    move v5, v14

    move v13, v6

    move-object v6, v8

    .end local v6    # "i":I
    .local v13, "i":I
    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D)V

    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v13

    .line 564
    .end local v3    # "lastIdx":I
    .end local v16    # "firstIdx":I
    add-int/lit8 v0, v13, 0x1

    .end local v13    # "i":I
    .restart local v0    # "i":I
    const-wide/16 v12, 0x0

    goto :goto_ab

    .line 579
    .end local v0    # "i":I
    :cond_d6
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    .line 580
    .end local v11    # "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    .end local v15    # "k":I
    goto :goto_fb

    .line 582
    :cond_da
    nop

    .local v0, "k":I
    :goto_db
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_fb

    .line 583
    mul-int v1, v2, v0

    .line 584
    .local v1, "idx1":I
    sub-int v11, v14, v1

    rem-int/2addr v11, v14

    add-int v3, v9, v11

    .line 585
    .local v3, "idx2":I
    add-int v4, v9, v1

    aget-wide v4, v8, v4

    aput-wide v4, v8, v3

    .line 586
    add-int/lit8 v4, v3, 0x1

    add-int v5, v9, v1

    add-int/2addr v5, v6

    aget-wide v11, v8, v5

    neg-double v11, v11

    aput-wide v11, v8, v4

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_db

    .line 589
    .end local v0    # "k":I
    .end local v1    # "idx1":I
    .end local v3    # "idx2":I
    :cond_fb
    :goto_fb
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, v9

    add-int/lit8 v1, v9, 0x1

    aget-wide v1, v8, v1

    neg-double v1, v1

    aput-wide v1, v8, v0

    .line 590
    add-int/lit8 v0, v9, 0x1

    const-wide/16 v1, 0x0

    aput-wide v1, v8, v0

    .line 591
    nop

    .line 625
    .end local v10    # "nthreads":I
    :goto_10c
    return-void-no-barrier

    nop

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method

.method public realInverseFull([DZ)V
    .registers 4
    .param p1, "a"    # [D
    .param p2, "scale"    # Z

    .line 540
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DIZ)V

    .line 541
    return-void-no-barrier
.end method

.method rfftb([DI)V
    .registers 26
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    move-object/from16 v10, p0

    .line 1764
    iget v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v11, 0x1

    if-ne v0, v11, :cond_8

    .line 1765
    return-void-no-barrier

    .line 1768
    :cond_8
    iget v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    new-array v12, v0, [D

    .line 1769
    .local v12, "ch":[D
    const/4 v0, 0x2

    iget v1, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int v13, v0, v1

    .line 1770
    .local v13, "twon":I
    iget-object v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int v1, v11, v13

    aget-wide v0, v0, v1

    double-to-int v14, v0

    .line 1771
    .local v14, "nf":I
    const/4 v0, 0x0

    .line 1772
    .local v0, "na":I
    const/4 v1, 0x1

    .line 1773
    .local v1, "l1":I
    iget v2, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    .line 1774
    .local v2, "iw":I
    move/from16 v16, v0

    move v15, v1

    move/from16 v17, v2

    move v0, v11

    .end local v1    # "l1":I
    .end local v2    # "iw":I
    .local v0, "k1":I
    .local v15, "l1":I
    .local v16, "na":I
    .local v17, "iw":I
    :goto_22
    move v9, v0

    .end local v0    # "k1":I
    .local v9, "k1":I
    if-gt v9, v14, :cond_126

    .line 1775
    iget-object v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v1, v9, 0x1

    add-int/2addr v1, v13

    aget-wide v0, v0, v1

    double-to-int v8, v0

    .line 1776
    .local v8, "ip":I
    mul-int v18, v8, v15

    .line 1777
    .local v18, "l2":I
    iget v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v7, v0, v18

    .line 1778
    .local v7, "ido":I
    mul-int v19, v7, v15

    .line 1779
    .local v19, "idl1":I
    packed-switch v8, :pswitch_data_134

    .line 1813
    move/from16 v20, v7

    .end local v7    # "ido":I
    .local v20, "ido":I
    if-nez v16, :cond_fb

    .line 1814
    const/16 v21, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move v2, v8

    move v3, v15

    move/from16 v4, v19

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object v7, v12

    move/from16 v22, v8

    move/from16 v8, v21

    .end local v8    # "ip":I
    .local v22, "ip":I
    move/from16 v21, v9

    move/from16 v9, v17

    .end local v9    # "k1":I
    .local v21, "k1":I
    invoke-virtual/range {v0 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radbg(IIII[DI[DII)V

    goto/16 :goto_112

    .line 1805
    .end local v20    # "ido":I
    .end local v21    # "k1":I
    .end local v22    # "ip":I
    .restart local v7    # "ido":I
    .restart local v8    # "ip":I
    .restart local v9    # "k1":I
    :pswitch_57
    if-nez v16, :cond_6a

    .line 1806
    const/4 v6, 0x0

    move-object v0, v10

    move v1, v7

    move v2, v15

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v20, v7

    move/from16 v7, v17

    .end local v7    # "ido":I
    .restart local v20    # "ido":I
    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb5(II[DI[DII)V

    goto :goto_7b

    .line 1808
    .end local v20    # "ido":I
    .restart local v7    # "ido":I
    :cond_6a
    move/from16 v20, v7

    .end local v7    # "ido":I
    .restart local v20    # "ido":I
    const/4 v4, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move v2, v15

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb5(II[DI[DII)V

    .line 1810
    :goto_7b
    rsub-int/lit8 v0, v16, 0x1

    .line 1811
    .end local v16    # "na":I
    .local v0, "na":I
    goto/16 :goto_f2

    .line 1797
    .end local v0    # "na":I
    .end local v20    # "ido":I
    .restart local v7    # "ido":I
    .restart local v16    # "na":I
    :pswitch_7f
    move/from16 v20, v7

    .end local v7    # "ido":I
    .restart local v20    # "ido":I
    if-nez v16, :cond_93

    .line 1798
    const/4 v6, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move v2, v15

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb4(II[DI[DII)V

    goto :goto_a2

    .line 1800
    :cond_93
    const/4 v4, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move v2, v15

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb4(II[DI[DII)V

    .line 1802
    :goto_a2
    rsub-int/lit8 v0, v16, 0x1

    .line 1803
    .end local v16    # "na":I
    .restart local v0    # "na":I
    goto/16 :goto_f2

    .line 1789
    .end local v0    # "na":I
    .end local v20    # "ido":I
    .restart local v7    # "ido":I
    .restart local v16    # "na":I
    :pswitch_a6
    move/from16 v20, v7

    .end local v7    # "ido":I
    .restart local v20    # "ido":I
    if-nez v16, :cond_ba

    .line 1790
    const/4 v6, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move v2, v15

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb3(II[DI[DII)V

    goto :goto_c9

    .line 1792
    :cond_ba
    const/4 v4, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move v2, v15

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb3(II[DI[DII)V

    .line 1794
    :goto_c9
    rsub-int/lit8 v0, v16, 0x1

    .line 1795
    .end local v16    # "na":I
    .restart local v0    # "na":I
    goto :goto_f2

    .line 1781
    .end local v0    # "na":I
    .end local v20    # "ido":I
    .restart local v7    # "ido":I
    .restart local v16    # "na":I
    :pswitch_cc
    move/from16 v20, v7

    .end local v7    # "ido":I
    .restart local v20    # "ido":I
    if-nez v16, :cond_e0

    .line 1782
    const/4 v6, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move v2, v15

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb2(II[DI[DII)V

    goto :goto_ef

    .line 1784
    :cond_e0
    const/4 v4, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move v2, v15

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb2(II[DI[DII)V

    .line 1786
    :goto_ef
    rsub-int/lit8 v0, v16, 0x1

    .line 1787
    .end local v16    # "na":I
    .restart local v0    # "na":I
    nop

    .line 1822
    .end local v8    # "ip":I
    .end local v9    # "k1":I
    .end local v20    # "ido":I
    .local v0, "ido":I
    .restart local v16    # "na":I
    .restart local v21    # "k1":I
    .restart local v22    # "ip":I
    :goto_f2
    move/from16 v16, v0

    move/from16 v22, v8

    move/from16 v21, v9

    move/from16 v0, v20

    goto :goto_11a

    .line 1816
    .end local v0    # "ido":I
    .end local v21    # "k1":I
    .end local v22    # "ip":I
    .restart local v8    # "ip":I
    .restart local v9    # "k1":I
    .restart local v20    # "ido":I
    :cond_fb
    move/from16 v22, v8

    move/from16 v21, v9

    .end local v8    # "ip":I
    .end local v9    # "k1":I
    .restart local v21    # "k1":I
    .restart local v22    # "ip":I
    const/4 v6, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move/from16 v2, v22

    move v3, v15

    move/from16 v4, v19

    move-object v5, v12

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radbg(IIII[DI[DII)V

    .line 1818
    :goto_112
    move/from16 v0, v20

    if-ne v0, v11, :cond_11a

    .line 1819
    .end local v20    # "ido":I
    .restart local v0    # "ido":I
    rsub-int/lit8 v1, v16, 0x1

    .line 1822
    .end local v16    # "na":I
    .local v1, "na":I
    move/from16 v16, v1

    .end local v1    # "na":I
    .restart local v16    # "na":I
    :cond_11a
    :goto_11a
    move/from16 v15, v18

    .line 1823
    add-int/lit8 v8, v22, -0x1

    mul-int/2addr v8, v0

    add-int v17, v17, v8

    .line 1774
    add-int/lit8 v1, v21, 0x1

    .end local v21    # "k1":I
    .local v1, "k1":I
    move v0, v1

    goto/16 :goto_22

    .line 1825
    .end local v0    # "ido":I
    .end local v1    # "k1":I
    .end local v18    # "l2":I
    .end local v19    # "idl1":I
    .end local v22    # "ip":I
    :cond_126
    if-nez v16, :cond_129

    .line 1826
    return-void-no-barrier

    .line 1827
    :cond_129
    const/4 v0, 0x0

    iget v1, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static {v12, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1828
    return-void-no-barrier

    :pswitch_data_134
    .packed-switch 0x2
        :pswitch_cc
        :pswitch_a6
        :pswitch_7f
        :pswitch_57
    .end packed-switch
.end method

.method rfftf([DI)V
    .registers 27
    .param p1, "a"    # [D
    .param p2, "offa"    # I

    move-object/from16 v10, p0

    .line 1694
    iget v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v11, 0x1

    if-ne v0, v11, :cond_8

    .line 1695
    return-void-no-barrier

    .line 1698
    :cond_8
    iget v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    new-array v12, v0, [D

    .line 1699
    .local v12, "ch":[D
    iget v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x2

    mul-int v13, v1, v0

    .line 1700
    .local v13, "twon":I
    iget-object v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int v1, v11, v13

    aget-wide v0, v0, v1

    double-to-int v14, v0

    .line 1701
    .local v14, "nf":I
    const/4 v0, 0x1

    .line 1702
    .local v0, "na":I
    iget v1, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    .line 1703
    .local v1, "l2":I
    add-int/lit8 v2, v13, -0x1

    .line 1704
    .local v2, "iw":I
    move v15, v1

    move v1, v0

    move v0, v11

    .local v0, "k1":I
    .local v1, "na":I
    .local v15, "l2":I
    :goto_20
    move v9, v0

    .end local v0    # "k1":I
    .local v9, "k1":I
    if-gt v9, v14, :cond_130

    .line 1705
    sub-int v16, v14, v9

    .line 1706
    .local v16, "kh":I
    iget-object v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v3, v16, 0x2

    add-int/2addr v3, v13

    aget-wide v3, v0, v3

    double-to-int v8, v3

    .line 1707
    .local v8, "ip":I
    div-int v17, v15, v8

    .line 1708
    .local v17, "l1":I
    iget v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v7, v0, v15

    .line 1709
    .local v7, "ido":I
    mul-int v18, v7, v17

    .line 1710
    .local v18, "idl1":I
    add-int/lit8 v0, v8, -0x1

    mul-int/2addr v0, v7

    sub-int v19, v2, v0

    .line 1711
    .end local v2    # "iw":I
    .local v19, "iw":I
    rsub-int/lit8 v20, v1, 0x1

    .line 1712
    .end local v1    # "na":I
    .local v20, "na":I
    packed-switch v8, :pswitch_data_13e

    .line 1742
    move/from16 v21, v7

    .end local v7    # "ido":I
    .local v21, "ido":I
    if-ne v7, v11, :cond_ec

    .line 1743
    .end local v21    # "ido":I
    .restart local v7    # "ido":I
    rsub-int/lit8 v20, v20, 0x1

    goto/16 :goto_ec

    .line 1735
    :pswitch_47
    if-nez v20, :cond_5c

    .line 1736
    const/4 v6, 0x0

    move-object v0, v10

    move v1, v7

    move/from16 v2, v17

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v21, v7

    move/from16 v7, v19

    .end local v7    # "ido":I
    .restart local v21    # "ido":I
    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf5(II[DI[DII)V

    goto/16 :goto_e3

    .line 1738
    .end local v21    # "ido":I
    .restart local v7    # "ido":I
    :cond_5c
    move/from16 v21, v7

    .end local v7    # "ido":I
    .restart local v21    # "ido":I
    const/4 v4, 0x0

    move-object v0, v10

    move/from16 v1, v21

    move/from16 v2, v17

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf5(II[DI[DII)V

    .line 1740
    goto/16 :goto_e3

    .line 1728
    .end local v21    # "ido":I
    .restart local v7    # "ido":I
    :pswitch_70
    move/from16 v21, v7

    .end local v7    # "ido":I
    .restart local v21    # "ido":I
    if-nez v20, :cond_86

    .line 1729
    const/4 v6, 0x0

    move-object v0, v10

    move/from16 v1, v21

    move/from16 v2, v17

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf4(II[DI[DII)V

    goto/16 :goto_e3

    .line 1731
    :cond_86
    const/4 v4, 0x0

    move-object v0, v10

    move/from16 v1, v21

    move/from16 v2, v17

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf4(II[DI[DII)V

    .line 1733
    goto :goto_e3

    .line 1721
    .end local v21    # "ido":I
    .restart local v7    # "ido":I
    :pswitch_97
    move/from16 v21, v7

    .end local v7    # "ido":I
    .restart local v21    # "ido":I
    if-nez v20, :cond_ac

    .line 1722
    const/4 v6, 0x0

    move-object v0, v10

    move/from16 v1, v21

    move/from16 v2, v17

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf3(II[DI[DII)V

    goto :goto_e3

    .line 1724
    :cond_ac
    const/4 v4, 0x0

    move-object v0, v10

    move/from16 v1, v21

    move/from16 v2, v17

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf3(II[DI[DII)V

    .line 1726
    goto :goto_e3

    .line 1714
    .end local v21    # "ido":I
    .restart local v7    # "ido":I
    :pswitch_bd
    move/from16 v21, v7

    .end local v7    # "ido":I
    .restart local v21    # "ido":I
    if-nez v20, :cond_d2

    .line 1715
    const/4 v6, 0x0

    move-object v0, v10

    move/from16 v1, v21

    move/from16 v2, v17

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf2(II[DI[DII)V

    goto :goto_e3

    .line 1717
    :cond_d2
    const/4 v4, 0x0

    move-object v0, v10

    move/from16 v1, v21

    move/from16 v2, v17

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf2(II[DI[DII)V

    .line 1719
    nop

    .line 1753
    :goto_e3
    move/from16 v23, v8

    move/from16 v1, v20

    move/from16 v22, v21

    move/from16 v21, v9

    goto :goto_128

    .line 1744
    .end local v21    # "ido":I
    .restart local v7    # "ido":I
    :cond_ec
    :goto_ec
    if-nez v20, :cond_10c

    .line 1745
    const/16 v21, 0x0

    move-object v0, v10

    move v1, v7

    move v2, v8

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v22, v7

    move-object v7, v12

    .end local v7    # "ido":I
    .local v22, "ido":I
    move/from16 v23, v8

    move/from16 v8, v21

    .end local v8    # "ip":I
    .local v23, "ip":I
    move/from16 v21, v9

    move/from16 v9, v19

    .end local v9    # "k1":I
    .local v21, "k1":I
    invoke-virtual/range {v0 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radfg(IIII[DI[DII)V

    .line 1746
    const/4 v0, 0x1

    .line 1753
    .end local v20    # "na":I
    .local v0, "na":I
    .restart local v1    # "na":I
    :goto_10a
    move v1, v0

    goto :goto_128

    .line 1748
    .end local v0    # "na":I
    .end local v1    # "na":I
    .end local v21    # "k1":I
    .end local v22    # "ido":I
    .end local v23    # "ip":I
    .restart local v7    # "ido":I
    .restart local v8    # "ip":I
    .restart local v9    # "k1":I
    .restart local v20    # "na":I
    :cond_10c
    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v21, v9

    .end local v7    # "ido":I
    .end local v8    # "ip":I
    .end local v9    # "k1":I
    .restart local v21    # "k1":I
    .restart local v22    # "ido":I
    .restart local v23    # "ip":I
    const/4 v6, 0x0

    move-object v0, v10

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v17

    move/from16 v4, v18

    move-object v5, v12

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radfg(IIII[DI[DII)V

    .line 1749
    const/4 v0, 0x0

    goto :goto_10a

    .line 1753
    .end local v20    # "na":I
    .restart local v1    # "na":I
    :goto_128
    move/from16 v15, v17

    .line 1704
    add-int/lit8 v0, v21, 0x1

    .end local v21    # "k1":I
    .local v0, "k1":I
    move/from16 v2, v19

    goto/16 :goto_20

    .line 1755
    .end local v0    # "k1":I
    .end local v16    # "kh":I
    .end local v17    # "l1":I
    .end local v18    # "idl1":I
    .end local v19    # "iw":I
    .end local v22    # "ido":I
    .end local v23    # "ip":I
    .restart local v2    # "iw":I
    :cond_130
    if-ne v1, v11, :cond_133

    .line 1756
    return-void-no-barrier

    .line 1757
    :cond_133
    const/4 v0, 0x0

    iget v3, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-static {v12, v0, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1758
    return-void-no-barrier

    :pswitch_data_13e
    .packed-switch 0x2
        :pswitch_bd
        :pswitch_97
        :pswitch_70
        :pswitch_47
    .end packed-switch
.end method

.method rffti()V
    .registers 34

    .line 858
    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 859
    return-void-no-barrier

    .line 860
    :cond_8
    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v3, 0x2

    mul-int/2addr v1, v3

    .line 862
    .local v1, "twon":I
    const/4 v4, 0x0

    .line 871
    .local v4, "ntry":I
    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    .line 872
    .local v5, "nl":I
    const/4 v6, 0x0

    .line 873
    .local v6, "nf":I
    const/4 v7, 0x0

    .line 877
    .local v7, "j":I
    :goto_11
    add-int/2addr v7, v2

    .line 878
    const/4 v8, 0x4

    if-gt v7, v8, :cond_1c

    .line 879
    sget-object v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    add-int/lit8 v9, v7, -0x1

    aget v4, v8, v9

    goto :goto_1e

    .line 881
    :cond_1c
    add-int/lit8 v4, v4, 0x2

    .line 883
    :goto_1e
    div-int v8, v5, v4

    .line 884
    .local v8, "nq":I
    mul-int v9, v4, v8

    sub-int v9, v5, v9

    .line 885
    .local v9, "nr":I
    if-eqz v9, :cond_27

    .line 886
    goto :goto_11

    .line 887
    :cond_27
    add-int/lit8 v6, v6, 0x1

    .line 888
    iget-object v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v11, v6, 0x1

    add-int/2addr v11, v1

    int-to-double v12, v4

    aput-wide v12, v10, v11

    .line 890
    move v5, v8

    .line 891
    if-ne v4, v3, :cond_53

    if-eq v6, v2, :cond_53

    .line 892
    move v10, v3

    .local v10, "i":I
    :goto_37
    if-gt v10, v6, :cond_4b

    .line 893
    sub-int v11, v6, v10

    add-int/2addr v11, v3

    .line 894
    .local v11, "ib":I
    add-int v12, v11, v1

    .line 895
    .local v12, "idx":I
    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v14, v12, 0x1

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v15, v15, v12

    aput-wide v15, v13, v14

    .line 892
    .end local v12    # "idx":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_37

    .line 897
    .end local v11    # "ib":I
    :cond_4b
    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int v12, v3, v1

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    aput-wide v13, v11, v12

    .line 899
    .end local v10    # "i":I
    :cond_53
    if-ne v5, v2, :cond_107

    .line 900
    nop

    .line 902
    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v10, v10

    aput-wide v10, v3, v1

    .line 903
    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int v10, v2, v1

    int-to-double v11, v6

    aput-wide v11, v3, v10

    .line 904
    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v12, v3

    div-double/2addr v10, v12

    .line 905
    .local v10, "argh":D
    const/4 v3, 0x0

    .line 906
    .local v3, "is":I
    add-int/lit8 v12, v6, -0x1

    .line 907
    .local v12, "nfm1":I
    const/4 v13, 0x1

    .line 908
    .local v13, "l1":I
    if-nez v12, :cond_74

    .line 909
    return-void-no-barrier

    .line 910
    :cond_74
    nop

    .local v2, "k1":I
    :goto_75
    if-gt v2, v12, :cond_fa

    .line 911
    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v15, v2, 0x1

    add-int/2addr v15, v1

    aget-wide v14, v14, v15

    double-to-int v14, v14

    .line 912
    .local v14, "ip":I
    const/4 v15, 0x0

    .line 913
    .local v15, "ld":I
    mul-int v16, v13, v14

    .line 914
    .local v16, "l2":I
    move/from16 v17, v1

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    .end local v1    # "twon":I
    .local v17, "twon":I
    div-int v1, v1, v16

    .line 915
    .local v1, "ido":I
    move/from16 v18, v3

    add-int/lit8 v3, v14, -0x1

    .line 916
    .local v3, "ipm":I
    .local v18, "is":I
    const/4 v7, 0x1

    :goto_8d
    if-gt v7, v3, :cond_e6

    .line 917
    add-int/2addr v15, v13

    .line 918
    move/from16 v19, v18

    .line 919
    .local v19, "i":I
    move/from16 v21, v3

    move/from16 v20, v4

    int-to-double v3, v15

    .end local v3    # "ipm":I
    .end local v4    # "ntry":I
    .local v20, "ntry":I
    .local v21, "ipm":I
    mul-double/2addr v3, v10

    .line 921
    .local v3, "argld":D
    const-wide/16 v22, 0x0

    .line 922
    .local v22, "fi":D
    const/16 v24, 0x3

    .local v24, "ii":I
    :goto_9c
    move/from16 v25, v24

    .end local v24    # "ii":I
    .local v25, "ii":I
    move/from16 v26, v5

    move/from16 v5, v25

    if-gt v5, v1, :cond_d5

    .line 923
    .end local v25    # "ii":I
    .local v5, "ii":I
    .local v26, "nl":I
    add-int/lit8 v19, v19, 0x2

    .line 924
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    add-double v22, v22, v24

    .line 925
    move/from16 v27, v8

    move/from16 v28, v9

    mul-double v8, v22, v3

    .line 926
    .end local v9    # "nr":I
    .local v8, "arg":D
    .local v27, "nq":I
    .local v28, "nr":I
    move-wide/from16 v29, v3

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    .end local v3    # "argld":D
    .local v29, "argld":D
    add-int v3, v19, v3

    .line 927
    .local v3, "idx":I
    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v24, v3, -0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    aput-wide v31, v4, v24

    .line 928
    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v24, v3, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    aput-wide v31, v4, v24

    .line 922
    .end local v3    # "idx":I
    add-int/lit8 v24, v5, 0x2

    .end local v5    # "ii":I
    .restart local v24    # "ii":I
    move/from16 v5, v26

    move/from16 v8, v27

    move/from16 v9, v28

    move-wide/from16 v3, v29

    goto :goto_9c

    .line 930
    .end local v24    # "ii":I
    .end local v27    # "nq":I
    .end local v28    # "nr":I
    .end local v29    # "argld":D
    .local v3, "argld":D
    .restart local v5    # "ii":I
    .local v8, "nq":I
    .restart local v9    # "nr":I
    :cond_d5
    move-wide/from16 v29, v3

    move/from16 v27, v8

    move/from16 v28, v9

    .end local v3    # "argld":D
    .end local v8    # "nq":I
    .end local v9    # "nr":I
    .restart local v27    # "nq":I
    .restart local v28    # "nr":I
    .restart local v29    # "argld":D
    add-int v18, v18, v1

    .line 916
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v5, v26

    goto :goto_8d

    .line 932
    .end local v19    # "i":I
    .end local v20    # "ntry":I
    .end local v21    # "ipm":I
    .end local v22    # "fi":D
    .end local v26    # "nl":I
    .end local v27    # "nq":I
    .end local v28    # "nr":I
    .end local v29    # "argld":D
    .local v3, "ipm":I
    .restart local v4    # "ntry":I
    .local v5, "nl":I
    .restart local v8    # "nq":I
    .restart local v9    # "nr":I
    :cond_e6
    move/from16 v21, v3

    move/from16 v20, v4

    move/from16 v26, v5

    move/from16 v27, v8

    move/from16 v28, v9

    .end local v3    # "ipm":I
    .end local v4    # "ntry":I
    .end local v5    # "nl":I
    .end local v8    # "nq":I
    .end local v9    # "nr":I
    .restart local v20    # "ntry":I
    .restart local v21    # "ipm":I
    .restart local v26    # "nl":I
    .restart local v27    # "nq":I
    .restart local v28    # "nr":I
    move/from16 v13, v16

    .line 910
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v17

    move/from16 v3, v18

    goto/16 :goto_75

    .line 934
    .end local v14    # "ip":I
    .end local v15    # "ld":I
    .end local v16    # "l2":I
    .end local v17    # "twon":I
    .end local v18    # "is":I
    .end local v20    # "ntry":I
    .end local v21    # "ipm":I
    .end local v26    # "nl":I
    .end local v27    # "nq":I
    .end local v28    # "nr":I
    .local v1, "twon":I
    .local v3, "is":I
    .restart local v4    # "ntry":I
    .restart local v5    # "nl":I
    .restart local v8    # "nq":I
    .restart local v9    # "nr":I
    :cond_fa
    move/from16 v17, v1

    move/from16 v18, v3

    move/from16 v20, v4

    move/from16 v26, v5

    move/from16 v27, v8

    move/from16 v28, v9

    .end local v1    # "twon":I
    .end local v3    # "is":I
    .end local v4    # "ntry":I
    .end local v5    # "nl":I
    .end local v8    # "nq":I
    .end local v9    # "nr":I
    .restart local v17    # "twon":I
    .restart local v18    # "is":I
    .restart local v20    # "ntry":I
    .restart local v26    # "nl":I
    .restart local v27    # "nq":I
    .restart local v28    # "nr":I
    return-void-no-barrier

    .line 883
    .end local v2    # "k1":I
    .end local v10    # "argh":D
    .end local v12    # "nfm1":I
    .end local v13    # "l1":I
    .end local v17    # "twon":I
    .end local v18    # "is":I
    .end local v20    # "ntry":I
    .end local v26    # "nl":I
    .end local v27    # "nq":I
    .end local v28    # "nr":I
    .restart local v1    # "twon":I
    .restart local v4    # "ntry":I
    .restart local v5    # "nl":I
    :cond_107
    move/from16 v20, v4

    move/from16 v26, v5

    .end local v1    # "twon":I
    .end local v4    # "ntry":I
    .end local v5    # "nl":I
    .restart local v17    # "twon":I
    .restart local v20    # "ntry":I
    .restart local v26    # "nl":I
    goto/16 :goto_1e
.end method
