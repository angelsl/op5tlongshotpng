.class public Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private changed:Z

.field private consecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 9188
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 9189
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .line 9197
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 9198
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 9207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9173
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 9177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9181
    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 9208
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 9209
    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 9210
    iput p3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 9211
    iput-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 9212
    return-void
.end method

.method static synthetic access$5100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;
    .param p1, "x1"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 9163
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    return-void
.end method

.method private runIfNecessary(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 6
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 9238
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 9239
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 9240
    .local v0, "position":I
    const/4 v2, -0x1

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 9241
    invoke-static {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$5200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    .line 9242
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9243
    return-void

    .line 9245
    .end local v0    # "position":I
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    if-eqz v0, :cond_4

    .line 9246
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->validate()V

    .line 9247
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 9248
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 9249
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$4900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    goto :goto_0

    .line 9251
    :cond_1
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$4900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_0

    .line 9254
    :cond_2
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$4900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 9256
    :goto_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 9257
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_3

    .line 9260
    const-string v0, "RecyclerView"

    const-string v2, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9263
    :cond_3
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    goto :goto_1

    .line 9265
    :cond_4
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 9267
    :goto_1
    return-void
.end method

.method private validate()V
    .locals 2

    .line 9270
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 9271
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9273
    :cond_1
    :goto_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_2

    .line 9276
    return-void

    .line 9274
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 9297
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    return v0
.end method

.method public getDx()I
    .locals 1

    .line 9279
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDx:I

    return v0
.end method

.method public getDy()I
    .locals 1

    .line 9288
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDy:I

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 9306
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method hasJumpTarget()Z
    .locals 1

    .line 9234
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jumpTo(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .line 9230
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 9231
    return-void
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .line 9301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9302
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 9303
    return-void
.end method

.method public setDx(I)V
    .locals 1
    .param p1, "dx"    # I

    .line 9283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9284
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 9285
    return-void
.end method

.method public setDy(I)V
    .locals 1
    .param p1, "dy"    # I

    .line 9292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9293
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 9294
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 9316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9317
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 9318
    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 9329
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 9330
    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 9331
    iput p3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 9332
    iput-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 9333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9334
    return-void
.end method
