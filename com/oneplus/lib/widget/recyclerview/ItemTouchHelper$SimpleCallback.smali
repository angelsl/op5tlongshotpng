.class public abstract Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$SimpleCallback;
.super Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCallback"
.end annotation


# instance fields
.field private mDefaultDragDirs:I

.field private mDefaultSwipeDirs:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "dragDirs"    # I
    .param p2, "swipeDirs"    # I

    .line 2187
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;-><init>()V

    .line 2188
    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2189
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2190
    return-void
.end method


# virtual methods
.method public getDragDirs(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 2235
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return v0
.end method

.method public getMovementFlags(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 2240
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$SimpleCallback;->getDragDirs(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v0

    .line 2241
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v1

    .line 2240
    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$SimpleCallback;->makeMovementFlags(II)I

    move-result v0

    return v0
.end method

.method public getSwipeDirs(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 2222
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    return v0
.end method

.method public setDefaultDragDirs(I)V
    .locals 0
    .param p1, "defaultDragDirs"    # I

    .line 2209
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2210
    return-void
.end method

.method public setDefaultSwipeDirs(I)V
    .locals 0
    .param p1, "defaultSwipeDirs"    # I

    .line 2199
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2200
    return-void
.end method
