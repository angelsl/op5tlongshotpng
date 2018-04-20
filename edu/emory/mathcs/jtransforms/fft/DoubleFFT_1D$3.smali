.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;
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

.field final synthetic val$a:[D

.field final synthetic val$ak:[D

.field final synthetic val$firstIdx:I

.field final synthetic val$isign:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V
    .registers 8
    .param p1, "this$0"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    .prologue
    .line 1
    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$isign:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$firstIdx:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$lastIdx:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$offa:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$ak:[D

    iput-object p7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$a:[D

    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 1078
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$isign:I

    if-lez v5, :cond_57

    .line 1079
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$firstIdx:I

    .local v0, "i":I
    :goto_6
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$lastIdx:I

    if-ge v0, v5, :cond_ab

    .line 1080
    mul-int/lit8 v1, v0, 0x2

    .line 1081
    .local v1, "idx1":I
    add-int/lit8 v2, v1, 0x1

    .line 1082
    .local v2, "idx2":I
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$offa:I

    add-int v3, v5, v1

    .line 1083
    .local v3, "idx3":I
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$offa:I

    add-int v4, v5, v2

    .line 1084
    .local v4, "idx4":I
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$ak:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$a:[D

    aget-wide v6, v6, v3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get0(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$a:[D

    aget-wide v8, v8, v4

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get0(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v10

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, v5, v1

    .line 1085
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$ak:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$a:[D

    aget-wide v6, v6, v3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get0(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v2

    mul-double/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$a:[D

    aget-wide v8, v8, v4

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get0(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v10

    aget-wide v10, v10, v1

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v2

    .line 1079
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1088
    .end local v0    # "i":I
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v3    # "idx3":I
    .end local v4    # "idx4":I
    :cond_57
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$firstIdx:I

    .restart local v0    # "i":I
    :goto_59
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$lastIdx:I

    if-ge v0, v5, :cond_ab

    .line 1089
    mul-int/lit8 v1, v0, 0x2

    .line 1090
    .restart local v1    # "idx1":I
    add-int/lit8 v2, v1, 0x1

    .line 1091
    .restart local v2    # "idx2":I
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$offa:I

    add-int v3, v5, v1

    .line 1092
    .restart local v3    # "idx3":I
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$offa:I

    add-int v4, v5, v2

    .line 1093
    .restart local v4    # "idx4":I
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$ak:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$a:[D

    aget-wide v6, v6, v3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get0(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$a:[D

    aget-wide v8, v8, v4

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get0(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v10

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v1

    .line 1094
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$ak:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$a:[D

    aget-wide v6, v6, v3

    neg-double v6, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get0(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v2

    mul-double/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$a:[D

    aget-wide v8, v8, v4

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->-get0(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v10

    aget-wide v10, v10, v1

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v2

    .line 1088
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 1097
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v3    # "idx3":I
    .end local v4    # "idx4":I
    :cond_ab
    return-void
.end method
