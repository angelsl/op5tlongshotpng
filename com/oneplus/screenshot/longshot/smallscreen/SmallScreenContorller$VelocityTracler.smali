.class Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;
.super Ljava/lang/Object;
.source "SmallScreenContorller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VelocityTracler"
.end annotation


# instance fields
.field endTime:J

.field mEndPoint:Landroid/graphics/Point;

.field mStartPoint:Landroid/graphics/Point;

.field startTime:J

.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;FF)V
    .locals 3
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 286
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->startTime:J

    .line 284
    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->endTime:J

    .line 287
    new-instance v0, Landroid/graphics/Point;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->mStartPoint:Landroid/graphics/Point;

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->startTime:J

    .line 289
    return-void
.end method


# virtual methods
.method public isDrop()Z
    .locals 10

    .line 297
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->mEndPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->mStartPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    .line 298
    .local v0, "distanceX":I
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->mEndPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->mStartPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    .line 300
    .local v1, "distanceY":I
    iget-wide v2, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->endTime:J

    iget-wide v4, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->startTime:J

    sub-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 301
    mul-int/lit8 v6, v0, 0xa

    int-to-long v6, v6

    sub-long/2addr v2, v4

    div-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    .line 304
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x52

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public updateMovePoint(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 292
    new-instance v0, Landroid/graphics/Point;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->mEndPoint:Landroid/graphics/Point;

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->endTime:J

    .line 294
    return-void
.end method
