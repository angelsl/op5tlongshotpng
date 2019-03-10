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
    .registers 5
    .param p2, "distance"    # I
    .param p3, "start"    # Landroid/graphics/Point;
    .param p4, "end"    # Landroid/graphics/Point;

    .line 659
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;->this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    .line 660
    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/screenshot/longshot/util/MovePoint;-><init>(ILandroid/graphics/Point;Landroid/graphics/Point;)V

    .line 661
    return-void
.end method


# virtual methods
.method public MoveTo(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 684
    iput p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;->x:I

    .line 685
    iput p2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;->y:I

    .line 686
    return-void-no-barrier
.end method

.method public canMove()Z
    .registers 3

    .line 675
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;->y:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;->getEnd()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 665
    const-string v0, "Next"

    return-object v0
.end method

.method public isNext()Z
    .registers 2

    .line 680
    const/4 v0, 0x1

    return v0
.end method

.method public move()V
    .registers 3

    .line 670
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;->getDistance()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;->offset(II)V

    .line 671
    return-void-no-barrier
.end method
