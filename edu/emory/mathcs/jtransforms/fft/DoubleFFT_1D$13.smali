.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_inverse2([DI)V
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

    .line 1611
    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;->val$lastIdx:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;->val$offa:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;->val$ak:[D

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;->val$a:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1613
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;->val$firstIdx:I

    .local v0, "i":I
    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;->val$lastIdx:I

    if-ge v0, v1, :cond_32

    .line 1614
    const/4 v1, 0x2

    mul-int/2addr v1, v0

    .line 1615
    .local v1, "idx1":I
    add-int/lit8 v2, v1, 0x1

    .line 1616
    .local v2, "idx2":I
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;->val$offa:I

    add-int/2addr v3, v0

    .line 1617
    .local v3, "idx3":I
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;->val$ak:[D

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;->val$a:[D

    aget-wide v5, v5, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D
    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v7

    aget-wide v7, v7, v1

    mul-double/2addr v5, v7

    aput-wide v5, v4, v1

    .line 1618
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;->val$ak:[D

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;->val$a:[D

    aget-wide v5, v5, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D
    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v7

    aget-wide v7, v7, v2

    mul-double/2addr v5, v7

    aput-wide v5, v4, v2

    .line 1613
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v3    # "idx3":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1620
    .end local v0    # "i":I
    :cond_32
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
