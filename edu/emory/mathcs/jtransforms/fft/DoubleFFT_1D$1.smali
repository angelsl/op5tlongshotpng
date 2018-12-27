.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForwardFull([DI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

.field final synthetic val$a:[D

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I

.field final synthetic val$twon:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D)V
    .registers 7
    .param p1, "this$0"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    .line 377
    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$lastIdx:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$offa:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$twon:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$a:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 380
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$firstIdx:I

    .local v0, "k":I
    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$lastIdx:I

    if-ge v0, v1, :cond_2f

    .line 381
    const/4 v1, 0x2

    mul-int/2addr v1, v0

    .line 382
    .local v1, "idx1":I
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$offa:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$twon:I

    sub-int/2addr v3, v1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$twon:I

    rem-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 383
    .local v2, "idx2":I
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$a:[D

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$a:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$offa:I

    add-int/2addr v5, v1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v2

    .line 384
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$a:[D

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$a:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$offa:I

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    aget-wide v5, v5, v6

    neg-double v5, v5

    aput-wide v5, v3, v4

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 386
    .end local v0    # "k":I
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    :cond_2f
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
