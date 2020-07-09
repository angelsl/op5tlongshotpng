.class Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;,
        Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final POSITION_TYPE_INVISIBLE:I = 0x0

.field static final POSITION_TYPE_NEW_OR_LAID_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AHT"


# instance fields
.field final mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/widget/recyclerview/Pools$Pool<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;-><init>(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;Z)V

    .line 72
    return-void
.end method

.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;Z)V
    .locals 2
    .param p1, "callback"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;
    .param p2, "disableRecycler"    # Z

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 75
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    .line 76
    iput-boolean p2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mDisableRecycler:Z

    .line 77
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;-><init>(Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOpReorderer:Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

    .line 78
    return-void
.end method

.method private applyAdd(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 429
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 430
    return-void
.end method

.method private applyMove(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 127
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 128
    return-void
.end method

.method private applyRemove(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 10
    .param p1, "op"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 131
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 132
    .local v0, "tmpStart":I
    const/4 v1, 0x0

    .line 133
    .local v1, "tmpCount":I
    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    .line 134
    .local v2, "tmpEnd":I
    const/4 v3, -0x1

    .line 135
    .local v3, "type":I
    iget v4, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .local v4, "position":I
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v4, v2, :cond_5

    .line 136
    const/4 v7, 0x0

    .line 137
    .local v7, "typeChanged":Z
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v8, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->findViewHolder(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v8

    .line 138
    .local v8, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-nez v8, :cond_2

    invoke-direct {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    if-ne v3, v6, :cond_1

    .line 159
    invoke-virtual {p0, v6, v0, v1, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 160
    .local v5, "newOp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 161
    const/4 v7, 0x1

    .line 163
    .end local v5    # "newOp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 145
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 148
    invoke-virtual {p0, v6, v0, v1, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 149
    .restart local v5    # "newOp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 150
    const/4 v7, 0x1

    .line 152
    .end local v5    # "newOp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_3
    const/4 v3, 0x1

    .line 165
    :goto_2
    if-eqz v7, :cond_4

    .line 166
    sub-int/2addr v4, v1

    .line 167
    sub-int/2addr v2, v1

    .line 168
    const/4 v1, 0x1

    goto :goto_3

    .line 170
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 135
    .end local v7    # "typeChanged":Z
    .end local v8    # "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :goto_3
    add-int/2addr v4, v6

    goto :goto_0

    .line 173
    .end local v4    # "position":I
    :cond_5
    iget v4, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v1, v4, :cond_6

    .line 174
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 175
    invoke-virtual {p0, v6, v0, v1, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 177
    :cond_6
    if-nez v3, :cond_7

    .line 178
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_4

    .line 180
    :cond_7
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 182
    :goto_4
    return-void
.end method

.method private applyUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 9
    .param p1, "op"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 185
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 186
    .local v0, "tmpStart":I
    const/4 v1, 0x0

    .line 187
    .local v1, "tmpCount":I
    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    .line 188
    .local v2, "tmpEnd":I
    const/4 v3, -0x1

    .line 189
    .local v3, "type":I
    iget v4, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .local v4, "position":I
    :goto_0
    const/4 v5, 0x2

    if-ge v4, v2, :cond_4

    .line 190
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v6, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->findViewHolder(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v6

    .line 191
    .local v6, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    const/4 v7, 0x1

    if-nez v6, :cond_2

    invoke-direct {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    if-ne v3, v7, :cond_1

    .line 202
    iget-object v8, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v1, v8}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 204
    .local v5, "newOp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 205
    const/4 v1, 0x0

    .line 206
    move v0, v4

    .line 208
    .end local v5    # "newOp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 192
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 193
    iget-object v8, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v1, v8}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 195
    .restart local v5    # "newOp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 196
    const/4 v1, 0x0

    .line 197
    move v0, v4

    .line 199
    .end local v5    # "newOp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_3
    const/4 v3, 0x1

    .line 210
    :goto_2
    nop

    .end local v6    # "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    add-int/2addr v1, v7

    .line 189
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 212
    .end local v4    # "position":I
    :cond_4
    iget v4, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v1, v4, :cond_5

    .line 213
    iget-object v4, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 214
    .local v4, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 215
    invoke-virtual {p0, v5, v0, v1, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 217
    .end local v4    # "payload":Ljava/lang/Object;
    :cond_5
    if-nez v3, :cond_6

    .line 218
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_3

    .line 220
    :cond_6
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 222
    :goto_3
    return-void
.end method

.method private canFindInPreLayout(I)Z
    .locals 7
    .param p1, "position"    # I

    .line 408
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 409
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 410
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 411
    .local v2, "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    .line 412
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(II)I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 413
    return v5

    .line 415
    :cond_0
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-nez v3, :cond_2

    .line 417
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    .line 418
    .local v3, "end":I
    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .local v4, "pos":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 419
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v4, v6}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(II)I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 420
    return v5

    .line 418
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 409
    .end local v2    # "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    .end local v3    # "end":I
    .end local v4    # "pos":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 12
    .param p1, "op"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 228
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v0, :cond_a

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    .line 242
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v0

    .line 246
    .local v0, "tmpStart":I
    const/4 v1, 0x1

    .line 247
    .local v1, "tmpCnt":I
    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 249
    .local v2, "offsetPositionForPartial":I
    iget v3, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    .line 251
    const/4 v3, 0x1

    .line 252
    .local v3, "positionMultiplier":I
    goto :goto_0

    .line 257
    .end local v3    # "positionMultiplier":I
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "op should be remove or update."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 254
    :cond_1
    const/4 v3, 0x0

    .line 255
    .restart local v3    # "positionMultiplier":I
    nop

    .line 259
    :goto_0
    const/4 v6, 0x1

    .local v6, "p":I
    :goto_1
    iget v7, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v6, v7, :cond_8

    .line 260
    iget v7, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v8, v3, v6

    add-int/2addr v7, v8

    .line 261
    .local v7, "pos":I
    iget v8, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v7, v8}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v8

    .line 265
    .local v8, "updatedPos":I
    const/4 v9, 0x0

    .line 266
    .local v9, "continuous":Z
    iget v10, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v11, 0x0

    if-eq v10, v5, :cond_4

    if-eq v10, v4, :cond_2

    goto :goto_2

    .line 268
    :cond_2
    add-int/lit8 v10, v0, 0x1

    if-ne v8, v10, :cond_3

    move v11, v5

    :cond_3
    move v9, v11

    .line 269
    goto :goto_2

    .line 271
    :cond_4
    if-ne v8, v0, :cond_5

    move v11, v5

    :cond_5
    move v9, v11

    .line 274
    :goto_2
    if-eqz v9, :cond_6

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 278
    :cond_6
    iget v10, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    iget-object v11, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v10, v0, v1, v11}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v10

    .line 282
    .local v10, "tmp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    invoke-virtual {p0, v10, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;I)V

    .line 283
    invoke-virtual {p0, v10}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 284
    iget v11, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-ne v11, v4, :cond_7

    .line 285
    add-int/2addr v2, v1

    .line 287
    :cond_7
    move v0, v8

    .line 288
    const/4 v1, 0x1

    .line 259
    .end local v7    # "pos":I
    .end local v8    # "updatedPos":I
    .end local v9    # "continuous":Z
    .end local v10    # "tmp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 291
    .end local v6    # "p":I
    :cond_8
    iget-object v4, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 292
    .local v4, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 293
    if-lez v1, :cond_9

    .line 294
    iget v5, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v5, v0, v1, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 298
    .local v5, "tmp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    invoke-virtual {p0, v5, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;I)V

    .line 299
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 309
    .end local v5    # "tmp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_9
    return-void

    .line 229
    .end local v0    # "tmpStart":I
    .end local v1    # "tmpCnt":I
    .end local v2    # "offsetPositionForPartial":I
    .end local v3    # "positionMultiplier":I
    .end local v4    # "payload":Ljava/lang/Object;
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "should not dispatch add or move for pre layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 4
    .param p1, "op"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 436
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 442
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    .line 443
    goto :goto_0

    .line 452
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v3, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 450
    goto :goto_0

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    .line 447
    goto :goto_0

    .line 439
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 440
    nop

    .line 454
    :goto_0
    return-void
.end method

.method private updatePositionWithPostponed(II)I
    .locals 7
    .param p1, "pos"    # I
    .param p2, "cmd"    # I

    .line 327
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 328
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ltz v1, :cond_e

    .line 329
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 330
    .local v4, "postponed":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-ne v5, v2, :cond_9

    .line 332
    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v5, :cond_0

    .line 333
    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 334
    .local v2, "start":I
    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .local v5, "end":I
    goto :goto_1

    .line 336
    .end local v2    # "start":I
    .end local v5    # "end":I
    :cond_0
    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 337
    .restart local v2    # "start":I
    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 339
    .restart local v5    # "end":I
    :goto_1
    if-lt p1, v2, :cond_6

    if-gt p1, v5, :cond_6

    .line 341
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, v6, :cond_3

    .line 342
    if-nez p2, :cond_1

    .line 343
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_2

    .line 344
    :cond_1
    if-ne p2, v3, :cond_2

    .line 345
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 348
    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 350
    :cond_3
    if-nez p2, :cond_4

    .line 351
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    .line 352
    :cond_4
    if-ne p2, v3, :cond_5

    .line 353
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 356
    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 358
    :cond_6
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v6, :cond_8

    .line 360
    if-nez p2, :cond_7

    .line 361
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 362
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_4

    .line 363
    :cond_7
    if-ne p2, v3, :cond_8

    .line 364
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 365
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 368
    .end local v2    # "start":I
    .end local v5    # "end":I
    :cond_8
    :goto_4
    goto :goto_5

    .line 369
    :cond_9
    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, p1, :cond_b

    .line 370
    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-nez v2, :cond_a

    .line 371
    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v2

    goto :goto_5

    .line 372
    :cond_a
    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v3, :cond_d

    .line 373
    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v2

    goto :goto_5

    .line 376
    :cond_b
    if-nez p2, :cond_c

    .line 377
    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v3

    iput v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_5

    .line 378
    :cond_c
    if-ne p2, v3, :cond_d

    .line 379
    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v3

    iput v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 328
    .end local v4    # "postponed":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_d
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 392
    .end local v1    # "i":I
    :cond_e
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .restart local v1    # "i":I
    :goto_6
    if-ltz v1, :cond_12

    .line 393
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 394
    .local v3, "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-ne v4, v2, :cond_10

    .line 395
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v4, v5, :cond_f

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-gez v4, :cond_11

    .line 396
    :cond_f
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 397
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_7

    .line 399
    :cond_10
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v4, :cond_11

    .line 400
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 401
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 392
    .end local v3    # "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_11
    :goto_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 404
    .end local v1    # "i":I
    :cond_12
    return p1
.end method


# virtual methods
.method varargs addUpdateOp([Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;
    .locals 1
    .param p1, "ops"    # [Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 81
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 82
    return-object p0
.end method

.method public applyPendingUpdatesToPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .line 567
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 568
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_7

    .line 569
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 570
    .local v2, "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 586
    :cond_0
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_1

    .line 587
    iget p1, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    .line 589
    :cond_1
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_2

    .line 590
    add-int/lit8 p1, p1, -0x1

    .line 592
    :cond_2
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_6

    .line 593
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 577
    :cond_3
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_6

    .line 578
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    .line 579
    .local v3, "end":I
    if-le v3, p1, :cond_4

    .line 580
    const/4 v4, -0x1

    return v4

    .line 582
    :cond_4
    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v4

    .line 583
    .end local v3    # "end":I
    goto :goto_1

    .line 572
    :cond_5
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_6

    .line 573
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    .line 568
    .end local v2    # "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    .end local v1    # "i":I
    :cond_7
    return p1
.end method

.method consumePostponedUpdates()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 118
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 119
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    invoke-interface {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 122
    return-void
.end method

.method consumeUpdatesInOnePass()V
    .locals 7

    .line 537
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->consumePostponedUpdates()V

    .line 538
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 539
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 540
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 541
    .local v2, "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 555
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 556
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_1

    .line 551
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 552
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v6, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 553
    goto :goto_1

    .line 547
    :cond_2
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 548
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 549
    goto :goto_1

    .line 543
    :cond_3
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 544
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 545
    nop

    .line 559
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    .line 560
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 539
    .end local v2    # "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 564
    return-void
.end method

.method dispatchFirstPassAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;I)V
    .locals 3
    .param p1, "op"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    .param p2, "offsetStart"    # I

    .line 312
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchFirstPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 313
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 319
    goto :goto_0

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 316
    nop

    .line 324
    :goto_0
    return-void
.end method

.method findPositionOffset(I)I
    .locals 1
    .param p1, "position"    # I

    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(II)I

    move-result v0

    return v0
.end method

.method findPositionOffset(II)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "firstPostponedItem"    # I

    .line 465
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 466
    .local v0, "count":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 467
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 468
    .local v2, "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 469
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_0

    .line 470
    iget p1, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    .line 472
    :cond_0
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_1

    .line 473
    add-int/lit8 p1, p1, -0x1

    .line 475
    :cond_1
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_5

    .line 476
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 479
    :cond_2
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_5

    .line 480
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 481
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_3

    .line 482
    const/4 v3, -0x1

    return v3

    .line 484
    :cond_3
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v3

    goto :goto_1

    .line 485
    :cond_4
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-nez v3, :cond_5

    .line 486
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    .line 466
    .end local v2    # "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    .end local v1    # "i":I
    :cond_6
    return p1
.end method

.method hasPendingUpdates()Z
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 702
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 703
    .local v0, "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    if-nez v0, :cond_0

    .line 704
    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 706
    :cond_0
    iput p1, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    .line 707
    iput p2, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 708
    iput p3, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 709
    iput-object p4, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 711
    :goto_0
    return-object v0
.end method

.method onItemRangeChanged(IILjava/lang/Object;)Z
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 497
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method onItemRangeInserted(II)Z
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 505
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method onItemRangeMoved(III)Z
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "itemCount"    # I

    .line 521
    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 522
    return v0

    .line 524
    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    .line 527
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, p2, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 525
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Moving more than 1 item is not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onItemRangeRemoved(II)Z
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 513
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method preProcess()V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOpReorderer:Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;->reorderOps(Ljava/util/List;)V

    .line 92
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 93
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 94
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 95
    .local v2, "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->applyMove(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 103
    :cond_1
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->applyUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 104
    goto :goto_1

    .line 100
    :cond_2
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->applyRemove(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 101
    goto :goto_1

    .line 97
    :cond_3
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->applyAdd(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 98
    nop

    .line 109
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    .line 110
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 93
    .end local v2    # "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 114
    return-void
.end method

.method public recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 1
    .param p1, "op"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 716
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_0

    .line 717
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 718
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 720
    :cond_0
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .line 723
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 724
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 725
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 724
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 727
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 728
    return-void
.end method

.method reset()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 88
    return-void
.end method
