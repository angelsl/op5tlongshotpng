.class Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
.super Ljava/lang/Object;
.source "AdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateOp"
.end annotation


# static fields
.field static final ADD:I = 0x0

.field static final MOVE:I = 0x3

.field static final POOL_SIZE:I = 0x1e

.field static final REMOVE:I = 0x1

.field static final UPDATE:I = 0x2


# instance fields
.field cmd:I

.field itemCount:I

.field payload:Ljava/lang/Object;

.field positionStart:I


# direct methods
.method constructor <init>(IIILjava/lang/Object;)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    .line 628
    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 629
    iput p3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 630
    iput-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 631
    return-void
.end method


# virtual methods
.method cmdToString()Ljava/lang/String;
    .locals 2

    .line 634
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 644
    const-string v0, "??"

    return-object v0

    .line 642
    :cond_0
    const-string v0, "mv"

    return-object v0

    .line 640
    :cond_1
    const-string v0, "up"

    return-object v0

    .line 638
    :cond_2
    const-string v0, "rm"

    return-object v0

    .line 636
    :cond_3
    const-string v0, "add"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 656
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 657
    return v0

    .line 659
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 663
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 665
    .local v2, "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eq v3, v4, :cond_2

    .line 666
    return v1

    .line 668
    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ne v3, v0, :cond_3

    .line 670
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-ne v3, v4, :cond_3

    .line 671
    return v0

    .line 674
    :cond_3
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v4, :cond_4

    .line 675
    return v1

    .line 677
    :cond_4
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v3, v4, :cond_5

    .line 678
    return v1

    .line 680
    :cond_5
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 681
    iget-object v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 682
    return v1

    .line 684
    :cond_6
    iget-object v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    if-eqz v3, :cond_7

    .line 685
    return v1

    .line 688
    :cond_7
    return v0

    .line 660
    .end local v2    # "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_8
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 693
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    .line 694
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v2

    .line 695
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v0, v2

    .line 696
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmdToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    return-object v0
.end method
