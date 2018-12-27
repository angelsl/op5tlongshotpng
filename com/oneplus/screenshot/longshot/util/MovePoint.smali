.class public abstract Lcom/oneplus/screenshot/longshot/util/MovePoint;
.super Landroid/graphics/Point;
.source "MovePoint.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MovePoint"


# instance fields
.field private mDistance:I

.field private mDownTime:J

.field private mEnd:Landroid/graphics/Point;

.field private mStart:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(ILandroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 6
    .param p1, "distance"    # I
    .param p2, "start"    # Landroid/graphics/Point;
    .param p3, "end"    # Landroid/graphics/Point;

    .line 20
    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mStart:Landroid/graphics/Point;

    .line 13
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mEnd:Landroid/graphics/Point;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mDistance:I

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mDownTime:J

    .line 21
    iput p1, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mDistance:I

    .line 22
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mStart:Landroid/graphics/Point;

    .line 23
    iput-object p3, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mEnd:Landroid/graphics/Point;

    .line 24
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->reset()V

    .line 25
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public MoveTo(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 80
    return-void
.end method

.method public abstract canMove()Z
.end method

.method public getDistance()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mDistance:I

    return v0
.end method

.method public getDownTime()J
    .registers 3

    .line 55
    iget-wide v0, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mDownTime:J

    return-wide v0
.end method

.method public getEnd()Landroid/graphics/Point;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mEnd:Landroid/graphics/Point;

    return-object v0
.end method

.method public getStart()Landroid/graphics/Point;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mStart:Landroid/graphics/Point;

    return-object v0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract isNext()Z
.end method

.method public abstract move()V
.end method

.method public reset()V
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mStart:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mStart:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->set(II)V

    .line 40
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setDownTime(J)V
    .registers 3
    .param p1, "downTime"    # J

    .line 59
    iput-wide p1, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mDownTime:J

    .line 60
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mStart:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mEnd:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateStart(Landroid/graphics/Point;)V
    .registers 2
    .param p1, "start"    # Landroid/graphics/Point;

    .line 75
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mStart:Landroid/graphics/Point;

    .line 76
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
