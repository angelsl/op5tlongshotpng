.class synthetic Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 178
    invoke-static {}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->values()[Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    :try_start_9
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->SPLIT_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->MIXED_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->BLUESTEIN:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    return-void
.end method
