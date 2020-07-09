.class Lcom/oneplus/screenshot/GlobalScreenshot$24;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->createSmallScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
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

    .line 2266
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$24;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5
    .param p1, "x"    # F

    .line 2270
    const v0, 0x3f1aca6b

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .line 2271
    const-wide v1, 0x400921fb54442d18L    # Math.PI

    div-float v0, p1, v0

    float-to-double v3, v0

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 2273
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
