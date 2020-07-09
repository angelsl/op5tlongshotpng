.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DIZ)V
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
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    .line 567
    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;->val$lastIdx:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;->val$offa:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;->val$twon:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;->val$a:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 570
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;->val$firstIdx:I

    .local v0, "k":I
    :goto_0
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;->val$lastIdx:I

    if-ge v0, v1, :cond_0

    .line 571
    mul-int/lit8 v1, v0, 0x2

    .line 572
    .local v1, "idx1":I
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;->val$offa:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;->val$twon:I

    sub-int v4, v3, v1

    rem-int/2addr v4, v3

    add-int/2addr v4, v2

    .line 573
    .local v4, "idx2":I
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;->val$a:[D

    add-int v5, v2, v1

    aget-wide v5, v3, v5

    aput-wide v5, v3, v4

    .line 574
    add-int/lit8 v5, v4, 0x1

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    aget-wide v6, v3, v2

    neg-double v6, v6

    aput-wide v6, v3, v5

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    .end local v0    # "k":I
    .end local v1    # "idx1":I
    .end local v4    # "idx2":I
    :cond_0
    return-void
.end method
