.class Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field bottom:I

.field holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field left:I

.field right:I

.field top:I


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 10291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10292
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 10293
    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    .line 10294
    iput p3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    .line 10295
    iput p4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->right:I

    .line 10296
    iput p5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->bottom:I

    .line 10297
    return-void
.end method
