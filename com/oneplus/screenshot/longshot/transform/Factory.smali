.class public Lcom/oneplus/screenshot/longshot/transform/Factory;
.super Ljava/lang/Object;
.source "Factory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTransform(I)Lcom/oneplus/screenshot/longshot/transform/FFT;
    .registers 2
    .param p0, "size"    # I

    .prologue
    .line 6
    new-instance v0, Lcom/oneplus/screenshot/longshot/transform/JTFFT;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/transform/JTFFT;-><init>(I)V

    return-object v0
.end method
