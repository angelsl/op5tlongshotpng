.class Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;
.super Lcom/oneplus/screenshot/longshot/util/MovePoint;
.source "LongshotMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/LongshotMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveNext"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;ILandroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p2, "distance"    # I
    .param p3, "start"    # Landroid/graphics/Point;
    .param p4, "end"    # Landroid/graphics/Point;

    .line 973
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;->this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    .line 974
    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/screenshot/longshot/util/MovePoint;-><init>(ILandroid/graphics/Point;Landroid/graphics/Point;)V

    .line 975
    return-void
.end method


# virtual methods
.method public canMove()Z
    .locals 2

    .line 989
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;->y:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;->getEnd()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 979
    const-string v0, "Next"

    return-object v0
.end method

.method public isNext()Z
    .locals 1

    .line 994
    const/4 v0, 0x1

    return v0
.end method

.method public move()V
    .locals 2

    .line 984
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;->getDistance()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;->offset(II)V

    .line 985
    return-void
.end method

.method public moveTo(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 998
    iput p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;->x:I

    .line 999
    iput p2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;->y:I

    .line 1000
    return-void
.end method
