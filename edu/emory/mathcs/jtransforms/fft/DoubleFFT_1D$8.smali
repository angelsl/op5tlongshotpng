.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_full([DII)V
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

.field final synthetic val$isign:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[DI[D)V
    .registers 8
    .param p1, "this$0"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    .line 1301
    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$isign:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$firstIdx:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$lastIdx:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$a:[D

    iput p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$offa:I

    iput-object p7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$ak:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 1303
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$isign:I

    const/4 v1, 0x2

    if-lez v0, :cond_56

    .line 1304
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$firstIdx:I

    .local v0, "i":I
    :goto_7
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$lastIdx:I

    if-ge v0, v2, :cond_a8

    .line 1305
    mul-int v2, v1, v0

    .line 1306
    .local v2, "idx1":I
    add-int/lit8 v3, v2, 0x1

    .line 1307
    .local v3, "idx2":I
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$a:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$offa:I

    add-int/2addr v5, v2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D
    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v6

    aget-wide v6, v6, v2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$ak:[D

    aget-wide v8, v8, v2

    mul-double/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D
    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v3

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$ak:[D

    aget-wide v10, v10, v3

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, v4, v5

    .line 1308
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$a:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$offa:I

    add-int/2addr v5, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D
    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v6

    aget-wide v6, v6, v3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$ak:[D

    aget-wide v8, v8, v2

    mul-double/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D
    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v2

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$ak:[D

    aget-wide v10, v10, v3

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v4, v5

    .line 1304
    .end local v2    # "idx1":I
    .end local v3    # "idx2":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1311
    .end local v0    # "i":I
    :cond_56
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$firstIdx:I

    .restart local v0    # "i":I
    :goto_58
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$lastIdx:I

    if-ge v0, v2, :cond_a8

    .line 1312
    mul-int v2, v1, v0

    .line 1313
    .restart local v2    # "idx1":I
    add-int/lit8 v3, v2, 0x1

    .line 1314
    .restart local v3    # "idx2":I
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$a:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$offa:I

    add-int/2addr v5, v2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D
    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v6

    aget-wide v6, v6, v2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$ak:[D

    aget-wide v8, v8, v2

    mul-double/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D
    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v3

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$ak:[D

    aget-wide v10, v10, v3

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v4, v5

    .line 1315
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$a:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$offa:I

    add-int/2addr v5, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D
    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v6

    aget-wide v6, v6, v3

    neg-double v6, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$ak:[D

    aget-wide v8, v8, v2

    mul-double/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D
    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v2

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$ak:[D

    aget-wide v10, v10, v3

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v4, v5

    .line 1311
    .end local v2    # "idx1":I
    .end local v3    # "idx2":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 1318
    .end local v0    # "i":I
    :cond_a8
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
