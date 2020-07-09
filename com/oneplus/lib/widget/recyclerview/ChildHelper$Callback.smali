.class interface abstract Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/ChildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract addView(Landroid/view/View;I)V
.end method

.method public abstract attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract detachViewFromParent(I)V
.end method

.method public abstract getChildAt(I)Landroid/view/View;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
.end method

.method public abstract indexOfChild(Landroid/view/View;)I
.end method

.method public abstract onEnteredHiddenState(Landroid/view/View;)V
.end method

.method public abstract onLeftHiddenState(Landroid/view/View;)V
.end method

.method public abstract removeAllViews()V
.end method

.method public abstract removeViewAt(I)V
.end method
