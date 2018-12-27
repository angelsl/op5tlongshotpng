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
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/widget/ImageView;)V
    .registers 3

    .line 276
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 278
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;
    .param p1, "x1"    # Z

    .line 265
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->endFling(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private endFling(Z)V
    .registers 4
    .param p1, "toSlots"    # Z

    .line 317
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 318
    if-eqz p1, :cond_d

    .line 319
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->access$500(Lcom/oneplus/screenshot/longshot/widget/ImageView;)V

    .line 322
    :cond_d
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mTouchMode:I

    .line 323
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private startCommon()V
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-virtual {v0, p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 283
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 328
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 329
    .local v0, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 330
    .local v1, "more":Z
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    .line 334
    .local v2, "y":I
    iget v3, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mLastFlingY:I

    sub-int/2addr v3, v2

    .line 336
    .local v3, "delta":I
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-static {v4, v3}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->access$300(Lcom/oneplus/screenshot/longshot/widget/ImageView;I)V

    .line 338
    if-eqz v1, :cond_1c

    .line 339
    iput v2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mLastFlingY:I

    .line 340
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-virtual {v4, p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_20

    .line 342
    :cond_1c
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->endFling(Z)V

    .line 344
    :goto_20
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public startUsingDistance(I)V
    .registers 9
    .param p1, "distance"    # I

    .line 298
    if-nez p1, :cond_3

    .line 299
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 301
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->startCommon()V

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mLastFlingY:I

    .line 303
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    neg-int v5, p1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    # getter for: Lcom/oneplus/screenshot/longshot/widget/ImageView;->mAnimationDuration:I
    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->access$400(Lcom/oneplus/screenshot/longshot/widget/ImageView;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 304
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-virtual {v0, p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 305
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public startUsingVelocity(I)V
    .registers 12
    .param p1, "initialVelocity"    # I

    .line 286
    if-nez p1, :cond_3

    .line 287
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 289
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->startCommon()V

    .line 290
    if-gez p1, :cond_c

    const v0, 0x7fffffff

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 291
    .local v0, "initialY":I
    :goto_d
    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mLastFlingY:I

    .line 292
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v3, v0

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 294
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-virtual {v1, p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 295
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public stop(Z)V
    .registers 3
    .param p1, "toSlots"    # Z

    .line 308
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-virtual {v0, p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 309
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->endFling(Z)V

    .line 310
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
