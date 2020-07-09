.class Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;
.super Ljava/lang/Object;
.source "LongshotMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/LongshotMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoveTracker"
.end annotation


# instance fields
.field endTime:J

.field private isStart:Z

.field mEndPoint:Landroid/graphics/Point;

.field mStartPoint:Landroid/graphics/Point;

.field moveDistance:I

.field startTime:J

.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;)V
    .locals 4
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    .line 1112
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->mStartPoint:Landroid/graphics/Point;

    .line 1114
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->mEndPoint:Landroid/graphics/Point;

    .line 1115
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->startTime:J

    .line 1116
    iput-wide v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->endTime:J

    .line 1117
    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->isStart:Z

    return-void
.end method


# virtual methods
.method public getMove()I
    .locals 1

    .line 1147
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->moveDistance:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public isStart()Z
    .locals 1

    .line 1143
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->isStart:Z

    return v0
.end method

.method moveTracker()V
    .locals 0

    .line 1122
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1138
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->moveDistance:I

    .line 1139
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->isStart:Z

    .line 1140
    return-void
.end method

.method public start(FF)V
    .locals 2
    .param p1, "oldy"    # F
    .param p2, "y"    # F

    .line 1127
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->moveDistance:I

    int-to-float v0, v0

    sub-float v1, p2, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->moveDistance:I

    .line 1128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->startTime:J

    .line 1129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->isStart:Z

    .line 1130
    return-void
.end method

.method public updateMovePoint(FF)V
    .locals 2
    .param p1, "oldy"    # F
    .param p2, "y"    # F

    .line 1133
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->moveDistance:I

    int-to-float v0, v0

    sub-float v1, p2, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->moveDistance:I

    .line 1134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->endTime:J

    .line 1135
    return-void
.end method
