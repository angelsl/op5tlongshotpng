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
    .registers 8
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
    .registers 14

    .line 1140
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$isign:I

    const/4 v1, 0x2

    if-lez v0, :cond_56

    .line 1141
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$firstIdx:I

    .local v0, "i":I
    :goto_7
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$lastIdx:I

    if-ge v0, v2, :cond_a8

    .line 1142
    mul-int v2, v1, v0

    .line 1143
    .local v2, "idx1":I
    add-int/lit8 v3, v2, 0x1

    .line 1144
    .local v3, "idx2":I
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$offa:I

    add-int/2addr v4, v2

    .line 1145
    .local v4, "idx3":I
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$offa:I

    add-int/2addr v5, v3

    .line 1146
    .local v5, "idx4":I
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$a:[D

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D
    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v7

    aget-wide v7, v7, v2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$ak:[D

    aget-wide v9, v9, v2

    mul-double/2addr v7, v9

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D
    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v9

    aget-wide v9, v9, v3

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$ak:[D

    aget-wide v11, v11, v3

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    aput-wide v7, v6, v4

    .line 1147
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$a:[D

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D
    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v7

    aget-wide v7, v7, v3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$ak:[D

    aget-wide v9, v9, v2

    mul-double/2addr v7, v9

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D
    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v9

    aget-wide v9, v9, v2

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$ak:[D

    aget-wide v11, v11, v3

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    aput-wide v7, v6, v5

    .line 1141
    .end local v2    # "idx1":I
    .end local v3    # "idx2":I
    .end local v4    # "idx3":I
    .end local v5    # "idx4":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1150
    .end local v0    # "i":I
    :cond_56
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$firstIdx:I

    .restart local v0    # "i":I
    :goto_58
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$lastIdx:I

    if-ge v0, v2, :cond_a8

    .line 1151
    mul-int v2, v1, v0

    .line 1152
    .restart local v2    # "idx1":I
    add-int/lit8 v3, v2, 0x1

    .line 1153
    .restart local v3    # "idx2":I
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$offa:I

    add-int/2addr v4, v2

    .line 1154
    .restart local v4    # "idx3":I
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$offa:I

    add-int/2addr v5, v3

    .line 1155
    .restart local v5    # "idx4":I
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$a:[D

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D
    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v7

    aget-wide v7, v7, v2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$ak:[D

    aget-wide v9, v9, v2

    mul-double/2addr v7, v9

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D
    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v9

    aget-wide v9, v9, v3

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$ak:[D

    aget-wide v11, v11, v3

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    aput-wide v7, v6, v4

    .line 1156
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$a:[D

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D
    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v7

    aget-wide v7, v7, v3

    neg-double v7, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$ak:[D

    aget-wide v9, v9, v2

    mul-double/2addr v7, v9

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    # getter for: Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D
    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v9

    aget-wide v9, v9, v2

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;->val$ak:[D

    aget-wide v11, v11, v3

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    aput-wide v7, v6, v5

    .line 1150
    .end local v2    # "idx1":I
    .end local v3    # "idx2":I
    .end local v4    # "idx3":I
    .end local v5    # "idx4":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 1159
    .end local v0    # "i":I
    :cond_a8
    return-void
.end method
