.class Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;
.super Ljava/lang/Object;
.source "ImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingY:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;Z)V
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;
    .param p1, "toSlots"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/screenshot/longshot/widget/ImageView;)V
    .registers 4
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/widget/ImageView;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 278
    return-void
.end method

.method private endFling(Z)V
    .registers 4
    .param p1, "toSlots"    # Z

    .prologue
    .line 317
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 318
    if-eqz p1, :cond_d

    .line 319
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->-wrap0(Lcom/oneplus/screenshot/longshot/widget/ImageView;)V

    .line 322
    :cond_d
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mTouchMode:I

    .line 323
    return-void
.end method

.method private startCommon()V
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-virtual {v0, p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 283
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 328
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 329
    .local v2, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 330
    .local v1, "more":Z
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 334
    .local v3, "y":I
    iget v4, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mLastFlingY:I

    sub-int v0, v4, v3

    .line 336
    .local v0, "delta":I
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-static {v4, v0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->-wrap1(Lcom/oneplus/screenshot/longshot/widget/ImageView;I)V

    .line 338
    if-eqz v1, :cond_1d

    .line 339
    iput v3, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mLastFlingY:I

    .line 340
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-virtual {v4, p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 344
    :goto_1c
    return-void

    .line 342
    :cond_1d
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->endFling(Z)V

    goto :goto_1c
.end method

.method public startUsingDistance(I)V
    .registers 8
    .param p1, "distance"    # I

    .prologue
    const/4 v1, 0x0

    .line 298
    if-nez p1, :cond_4

    .line 299
    return-void

    .line 301
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->startCommon()V

    .line 302
    iput v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mLastFlingY:I

    .line 303
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v4, p1

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->-get0(Lcom/oneplus/screenshot/longshot/widget/ImageView;)I

    move-result v5

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 304
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-virtual {v0, p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 305
    return-void
.end method

.method public startUsingVelocity(I)V
    .registers 11
    .param p1, "initialVelocity"    # I

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 286
    if-nez p1, :cond_7

    .line 287
    return-void

    .line 289
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->startCommon()V

    .line 290
    if-gez p1, :cond_21

    const v2, 0x7fffffff

    .line 291
    .local v2, "initialY":I
    :goto_f
    iput v2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mLastFlingY:I

    .line 292
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 294
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-virtual {v0, p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 295
    return-void

    .line 290
    .end local v2    # "initialY":I
    :cond_21
    const/4 v2, 0x0

    .restart local v2    # "initialY":I
    goto :goto_f
.end method

.method public stop(Z)V
    .registers 3
    .param p1, "toSlots"    # Z

    .prologue
    .line 308
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-virtual {v0, p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 309
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->endFling(Z)V

    .line 310
    return-void
.end method
