.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_forward([DI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

.field final synthetic val$a:[D

.field final synthetic val$ak:[D

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[D)V
    .registers 7
    .param p1, "this$0"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    .prologue
    .line 1
    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;->val$lastIdx:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;->val$offa:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;->val$ak:[D

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;->val$a:[D

    .line 1395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 1397
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;->val$firstIdx:I

    .local v0, "i":I
    :goto_2
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;->val$lastIdx:I

    if-ge v0, v4, :cond_34

    .line 1398
    mul-int/lit8 v1, v0, 0x2

    .line 1399
    .local v1, "idx1":I
    add-int/lit8 v2, v1, 0x1

    .line 1400
    .local v2, "idx2":I
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;->val$offa:I

    add-int v3, v4, v0

    .line 1401
    .local v3, "idx3":I
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;->val$ak:[D

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;->val$a:[D

    aget-wide v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get0(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v5

    aget-wide v8, v5, v1

    mul-double/2addr v6, v8

    aput-wide v6, v4, v1

    .line 1402
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;->val$ak:[D

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;->val$a:[D

    aget-wide v6, v5, v3

    neg-double v6, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get0(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v5

    aget-wide v8, v5, v2

    mul-double/2addr v6, v8

    aput-wide v6, v4, v2

    .line 1397
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1404
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v3    # "idx3":I
    :cond_34
    return-void
.end method