.class public abstract Lcom/oneplus/screenshot/longshot/state/AbsImageState;
.super Lcom/oneplus/screenshot/longshot/state/AbsViewState;
.source "AbsImageState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsImageState"


# instance fields
.field protected mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

.field protected mImageView:Landroid/widget/ImageView;

.field protected mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 1
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 25
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 18
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mImageView:Landroid/widget/ImageView;

    .line 19
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 26
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 27
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getImageCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 28
    return-void
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 0
    .param p1, "oldState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 35
    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 37
    return-void
.end method

.method public exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V
    .locals 1
    .param p1, "newState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 41
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->clear()V

    .line 42
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    .line 43
    return-void
.end method

.method protected initViews(Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "content"    # Landroid/widget/FrameLayout;

    .line 47
    const-string v0, "AbsImageState"

    const-string v1, "initViews"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const v0, 0x7f09008b

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mImageView:Landroid/widget/ImageView;

    .line 49
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getPreviewCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50
    return-void
.end method
