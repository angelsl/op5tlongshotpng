.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4_th(I[DII[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

.field final synthetic val$a:[D

.field final synthetic val$firstIdx:I

.field final synthetic val$mf:I

.field final synthetic val$n:I

.field final synthetic val$nw:I

.field final synthetic val$w:[D


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[DI)V
    .registers 8
    .param p1, "this$0"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    .prologue
    .line 1
    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$mf:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$n:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$a:[D

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$w:[D

    iput p7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$nw:I

    .line 5484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 5487
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$firstIdx:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$mf:I

    add-int v11, v0, v4

    .line 5488
    .local v11, "idx1":I
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$n:I

    .line 5489
    .local v1, "m":I
    :goto_8
    const/16 v0, 0x200

    if-le v1, v0, :cond_1f

    .line 5490
    shr-int/lit8 v1, v1, 0x2

    .line 5491
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$a:[D

    sub-int v3, v11, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$w:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$nw:I

    shr-int/lit8 v7, v1, 0x1

    sub-int/2addr v5, v7

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-wrap2(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;I[DI[DI)V

    goto :goto_8

    .line 5493
    :cond_1f
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$a:[D

    sub-int v4, v11, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$w:[D

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-wrap1(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DII[D)V

    .line 5494
    const/4 v3, 0x0

    .line 5495
    .local v3, "k":I
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$firstIdx:I

    sub-int v12, v0, v1

    .line 5496
    .local v12, "idx2":I
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$mf:I

    sub-int v2, v0, v1

    .local v2, "j":I
    :goto_36
    if-lez v2, :cond_58

    .line 5497
    add-int/lit8 v3, v3, 0x1

    .line 5498
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$a:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$firstIdx:I

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$nw:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$w:[D

    invoke-static/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-wrap0(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[DII[D)I

    move-result v6

    .line 5499
    .local v6, "isplt":I
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$a:[D

    add-int v8, v12, v2

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$nw:I

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;->val$w:[D

    move v5, v1

    invoke-static/range {v4 .. v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-wrap1(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DII[D)V

    .line 5496
    sub-int/2addr v2, v1

    goto :goto_36

    .line 5501
    .end local v6    # "isplt":I
    :cond_58
    return-void
.end method
