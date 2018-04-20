.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_inverse([DI)V
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
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DI[D)V
    .registers 7
    .param p1, "this$0"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    .prologue
    .line 1
    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;->val$lastIdx:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;->val$a:[D

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;->val$offa:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;->val$ak:[D

    .line 1565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 1567
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;->val$firstIdx:I

    .local v0, "i":I
    :goto_2
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;->val$lastIdx:I

    if-ge v0, v3, :cond_2f

    .line 1568
    mul-int/lit8 v1, v0, 0x2

    .line 1569
    .local v1, "idx1":I
    add-int/lit8 v2, v1, 0x1

    .line 1570
    .local v2, "idx2":I
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;->val$a:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;->val$offa:I

    add-int/2addr v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get0(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v5

    aget-wide v6, v5, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;->val$ak:[D

    aget-wide v8, v5, v1

    mul-double/2addr v6, v8

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get0(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v5

    aget-wide v8, v5, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;->val$ak:[D

    aget-wide v10, v5, v2

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, v3, v4

    .line 1567
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1572
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    :cond_2f
    return-void
.end method
