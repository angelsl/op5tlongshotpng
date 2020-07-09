.class public interface abstract Lcom/oneplus/screenshot/longshot/state/LongshotContext;
.super Ljava/lang/Object;
.source "LongshotContext.java"


# virtual methods
.method public abstract getBarCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDisplayHeight()I
.end method

.method public abstract getDisplayMetrics()Landroid/util/DisplayMetrics;
.end method

.method public abstract getFirstCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getImageCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;
.end method

.method public abstract getIndex()I
.end method

.method public abstract getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;
.end method

.method public abstract getLastMove()I
.end method

.method public abstract getNavBarHeight()I
.end method

.method public abstract getPreviewCache()Landroid/graphics/Bitmap;
.end method

.method public abstract getPreviewController()Lcom/oneplus/screenshot/longshot/preview/PreviewController;
.end method

.method public abstract getRealDisplayHeight()I
.end method

.method public abstract getRunnableCache()Lcom/oneplus/screenshot/longshot/cache/RunnableCache;
.end method

.method public abstract getScrollViewTop()I
.end method

.method public abstract getSharedPrefs()Lcom/oneplus/screenshot/util/SharedPrefs;
.end method

.method public abstract getStatusbarBarHeight()I
.end method

.method public abstract getWindowToken()Landroid/os/IBinder;
.end method

.method public abstract hide()V
.end method

.method public abstract isFirst()Z
.end method

.method public abstract isLast()Z
.end method

.method public abstract isOverScroll()Z
.end method

.method public abstract isRecognizeScrollView()Z
.end method

.method public abstract isScroll()Z
.end method

.method public abstract notifyMove()V
.end method

.method public abstract setFirst(Z)V
.end method

.method public abstract setLast(Z)V
.end method

.method public abstract setOverScroll(Z)V
.end method

.method public abstract setScroll(Z)V
.end method

.method public abstract setScrollViewTop(I)V
.end method

.method public abstract show(IILcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V
.end method

.method public abstract stop()V
.end method

.method public abstract updateIndex(I)V
.end method

.method public abstract updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
.end method
