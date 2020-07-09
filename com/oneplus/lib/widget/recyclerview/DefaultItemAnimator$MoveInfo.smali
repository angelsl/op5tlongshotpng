.class Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 65
    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->fromX:I

    .line 66
    iput p3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->fromY:I

    .line 67
    iput p4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->toX:I

    .line 68
    iput p5, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->toY:I

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIIILcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$1;

    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V

    return-void
.end method
