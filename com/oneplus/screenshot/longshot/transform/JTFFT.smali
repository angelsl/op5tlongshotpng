.class public Lcom/oneplus/screenshot/longshot/transform/JTFFT;
.super Ljava/lang/Object;
.source "JTFFT.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/transform/FFT;


# instance fields
.field private mFFT:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/transform/JTFFT;->mFFT:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    .line 10
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/transform/JTFFT;->mFFT:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    .line 11
    return-void
.end method

.method private toComplex([D)[Lcom/oneplus/screenshot/longshot/transform/Complex;
    .registers 8
    .param p1, "array"    # [D

    .prologue
    .line 36
    array-length v2, p1

    new-array v1, v2, [Lcom/oneplus/screenshot/longshot/transform/Complex;

    .line 37
    .local v1, "result":[Lcom/oneplus/screenshot/longshot/transform/Complex;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_13

    .line 38
    new-instance v2, Lcom/oneplus/screenshot/longshot/transform/Complex;

    aget-wide v4, p1, v0

    invoke-direct {v2, v4, v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;-><init>(D)V

    aput-object v2, v1, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 40
    :cond_13
    return-object v1
.end method

.method private toDouble([Lcom/oneplus/screenshot/longshot/transform/Complex;)[D
    .registers 6
    .param p1, "array"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;

    .prologue
    .line 28
    array-length v2, p1

    new-array v1, v2, [D

    .line 29
    .local v1, "result":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_12

    .line 30
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 32
    :cond_12
    return-object v1
.end method


# virtual methods
.method public reverse([Lcom/oneplus/screenshot/longshot/transform/Complex;)[Lcom/oneplus/screenshot/longshot/transform/Complex;
    .registers 5
    .param p1, "signal"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/transform/JTFFT;->toDouble([Lcom/oneplus/screenshot/longshot/transform/Complex;)[D

    move-result-object v0

    .line 23
    .local v0, "buffer":[D
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/transform/JTFFT;->mFFT:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse([DZ)V

    .line 24
    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/transform/JTFFT;->toComplex([D)[Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-result-object v1

    return-object v1
.end method

.method public transform([Lcom/oneplus/screenshot/longshot/transform/Complex;)[Lcom/oneplus/screenshot/longshot/transform/Complex;
    .registers 4
    .param p1, "signal"    # [Lcom/oneplus/screenshot/longshot/transform/Complex;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/transform/JTFFT;->toDouble([Lcom/oneplus/screenshot/longshot/transform/Complex;)[D

    move-result-object v0

    .line 16
    .local v0, "buffer":[D
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/transform/JTFFT;->mFFT:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([D)V

    .line 17
    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/transform/JTFFT;->toComplex([D)[Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-result-object v1

    return-object v1
.end method
