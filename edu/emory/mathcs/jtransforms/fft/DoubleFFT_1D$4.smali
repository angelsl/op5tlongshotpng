.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_complex([DII)V
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

    .prologue
    .line 1
    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$isign:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$firstIdx:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$lastIdx:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$ak:[D

    .line 1108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 1110
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$isign:I

    if-lez v3, :cond_51

    .line 1111
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$firstIdx:I

    .local v0, "i":I
    :goto_6
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$lastIdx:I

    if-ge v0, v3, :cond_9d

    .line 1112
    mul-int/lit8 v1, v0, 0x2

    .line 1113
    .local v1, "idx1":I
    add-int/lit8 v2, v1, 0x1

    .line 1114
    .local v2, "idx2":I
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$ak:[D

    aget-wide v6, v3, v1

    neg-double v6, v6

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get1(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v3

    aget-wide v8, v3, v2

    mul-double/2addr v6, v8

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$ak:[D

    aget-wide v8, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get1(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v3

    aget-wide v10, v3, v1

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    .line 1115
    .local v4, "im":D
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$ak:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$ak:[D

    aget-wide v6, v6, v1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get1(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$ak:[D

    aget-wide v8, v8, v2

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get1(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v10

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v3, v1

    .line 1116
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$ak:[D

    aput-wide v4, v3, v2

    .line 1111
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1119
    .end local v0    # "i":I
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v4    # "im":D
    :cond_51
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$firstIdx:I

    .restart local v0    # "i":I
    :goto_53
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$lastIdx:I

    if-ge v0, v3, :cond_9d

    .line 1120
    mul-int/lit8 v1, v0, 0x2

    .line 1121
    .restart local v1    # "idx1":I
    add-int/lit8 v2, v1, 0x1

    .line 1122
    .restart local v2    # "idx2":I
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$ak:[D

    aget-wide v6, v3, v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get1(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v3

    aget-wide v8, v3, v2

    mul-double/2addr v6, v8

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$ak:[D

    aget-wide v8, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get1(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v3

    aget-wide v10, v3, v1

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    .line 1123
    .restart local v4    # "im":D
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$ak:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$ak:[D

    aget-wide v6, v6, v1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get1(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$ak:[D

    aget-wide v8, v8, v2

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get1(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v10

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, v3, v1

    .line 1124
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;->val$ak:[D

    aput-wide v4, v3, v2

    .line 1119
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 1127
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v4    # "im":D
    :cond_9d
    return-void
.end method
