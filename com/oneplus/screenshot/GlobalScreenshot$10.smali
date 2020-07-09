.class Lcom/oneplus/screenshot/GlobalScreenshot$10;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
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

    .line 1557
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$10;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "x"    # F

    .line 1561
    const v0, 0x3e9aca6b

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1562
    const/4 v0, 0x0

    return v0

    .line 1564
    :cond_0
    const v0, 0x3f1aca6b

    sub-float v0, p1, v0

    const v1, 0x3eca6b2a

    div-float/2addr v0, v1

    return v0
.end method
