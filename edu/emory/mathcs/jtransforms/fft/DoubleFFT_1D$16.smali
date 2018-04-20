.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;
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
    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$mf:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$n:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$a:[D

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$w:[D

    iput p7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$nw:I

    .line 5504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v7, 0x0

    .line 5507
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$firstIdx:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$mf:I

    add-int v11, v0, v4

    .line 5508
    .local v11, "idx1":I
    const/4 v3, 0x1

    .line 5509
    .local v3, "k":I
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$n:I

    .local v1, "m":I
    move v13, v3

    .line 5510
    .end local v3    # "k":I
    .local v13, "k":I
    :goto_b
    const/16 v0, 0x200

    if-le v1, v0, :cond_22

    .line 5511
    shr-int/lit8 v1, v1, 0x2

    .line 5512
    shl-int/lit8 v13, v13, 0x2

    .line 5513
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$a:[D

    sub-int v3, v11, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$w:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$nw:I

    sub-int/2addr v5, v1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-wrap3(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;I[DI[DI)V

    goto :goto_b

    .line 5515
    :cond_22
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$a:[D

    sub-int v4, v11, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$w:[D

    move v2, v7

    invoke-static/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-wrap1(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DII[D)V

    .line 5516
    shr-int/lit8 v3, v13, 0x1

    .line 5517
    .end local v13    # "k":I
    .restart local v3    # "k":I
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$firstIdx:I

    sub-int v12, v0, v1

    .line 5518
    .local v12, "idx2":I
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$mf:I

    sub-int v2, v0, v1

    .local v2, "j":I
    :goto_3a
    if-lez v2, :cond_5c

    .line 5519
    add-int/lit8 v3, v3, 0x1

    .line 5520
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$a:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$firstIdx:I

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$nw:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$w:[D

    invoke-static/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-wrap0(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[DII[D)I

    move-result v6

    .line 5521
    .local v6, "isplt":I
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$a:[D

    add-int v8, v12, v2

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$nw:I

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;->val$w:[D

    move v5, v1

    invoke-static/range {v4 .. v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-wrap1(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DII[D)V

    .line 5518
    sub-int/2addr v2, v1

    goto :goto_3a

    .line 5523
    .end local v6    # "isplt":I
    :cond_5c
    return-void
.end method
