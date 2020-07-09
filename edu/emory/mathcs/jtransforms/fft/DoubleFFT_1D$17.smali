.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V
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

.field final synthetic val$norm:D


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DD)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    .line 6522
    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;->val$lastIdx:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;->val$a:[D

    iput-wide p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;->val$norm:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 6525
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;->val$firstIdx:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;->val$lastIdx:I

    if-ge v0, v1, :cond_0

    .line 6526
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;->val$a:[D

    aget-wide v2, v1, v0

    iget-wide v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;->val$norm:D

    mul-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 6525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6528
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
