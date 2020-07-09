.class Lcom/oneplus/screenshot/GlobalScreenshot$29;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->createSmallScreenshotDropOutAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 2329
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$29;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7
    .param p1, "x"    # F

    .line 2332
    const v0, 0x3f5c4771

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    .line 2334
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-float v0, p1, v0

    sub-float/2addr v2, v0

    float-to-double v0, v2

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v3, v0

    double-to-float v0, v3

    return v0

    .line 2336
    :cond_0
    return v2
.end method
