.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;
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
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    .line 1138
    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$isign:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$firstIdx:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$lastIdx:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$offa:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$a:[D

    iput-object p7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$ak:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1140
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$isign:I

    if-lez v0, :cond_1

    .line 1141
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$firstIdx:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$lastIdx:I

    if-ge v0, v1, :cond_0

    .line 1142
    mul-int/lit8 v1, v0, 0x2

    .line 1143
    .local v1, "idx1":I
    add-int/lit8 v2, v1, 0x1

    .line 1144
    .local v2, "idx2":I
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$offa:I

    add-int v4, v3, v1

    .line 1145
    .local v4, "idx3":I
    add-int/2addr v3, v2

    .line 1146
    .local v3, "idx4":I
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$a:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v6

    aget-wide v6, v6, v1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$ak:[D

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v2

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$ak:[D

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, v5, v4

    .line 1147
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$a:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v6

    aget-wide v6, v6, v2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$ak:[D

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$ak:[D

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v3

    .line 1141
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v3    # "idx4":I
    .end local v4    # "idx3":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 1150
    :cond_1
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$firstIdx:I

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$lastIdx:I

    if-ge v0, v1, :cond_2

    .line 1151
    mul-int/lit8 v1, v0, 0x2

    .line 1152
    .restart local v1    # "idx1":I
    add-int/lit8 v2, v1, 0x1

    .line 1153
    .restart local v2    # "idx2":I
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$offa:I

    add-int v4, v3, v1

    .line 1154
    .restart local v4    # "idx3":I
    add-int/2addr v3, v2

    .line 1155
    .restart local v3    # "idx4":I
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$a:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v6

    aget-wide v6, v6, v1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$ak:[D

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v2

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$ak:[D

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v4

    .line 1156
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$a:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v6

    aget-wide v6, v6, v2

    neg-double v6, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$ak:[D

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$ak:[D

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v3

    .line 1150
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v3    # "idx4":I
    .end local v4    # "idx3":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1159
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method
