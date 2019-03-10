.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;
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

.field final synthetic val$ak:[D

.field final synthetic val$firstIdx:I

.field final synthetic val$isign:I

.field final synthetic val$lastIdx:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D)V
    .registers 6
    .param p1, "this$0"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    .line 1271
    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$isign:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$firstIdx:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$lastIdx:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 1273
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$isign:I

    const/4 v1, 0x2

    if-lez v0, :cond_51

    .line 1274
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$firstIdx:I

    .local v0, "i":I
    :goto_7
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$lastIdx:I

    if-ge v0, v2, :cond_9c

    .line 1275
    mul-int v2, v1, v0

    .line 1276
    .local v2, "idx1":I
    add-int/lit8 v3, v2, 0x1

    .line 1277
    .local v3, "idx2":I
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    aget-wide v4, v4, v2

    neg-double v4, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D
    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v6

    aget-wide v6, v6, v3

    mul-double/2addr v4, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    aget-wide v6, v6, v3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D
    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 1278
    .local v4, "im":D
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    aget-wide v7, v7, v2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D
    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v9

    aget-wide v9, v9, v2

    mul-double/2addr v7, v9

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    aget-wide v9, v9, v3

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D
    invoke-static {v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v11

    aget-wide v11, v11, v3

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    aput-wide v7, v6, v2

    .line 1279
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    aput-wide v4, v6, v3

    .line 1274
    .end local v2    # "idx1":I
    .end local v3    # "idx2":I
    .end local v4    # "im":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1282
    .end local v0    # "i":I
    :cond_51
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$firstIdx:I

    .restart local v0    # "i":I
    :goto_53
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$lastIdx:I

    if-ge v0, v2, :cond_9c

    .line 1283
    mul-int v2, v1, v0

    .line 1284
    .restart local v2    # "idx1":I
    add-int/lit8 v3, v2, 0x1

    .line 1285
    .restart local v3    # "idx2":I
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    aget-wide v4, v4, v2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D
    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v6

    aget-wide v6, v6, v3

    mul-double/2addr v4, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    aget-wide v6, v6, v3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D
    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 1286
    .restart local v4    # "im":D
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    aget-wide v7, v7, v2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D
    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v9

    aget-wide v9, v9, v2

    mul-double/2addr v7, v9

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    aget-wide v9, v9, v3

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D
    invoke-static {v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v11

    aget-wide v11, v11, v3

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    aput-wide v7, v6, v2

    .line 1287
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    aput-wide v4, v6, v3

    .line 1282
    .end local v2    # "idx1":I
    .end local v3    # "idx2":I
    .end local v4    # "im":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 1290
    .end local v0    # "i":I
    :cond_9c
    return-void-no-barrier
.end method
