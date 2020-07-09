.class Lcom/oneplus/lib/widget/recyclerview/OpReorderer;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;
    }
.end annotation


# instance fields
.field final mCallback:Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;->mCallback:Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;

    .line 34
    return-void
.end method

.method private getLastMoveOutOfOrder(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;)I"
        }
    .end annotation

    .line 219
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 220
    .local v0, "foundNonMove":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 221
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 222
    .local v2, "op1":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 223
    if-eqz v0, :cond_1

    .line 224
    return v1

    .line 227
    :cond_0
    const/4 v0, 0x1

    .line 220
    .end local v2    # "op1":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 230
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private swapMoveAdd(Ljava/util/List;ILcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;ILcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 3
    .param p2, "move"    # I
    .param p3, "moveOp"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    .param p4, "add"    # I
    .param p5, "addOp"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;I",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            "I",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 162
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 164
    .local v0, "offset":I
    iget v1, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_0

    .line 165
    add-int/lit8 v0, v0, -0x1

    .line 167
    :cond_0
    iget v1, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_1

    .line 168
    add-int/lit8 v0, v0, 0x1

    .line 170
    :cond_1
    iget v1, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v1, v2, :cond_2

    .line 171
    iget v1, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 173
    :cond_2
    iget v1, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v1, v2, :cond_3

    .line 174
    iget v1, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 176
    :cond_3
    iget v1, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v0

    iput v1, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 177
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method private swapMoveOp(Ljava/util/List;II)V
    .locals 8
    .param p2, "badMove"    # I
    .param p3, "next"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;II)V"
        }
    .end annotation

    .line 46
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 47
    .local v0, "moveOp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 48
    .local v7, "nextOp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    iget v1, v7, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v0

    move v5, p3

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;->swapMoveUpdate(Ljava/util/List;ILcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;ILcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_0

    .line 50
    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v0

    move v5, p3

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;->swapMoveRemove(Ljava/util/List;ILcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;ILcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v0

    move v5, p3

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;->swapMoveAdd(Ljava/util/List;ILcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;ILcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 54
    nop

    .line 59
    :goto_0
    return-void
.end method


# virtual methods
.method reorderOps(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;>;"
    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;->getLastMoveOutOfOrder(Ljava/util/List;)I

    move-result v0

    move v1, v0

    .local v1, "badMove":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 41
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;->swapMoveOp(Ljava/util/List;II)V

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method swapMoveRemove(Ljava/util/List;ILcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;ILcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 8
    .param p2, "movePos"    # I
    .param p3, "moveOp"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    .param p4, "removePos"    # I
    .param p5, "removeOp"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;I",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            "I",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 63
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 65
    .local v0, "extraRm":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    const/4 v1, 0x0

    .line 68
    .local v1, "revertedMove":Z
    iget v2, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, "moveIsBackwards":Z
    iget v3, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, v5, :cond_1

    iget v3, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v6, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_1

    .line 72
    const/4 v1, 0x1

    goto :goto_0

    .line 75
    .end local v2    # "moveIsBackwards":Z
    :cond_0
    const/4 v2, 0x1

    .line 76
    .restart local v2    # "moveIsBackwards":Z
    iget v3, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v4

    if-ne v3, v5, :cond_1

    iget v3, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_1

    .line 78
    const/4 v1, 0x1

    .line 83
    :cond_1
    :goto_0
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, v5, :cond_2

    .line 84
    iget v3, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v3, v4

    iput v3, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_1

    .line 85
    :cond_2
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_4

    .line 87
    iget v3, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 88
    iput v4, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    .line 89
    iput v4, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 90
    iget v3, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-nez v3, :cond_3

    .line 91
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 92
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;->mCallback:Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;

    invoke-interface {v3, p5}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 95
    :cond_3
    return-void

    .line 99
    :cond_4
    :goto_1
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, v5, :cond_5

    .line 100
    iget v3, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v3, v4

    iput v3, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_2

    .line 101
    :cond_5
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_6

    .line 102
    iget v3, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v5

    iget v5, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v3, v5

    .line 104
    .local v3, "remaining":I
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;->mCallback:Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;

    iget v6, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v4

    const/4 v7, 0x0

    invoke-interface {v5, v4, v6, v3, v7}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 105
    iget v4, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v4, v5

    iput v4, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 109
    .end local v3    # "remaining":I
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 110
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 112
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;->mCallback:Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;

    invoke-interface {v3, p3}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 113
    return-void

    .line 117
    :cond_7
    if-eqz v2, :cond_b

    .line 118
    if-eqz v0, :cond_9

    .line 119
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_8

    .line 120
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 122
    :cond_8
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_9

    .line 123
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 126
    :cond_9
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_a

    .line 127
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 129
    :cond_a
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_f

    .line 130
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    .line 133
    :cond_b
    if-eqz v0, :cond_d

    .line 134
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_c

    .line 135
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 137
    :cond_c
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_d

    .line 138
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 141
    :cond_d
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_e

    .line 142
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 144
    :cond_e
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_f

    .line 145
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 149
    :cond_f
    :goto_3
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v4, :cond_10

    .line 151
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 153
    :cond_10
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 155
    :goto_4
    if-eqz v0, :cond_11

    .line 156
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 158
    :cond_11
    return-void
.end method

.method swapMoveUpdate(Ljava/util/List;ILcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;ILcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 7
    .param p2, "move"    # I
    .param p3, "moveOp"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    .param p4, "update"    # I
    .param p5, "updateOp"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;I",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            "I",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 183
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 184
    .local v0, "extraUp1":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    const/4 v1, 0x0

    .line 186
    .local v1, "extraUp2":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    iget v2, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v3, :cond_0

    .line 187
    iget v2, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v5

    iput v2, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_0

    .line 188
    :cond_0
    iget v2, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v6

    if-ge v2, v3, :cond_1

    .line 190
    iget v2, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v5

    iput v2, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 191
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;->mCallback:Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;

    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget-object v6, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v2, v4, v3, v5, v6}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 194
    :cond_1
    :goto_0
    iget v2, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, v3, :cond_2

    .line 195
    iget v2, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v5

    iput v2, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_1

    .line 196
    :cond_2
    iget v2, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v6

    if-ge v2, v3, :cond_3

    .line 197
    iget v2, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v3

    .line 199
    .local v2, "remaining":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;->mCallback:Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;

    iget v6, p3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v5

    iget-object v5, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v4, v6, v2, v5}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v1

    .line 201
    iget v3, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v2

    iput v3, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 203
    .end local v2    # "remaining":I
    :cond_3
    :goto_1
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget v2, p5, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-lez v2, :cond_4

    .line 205
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 207
    :cond_4
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 208
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;->mCallback:Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;

    invoke-interface {v2, p5}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 210
    :goto_2
    if-eqz v0, :cond_5

    .line 211
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 213
    :cond_5
    if-eqz v1, :cond_6

    .line 214
    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 216
    :cond_6
    return-void
.end method
